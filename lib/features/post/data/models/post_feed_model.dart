import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_feed_model.freezed.dart';

@freezed
abstract class PostFeedModel with _$PostFeedModel {
  const factory PostFeedModel({
    required String userId,
    required String content,
    @Default([]) List<String> mediaUrls,
    @Default([]) List<String> tags,
    @Default([]) List<String> mentionIds,
    Map<String, dynamic>? location,
    @Default(true) bool allowComments,
    @Default(true) bool allowShare,
    String? campaignTitle,
  }) = _PostFeedModel;

  const PostFeedModel._();

  factory PostFeedModel.fromJson(Map<String, dynamic> json) => _$PostFeedModelFromJson(json);

  Map<String, dynamic> toSupabaseJson() {
    final data = <String, dynamic>{
      'user_id': userId,
      'caption': content,
      'media_urls': mediaUrls,
      'allow_comments': allowComments,
      'allow_share': allowShare,
    };

    if (tags.isNotEmpty) {
      data['tags'] = tags;
    }
    if (mentionIds.isNotEmpty) {
      data['mention_ids'] = mentionIds;
    }
    if (location != null) {
      data['location'] = location;
    }
    if (campaignTitle != null && campaignTitle!.isNotEmpty) {
      data['campaign_title'] = campaignTitle;
    }
    return data;
  }
}
