// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_feed_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostFeedModel _$PostFeedModelFromJson(
  Map<String, dynamic> json,
) => _PostFeedModel(
  userId: json['userId'] as String,
  content: json['content'] as String,
  imageUrls:
      (json['imageUrls'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  videoUrls:
      (json['videoUrls'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  commentsEnabled: json['commentsEnabled'] as bool? ?? true,
  hideLikeCount: json['hideLikeCount'] as bool? ?? false,
  hideCommentCount: json['hideCommentCount'] as bool? ?? false,
  hideShareCount: json['hideShareCount'] as bool? ?? false,
  hideLikesList: json['hideLikesList'] as bool? ?? false,
  campaignId: json['campaignId'] as String?,
  campaignTitle: json['campaignTitle'] as String?,
);

Map<String, dynamic> _$PostFeedModelToJson(_PostFeedModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'content': instance.content,
      'imageUrls': instance.imageUrls,
      'videoUrls': instance.videoUrls,
      'commentsEnabled': instance.commentsEnabled,
      'hideLikeCount': instance.hideLikeCount,
      'hideCommentCount': instance.hideCommentCount,
      'hideShareCount': instance.hideShareCount,
      'hideLikesList': instance.hideLikesList,
      'campaignId': instance.campaignId,
      'campaignTitle': instance.campaignTitle,
    };
