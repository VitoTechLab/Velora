// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_content_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventPayloadModelImpl _$$EventPayloadModelImplFromJson(
        Map<String, dynamic> json) =>
    _$EventPayloadModelImpl(
      id: json['id'] as String,
      messageId: json['message_id'] as String,
      title: json['title'] as String,
      description: json['notes'] as String?,
      location: json['location'] as String?,
      startDate: const UtcDateTimeConverter().fromJson(json['starts_at']),
      endDate: const UtcDateTimeConverter().fromJson(json['ends_at']),
      goingCount: (json['going_count'] as num?)?.toInt() ?? 0,
      interestedCount: (json['interested_count'] as num?)?.toInt() ?? 0,
      notGoingCount: (json['not_going_count'] as num?)?.toInt() ?? 0,
      userResponse: json['user_response'] as String?,
    );

Map<String, dynamic> _$$EventPayloadModelImplToJson(
        _$EventPayloadModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'message_id': instance.messageId,
      'title': instance.title,
      'notes': instance.description,
      'location': instance.location,
      'starts_at': const UtcDateTimeConverter().toJson(instance.startDate),
      'ends_at': const UtcDateTimeConverter().toJson(instance.endDate),
      'going_count': instance.goingCount,
      'interested_count': instance.interestedCount,
      'not_going_count': instance.notGoingCount,
      'user_response': instance.userResponse,
    };
