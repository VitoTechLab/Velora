import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_feed_entity.freezed.dart';

/// Entity for creating a new feed post with visibility settings
@freezed
abstract class PostFeedEntity with _$PostFeedEntity {
  const factory PostFeedEntity({
    required String userId,
    required String content,
    @Default([]) List<String> imageUrls,
    @Default([]) List<String> videoUrls,
    @Default(true) bool commentsEnabled,
    @Default(false) bool hideLikeCount,
    @Default(false) bool hideCommentCount,
    @Default(false) bool hideShareCount,
    @Default(false) bool hideLikesList,
    String? campaignId,
    String? campaignTitle,
  }) = _PostFeedEntity;
}
