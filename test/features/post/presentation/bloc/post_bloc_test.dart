import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/feed/domain/entities/feed_entity.dart';
import 'package:velora/features/post/domain/usecases/create_post.dart';
import 'package:velora/features/post/presentation/bloc/post_bloc.dart';
import 'package:velora/features/post/presentation/bloc/post_event.dart';
import 'package:velora/features/post/presentation/bloc/post_state.dart';

class _MockCreatePost extends Mock implements CreatePost {}

void main() {
  late _MockCreatePost createPost;

  final createdPost = FeedEntity(
    id: 'post-1',
    userId: 'user-1',
    content: 'Hello world',
    createdAt: DateTime.utc(2024, 1, 1),
  );

  setUp(() {
    createPost = _MockCreatePost();
  });

  PostBloc buildBloc() => PostBloc(createPostUseCase: createPost);

  group('CreatePostEvent', () {
    blocTest<PostBloc, PostState>(
      'emits error when userId is empty',
      build: buildBloc,
      act: (bloc) =>
          bloc.add(const PostEvent.createPost(userId: '', content: 'hello')),
      expect: () => const [PostState(errorCreatePost: 'User id is required')],
      verify: (_) => verifyNever(
        () => createPost.call(
          userId: any(named: 'userId'),
          content: any(named: 'content'),
        ),
      ),
    );

    blocTest<PostBloc, PostState>(
      'emits error when content invalid',
      build: buildBloc,
      act: (bloc) =>
          bloc.add(const PostEvent.createPost(userId: 'user', content: '   ')),
      expect: () => const [
        PostState(errorCreatePost: 'Post content cannot be empty'),
      ],
    );

    blocTest<PostBloc, PostState>(
      'emits createdPost when usecase succeeds',
      build: () {
        when(
          () => createPost.call(
            userId: any(named: 'userId'),
            content: any(named: 'content'),
            imageUrls: any(named: 'imageUrls'),
            videoUrls: any(named: 'videoUrls'),
            commentsEnabled: any(named: 'commentsEnabled'),
            hideLikeCount: any(named: 'hideLikeCount'),
            hideCommentCount: any(named: 'hideCommentCount'),
            hideShareCount: any(named: 'hideShareCount'),
            hideLikesList: any(named: 'hideLikesList'),
            campaignId: any(named: 'campaignId'),
            campaignTitle: any(named: 'campaignTitle'),
          ),
        ).thenAnswer((_) async => Right(createdPost));
        return buildBloc();
      },
      act: (bloc) => bloc.add(
        const PostEvent.createPost(userId: 'user-1', content: 'Hello world'),
      ),
      expect: () => [
        const PostState(isCreatingPost: true),
        PostState(
          isCreatingPost: false,
          createdPost: createdPost,
          message: 'Post created',
        ),
      ],
    );

    blocTest<PostBloc, PostState>(
      'emits failure message when usecase fails',
      build: () {
        when(
          () => createPost.call(
            userId: any(named: 'userId'),
            content: any(named: 'content'),
            imageUrls: any(named: 'imageUrls'),
            videoUrls: any(named: 'videoUrls'),
            commentsEnabled: any(named: 'commentsEnabled'),
            hideLikeCount: any(named: 'hideLikeCount'),
            hideCommentCount: any(named: 'hideCommentCount'),
            hideShareCount: any(named: 'hideShareCount'),
            hideLikesList: any(named: 'hideLikesList'),
            campaignId: any(named: 'campaignId'),
            campaignTitle: any(named: 'campaignTitle'),
          ),
        ).thenAnswer((_) async => Left(Failure('network')));
        return buildBloc();
      },
      act: (bloc) => bloc.add(
        const PostEvent.createPost(userId: 'user', content: 'caption'),
      ),
      expect: () => const [
        PostState(isCreatingPost: true),
        PostState(isCreatingPost: false, errorCreatePost: 'network'),
      ],
    );
  });

  test('clearPostTransient resets message and error', () {
    final bloc = buildBloc();
    bloc.emit(const PostState(message: 'done', errorCreatePost: 'err'));
    bloc.add(const PostEvent.clearPostTransient());
    expectLater(
      bloc.stream,
      emits(const PostState(message: null, errorCreatePost: null)),
    );
  });
}
