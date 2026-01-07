class CreatePostModel {
  const CreatePostModel({
    required this.userId,
    required this.content,
    List<String>? imageUrls,
    List<String>? videoUrls,
    this.commentsEnabled = true,
    this.hideLikeCount = false,
    this.hideCommentCount = false,
    this.hideShareCount = false,
    this.hideLikesList = false,
    this.campaignId,
    this.campaignTitle,
  }) : imageUrls = imageUrls ?? const [],
       videoUrls = videoUrls ?? const [];

  final String userId;
  final String content;
  final List<String> imageUrls;
  final List<String> videoUrls;
  final bool commentsEnabled;
  final bool hideLikeCount;
  final bool hideCommentCount;
  final bool hideShareCount;
  final bool hideLikesList;
  final String? campaignId;
  final String? campaignTitle;

  Map<String, dynamic> toJson() {
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
