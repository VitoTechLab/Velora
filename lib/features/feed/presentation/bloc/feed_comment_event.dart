import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/feed/domain/entities/comment_entity.dart';

part 'feed_comment_event.freezed.dart';

/// Events for feed comment BLoC.
@freezed
class FeedCommentEvent with _$FeedCommentEvent {
  /// Load initial root comments (no replies).
  const factory FeedCommentEvent.loadFeedComments({
    required String postId,
    int? limit,
  }) = LoadFeedCommentsEvent;

  /// Load more root comments using cursor.
  const factory FeedCommentEvent.loadMoreFeedComments({
    required String postId,
    required int limit,
  }) = LoadMoreFeedCommentsEvent;

  /// Load replies for a specific root comment.
  const factory FeedCommentEvent.loadReplies({
    required String parentCommentId,
  }) = LoadRepliesEvent;

  /// Add a new comment.
  const factory FeedCommentEvent.addFeedComment({
    required String postId,
    required String content,
    String? parentCommentId,
  }) = AddFeedCommentEvent;

  /// Delete a comment.
  const factory FeedCommentEvent.deleteFeedComment(String commentId) =
      DeleteFeedCommentEvent;

  /// Toggle like on a comment.
  const factory FeedCommentEvent.toggleFeedCommentLike(String commentId) =
      ToggleFeedCommentLikeEvent;

  /// Clear transient messages.
  const factory FeedCommentEvent.clearFeedCommentMessages() =
      ClearFeedCommentMessagesEvent;

  /// Start watching for new comments.
  const factory FeedCommentEvent.startWatchComments({required String postId}) =
      StartWatchCommentsEvent;

  /// Stop watching comments.
  const factory FeedCommentEvent.stopWatchComments() = StopWatchCommentsEvent;

  /// New comment arrived from stream.
  const factory FeedCommentEvent.watchCommentArrived({
    required CommentEntity comment,
  }) = WatchCommentArrivedEvent;

  /// Watch stream error.
  const factory FeedCommentEvent.watchError({required String message}) =
      WatchErrorEvent;
}
