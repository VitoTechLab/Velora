import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/feed/domain/entities/feed_entity.dart';

part 'feed_event.freezed.dart';

/// Events for feed BLoC.
@freezed
abstract class FeedEvent with _$FeedEvent {
  /// Load initial feed (first page).
  const factory FeedEvent.loadInitialFeed({
    @Default(20) int limit,
    String? userId,
  }) = LoadInitialFeedEvent;

  /// Load more feed using cursor.
  const factory FeedEvent.loadMoreFeed({
    @Default(20) int limit,
    String? userId,
  }) = LoadMoreFeedEvent;

  /// Fetch a single post by ID.
  const factory FeedEvent.getPostById({required String postId}) =
      GetPostByIdEvent;

  /// Update a post entity in state.
  const factory FeedEvent.updatePostEntity({required FeedEntity post}) =
      UpdatePostEvent;

  /// Delete a post.
  const factory FeedEvent.deletePost({required String postId}) =
      DeletePostEvent;

  /// Refresh feed (pull-to-refresh).
  const factory FeedEvent.refreshFeed() = RefreshFeedEvent;

  /// Toggle like on a post.
  const factory FeedEvent.toggleLikePost(String postId) = ToggleLikePostEvent;

  /// Toggle bookmark on a post.
  const factory FeedEvent.toggleBookmarkPost(String postId) =
      ToggleBookmarkPostEvent;

  /// Add new post to top of feed.
  const factory FeedEvent.addNewPost(FeedEntity post) = AddNewPostEvent;

  /// Clear transient UI messages.
  const factory FeedEvent.clearTransient() = ClearTransientEvent;

  /// Start watching realtime feed changes.
  const factory FeedEvent.startWatchFeed() = StartWatchFeedEvent;

  /// Stop watching realtime feed changes.
  const factory FeedEvent.stopWatchFeed() = StopWatchFeedEvent;

  /// Handle new post arrived from realtime.
  const factory FeedEvent.feedPostArrived(FeedEntity post) = FeedPostArrivedEvent;
}
