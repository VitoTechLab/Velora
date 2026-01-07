import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/feed_failure.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/core/utils/log_alias.dart';
import 'package:velora/features/feed/data/datasources/feed_remote_datasource.dart';
import 'package:velora/features/feed/data/mapper/feed_payload_mapper.dart';
import 'package:velora/features/feed/data/models/comment_cursor.dart';
import 'package:velora/features/feed/data/models/feed_cursor.dart';
import 'package:velora/features/feed/domain/entities/comment_cursor.dart';
import 'package:velora/features/feed/domain/entities/comment_entity.dart';
import 'package:velora/features/feed/domain/entities/feed_cursor.dart';
import 'package:velora/features/feed/domain/entities/feed_entity.dart';
import 'package:velora/features/feed/domain/entities/feed_pagination_result.dart';
import 'package:velora/features/feed/domain/entities/comment_pagination_result.dart';
import 'package:velora/features/feed/domain/repositories/feed_repository.dart';

class FeedRepositoryImpl implements FeedRepository {
  final FeedRemoteDataSource remoteDataSource;

  FeedRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, FeedEntity>> updatePost({
    required FeedEntity post,
  }) async {
    try {
      logi('[FEED REPOSITORY] updatePost - Post: ${post.id}');
      final payload = post.toUpdateFeedModel();
      final result = await remoteDataSource.updatePost(post.id, payload);
      return Right(result.toEntity());
    } catch (e) {
      loge('[FEED REPOSITORY ERROR] updatePost', error: e);
      return Left(FeedFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, FeedEntity>> getPostById(String postId) async {
    try {
      logi('[FEED REPOSITORY] getPostById - Post: $postId');
      final result = await remoteDataSource.getPostById(postId);
      return Right(result.toEntity());
    } catch (e) {
      loge('[FEED REPOSITORY ERROR] getPostById', error: e);
      return Left(FeedFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, void>> deletePost(String postId) async {
    try {
      logi('[FEED REPOSITORY] deletePost - Post: $postId');
      await remoteDataSource.deletePost(postId);
      return const Right(null);
    } catch (e) {
      loge('[FEED REPOSITORY ERROR] deletePost', error: e);
      return Left(FeedFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, FeedPaginationResult>> getFeed({
    required int limit,
    FeedCursorEntity? cursor,
    String? userId,
  }) async {
    try {
      logi('[FEED REPOSITORY] getFeed - cursor: $cursor, userId: $userId');
      final result = await remoteDataSource.getFeed(
        limit: limit,
        cursor: cursor != null
            ? FeedCursor(createdAt: cursor.createdAt, id: cursor.id)
            : null,
        userId: userId,
      );
      return Right(result.toEntity());
    } catch (e) {
      loge('[FEED REPOSITORY ERROR] getFeed', error: e);
      return Left(FeedFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, void>> toggleLikePost(String postId) async {
    try {
      logi('[FEED REPOSITORY] toggleLikePost - Post: $postId');
      await remoteDataSource.toggleLikePost(postId);
      return const Right(null);
    } catch (e) {
      loge('[FEED REPOSITORY ERROR] toggleLikePost', error: e);
      return Left(FeedFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, void>> toggleBookmarkPost(String postId) async {
    try {
      logi('[FEED REPOSITORY] toggleBookmarkPost - Post: $postId');
      await remoteDataSource.toggleBookmarkPost(postId);
      return const Right(null);
    } catch (e) {
      loge('[FEED REPOSITORY ERROR] toggleBookmarkPost', error: e);
      return Left(FeedFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, CommentPaginationResult>> getComments({
    required String postId,
    required int limit,
    CommentCursorEntity? cursor,
  }) async {
    try {
      logi('[FEED REPOSITORY] getComments - Post: $postId');
      final result = await remoteDataSource.getComments(
        postId: postId,
        limit: limit,
        cursor: cursor == null
            ? null
            : CommentCursor(createdAt: cursor.createdAt, id: cursor.id),
      );
      return Right(result.toEntity());
    } catch (e) {
      loge('[FEED REPOSITORY ERROR] getComments', error: e);
      return Left(FeedFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, CommentEntity>> addComment({
    required String postId,
    required String content,
    String? parentCommentId,
  }) async {
    try {
      logi('[FEED REPOSITORY] addComment - Post: $postId');
      final result = await remoteDataSource.addComment(
        postId: postId,
        content: content,
        parentCommentId: parentCommentId,
      );
      return Right(result.toEntity());
    } catch (e) {
      loge('[FEED REPOSITORY ERROR] addComment', error: e);
      return Left(FeedFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, void>> deleteComment(String commentId) async {
    try {
      logi('[FEED REPOSITORY] deleteComment - Comment: $commentId');
      await remoteDataSource.deleteComment(commentId);
      return const Right(null);
    } catch (e) {
      loge('[FEED REPOSITORY ERROR] deleteComment', error: e);
      return Left(Failure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, void>> toggleLikeComment(String commentId) async {
    try {
      logi('[FEED REPOSITORY] toggleLikeComment - Comment: $commentId');
      await remoteDataSource.toggleLikeComment(commentId);
      return const Right(null);
    } catch (e) {
      loge('[FEED REPOSITORY ERROR] toggleLikeComment', error: e);
      return Left(Failure.fromException(e));
    }
  }

  @override
  Stream<Either<Failure, CommentEntity>> watchNewComments({
    required String postId,
  }) async* {
    try {
      await for (final model in remoteDataSource.watchNewComments(
        postId: postId,
      )) {
        yield Right(model.toEntity());
      }
    } catch (e) {
      yield Left(FeedFailure.fromException(e));
    }
  }

  @override
  Future<void> stopWatchComments() => remoteDataSource.stopWatch();
}
