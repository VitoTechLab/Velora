import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_feed_model.freezed.dart';
part 'post_feed_model.g.dart';

/// Data model for creating a new feed post
@freezed
abstract class PostFeedModel with _$PostFeedModel {
  const factory PostFeedModel({
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
  }) = _PostFeedModel;

  const PostFeedModel._();

  factory PostFeedModel.fromJson(Map<String, dynamic> json) =>
      _$PostFeedModelFromJson(json);

  /// Convert model to JSON for Supabase insert
  Map<String, dynamic> toSupabaseJson() {
    final data = <String, dynamic>{
      'user_id': userId,
      'content': content,
      'image_urls': imageUrls,
      'video_urls': videoUrls,
      'comments_enabled': commentsEnabled,
      'hide_like_count': hideLikeCount,
      'hide_comment_count': hideCommentCount,
      'hide_share_count': hideShareCount,
      'hide_likes_list': hideLikesList,
    };

    if (campaignId != null && campaignId!.isNotEmpty) {
      data['campaign_id'] = campaignId;
    }
    if (campaignTitle != null && campaignTitle!.isNotEmpty) {
      data['campaign_title'] = campaignTitle;
    }
    return data;
  }
}
