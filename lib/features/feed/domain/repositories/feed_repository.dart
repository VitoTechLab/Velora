import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/feed/domain/entities/feed_cursor.dart';
import 'package:velora/features/feed/domain/entities/comment_entity.dart';
import 'package:velora/features/feed/domain/entities/feed_entity.dart';
import 'package:velora/features/feed/domain/entities/feed_pagination_result.dart';
import 'package:velora/features/feed/domain/entities/comment_pagination_result.dart';
import 'package:velora/features/feed/domain/entities/comment_cursor.dart';

/// Feed repository contract
abstract class FeedRepository {
  /// Get a single post by id
  Future<Either<Failure, FeedEntity>> getPostById(String postId);

  /// Update an existing post
  Future<Either<Failure, FeedEntity>> updatePost({required FeedEntity post});

  /// Delete a post
  Future<Either<Failure, void>> deletePost(String postId);

  /// Get feed with cursor-based pagination, optionally filtered by userId
  Future<Either<Failure, FeedPaginationResult>> getFeed({
    required int limit,
    FeedCursorEntity? cursor,
    String? userId,
  });

  /// Like/unlike a post
  Future<Either<Failure, void>> toggleLikePost(String postId);

  /// Bookmark/unBookmark a post
  Future<Either<Failure, void>> toggleBookmarkPost(String postId);

  /// Get comments for a post with cursor-based pagination
  Future<Either<Failure, CommentPaginationResult>> getComments({
    required String postId,
    required int limit,
    CommentCursorEntity? cursor,
  });

  /// Add comment to a post
  Future<Either<Failure, CommentEntity>> addComment({
    required String postId,
    required String content,
    String? parentCommentId,
  });

  /// Delete comment
  Future<Either<Failure, void>> deleteComment(String commentId);

  /// Toggle like on comment
  Future<Either<Failure, void>> toggleLikeComment(String commentId);

  /// Watch realtime comment inserts for a post
  Stream<Either<Failure, CommentEntity>> watchNewComments({
    required String postId,
  });

  /// Stop any active comment watch channel
  Future<void> stopWatchComments();
}
