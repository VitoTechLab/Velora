import 'package:freezed_annotation/freezed_annotation.dart';

part 'feed_entity.freezed.dart';

/// Feed post entity.
@freezed
abstract class FeedEntity with _$FeedEntity {
  const FeedEntity._();

  const factory FeedEntity({
    required String id,
    required String userId,
    required String content,
    required DateTime createdAt,
    String? username,
    String? photoUrl,
    @Default(<String>[]) List<String> imageUrls,
    @Default(<String>[]) List<String> videoUrls,
    int? likesCount,
    int? commentsCount,
    int? sharesCount,
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
