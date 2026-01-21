import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/feed/domain/entities/comment_cursor_entity.dart';
import 'package:velora/features/feed/domain/entities/comment_entity.dart';
import 'package:velora/features/feed/domain/entities/comment_pagination_result.dart';
import 'package:velora/features/feed/domain/entities/feed_cursor_entity.dart';
import 'package:velora/features/feed/domain/entities/feed_entity.dart';
import 'package:velora/features/feed/domain/entities/feed_pagination_result.dart';

/// Feed repository contract.
abstract class FeedRepository {
  /// Fetches a single post by id.
  Future<Either<Failure, FeedEntity>> getPostById(String postId);

  /// Updates an existing post.
  Future<Either<Failure, FeedEntity>> updatePost({required FeedEntity post});

  /// Deletes a post.
  Future<Either<Failure, void>> deletePost(String postId);

  /// Fetches feed with cursor-based pagination.
  Future<Either<Failure, FeedPaginationResult>> getFeed({
    required int limit,
    FeedCursorEntity? cursor,
    String? userId,
  });

  /// Toggles like on a post.
  Future<Either<Failure, void>> toggleLikePost(String postId);

  /// Toggles bookmark on a post.
  Future<Either<Failure, void>> toggleBookmarkPost(String postId);

  /// Fetches root comments for a post with pagination (no replies).
  Future<Either<Failure, CommentPaginationResult>> getComments({
    required String postId,
    required int limit,
    CommentCursorEntity? cursor,
  });

  /// Fetches replies for a specific root comment.
  Future<Either<Failure, List<CommentEntity>>> getReplies({
    required String parentCommentId,
  });

  /// Adds a comment to a post.
  Future<Either<Failure, CommentEntity>> addComment({
    required String postId,
    required String content,
    String? parentCommentId,
  });

  /// Deletes a comment.
  Future<Either<Failure, void>> deleteComment(String commentId);

  /// Toggles like on a comment.
  Future<Either<Failure, void>> toggleLikeComment(String commentId);

  /// Watches realtime comment inserts for a post.
  Stream<Either<Failure, CommentEntity>> watchNewComments({
    required String postId,
  });

  /// Stops any active comment watch channel.
  Future<void> stopWatchComments();

  /// Watches realtime feed post changes (new posts, updates, deletes).
  Stream<Either<Failure, FeedEntity>> watchFeedChanges();

  /// Stops watching feed changes.
  Future<void> stopWatchFeed();
}
