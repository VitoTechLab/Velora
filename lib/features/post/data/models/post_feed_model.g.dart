// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_feed_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostFeedModelImpl _$$PostFeedModelImplFromJson(Map<String, dynamic> json) =>
    _$PostFeedModelImpl(
      userId: json['userId'] as String,
      content: json['content'] as String,
      mediaUrls: (json['mediaUrls'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      mentionIds: (json['mentionIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      location: json['location'] as Map<String, dynamic>?,
      allowComments: json['allowComments'] as bool? ?? true,
      allowShare: json['allowShare'] as bool? ?? true,
      campaignTitle: json['campaignTitle'] as String?,
    );

Map<String, dynamic> _$$PostFeedModelImplToJson(_$PostFeedModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'content': instance.content,
      'mediaUrls': instance.mediaUrls,
      'tags': instance.tags,
      'mentionIds': instance.mentionIds,
      'location': instance.location,
      'allowComments': instance.allowComments,
      'allowShare': instance.allowShare,
      'campaignTitle': instance.campaignTitle,
    };
