import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/feed/domain/entities/feed_entity.dart';
import 'package:velora/features/post/domain/entities/post_feed_entity.dart';
import 'package:velora/features/post/domain/repositories/post_repository.dart';
import 'package:velora/features/post/domain/usecases/create_post_feed_usecase.dart';

class _MockPostRepository extends Mock implements PostRepository {}

class _FakePostFeedEntity extends Fake implements PostFeedEntity {}

void main() {
  late _MockPostRepository repository;
  late CreatePostFeedUseCase usecase;

  final feed = FeedEntity(
    id: 'post-1',
    userId: 'user-1',
    content: 'Caption',
    createdAt: DateTime.utc(2024, 1, 1),
  );

  setUpAll(() {
    registerFallbackValue(_FakePostFeedEntity());
  });

  setUp(() {
    repository = _MockPostRepository();
    usecase = CreatePostFeedUseCase(repository: repository);
  });

  test('delegates to repository with built entity', () async {
    when(
      () => repository.createFeedPost(post: any(named: 'post')),
    ).thenAnswer((_) async => Right(feed));

    final result = await usecase(
      userId: 'user-1',
      content: 'Caption',
    );

    expect(result, equals(Right(feed)));
    verify(
      () => repository.createFeedPost(
        post: const PostFeedEntity(
          userId: 'user-1',
          content: 'Caption',
        ),
      ),
    ).called(1);
  });

  test('bubbles failures from repository', () async {
    when(
      () => repository.createFeedPost(post: any(named: 'post')),
    ).thenAnswer((_) async => Left(Failure('error')));

    final result = await usecase(userId: 'user', content: 'Caption');

    expect(result.isLeft(), isTrue);
  });
}
