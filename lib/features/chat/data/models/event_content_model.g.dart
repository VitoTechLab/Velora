// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_content_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventPayloadModelImpl _$$EventPayloadModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EventPayloadModelImpl(
      messageId: json['message_id'] as String,
      title: json['title'] as String,
      description: json['description'] as String?,
      locationName: json['location_name'] as String?,
      address: json['address'] as String?,
      isOnline: json['is_online'] as bool? ?? false,
      meetingUrl: json['meeting_url'] as String?,
      coverUrl: json['cover_url'] as String?,
      startsAt: const UtcDateTimeConverter().fromJson(json['starts_at']),
      endsAt: const NullableUtcDateTimeConverter().fromJson(json['ends_at']),
      goingCount: (json['going_count'] as num?)?.toInt() ?? 0,
      interestedCount: (json['interested_count'] as num?)?.toInt() ?? 0,
      notGoingCount: (json['not_going_count'] as num?)?.toInt() ?? 0,
      userResponse: json['user_response'] as String?,
    );

Map<String, dynamic> _$$EventPayloadModelImplToJson(
        _$EventPayloadModelImpl instance) =>
    <String, dynamic>{
      'message_id': instance.messageId,
      'title': instance.title,
      'description': instance.description,
      'location_name': instance.locationName,
      'address': instance.address,
      'is_online': instance.isOnline,
      'meeting_url': instance.meetingUrl,
      'cover_url': instance.coverUrl,
      'starts_at': const UtcDateTimeConverter().toJson(instance.startsAt),
      'ends_at': const NullableUtcDateTimeConverter().toJson(instance.endsAt),
      'going_count': instance.goingCount,
      'interested_count': instance.interestedCount,
      'not_going_count': instance.notGoingCount,
      'user_response': instance.userResponse,
    };
