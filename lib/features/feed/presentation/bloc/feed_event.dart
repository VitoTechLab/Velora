import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/feed/domain/entities/feed_entity.dart';

part 'feed_event.freezed.dart';

@freezed
class FeedEvent with _$FeedEvent {
  /// Load initial feed (first page) using cursor-based pagination
  const factory FeedEvent.loadInitialFeed({
    @Default(20) int limit,
    String? userId,
  }) = LoadInitialFeedEvent;

  /// Load more feed using existing cursor
  const factory FeedEvent.loadMoreFeed({
    @Default(20) int limit,
    String? userId,
  }) = LoadMoreFeedEvent;

  /// Fetch a single post
  const factory FeedEvent.getPostById({required String postId}) =
      GetPostByIdEvent;
  const factory FeedEvent.updatePostEntity({required FeedEntity post}) =
      UpdatePostEvent;

  /// Delete a post
  const factory FeedEvent.deletePost({required String postId}) =
      DeletePostEvent;

  /// Refresh feed (pull-to-refresh)
  const factory FeedEvent.refreshFeed() = RefreshFeedEvent;

  /// Toggle like on a post
  const factory FeedEvent.toggleLikePost(String postId) = ToggleLikePostEvent;

  /// Toggle bookmark on a post
  const factory FeedEvent.toggleBookmarkPost(String postId) =
      ToggleBookmarkPostEvent;

  /// Add new post to top of feed (for auto-add after create)
  const factory FeedEvent.addNewPost(FeedEntity post) = AddNewPostEvent;

  /// Load comments for a post
  const factory FeedEvent.loadComments({required String postId, int? limit}) =
      LoadCommentsEvent;

  /// Add a comment to a post
  const factory FeedEvent.addComment({
    required String postId,
    required String content,
    String? parentCommentId,
  }) = AddCommentEvent;

  /// Delete a comment
  const factory FeedEvent.deleteComment(String commentId) = DeleteCommentEvent;

  /// Toggle like on comment
  const factory FeedEvent.toggleLikeComment(String commentId) =
      ToggleLikeCommentEvent;

  /// Clear transient UI messages/errors
  const factory FeedEvent.clearTransient() = ClearTransientEvent;
}
