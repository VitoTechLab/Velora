import 'dart:async';
import 'dart:math' as math;

import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velora/core/errors/feed_failure.dart';
import 'package:velora/core/utils/log_alias.dart';
import 'package:velora/features/feed/domain/usecases/add_comment.dart';
import 'package:velora/features/feed/domain/usecases/delete_comment.dart';
import 'package:velora/features/feed/domain/usecases/get_comments.dart';
import 'package:velora/features/feed/domain/usecases/stop_watch_comments.dart';
import 'package:velora/features/feed/domain/usecases/toggle_like_comment.dart';
import 'package:velora/features/feed/domain/usecases/watch_new_comments.dart';

import 'feed_comment_event.dart';
import 'feed_comment_state.dart';

class FeedCommentBloc extends Bloc<FeedCommentEvent, FeedCommentState> {
  FeedCommentBloc({
    required this.getCommentsUseCase,
    required this.addCommentUseCase,
    required this.deleteCommentUseCase,
    required this.toggleLikeCommentUseCase,
    required this.watchNewCommentsUseCase,
    required this.stopWatchCommentsUseCase,
  }) : super(const FeedCommentState()) {
    on<LoadFeedCommentsEvent>(_onLoadInitialCommentsFeed);
    on<LoadMoreFeedCommentsEvent>(
      _onLoadMoreCommentsFeed,
      transformer: bloc_concurrency.droppable(),
    );
    on<AddFeedCommentEvent>(_onAddComment);
    on<DeleteFeedCommentEvent>(_onDeleteComment);
    on<ToggleFeedCommentLikeEvent>(_onToggleLikeComment);
    on<ClearFeedCommentMessagesEvent>(
      (event, emit) => emit(
        state.copyWith(
          message: null,
          errorMessage: null,
          addError: null,
          deleteError: null,
          watchError: null,
        ),
      ),
    );
    on<StartWatchCommentsEvent>(_onStartWatch);
    on<StopWatchCommentsEvent>(_onStopWatch);
    on<WatchCommentArrivedEvent>(_onWatchCommentArrived);
    on<WatchErrorEvent>(
      (event, emit) => emit(state.copyWith(watchError: event.message)),
    );
  }

  final GetComments getCommentsUseCase;
  final AddComment addCommentUseCase;
  final DeleteComment deleteCommentUseCase;
  final ToggleLikeComment toggleLikeCommentUseCase;
  final WatchNewComments watchNewCommentsUseCase;
  final StopWatchComments stopWatchCommentsUseCase;
  StreamSubscription? _watchSub;

  static const _logTag = 'FeedCommentBloc';
  static const int _maxCommentLength = 1000;

  Future<void> _onLoadInitialCommentsFeed(
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

  Future<void> _onLoadMoreCommentsFeed(
    LoadMoreFeedCommentsEvent event,
    Emitter<FeedCommentState> emit,
  ) async {
    if (state.isLoadingMore || state.isLoading) {
      return;
    }
    if (!state.hasMore || state.cursor == null || state.postId == null) {
      return;
    }

    final limit = event.limit;

    logi(
      'Loading more comments limit=$limit cursor=${state.cursor}',
      tag: _logTag,
    );

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
        final newOnes = pagination.comments
            .where((c) => seen.add(c.id))
            .toList();
        final merged = [...state.comments, ...newOnes];

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

    final result = await addCommentUseCase(
      postId: postId,
      content: trimmed,
      parentCommentId: event.parentCommentId,
    );

    result.fold(
      (failure) {
        emit(state.copyWith(isAdding: false, addError: failure.message));
      },
      (comment) {
        emit(
          state.copyWith(
            isAdding: false,
            comments: [comment, ...state.comments],
            addedComment: comment,
            message: 'Comment added',
          ),
        );
      },
    );
  }

  Future<void> _onDeleteComment(
    DeleteFeedCommentEvent event,
    Emitter<FeedCommentState> emit,
  ) async {
    final commentId = event.commentId.trim();
    if (commentId.isEmpty) {
      return;
    }

    emit(state.copyWith(isDeleting: true, deleteError: null, message: null));

    final result = await deleteCommentUseCase(commentId);

    result.fold(
      (failure) {
        emit(state.copyWith(isDeleting: false, deleteError: failure.message));
      },
      (_) {
        emit(
          state.copyWith(
            isDeleting: false,
            comments: state.comments
                .where((comment) => comment.id != commentId)
                .toList(),
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
        final updated = state.comments.map((comment) {
          if (comment.id != commentId) return comment;
          final willLike = !comment.isLiked;
          final newCount = willLike
              ? comment.likesCount + 1
              : math.max(comment.likesCount - 1, 0);
          return comment.copyWith(isLiked: willLike, likesCount: newCount);
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

    await _watchSub?.cancel();
    _watchSub = null;
    await stopWatchCommentsUseCase();

    emit(state.copyWith(isWatching: true, watchError: null, postId: postId));

    _watchSub = watchNewCommentsUseCase(postId: postId).listen(
      (either) {
        either.fold(
          (failure) => add(WatchErrorEvent(failure.message)),
          (comment) => add(WatchCommentArrivedEvent(comment)),
        );
      },
      onError: (error, stack) {
        final message = FeedFailure.fromException(error).message;
        add(WatchErrorEvent(message));
      },
    );
  }

  Future<void> _onStopWatch(
    StopWatchCommentsEvent event,
    Emitter<FeedCommentState> emit,
  ) async {
    await _watchSub?.cancel();
    _watchSub = null;
    await stopWatchCommentsUseCase();
    emit(state.copyWith(isWatching: false, watchError: null));
  }

  Future<void> _onWatchCommentArrived(
    WatchCommentArrivedEvent event,
    Emitter<FeedCommentState> emit,
  ) async {
    final incoming = event.comment;
    final exists = state.comments.any((comment) => comment.id == incoming.id);
    if (exists) return;

    emit(state.copyWith(comments: [incoming, ...state.comments]));
  }

  @override
  Future<void> close() async {
    await _watchSub?.cancel();
    _watchSub = null;
    await stopWatchCommentsUseCase();
    await super.close();
  }
}
