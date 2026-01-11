import 'package:velora/features/feed/data/models/comment_cursor_model.dart';
import 'package:velora/features/feed/data/models/comment_model.dart';
import 'package:velora/features/feed/data/models/comment_pagination_model.dart';
import 'package:velora/features/feed/data/models/feed_cursor_model.dart';
import 'package:velora/features/feed/data/models/feed_model.dart';
import 'package:velora/features/feed/data/models/feed_pagination_model.dart';
import 'package:velora/features/feed/data/models/update_feed_model.dart';

/// Remote data source contract for feed operations.
abstract class FeedRemoteDataSource {
  /// Fetches a single post by id.
  Future<FeedModel> getPostById(String postId);

  /// Updates an existing post.
  Future<FeedModel> updatePost(String postId, UpdateFeedModel payload);

  /// Deletes a post permanently.
  Future<void> deletePost(String postId);

  /// Fetches feed with cursor-based pagination.
  Future<FeedPaginationModel> getFeed({
    int limit = 20,
    FeedCursorModel? cursor,
    String? userId,
  });

  /// Toggles like on a post.
  Future<void> toggleLikePost(String postId);

  /// Toggles bookmark on a post.
  Future<void> toggleBookmarkPost(String postId);

  /// Fetches root comments for a post with pagination (no replies).
  Future<CommentPaginationModel> getComments({
    required String postId,
    int limit = 20,
    CommentCursorModel? cursor,
  });

  /// Fetches replies for a specific root comment.
  Future<List<CommentModel>> getReplies({
    required String parentCommentId,
  });

  /// Adds a comment to a post.
  Future<CommentModel> addComment({
    required String postId,
    required String content,
    String? parentCommentId,
  });

  /// Deletes a comment.
  Future<void> deleteComment(String commentId);

  /// Toggles like on a comment.
  Future<void> toggleLikeComment(String commentId);

  /// Watches realtime comment inserts for a post.
  Stream<CommentModel> watchNewComments({required String postId});

  /// Stops any active comment watch channel.
  Future<void> stopWatch();
}
