import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/core/serialization/json_converters.dart';

part 'update_feed_model.freezed.dart';
part 'update_feed_model.g.dart';

/// Model for updating feed post fields.
@freezed
abstract class UpdateFeedModel with _$UpdateFeedModel {
  @JsonSerializable(includeIfNull: false)
  const factory UpdateFeedModel({
    @JsonKey(name: 'content') String? content,
    @StringListConverter() @JsonKey(name: 'image_urls') List<String>? imageUrls,
    @StringListConverter() @JsonKey(name: 'video_urls') List<String>? videoUrls,

    // Post privacy settings
    @JsonKey(name: 'comments_enabled') bool? commentsEnabled,
    @JsonKey(name: 'hide_like_count') bool? hideLikeCount,
    @JsonKey(name: 'hide_comment_count') bool? hideCommentCount,
    @JsonKey(name: 'hide_share_count') bool? hideShareCount,
    @JsonKey(name: 'hide_likes_list') bool? hideLikesList,

    // Campaign association
    @JsonKey(name: 'campaign_id') String? campaignId,
    @JsonKey(name: 'campaign_title') String? campaignTitle,
  }) = _UpdateFeedModel;

  factory UpdateFeedModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateFeedModelFromJson(json);
}
