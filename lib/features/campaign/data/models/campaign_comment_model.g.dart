// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign_comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CampaignCommentModel _$CampaignCommentModelFromJson(
  Map<String, dynamic> json,
) => _CampaignCommentModel(
  id: json['id'] as String,
  campaignId: json['campaign_id'] as String,
  userId: json['user_id'] as String,
  commentText: json['comment_text'] as String,
  parentId: json['parent_id'] as String?,
  createdAt: DateTime.parse(json['created_at'] as String),
  username: json['username'] as String?,
  displayName: json['display_name'] as String?,
  avatarUrl: json['avatar_url'] as String?,
);

Map<String, dynamic> _$CampaignCommentModelToJson(
  _CampaignCommentModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'campaign_id': instance.campaignId,
  'user_id': instance.userId,
  'comment_text': instance.commentText,
  'parent_id': instance.parentId,
  'created_at': instance.createdAt.toIso8601String(),
  'username': instance.username,
  'display_name': instance.displayName,
  'avatar_url': instance.avatarUrl,
};
