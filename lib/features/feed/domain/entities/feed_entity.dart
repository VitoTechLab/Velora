import 'package:freezed_annotation/freezed_annotation.dart';

part 'feed_entity.freezed.dart';

@freezed
class FeedEntity with _$FeedEntity {
  const FeedEntity._();

  const factory FeedEntity({
    required String id,
    required String userId,
    required String content,
    required DateTime createdAt,
    String? username,
    String? photoUrl,
    @Default(<String>[]) List<String> mediaUrls,
    Map<String, dynamic>? location,
    @Default(<String>[]) List<String> tags,
    @Default(<String>[]) List<String> mentionIds,
    @Default(0) int likesCount,
    @Default(0) int commentsCount,
    @Default(0) int sharesCount,
    @Default(false) bool isLiked,
    @Default(false) bool isBookmarked,
    @Default(false) bool isFollowing,
    @Default(false) bool isFollowRequestPending,
    @Default(false) bool isMe,
    @Default(true) bool allowComments,
    @Default(true) bool allowShare,
    @Default(true) bool isActive,
    String? campaignId,
    String? campaignTitle,
  }) = _FeedEntity;

  List<String> get imageUrls => mediaUrls.where((url) {
        final lower = url.toLowerCase();
        return lower.endsWith('.jpg') ||
            lower.endsWith('.jpeg') ||
            lower.endsWith('.png') ||
            lower.endsWith('.gif') ||
            lower.endsWith('.webp');
      }).toList();

  List<String> get videoUrls => mediaUrls.where((url) {
        final lower = url.toLowerCase();
        return lower.endsWith('.mp4') ||
            lower.endsWith('.mov') ||
            lower.endsWith('.avi') ||
            lower.endsWith('.webm');
      }).toList();

  bool get hasMedia => mediaUrls.isNotEmpty;
  bool get hasImages => imageUrls.isNotEmpty;
  bool get hasVideos => videoUrls.isNotEmpty;
}
