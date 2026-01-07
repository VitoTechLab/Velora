import 'package:freezed_annotation/freezed_annotation.dart';

part 'feed_entity.freezed.dart';

@freezed
abstract class FeedEntity with _$FeedEntity {
  const FeedEntity._();

  const factory FeedEntity({
    required String id,
    required String userId,
    required String content,
    required DateTime createdAt,

    // User info (from profiles join)
    String? username,
    String? photoUrl,

    @Default(<String>[]) List<String> imageUrls,
    @Default(<String>[]) List<String> videoUrls,

    // Counts (nullable as they might be hidden)
    int? likesCount,
    int? commentsCount,
    int? sharesCount,

    // Interaction Status (computed by View)
    @Default(false) bool isLiked,
    @Default(false) bool isBookmarked,
    @Default(false) bool isFollowing,
    @Default(false) bool isFollowRequestPending,
    @Default(false) bool isMe,

    @Default(true) bool commentsEnabled,
    @Default(false) bool hideLikeCount,
    @Default(false) bool hideCommentCount,
    @Default(false) bool hideShareCount,
    @Default(false) bool hideLikesList,

    String? campaignId,
    String? campaignTitle,
  }) = _FeedEntity;
}
