import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:velora/core/errors/feed_failure.dart';
import 'package:velora/features/feed/data/datasources/feed_remote_datasource.dart';
import 'package:velora/features/feed/data/models/comment_model.dart';
import 'package:velora/features/feed/data/models/comment_pagination_model.dart';
import 'package:velora/features/feed/data/models/feed_model.dart';
import 'package:velora/features/feed/data/models/feed_pagination_model.dart';
import 'package:velora/features/feed/domain/entities/comment_entity.dart';
import 'package:velora/features/feed/domain/entities/feed_entity.dart';
import 'package:velora/features/feed/domain/entities/feed_pagination_result.dart';
import 'package:velora/features/feed/data/models/feed_cursor.dart';
import 'package:velora/features/feed/data/repositories/feed_repository_impl.dart';

class _MockFeedRemoteDataSource extends Mock implements FeedRemoteDataSource {}

void main() {
  late _MockFeedRemoteDataSource remote;
  late FeedRepositoryImpl repository;

  final feedModel = FeedModel(
    id: 'post-1',
    userId: 'user-1',
    content: 'Velora feed',
    createdAt: DateTime.utc(2024, 1, 1),
  );

  setUp(() {
    remote = _MockFeedRemoteDataSource();
    repository = FeedRepositoryImpl(remoteDataSource: remote);
  });

  group('getFeed', () {
    test('returns Right when remote succeeds', () async {
      when(
        () => remote.getFeed(limit: any(named: 'limit'), cursor: any(named: 'cursor')),
      ).thenAnswer(
        (_) async => FeedPaginationModel(
          posts: [feedModel],
          hasMore: true,
          nextCursor: FeedCursor(
            createdAt: DateTime.utc(2024, 1, 1),
            id: 'cursor-1',
          ),
        ),
      );

      final result = await repository.getFeed(limit: 10, cursor: null);

      expect(result.isRight(), isTrue);
      expect(
        result.getOrElse(() => const FeedPaginationResult(posts: [], hasMore: false))
            .posts,
        isA<List<FeedEntity>>(),
      );
    });

    test('returns failure when remote throws', () async {
      when(
        () => remote.getFeed(limit: any(named: 'limit'), cursor: any(named: 'cursor')),
      ).thenThrow(Exception('boom'));

      final result = await repository.getFeed(limit: 10, cursor: null);

      expect(result.isLeft(), isTrue);
      result.fold(
        (failure) => expect(failure, isA<FeedFailure>()),
        (_) => fail('expected failure'),
      );
    });
  });

  group('addComment', () {
    test('maps CommentModel to entity', () async {
      final comment = CommentModel(
        id: 'comment-1',
        postId: 'post-1',
        userId: 'user-2',
        content: 'Nice!',
        createdAt: DateTime.utc(2024, 2, 2),
      );
      when(
        () => remote.addComment(
          postId: any(named: 'postId'),
          content: any(named: 'content'),
          parentCommentId: any(named: 'parentCommentId'),
        ),
      ).thenAnswer((_) async => comment);

      final result = await repository.addComment(
        postId: 'post-1',
        content: 'Nice!',
      );

      expect(result.isRight(), isTrue);
      result.fold(
        (_) => fail('expected comment entity'),
        (entity) => expect(entity, isA<CommentEntity>()),
      );
    });
  });

  group('getComments', () {
    test('returns pagination result on success', () async {
      when(
        () => remote.getComments(
          postId: any(named: 'postId'),
          limit: any(named: 'limit'),
          cursor: any(named: 'cursor'),
        ),
      ).thenAnswer(
        (_) async => CommentPaginationModel(
          comments: [
            CommentModel(
              id: 'comment-2',
              postId: 'post-1',
              userId: 'user-3',
              content: 'Great!',
              createdAt: DateTime.utc(2024, 3, 3),
            ),
          ],
          hasMore: false,
          nextCursor: null,
        ),
      );

      final result = await repository.getComments(
        postId: 'post-1',
        limit: 10,
      );

      expect(result.isRight(), isTrue);
      expect(
        result.getOrElse(() => throw StateError('no data')).comments.length,
        1,
      );
    });
  });
}
