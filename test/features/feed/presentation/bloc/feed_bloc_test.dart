import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/feed/domain/entities/feed_entity.dart';
import 'package:velora/features/feed/domain/entities/feed_pagination_result.dart';
import 'package:velora/features/feed/domain/entities/feed_cursor.dart';
import 'package:velora/features/feed/domain/usecases/delete_post.dart';
import 'package:velora/features/feed/domain/usecases/get_post_by_id.dart';
import 'package:velora/features/feed/domain/usecases/get_smart_feed.dart';
import 'package:velora/features/feed/domain/usecases/toggle_bookmark_post.dart';
import 'package:velora/features/feed/domain/usecases/toggle_like_post.dart';
import 'package:velora/features/feed/domain/usecases/update_post.dart';
import 'package:velora/features/feed/presentation/bloc/feed_bloc.dart';
import 'package:velora/features/feed/presentation/bloc/feed_event.dart';
import 'package:velora/features/feed/presentation/bloc/feed_state.dart';

class _MockLoadInitialFeed extends Mock implements LoadInitialFeed {}

class _MockLoadMoreFeed extends Mock implements LoadMoreFeed {}

class _MockToggleLikePost extends Mock implements ToggleLikePost {}

class _MockToggleBookmarkPost extends Mock implements ToggleBookmarkPost {}

class _MockGetPostById extends Mock implements GetPostById {}

class _MockUpdatePost extends Mock implements UpdatePost {}

class _MockDeletePost extends Mock implements DeletePost {}

void main() {
  setUpAll(() {
    registerFallbackValue(
      const FeedCursorEntity(createdAt: DateTime(2000), id: 'cursor'),
    );
    registerFallbackValue(
      const FeedEntity(
        id: 'fallback',
        userId: 'user',
        content: '',
        createdAt: DateTime(2000),
      ),
    );
  });
  late _MockLoadInitialFeed loadInitialFeed;
  late _MockLoadMoreFeed loadMoreFeed;
  late _MockToggleLikePost toggleLikePost;
  late _MockToggleBookmarkPost toggleBookmarkPost;
  late _MockGetPostById getPostById;
  late _MockUpdatePost updatePost;
  late _MockDeletePost deletePost;

  const post = FeedEntity(
    id: 'post-1',
    userId: 'user-1',
    content: 'Hello feed',
    createdAt: DateTime.utc(2024, 1, 1),
    likesCount: 0,
  );

  FeedBloc buildBloc() {
    return FeedBloc(
      loadInitialFeedUseCase: loadInitialFeed,
      loadMoreFeedUseCase: loadMoreFeed,
      toggleLikePostUseCase: toggleLikePost,
      toggleBookmarkPostUseCase: toggleBookmarkPost,
      getPostByIdUseCase: getPostById,
      updatePostUseCase: updatePost,
      deletePostUseCase: deletePost,
    );
  }

  setUp(() {
    loadInitialFeed = _MockLoadInitialFeed();
    loadMoreFeed = _MockLoadMoreFeed();
    toggleLikePost = _MockToggleLikePost();
    toggleBookmarkPost = _MockToggleBookmarkPost();
    getPostById = _MockGetPostById();
    updatePost = _MockUpdatePost();
    deletePost = _MockDeletePost();
  });

  group('LoadInitialFeedEvent', () {
    blocTest<FeedBloc, FeedState>(
      'emits posts when successful',
      build: () {
        when(() => loadInitialFeed(limit: any(named: 'limit'))).thenAnswer(
          (_) async =>
              const Right(FeedPaginationResult(posts: [post], hasMore: true)),
        );
        return buildBloc();
      },
      act: (bloc) => bloc.add(const FeedEvent.loadInitialFeed(limit: 10)),
      expect: () => const [
        FeedState(isLoadingInitial: true),
        FeedState(posts: [post], hasMore: true, isLoadingInitial: false),
      ],
    );

    blocTest<FeedBloc, FeedState>(
      'emits error when failure occurs',
      build: () {
        when(
          () => loadInitialFeed(limit: any(named: 'limit')),
        ).thenAnswer((_) async => Left(Failure('error')));
        return buildBloc();
      },
      act: (bloc) => bloc.add(const FeedEvent.loadInitialFeed()),
      expect: () => const [
        FeedState(isLoadingInitial: true),
        FeedState(isLoadingInitial: false, errorFeed: 'error'),
      ],
    );
  });

  group('LoadMoreFeedEvent', () {
    blocTest<FeedBloc, FeedState>(
      'appends posts on success',
      build: () {
        when(() => loadInitialFeed(limit: any(named: 'limit'))).thenAnswer(
          (_) async => const Right(
            FeedPaginationResult(
              posts: [post],
              hasMore: true,
              cursor: FeedCursorEntity(
                createdAt: DateTime.utc(2024, 1, 1),
                id: 'cursor',
              ),
            ),
          ),
        );
        when(
          () => loadMoreFeed(
            cursor: any(named: 'cursor'),
            limit: any(named: 'limit'),
          ),
        ).thenAnswer(
          (_) async => const Right(
            FeedPaginationResult(
              posts: [
                FeedEntity(
                  id: 'post-2',
                  userId: 'user-2',
                  content: 'Next',
                  createdAt: DateTime.utc(2024, 1, 2),
                ),
              ],
              hasMore: false,
            ),
          ),
        );
        return buildBloc();
      },
      act: (bloc) async {
        bloc.add(const FeedEvent.loadInitialFeed());
        await Future<void>.delayed(Duration.zero);
        bloc.add(const FeedEvent.loadMoreFeed(limit: 5));
      },
      skip: 2,
      expect: () => [
        const FeedState(
          posts: [post],
          hasMore: true,
          cursor: FeedCursorEntity(
            createdAt: DateTime.utc(2024, 1, 1),
            id: 'cursor',
          ),
          isLoadingInitial: false,
        ),
        const FeedState(
          posts: [
            post,
            FeedEntity(
              id: 'post-2',
              userId: 'user-2',
              content: 'Next',
              createdAt: DateTime.utc(2024, 1, 2),
            ),
          ],
          hasMore: false,
          cursor: null,
          isLoadingInitial: false,
        ),
      ],
    );
  });

  group('ToggleLikePostEvent', () {
    blocTest<FeedBloc, FeedState>(
      'optimistically updates liked state on success',
      build: () {
        when(
          () => toggleLikePost(any()),
        ).thenAnswer((_) async => const Right(null));
        return buildBloc();
      },
      seed: () => const FeedState(posts: [post]),
      act: (bloc) => bloc.add(const FeedEvent.toggleLikePost('post-1')),
      expect: () => [
        const FeedState(
          posts: [
            FeedEntity(
              id: 'post-1',
              userId: 'user-1',
              content: 'Hello feed',
              createdAt: DateTime.utc(2024, 1, 1),
              likesCount: 1,
              isLiked: true,
            ),
          ],
        ),
      ],
    );
  });

  group('UpdatePostEvent', () {
    final updated = post.copyWith(content: 'Updated');

    blocTest<FeedBloc, FeedState>(
      'emits updated post when use case succeeds',
      build: () {
        when(() => updatePost(any())).thenAnswer((_) async => Right(updated));
        return buildBloc();
      },
      seed: () => const FeedState(posts: [post]),
      act: (bloc) => bloc.add(const FeedEvent.updatePostEntity(post: post)),
      expect: () => [
        const FeedState(posts: [post], isUpdatingPost: true, updatedPost: null),
        FeedState(
          posts: [updated],
          isUpdatingPost: false,
          updatedPost: updated,
          message: 'Post updated',
        ),
      ],
      verify: (_) {
        verify(() => updatePost(post)).called(1);
      },
    );

    blocTest<FeedBloc, FeedState>(
      'emits error when update fails',
      build: () {
        when(
          () => updatePost(any()),
        ).thenAnswer((_) async => Left(Failure('Update failed')));
        return buildBloc();
      },
      seed: () => const FeedState(posts: [post]),
      act: (bloc) => bloc.add(const FeedEvent.updatePostEntity(post: post)),
      expect: () => const [
        FeedState(posts: [post], isUpdatingPost: true, updatedPost: null),
        FeedState(
          posts: [post],
          isUpdatingPost: false,
          errorUpdatePost: 'Update failed',
        ),
      ],
    );
  });

  group('DeletePostEvent', () {
    blocTest<FeedBloc, FeedState>(
      'removes post when delete succeeds',
      build: () {
        when(
          () => deletePost(any()),
        ).thenAnswer((_) async => const Right(null));
        return buildBloc();
      },
      seed: () => const FeedState(posts: [post]),
      act: (bloc) => bloc.add(const FeedEvent.deletePost(postId: 'post-1')),
      expect: () => const [
        FeedState(posts: [post], isDeletingPost: true),
        FeedState(posts: [], isDeletingPost: false, message: 'Post deleted'),
      ],
    );

    blocTest<FeedBloc, FeedState>(
      'emits error when delete fails',
      build: () {
        when(
          () => deletePost(any()),
        ).thenAnswer((_) async => Left(Failure('Delete failed')));
        return buildBloc();
      },
      seed: () => const FeedState(posts: [post]),
      act: (bloc) => bloc.add(const FeedEvent.deletePost(postId: 'post-1')),
      expect: () => const [
        FeedState(posts: [post], isDeletingPost: true),
        FeedState(
          posts: [post],
          isDeletingPost: false,
          errorDeletePost: 'Delete failed',
        ),
      ],
    );
  });

  group('RefreshFeedEvent', () {
    final refreshed = post.copyWith(id: 'fresh');

    blocTest<FeedBloc, FeedState>(
      'replaces posts when refresh succeeds',
      build: () {
        when(() => loadInitialFeed(limit: any(named: 'limit'))).thenAnswer(
          (_) async =>
              Right(FeedPaginationResult(posts: [refreshed], hasMore: false)),
        );
        return buildBloc();
      },
      seed: () => const FeedState(posts: [post]),
      act: (bloc) => bloc.add(const FeedEvent.refreshFeed()),
      expect: () => [
        const FeedState(posts: [post], isRefreshing: true),
        FeedState(
          posts: [refreshed],
          hasMore: false,
          cursor: null,
          isRefreshing: false,
        ),
      ],
    );
  });

  group('ToggleBookmarkPostEvent', () {
    blocTest<FeedBloc, FeedState>(
      'flips bookmark flag when use case succeeds',
      build: () {
        when(
          () => toggleBookmarkPost(any()),
        ).thenAnswer((_) async => const Right(null));
        return buildBloc();
      },
      seed: () => const FeedState(posts: [post]),
      act: (bloc) => bloc.add(const FeedEvent.toggleBookmarkPost('post-1')),
      expect: () => const [
        FeedState(
          posts: [
            FeedEntity(
              id: 'post-1',
              userId: 'user-1',
              content: 'Hello feed',
              createdAt: DateTime.utc(2024, 1, 1),
              likesCount: 0,
              isBookmarked: true,
            ),
          ],
        ),
      ],
    );
  });
}
