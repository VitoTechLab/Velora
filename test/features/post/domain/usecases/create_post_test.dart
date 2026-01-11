import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/feed/domain/entities/feed_entity.dart';
import 'package:velora/features/post/domain/entities/create_post_entity.dart';
import 'package:velora/features/post/domain/repositories/post_repository.dart';
import 'package:velora/features/post/domain/usecases/create_post.dart';

class _MockPostRepository extends Mock implements PostRepository {}

class _FakeCreatePostEntity extends Fake implements CreatePostEntity {}

void main() {
  late _MockPostRepository repository;
  late CreatePost usecase;

  final feed = FeedEntity(
    id: 'post-1',
    userId: 'user-1',
    content: 'Caption',
    createdAt: DateTime.utc(2024, 1, 1),
  );

  setUpAll(() {
    registerFallbackValue(_FakeCreatePostEntity());
  });

  setUp(() {
    repository = _MockPostRepository();
    usecase = CreatePost(repository);
  });

  test('delegates to repository with built entity', () async {
    when(
      () => repository.createPost(post: any(named: 'post')),
    ).thenAnswer((_) async => Right(feed));

    final result = await usecase(
      userId: 'user-1',
      content: 'Caption',
    );

    expect(result, equals(Right(feed)));
    verify(
      () => repository.createPost(
        post: const CreatePostEntity(
          userId: 'user-1',
          content: 'Caption',
        ),
      ),
    ).called(1);
  });

  test('bubbles failures from repository', () async {
    when(
      () => repository.createPost(post: any(named: 'post')),
    ).thenAnswer((_) async => Left(Failure('error')));

    final result = await usecase(userId: 'user', content: 'Caption');

    expect(result.isLeft(), isTrue);
  });
}
