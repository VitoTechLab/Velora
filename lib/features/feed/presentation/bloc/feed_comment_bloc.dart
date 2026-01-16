import 'dart:async';
import 'dart:math' as math;

import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velora/core/errors/feed_failure.dart';
import 'package:velora/core/utils/log_alias.dart';
import 'package:velora/features/feed/domain/entities/comment_entity.dart';
import 'package:velora/features/feed/domain/usecases/add_comment_usecase.dart';
import 'package:velora/features/feed/domain/usecases/delete_comment_usecase.dart';
import 'package:velora/features/feed/domain/usecases/get_comments_usecase.dart';
import 'package:velora/features/feed/domain/usecases/get_replies_usecase.dart';
import 'package:velora/features/feed/domain/usecases/stop_watch_comments_usecase.dart';
import 'package:velora/features/feed/domain/usecases/toggle_like_comment_usecase.dart';
import 'package:velora/features/feed/domain/usecases/watch_new_comments_usecase.dart';
import 'feed_comment_event.dart';
import 'feed_comment_state.dart';

/// BLoC for comment operations.
class FeedCommentBloc extends Bloc<FeedCommentEvent, FeedCommentState> {
  FeedCommentBloc({
    required this.getCommentsUseCase,
    required this.getRepliesUseCase,
    required this.addCommentUseCase,
    required this.deleteCommentUseCase,
    required this.toggleLikeCommentUseCase,
    required this.watchNewCommentsUseCase,
    required this.stopWatchCommentsUseCase,
    this.currentUserId,
  }) : super(const FeedCommentState()) {
    on<LoadFeedCommentsEvent>(_onLoadComments);
    on<LoadMoreFeedCommentsEvent>(
      _onLoadMoreComments,
      transformer: bloc_concurrency.droppable(),
    );
    on<LoadRepliesEvent>(_onLoadReplies);
    on<AddFeedCommentEvent>(_onAddComment);
    on<DeleteFeedCommentEvent>(_onDeleteComment);
    on<ToggleFeedCommentLikeEvent>(_onToggleLikeComment);
    on<ClearFeedCommentMessagesEvent>(_onClearMessages);
    on<StartWatchCommentsEvent>(_onStartWatch);
    on<StopWatchCommentsEvent>(_onStopWatch);
    on<WatchCommentArrivedEvent>(_onWatchCommentArrived);
    on<WatchErrorEvent>(_onWatchError);
  }

  final GetCommentsUseCase getCommentsUseCase;
  final GetRepliesUseCase getRepliesUseCase;
  final AddCommentUseCase addCommentUseCase;
  final DeleteCommentUseCase deleteCommentUseCase;
  final ToggleLikeCommentUseCase toggleLikeCommentUseCase;
  final WatchNewCommentsUseCase watchNewCommentsUseCase;
  final StopWatchCommentsUseCase stopWatchCommentsUseCase;

  /// Current user ID for skipping own realtime comments.
  final String? currentUserId;

  StreamSubscription<dynamic>? _commentWatchSubscription;

  static const _logTag = 'FeedCommentBloc';
  static const int _maxCommentLength = 1000;

  void _onClearMessages(
    ClearFeedCommentMessagesEvent event,
    Emitter<FeedCommentState> emit,
  ) {
    emit(
      state.copyWith(
        message: null,
        errorMessage: null,
        addError: null,
        deleteError: null,
        watchError: null,
      ),
    );
  }

  void _onWatchError(WatchErrorEvent event, Emitter<FeedCommentState> emit) {
    emit(state.copyWith(watchError: event.message));
  }

  Future<void> _onLoadComments(
    LoadFeedCommentsEvent event,
    Emitter<FeedCommentState> emit,
  ) async {
    final postId = event.postId.trim();
    if (postId.isEmpty) {
      emit(state.copyWith(errorMessage: 'Post id is required'));
      return;
    }

    emit(
      state.copyWith(
        isLoading: true,
        isLoadingMore: false,
        postId: postId,
        comments: const [],
        hasMore: false,
        cursor: null,
        errorMessage: null,
        message: null,
      ),
    );

    final limit = event.limit ?? 20;

    final result = await getCommentsUseCase(postId: postId, limit: limit);

    result.fold(
      (failure) {
        emit(state.copyWith(isLoading: false, errorMessage: failure.message));
      },
      (pagination) {
        emit(
          state.copyWith(
            isLoading: false,
            comments: pagination.comments,
            hasMore: pagination.hasMore,
            cursor: pagination.cursor,
            errorMessage: null,
            postId: postId,
          ),
        );
      },
    );
  }

  Future<void> _onLoadMoreComments(
    LoadMoreFeedCommentsEvent event,
    Emitter<FeedCommentState> emit,
  ) async {
    if (state.isLoadingMore || state.isLoading) return;
    if (!state.hasMore || state.cursor == null || state.postId == null) return;

    final limit = event.limit;
    logi('Loading more comments limit=$limit', tag: _logTag);

    emit(
      state.copyWith(isLoadingMore: true, errorMessage: null, message: null),
    );

    final cursor = state.cursor;
    final postId = state.postId;
    if (cursor == null || postId == null) return;

    final result = await getCommentsUseCase(
      postId: postId,
      limit: limit,
      cursor: cursor,
    );

    result.fold(
      (failure) {
        emit(
          state.copyWith(isLoadingMore: false, errorMessage: failure.message),
        );
      },
      (pagination) {
        final seen = state.comments.map((c) => c.id).toSet();
        final newComments =
            pagination.comments.where((c) => seen.add(c.id)).toList();
        final merged = [...state.comments, ...newComments];

        emit(
          state.copyWith(
            comments: merged,
            hasMore: pagination.hasMore,
            cursor: pagination.cursor,
            isLoadingMore: false,
            errorMessage: null,
          ),
        );
      },
    );
  }

  /// Load replies for a specific root comment on demand.
  Future<void> _onLoadReplies(
    LoadRepliesEvent event,
    Emitter<FeedCommentState> emit,
  ) async {
    final parentId = event.parentCommentId.trim();
    if (parentId.isEmpty) return;

    // Find the root comment index
    final rootIndex = state.comments.indexWhere((c) => c.id == parentId);
    if (rootIndex == -1) return;

    final root = state.comments[rootIndex];

    // Skip if already loading or already loaded
    if (root.isLoadingReplies || root.repliesLoaded) return;

    // Set loading state for this comment
    final loadingComments = List<CommentEntity>.from(state.comments);
    loadingComments[rootIndex] = root.copyWith(isLoadingReplies: true);
    emit(state.copyWith(comments: loadingComments));

    final result = await getRepliesUseCase(parentCommentId: parentId);

    result.fold(
      (failure) {
        logw('Load replies failed: ${failure.message}', tag: _logTag);
        // Reset loading state on error
        final resetComments = List<CommentEntity>.from(state.comments);
        final currentRoot = resetComments[rootIndex];
        resetComments[rootIndex] = currentRoot.copyWith(isLoadingReplies: false);
        emit(state.copyWith(comments: resetComments));
      },
      (replies) {
        final finalComments = List<CommentEntity>.from(state.comments);
        final currentRoot = finalComments[rootIndex];
        finalComments[rootIndex] = currentRoot.copyWith(
          replies: replies,
          repliesLoaded: true,
          isLoadingReplies: false,
          replyCount: replies.length,
        );
        emit(state.copyWith(comments: finalComments));
      },
    );
  }

  Future<void> _onAddComment(
    AddFeedCommentEvent event,
    Emitter<FeedCommentState> emit,
  ) async {
    final postId = event.postId.trim();
    if (postId.isEmpty) {
      emit(state.copyWith(addError: 'Post id is required'));
      return;
    }

    final trimmed = event.content.trim();
    if (trimmed.isEmpty) {
      emit(state.copyWith(addError: 'Comment content cannot be empty'));
      return;
    }
    if (trimmed.length > _maxCommentLength) {
      emit(
        state.copyWith(
          addError: 'Comment is too long (max $_maxCommentLength characters)',
        ),
      );
      return;
    }

    emit(
      state.copyWith(
        isAdding: true,
        addError: null,
        addedComment: null,
        message: null,
      ),
    );

    // Resolve the actual Root Parent ID
    String? effectiveParentId = event.parentCommentId;
    if (effectiveParentId.isNotEmpty) {
      for (final root in state.comments) {
        if (root.id == effectiveParentId) {
          effectiveParentId = root.id;
          break;
        }
        final isReplyToNested =
            root.replies.any((r) => r.id == effectiveParentId);
        if (isReplyToNested) {
          effectiveParentId = root.id;
          break;
        }
      }
    }

    final result = await addCommentUseCase(
      postId: postId,
      content: trimmed,
      parentCommentId: effectiveParentId,
    );

    result.fold(
      (failure) {
        emit(state.copyWith(isAdding: false, addError: failure.message));
      },
      (comment) {
        final rootId = comment.parentCommentId;

        if (rootId != null && rootId.isNotEmpty) {
          // It's a reply - add to the root's replies
          final updatedComments = state.comments.map((rootComment) {
            if (rootComment.id == rootId) {
              return rootComment.copyWith(
                replies: [...rootComment.replies, comment],
                replyCount: rootComment.replyCount + 1,
                repliesLoaded: true,
              );
            }
            return rootComment;
          }).toList();

          emit(
            state.copyWith(
              isAdding: false,
              comments: updatedComments,
              addedComment: comment,
              message: 'Reply added',
            ),
          );
        } else {
          // Root comment - add to top
          emit(
            state.copyWith(
              isAdding: false,
              comments: [comment, ...state.comments],
              addedComment: comment,
              message: 'Comment added',
            ),
          );
        }
      },
    );
  }

  Future<void> _onDeleteComment(
    DeleteFeedCommentEvent event,
    Emitter<FeedCommentState> emit,
  ) async {
    final commentId = event.commentId.trim();
    if (commentId.isEmpty) return;

    emit(state.copyWith(isDeleting: true, deleteError: null, message: null));

    final result = await deleteCommentUseCase(commentId);

    result.fold(
      (failure) {
        emit(state.copyWith(isDeleting: false, deleteError: failure.message));
      },
      (_) {
        final updatedComments = <CommentEntity>[];

        for (final root in state.comments) {
          // Skip if this root is being deleted
          if (root.id == commentId) continue;

          // Filter out the reply if it matches
          final filteredReplies =
              root.replies.where((reply) => reply.id != commentId).toList();

          final replyWasDeleted = filteredReplies.length != root.replies.length;

          updatedComments.add(
            root.copyWith(
              replies: filteredReplies,
              replyCount: replyWasDeleted
                  ? math.max(root.replyCount - 1, 0)
                  : root.replyCount,
            ),
          );
        }

        emit(
          state.copyWith(
            isDeleting: false,
            comments: updatedComments,
            message: 'Comment deleted',
          ),
        );
      },
    );
  }

  Future<void> _onToggleLikeComment(
    ToggleFeedCommentLikeEvent event,
    Emitter<FeedCommentState> emit,
  ) async {
    final commentId = event.commentId.trim();
    if (commentId.isEmpty) return;

    final result = await toggleLikeCommentUseCase(commentId);

    result.fold(
      (failure) {
        logw('Toggle comment like failed: ${failure.message}', tag: _logTag);
      },
      (_) {
        CommentEntity toggleLike(CommentEntity comment) {
          final willLike = !comment.isLiked;
          final newCount = willLike
              ? comment.likesCount + 1
              : math.max(comment.likesCount - 1, 0);
          return comment.copyWith(isLiked: willLike, likesCount: newCount);
        }

        final updated = state.comments.map<CommentEntity>((comment) {
          if (comment.id == commentId) {
            return toggleLike(comment);
          }

          final hasReplyToUpdate =
              comment.replies.any((r) => r.id == commentId);
          if (hasReplyToUpdate) {
            final updatedReplies = comment.replies.map<CommentEntity>((reply) {
              if (reply.id == commentId) {
                return toggleLike(reply);
              }
              return reply;
            }).toList();
            return comment.copyWith(replies: updatedReplies);
          }

          return comment;
        }).toList();

        emit(state.copyWith(comments: updated));
      },
    );
  }

  Future<void> _onStartWatch(
    StartWatchCommentsEvent event,
    Emitter<FeedCommentState> emit,
  ) async {
    final postId = event.postId.trim();
    if (postId.isEmpty) return;

    await _commentWatchSubscription?.cancel();
    _commentWatchSubscription = null;
    await stopWatchCommentsUseCase();

    emit(state.copyWith(isWatching: true, watchError: null, postId: postId));

    _commentWatchSubscription = watchNewCommentsUseCase(postId: postId).listen(
      (either) {
        either.fold(
          (failure) => add(WatchErrorEvent(message: failure.message)),
          (comment) => add(WatchCommentArrivedEvent(comment: comment)),
        );
      },
      onError: (error, stack) {
        final message = FeedFailure.fromException(error).message;
        add(WatchErrorEvent(message: message));
      },
    );
  }

  Future<void> _onStopWatch(
    StopWatchCommentsEvent event,
    Emitter<FeedCommentState> emit,
  ) async {
    await _commentWatchSubscription?.cancel();
    _commentWatchSubscription = null;
    await stopWatchCommentsUseCase();
    emit(state.copyWith(isWatching: false, watchError: null));
  }

  /// Handle realtime comment arrival with optimizations.
  Future<void> _onWatchCommentArrived(
    WatchCommentArrivedEvent event,
    Emitter<FeedCommentState> emit,
  ) async {
    final incoming = event.comment;

    // Optimization 1: Skip if from current user (already added optimistically)
    if (currentUserId != null && incoming.userId == currentUserId) {
      logi('Skipping own comment from realtime', tag: _logTag);
      return;
    }

    // Optimization 2: Check if already exists (dedup)
    for (final root in state.comments) {
      if (root.id == incoming.id) return;
      if (root.replies.any((r) => r.id == incoming.id)) return;
    }

    // Handle reply vs root
    if (incoming.parentCommentId != null) {
      final parentId = incoming.parentCommentId!;
      final parentIndex = state.comments.indexWhere((c) => c.id == parentId);

      if (parentIndex != -1) {
        final parent = state.comments[parentIndex];
        final updatedComments = List<CommentEntity>.from(state.comments);

        if (parent.repliesLoaded) {
          // Replies already loaded - add to list
          updatedComments[parentIndex] = parent.copyWith(
            replies: [...parent.replies, incoming],
            replyCount: parent.replyCount + 1,
          );
        } else {
          // Replies not loaded - just increment count (user sees badge)
          updatedComments[parentIndex] = parent.copyWith(
            replyCount: parent.replyCount + 1,
          );
        }

        emit(state.copyWith(comments: updatedComments));
      }
      // If parent not found, might be paginated out - ignore
    } else {
      // Root comment - add to top
      emit(state.copyWith(comments: [incoming, ...state.comments]));
    }
  }

  @override
  Future<void> close() async {
    await _commentWatchSubscription?.cancel();
    _commentWatchSubscription = null;
    await stopWatchCommentsUseCase();
    await super.close();
  }
}
