import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/feed_failure.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/core/utils/log_alias.dart';
import 'package:velora/features/feed/data/datasources/feed_remote_datasource.dart';
import 'package:velora/features/feed/data/mapper/feed_payload_mapper.dart';
import 'package:velora/features/feed/data/models/comment_cursor_model.dart';
import 'package:velora/features/feed/data/models/feed_cursor_model.dart';
import 'package:velora/features/feed/domain/entities/comment_entity.dart';
import 'package:velora/features/feed/domain/entities/comment_cursor_entity.dart';
import 'package:velora/features/feed/domain/entities/comment_pagination_result.dart';
import 'package:velora/features/feed/domain/entities/feed_cursor_entity.dart';
import 'package:velora/features/feed/domain/entities/feed_entity.dart';
import 'package:velora/features/feed/domain/entities/feed_pagination_result.dart';
import 'package:velora/features/feed/domain/repositories/feed_repository.dart';

/// Implementation of feed repository using remote datasource
class FeedRepositoryImpl implements FeedRepository {
  FeedRepositoryImpl({required this.remoteDataSource});

  final FeedRemoteDataSource remoteDataSource;

  static const _logTag = 'FeedRepository';

  /// Update existing post with new content
  @override
  Future<Either<Failure, FeedEntity>> updatePost({
    required FeedEntity post,
  }) async {
    try {
      logi('updatePost - postId: ${post.id}', tag: _logTag);
      final payload = post.toUpdateFeedModel();
      final result = await remoteDataSource.updatePost(post.id, payload);
      return Right(result.toEntity());
    } catch (e) {
      loge('updatePost failed', error: e, tag: _logTag);
      return Left(FeedFailure.fromException(e));
    }
  }

  /// Fetch single post by ID
  @override
  Future<Either<Failure, FeedEntity>> getPostById(String postId) async {
    try {
      logi('getPostById - postId: $postId', tag: _logTag);
      final result = await remoteDataSource.getPostById(postId);
      return Right(result.toEntity());
    } catch (e) {
      loge('getPostById failed', error: e, tag: _logTag);
      return Left(FeedFailure.fromException(e));
    }
  }

  /// Delete post permanently
  @override
  Future<Either<Failure, void>> deletePost(String postId) async {
    try {
      logi('deletePost - postId: $postId', tag: _logTag);
      await remoteDataSource.deletePost(postId);
      return const Right(null);
    } catch (e) {
      loge('deletePost failed', error: e, tag: _logTag);
      return Left(FeedFailure.fromException(e));
    }
  }

  /// Fetch paginated feed posts with optional cursor and user filter
  @override
  Future<Either<Failure, FeedPaginationResult>> getFeed({
    required int limit,
    FeedCursorEntity? cursor,
    String? userId,
  }) async {
    try {
      logi('getFeed - cursor: $cursor, userId: $userId', tag: _logTag);
      final result = await remoteDataSource.getFeed(
        limit: limit,
        cursor: cursor != null
            ? FeedCursorModel(createdAt: cursor.createdAt, id: cursor.id)
            : null,
        userId: userId,
      );
      return Right(result.toEntity());
    } catch (e) {
      loge('getFeed failed', error: e, tag: _logTag);
      return Left(FeedFailure.fromException(e));
    }
  }

  /// Toggle like status on post (atomic operation)
  @override
  Future<Either<Failure, void>> toggleLikePost(String postId) async {
    try {
      logi('toggleLikePost - postId: $postId', tag: _logTag);
      await remoteDataSource.toggleLikePost(postId);
      return const Right(null);
    } catch (e) {
      loge('toggleLikePost failed', error: e, tag: _logTag);
      return Left(FeedFailure.fromException(e));
    }
  }

  /// Toggle bookmark status on post (atomic operation)
  @override
  Future<Either<Failure, void>> toggleBookmarkPost(String postId) async {
    try {
      logi('toggleBookmarkPost - postId: $postId', tag: _logTag);
      await remoteDataSource.toggleBookmarkPost(postId);
      return const Right(null);
    } catch (e) {
      loge('toggleBookmarkPost failed', error: e, tag: _logTag);
      return Left(FeedFailure.fromException(e));
    }
  }

  /// Fetch paginated comments for a post (root comments only)
  @override
  Future<Either<Failure, CommentPaginationResult>> getComments({
    required String postId,
    required int limit,
    CommentCursorEntity? cursor,
  }) async {
    try {
      logi('getComments - postId: $postId', tag: _logTag);
      final result = await remoteDataSource.getComments(
        postId: postId,
        limit: limit,
        cursor: cursor != null
            ? CommentCursorModel(createdAt: cursor.createdAt, id: cursor.id)
            : null,
      );
      return Right(result.toEntity());
    } catch (e) {
      loge('getComments failed', error: e, tag: _logTag);
      return Left(FeedFailure.fromException(e));
    }
  }

  /// Fetch all replies for a specific parent comment
  @override
  Future<Either<Failure, List<CommentEntity>>> getReplies({
    required String parentCommentId,
  }) async {
    try {
      logi('getReplies - parentCommentId: $parentCommentId', tag: _logTag);
      final result = await remoteDataSource.getReplies(
        parentCommentId: parentCommentId,
      );
      return Right(result.map((m) => m.toEntity()).toList());
    } catch (e) {
      loge('getReplies failed', error: e, tag: _logTag);
      return Left(FeedFailure.fromException(e));
    }
  }

  /// Add new comment or reply to post
  @override
  Future<Either<Failure, CommentEntity>> addComment({
    required String postId,
    required String content,
    String? parentCommentId,
  }) async {
    try {
      logi('addComment - postId: $postId, parent: $parentCommentId', tag: _logTag);
      final result = await remoteDataSource.addComment(
        postId: postId,
        content: content,
        parentCommentId: parentCommentId,
      );
      return Right(result.toEntity());
    } catch (e) {
      loge('addComment failed', error: e, tag: _logTag);
      return Left(FeedFailure.fromException(e));
    }
  }

  /// Delete comment permanently
  @override
  Future<Either<Failure, void>> deleteComment(String commentId) async {
    try {
      logi('deleteComment - commentId: $commentId', tag: _logTag);
      await remoteDataSource.deleteComment(commentId);
      return const Right(null);
    } catch (e) {
      loge('deleteComment failed', error: e, tag: _logTag);
      return Left(FeedFailure.fromException(e));
    }
  }

  /// Toggle like status on comment (atomic operation)
  @override
  Future<Either<Failure, void>> toggleLikeComment(String commentId) async {
    try {
      logi('toggleLikeComment - commentId: $commentId', tag: _logTag);
      await remoteDataSource.toggleLikeComment(commentId);
      return const Right(null);
    } catch (e) {
      loge('toggleLikeComment failed', error: e, tag: _logTag);
      return Left(FeedFailure.fromException(e));
    }
  }

  /// Stream realtime new comments for a post
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

  /// Stop watching realtime comments and cleanup
  @override
  Future<void> stopWatchComments() => remoteDataSource.stopWatch();

  /// Stream realtime feed changes (inserts, updates)
  @override
  Stream<Either<Failure, FeedEntity>> watchFeedChanges() async* {
    try {
      await for (final model in remoteDataSource.watchFeedChanges()) {
        yield Right(model.toEntity());
      }
    } catch (e) {
      yield Left(FeedFailure.fromException(e));
    }
  }

  /// Stop watching feed changes
  @override
  Future<void> stopWatchFeed() => remoteDataSource.stopWatchFeed();
}
