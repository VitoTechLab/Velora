import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velora/core/utils/log_alias.dart';
import 'package:velora/features/feed/domain/entities/feed_entity.dart';
import 'package:velora/features/feed/domain/usecases/delete_post_usecase.dart';
import 'package:velora/features/feed/domain/usecases/get_feed_usecase.dart';
import 'package:velora/features/feed/domain/usecases/get_post_by_id_usecase.dart';
import 'package:velora/features/feed/domain/usecases/toggle_bookmark_post_usecase.dart';
import 'package:velora/features/feed/domain/usecases/toggle_like_post_usecase.dart';
import 'package:velora/features/feed/domain/usecases/update_post_usecase.dart';
import 'feed_event.dart';
import 'feed_state.dart';

/// BLoC for feed operations.
class FeedBloc extends Bloc<FeedEvent, FeedState> {
  FeedBloc({
    required this.loadInitialFeedUseCase,
    required this.loadMoreFeedUseCase,
    required this.toggleLikePostUseCase,
    required this.toggleBookmarkPostUseCase,
    required this.getPostByIdUseCase,
    required this.updatePostUseCase,
    required this.deletePostUseCase,
  }) : super(const FeedState()) {
    on<LoadInitialFeedEvent>(_onLoadInitialFeed);
    on<LoadMoreFeedEvent>(
      _onLoadMoreFeed,
      transformer: bloc_concurrency.droppable(),
    );
    on<GetPostByIdEvent>(_onGetPostById);
    on<UpdatePostEvent>(_onUpdatePost);
    on<DeletePostEvent>(_onDeletePost);
    on<RefreshFeedEvent>(
      _onRefreshFeed,
      transformer: bloc_concurrency.droppable(),
    );
    on<ToggleLikePostEvent>(_onToggleLikePost);
    on<ToggleBookmarkPostEvent>(_onToggleBookmarkPost);
    on<AddNewPostEvent>(_onAddNewPost);
    on<ClearTransientEvent>((event, emit) => _onClearTransient(emit));
  }

  final LoadInitialFeedUseCase loadInitialFeedUseCase;
  final LoadMoreFeedUseCase loadMoreFeedUseCase;
  final ToggleLikePostUseCase toggleLikePostUseCase;
  final ToggleBookmarkPostUseCase toggleBookmarkPostUseCase;
  final GetPostByIdUseCase getPostByIdUseCase;
  final UpdatePostUseCase updatePostUseCase;
  final DeletePostUseCase deletePostUseCase;

  static const int _minPageSize = 1;
  static const int _maxPageSize = 50;
  static const int _maxPostContentLength = 2000;
  static const _logTag = 'FeedBloc';

  int _validatedLimit(int limit) => limit.clamp(_minPageSize, _maxPageSize);

  String? _validatePostContent(String content) {
    final trimmed = content.trim();
    if (trimmed.isEmpty) return 'Post content cannot be empty';
    if (trimmed.length > _maxPostContentLength) {
      return 'Post content is too long (max $_maxPostContentLength characters)';
    }
    return null;
  }

  Future<void> _onLoadInitialFeed(
    LoadInitialFeedEvent event,
    Emitter<FeedState> emit,
  ) async {
    final limit = _validatedLimit(event.limit);

    logi('Loading initial feed limit=$limit', tag: _logTag);

    emit(
      state.copyWith(
        isLoadingInitial: true,
        isLoadingMore: false,
        isRefreshing: false,
        errorFeed: null,
        message: null,
        // Initial load always starts fresh.
        posts: <FeedEntity>[],
        hasMore: false,
        cursor: null,
      ),
    );

    final result = await loadInitialFeedUseCase(
      limit: limit,
      userId: event.userId,
    );

    result.fold(
      (failure) {
        loge('Load feed failed: ${failure.message}', tag: _logTag);
        emit(
          state.copyWith(isLoadingInitial: false, errorFeed: failure.message),
        );
      },
      (paginationResult) {
        emit(
          state.copyWith(
            posts: paginationResult.posts,
            hasMore: paginationResult.hasMore,
            cursor: paginationResult.cursor,
            isLoadingInitial: false,
            errorFeed: null,
          ),
        );
      },
    );
  }

  /// Loads the next feed page based on the last cursor.
  Future<void> _onLoadMoreFeed(
    LoadMoreFeedEvent event,
    Emitter<FeedState> emit,
  ) async {
    if (state.isLoadingMore || state.isLoadingInitial || state.isRefreshing) {
      return;
    }
    if (!state.hasMore || state.cursor == null) return;

    final limit = _validatedLimit(event.limit);

    logi('Loading more feed limit=$limit cursor=${state.cursor}', tag: _logTag);

    emit(state.copyWith(isLoadingMore: true, errorFeed: null, message: null));

    final cursor = state.cursor;

    if (cursor == null) return;

    final result = await loadMoreFeedUseCase(
      cursor: cursor,
      limit: limit,
      userId: event.userId,
    );

    result.fold(
      (failure) {
        loge('Load more feed failed: ${failure.message}', tag: _logTag);
        emit(state.copyWith(isLoadingMore: false, errorFeed: failure.message));
      },
      (paginationResult) {
        // Dedupe by post id to avoid duplicates and race conditions.
        final seen = state.posts.map((e) => e.id).toSet();
        final newOnes = paginationResult.posts
            .where((p) => seen.add(p.id))
            .toList();
        final merged = [...state.posts, ...newOnes];

        emit(
          state.copyWith(
            posts: merged,
            hasMore: paginationResult.hasMore,
            cursor: paginationResult.cursor,
            isLoadingMore: false,
            errorFeed: null,
          ),
        );
      },
    );
  }

  /// Refreshes the feed by resetting to the first page.
  Future<void> _onRefreshFeed(
    RefreshFeedEvent event,
    Emitter<FeedState> emit,
  ) async {
    if (state.isLoadingMore || state.isLoadingInitial || state.isRefreshing) {
      return;
    }
    logi('Refreshing feed', tag: _logTag);

    emit(state.copyWith(isRefreshing: true, errorFeed: null, message: null));

    final result = await loadInitialFeedUseCase(limit: _validatedLimit(20));

    result.fold(
      (failure) {
        emit(state.copyWith(isRefreshing: false, errorFeed: failure.message));
      },
      (paginationResult) {
        emit(
          state.copyWith(
            posts: paginationResult.posts,
            hasMore: paginationResult.hasMore,
            cursor: paginationResult.cursor,
            isRefreshing: false,
            errorFeed: null,
          ),
        );
      },
    );
  }

  Future<void> _onGetPostById(
    GetPostByIdEvent event,
    Emitter<FeedState> emit,
  ) async {
    final postId = event.postId.trim();
    if (postId.isEmpty) {
      emit(state.copyWith(errorSinglePost: 'Post id is required'));
      return;
    }

    emit(
      state.copyWith(
        isLoadingSinglePost: true,
        errorSinglePost: null,
        singlePost: null,
        message: null,
      ),
    );

    final result = await getPostByIdUseCase(postId);

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            isLoadingSinglePost: false,
            errorSinglePost: failure.message,
          ),
        );
      },
      (post) {
        emit(state.copyWith(isLoadingSinglePost: false, singlePost: post));
      },
    );
  }

  Future<void> _onUpdatePost(
    UpdatePostEvent event,
    Emitter<FeedState> emit,
  ) async {
    final postId = event.post.id.trim();
    if (postId.isEmpty) {
      emit(state.copyWith(errorUpdatePost: 'Post id is required'));
      return;
    }

    final contentError = _validatePostContent(event.post.content);
    if (contentError != null) {
      emit(state.copyWith(errorUpdatePost: contentError));
      return;
    }

    emit(
      state.copyWith(
        isUpdatingPost: true,
        errorUpdatePost: null,
        updatedPost: null,
        message: null,
      ),
    );

    final result = await updatePostUseCase(event.post);

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            isUpdatingPost: false,
            errorUpdatePost: failure.message,
          ),
        );
      },
      (post) {
        final updatedList = state.posts
            .map((p) => p.id == post.id ? post : p)
            .toList();

        emit(
          state.copyWith(
            isUpdatingPost: false,
            updatedPost: post,
            posts: updatedList,
            message: 'Post updated',
          ),
        );
      },
    );
  }

  Future<void> _onDeletePost(
    DeletePostEvent event,
    Emitter<FeedState> emit,
  ) async {
    final postId = event.postId.trim();
    if (postId.isEmpty) {
      emit(state.copyWith(errorDeletePost: 'Post id is required'));
      return;
    }

    emit(state.copyWith(isDeletingPost: true, errorDeletePost: null));

    final result = await deletePostUseCase(postId);

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            isDeletingPost: false,
            errorDeletePost: failure.message,
          ),
        );
      },
      (_) {
        emit(
          state.copyWith(
            isDeletingPost: false,
            posts: state.posts.where((p) => p.id != postId).toList(),
            message: 'Post deleted',
          ),
        );
      },
    );
  }

  Future<void> _onToggleLikePost(
    ToggleLikePostEvent event,
    Emitter<FeedState> emit,
  ) async {
    final postId = event.postId.trim();
    if (postId.isEmpty) return;

    final result = await toggleLikePostUseCase(postId);

    result.fold(
      (failure) {
        logw('Toggle like failed: ${failure.message}', tag: _logTag);
      },
      (_) {
        final updated = state.posts.map((post) {
          if (post.id != postId) return post;
          final willLike = !post.isLiked;
          final currentLikes = post.likesCount ?? 0;
          final newLikes = willLike
              ? currentLikes + 1
              : (currentLikes > 0 ? currentLikes - 1 : 0);
          return post.copyWith(isLiked: willLike, likesCount: newLikes);
        }).toList();

        emit(state.copyWith(posts: updated));
      },
    );
  }

  Future<void> _onToggleBookmarkPost(
    ToggleBookmarkPostEvent event,
    Emitter<FeedState> emit,
  ) async {
    final postId = event.postId.trim();
    if (postId.isEmpty) return;

    final result = await toggleBookmarkPostUseCase(postId);

    result.fold(
      (failure) {
        logw('Toggle bookmark failed: ${failure.message}', tag: _logTag);
      },
      (_) {
        final updated = state.posts.map((post) {
          if (post.id != postId) return post;
          return post.copyWith(isBookmarked: !post.isBookmarked);
        }).toList();
        emit(state.copyWith(posts: updated));
      },
    );
  }

  /// Add new post to top of feed (after create post success)
  Future<void> _onAddNewPost(
    AddNewPostEvent event,
    Emitter<FeedState> emit,
  ) async {
    logi('Adding new post to top of feed: ${event.post.id}', tag: _logTag);

    // Add to top of feed
    final updatedPosts = [event.post, ...state.posts];

    emit(
      state.copyWith(posts: updatedPosts, message: 'Post created successfully'),
    );
  }

  /// Bersihkan state transient (message & error) setelah ditampilkan di UI.
  void _onClearTransient(Emitter<FeedState> emit) {
    emit(
      state.copyWith(
        message: null,
        errorFeed: null,
        errorUpdatePost: null,
        errorDeletePost: null,
        errorSinglePost: null,
        updatedPost: null,
      ),
    );
  }
}
