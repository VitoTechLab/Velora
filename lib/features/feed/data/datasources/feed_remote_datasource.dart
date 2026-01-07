import 'package:velora/features/feed/data/models/comment_cursor.dart';
import 'package:velora/features/feed/data/models/update_feed_model.dart';
import 'package:velora/features/feed/data/models/feed_model.dart';
import 'package:velora/features/feed/data/models/comment_model.dart';
import 'package:velora/features/feed/data/models/comment_pagination_model.dart';
import 'package:velora/features/feed/data/models/feed_pagination_model.dart';
import 'package:velora/features/feed/data/models/feed_cursor.dart';

abstract class FeedRemoteDataSource {
  /// Get a single post by id
  Future<FeedModel> getPostById(String postId);

  /// Update an existing post
  Future<FeedModel> updatePost(String postId, UpdateFeedModel post);

  /// Delete a post permanently
  Future<void> deletePost(String postId);

  /// Get feed with cursor-based pagination, optionally filtered by userId
  Future<FeedPaginationModel> getFeed({
    int limit = 20,
    FeedCursor? cursor,
    String? userId,
  });

  /// Toggle like on a post
  Future<void> toggleLikePost(String postId);

  /// Toggle bookmark on a post
  Future<void> toggleBookmarkPost(String postId);

  /// Get comments for a post with cursor-based pagination
  Future<CommentPaginationModel> getComments({
    required String postId,
    int limit = 20,
    CommentCursor? cursor,
  });

  /// Add a comment to a post
  Future<CommentModel> addComment({
    required String postId,
    required String content,
    String? parentCommentId,
  });

  /// Delete a comment
  Future<void> deleteComment(String commentId);

  /// Toggle like on a comment
  Future<void> toggleLikeComment(String commentId);

  /// Watch realtime comment inserts for a post
  Stream<CommentModel> watchNewComments({required String postId});

  /// Stop any active comment watch channel
  Future<void> stopWatch();
}
