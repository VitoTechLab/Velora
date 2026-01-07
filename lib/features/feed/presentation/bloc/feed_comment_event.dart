import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/feed/domain/entities/comment_entity.dart';

part 'feed_comment_event.freezed.dart';

@freezed
class FeedCommentEvent with _$FeedCommentEvent {
  const factory FeedCommentEvent.loadFeedComments({
    required String postId,
    int? limit,
  }) = LoadFeedCommentsEvent;

  const factory FeedCommentEvent.loadMoreFeedComments({
    required String postId,
    required int limit,
  }) = LoadMoreFeedCommentsEvent;

  const factory FeedCommentEvent.addFeedComment({
    required String postId,
    required String content,
    String? parentCommentId,
  }) = AddFeedCommentEvent;

  const factory FeedCommentEvent.deleteFeedComment(String commentId) =
      DeleteFeedCommentEvent;

  const factory FeedCommentEvent.toggleFeedCommentLike(String commentId) =
      ToggleFeedCommentLikeEvent;

  const factory FeedCommentEvent.clearFeedCommentMessages() =
      ClearFeedCommentMessagesEvent;

  const factory FeedCommentEvent.startWatchComments(String postId) =
      StartWatchCommentsEvent;

  const factory FeedCommentEvent.stopWatchComments() = StopWatchCommentsEvent;

  const factory FeedCommentEvent.watchCommentArrived(CommentEntity comment) =
      WatchCommentArrivedEvent;

  const factory FeedCommentEvent.watchError(String message) = WatchErrorEvent;
}
