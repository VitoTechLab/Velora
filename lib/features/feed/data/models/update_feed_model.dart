import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/core/serialization/json_converters.dart';

part 'update_feed_model.freezed.dart';
part 'update_feed_model.g.dart';

@freezed
abstract class UpdateFeedModel with _$UpdateFeedModel {
  @JsonSerializable(includeIfNull: false)
  const factory UpdateFeedModel({
    @JsonKey(name: 'caption') String? content,
    @StringListConverter() @JsonKey(name: 'media_urls') List<String>? mediaUrls,
    @JsonKey(name: 'location') Map<String, dynamic>? location,
    @StringListConverter() @JsonKey(name: 'tags') List<String>? tags,
    @StringListConverter() @JsonKey(name: 'mention_ids') List<String>? mentionIds,
    @JsonKey(name: 'allow_comments') bool? allowComments,
    @JsonKey(name: 'allow_share') bool? allowShare,
    @JsonKey(name: 'is_active') bool? isActive,
    @JsonKey(name: 'campaign_id') String? campaignId,
    @JsonKey(name: 'campaign_title') String? campaignTitle,
  }) = _UpdateFeedModel;

  factory UpdateFeedModel.fromJson(Map<String, dynamic> json) => _$UpdateFeedModelFromJson(json);
}
