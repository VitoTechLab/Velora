// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_content_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EventPayloadModel _$EventPayloadModelFromJson(Map<String, dynamic> json) {
  return _EventPayloadModel.fromJson(json);
}

/// @nodoc
mixin _$EventPayloadModel {
  /// From message_event_payload table
  @JsonKey(name: 'message_id')
  String get messageId => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'location_name')
  String? get locationName => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_online')
  bool get isOnline => throw _privateConstructorUsedError;
  @JsonKey(name: 'meeting_url')
  String? get meetingUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'cover_url')
  String? get coverUrl => throw _privateConstructorUsedError;
  @UtcDateTimeConverter()
  @JsonKey(name: 'starts_at')
  DateTime get startsAt => throw _privateConstructorUsedError;
  @NullableUtcDateTimeConverter()
  @JsonKey(name: 'ends_at')
  DateTime? get endsAt => throw _privateConstructorUsedError;

  /// RSVP counts from v_event_with_rsvp view
  @JsonKey(name: 'going_count')
  int get goingCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'interested_count')
  int get interestedCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'not_going_count')
  int get notGoingCount => throw _privateConstructorUsedError;

  /// Current user's RSVP status: 'going', 'interested', 'not_going'
  @JsonKey(name: 'user_response')
  String? get userResponse => throw _privateConstructorUsedError;

  /// Serializes this EventPayloadModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EventPayloadModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EventPayloadModelCopyWith<EventPayloadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventPayloadModelCopyWith<$Res> {
  factory $EventPayloadModelCopyWith(
          EventPayloadModel value, $Res Function(EventPayloadModel) then) =
      _$EventPayloadModelCopyWithImpl<$Res, EventPayloadModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message_id') String messageId,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'location_name') String? locationName,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'is_online') bool isOnline,
      @JsonKey(name: 'meeting_url') String? meetingUrl,
      @JsonKey(name: 'cover_url') String? coverUrl,
      @UtcDateTimeConverter() @JsonKey(name: 'starts_at') DateTime startsAt,
      @NullableUtcDateTimeConverter()
      @JsonKey(name: 'ends_at')
      DateTime? endsAt,
      @JsonKey(name: 'going_count') int goingCount,
      @JsonKey(name: 'interested_count') int interestedCount,
      @JsonKey(name: 'not_going_count') int notGoingCount,
      @JsonKey(name: 'user_response') String? userResponse});
}

/// @nodoc
class _$EventPayloadModelCopyWithImpl<$Res, $Val extends EventPayloadModel>
    implements $EventPayloadModelCopyWith<$Res> {
  _$EventPayloadModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EventPayloadModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
    Object? title = null,
    Object? description = freezed,
    Object? locationName = freezed,
    Object? address = freezed,
    Object? isOnline = null,
    Object? meetingUrl = freezed,
    Object? coverUrl = freezed,
    Object? startsAt = null,
    Object? endsAt = freezed,
    Object? goingCount = null,
    Object? interestedCount = null,
    Object? notGoingCount = null,
    Object? userResponse = freezed,
  }) {
    return _then(_value.copyWith(
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      locationName: freezed == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
      meetingUrl: freezed == meetingUrl
          ? _value.meetingUrl
          : meetingUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      coverUrl: freezed == coverUrl
          ? _value.coverUrl
          : coverUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      startsAt: null == startsAt
          ? _value.startsAt
          : startsAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endsAt: freezed == endsAt
          ? _value.endsAt
          : endsAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      goingCount: null == goingCount
          ? _value.goingCount
          : goingCount // ignore: cast_nullable_to_non_nullable
              as int,
      interestedCount: null == interestedCount
          ? _value.interestedCount
          : interestedCount // ignore: cast_nullable_to_non_nullable
              as int,
      notGoingCount: null == notGoingCount
          ? _value.notGoingCount
          : notGoingCount // ignore: cast_nullable_to_non_nullable
              as int,
      userResponse: freezed == userResponse
          ? _value.userResponse
          : userResponse // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventPayloadModelImplCopyWith<$Res>
    implements $EventPayloadModelCopyWith<$Res> {
  factory _$$EventPayloadModelImplCopyWith(_$EventPayloadModelImpl value,
          $Res Function(_$EventPayloadModelImpl) then) =
      __$$EventPayloadModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message_id') String messageId,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'location_name') String? locationName,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'is_online') bool isOnline,
      @JsonKey(name: 'meeting_url') String? meetingUrl,
      @JsonKey(name: 'cover_url') String? coverUrl,
      @UtcDateTimeConverter() @JsonKey(name: 'starts_at') DateTime startsAt,
      @NullableUtcDateTimeConverter()
      @JsonKey(name: 'ends_at')
      DateTime? endsAt,
      @JsonKey(name: 'going_count') int goingCount,
      @JsonKey(name: 'interested_count') int interestedCount,
      @JsonKey(name: 'not_going_count') int notGoingCount,
      @JsonKey(name: 'user_response') String? userResponse});
}

/// @nodoc
class __$$EventPayloadModelImplCopyWithImpl<$Res>
    extends _$EventPayloadModelCopyWithImpl<$Res, _$EventPayloadModelImpl>
    implements _$$EventPayloadModelImplCopyWith<$Res> {
  __$$EventPayloadModelImplCopyWithImpl(_$EventPayloadModelImpl _value,
      $Res Function(_$EventPayloadModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventPayloadModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
    Object? title = null,
    Object? description = freezed,
    Object? locationName = freezed,
    Object? address = freezed,
    Object? isOnline = null,
    Object? meetingUrl = freezed,
    Object? coverUrl = freezed,
    Object? startsAt = null,
    Object? endsAt = freezed,
    Object? goingCount = null,
    Object? interestedCount = null,
    Object? notGoingCount = null,
    Object? userResponse = freezed,
  }) {
    return _then(_$EventPayloadModelImpl(
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      locationName: freezed == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
      meetingUrl: freezed == meetingUrl
          ? _value.meetingUrl
          : meetingUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      coverUrl: freezed == coverUrl
          ? _value.coverUrl
          : coverUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      startsAt: null == startsAt
          ? _value.startsAt
          : startsAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endsAt: freezed == endsAt
          ? _value.endsAt
          : endsAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      goingCount: null == goingCount
          ? _value.goingCount
          : goingCount // ignore: cast_nullable_to_non_nullable
              as int,
      interestedCount: null == interestedCount
          ? _value.interestedCount
          : interestedCount // ignore: cast_nullable_to_non_nullable
              as int,
      notGoingCount: null == notGoingCount
          ? _value.notGoingCount
          : notGoingCount // ignore: cast_nullable_to_non_nullable
              as int,
      userResponse: freezed == userResponse
          ? _value.userResponse
          : userResponse // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventPayloadModelImpl implements _EventPayloadModel {
  const _$EventPayloadModelImpl(
      {@JsonKey(name: 'message_id') required this.messageId,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'location_name') this.locationName,
      @JsonKey(name: 'address') this.address,
      @JsonKey(name: 'is_online') this.isOnline = false,
      @JsonKey(name: 'meeting_url') this.meetingUrl,
      @JsonKey(name: 'cover_url') this.coverUrl,
      @UtcDateTimeConverter()
      @JsonKey(name: 'starts_at')
      required this.startsAt,
      @NullableUtcDateTimeConverter() @JsonKey(name: 'ends_at') this.endsAt,
      @JsonKey(name: 'going_count') this.goingCount = 0,
      @JsonKey(name: 'interested_count') this.interestedCount = 0,
      @JsonKey(name: 'not_going_count') this.notGoingCount = 0,
      @JsonKey(name: 'user_response') this.userResponse});

  factory _$EventPayloadModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventPayloadModelImplFromJson(json);

  /// From message_event_payload table
  @override
  @JsonKey(name: 'message_id')
  final String messageId;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'location_name')
  final String? locationName;
  @override
  @JsonKey(name: 'address')
  final String? address;
  @override
  @JsonKey(name: 'is_online')
  final bool isOnline;
  @override
  @JsonKey(name: 'meeting_url')
  final String? meetingUrl;
  @override
  @JsonKey(name: 'cover_url')
  final String? coverUrl;
  @override
  @UtcDateTimeConverter()
  @JsonKey(name: 'starts_at')
  final DateTime startsAt;
  @override
  @NullableUtcDateTimeConverter()
  @JsonKey(name: 'ends_at')
  final DateTime? endsAt;

  /// RSVP counts from v_event_with_rsvp view
  @override
  @JsonKey(name: 'going_count')
  final int goingCount;
  @override
  @JsonKey(name: 'interested_count')
  final int interestedCount;
  @override
  @JsonKey(name: 'not_going_count')
  final int notGoingCount;

  /// Current user's RSVP status: 'going', 'interested', 'not_going'
  @override
  @JsonKey(name: 'user_response')
  final String? userResponse;

  @override
  String toString() {
    return 'EventPayloadModel(messageId: $messageId, title: $title, description: $description, locationName: $locationName, address: $address, isOnline: $isOnline, meetingUrl: $meetingUrl, coverUrl: $coverUrl, startsAt: $startsAt, endsAt: $endsAt, goingCount: $goingCount, interestedCount: $interestedCount, notGoingCount: $notGoingCount, userResponse: $userResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventPayloadModelImpl &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.locationName, locationName) ||
                other.locationName == locationName) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.isOnline, isOnline) ||
                other.isOnline == isOnline) &&
            (identical(other.meetingUrl, meetingUrl) ||
                other.meetingUrl == meetingUrl) &&
            (identical(other.coverUrl, coverUrl) ||
                other.coverUrl == coverUrl) &&
            (identical(other.startsAt, startsAt) ||
                other.startsAt == startsAt) &&
            (identical(other.endsAt, endsAt) || other.endsAt == endsAt) &&
            (identical(other.goingCount, goingCount) ||
                other.goingCount == goingCount) &&
            (identical(other.interestedCount, interestedCount) ||
                other.interestedCount == interestedCount) &&
            (identical(other.notGoingCount, notGoingCount) ||
                other.notGoingCount == notGoingCount) &&
            (identical(other.userResponse, userResponse) ||
                other.userResponse == userResponse));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      messageId,
      title,
      description,
      locationName,
      address,
      isOnline,
      meetingUrl,
      coverUrl,
      startsAt,
      endsAt,
      goingCount,
      interestedCount,
      notGoingCount,
      userResponse);

  /// Create a copy of EventPayloadModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventPayloadModelImplCopyWith<_$EventPayloadModelImpl> get copyWith =>
      __$$EventPayloadModelImplCopyWithImpl<_$EventPayloadModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventPayloadModelImplToJson(
      this,
    );
  }
}

abstract class _EventPayloadModel implements EventPayloadModel {
  const factory _EventPayloadModel(
          {@JsonKey(name: 'message_id') required final String messageId,
          @JsonKey(name: 'title') required final String title,
          @JsonKey(name: 'description') final String? description,
          @JsonKey(name: 'location_name') final String? locationName,
          @JsonKey(name: 'address') final String? address,
          @JsonKey(name: 'is_online') final bool isOnline,
          @JsonKey(name: 'meeting_url') final String? meetingUrl,
          @JsonKey(name: 'cover_url') final String? coverUrl,
          @UtcDateTimeConverter()
          @JsonKey(name: 'starts_at')
          required final DateTime startsAt,
          @NullableUtcDateTimeConverter()
          @JsonKey(name: 'ends_at')
          final DateTime? endsAt,
          @JsonKey(name: 'going_count') final int goingCount,
          @JsonKey(name: 'interested_count') final int interestedCount,
          @JsonKey(name: 'not_going_count') final int notGoingCount,
          @JsonKey(name: 'user_response') final String? userResponse}) =
      _$EventPayloadModelImpl;

  factory _EventPayloadModel.fromJson(Map<String, dynamic> json) =
      _$EventPayloadModelImpl.fromJson;

  /// From message_event_payload table
  @override
  @JsonKey(name: 'message_id')
  String get messageId;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'location_name')
  String? get locationName;
  @override
  @JsonKey(name: 'address')
  String? get address;
  @override
  @JsonKey(name: 'is_online')
  bool get isOnline;
  @override
  @JsonKey(name: 'meeting_url')
  String? get meetingUrl;
  @override
  @JsonKey(name: 'cover_url')
  String? get coverUrl;
  @override
  @UtcDateTimeConverter()
  @JsonKey(name: 'starts_at')
  DateTime get startsAt;
  @override
  @NullableUtcDateTimeConverter()
  @JsonKey(name: 'ends_at')
  DateTime? get endsAt;

  /// RSVP counts from v_event_with_rsvp view
  @override
  @JsonKey(name: 'going_count')
  int get goingCount;
  @override
  @JsonKey(name: 'interested_count')
  int get interestedCount;
  @override
  @JsonKey(name: 'not_going_count')
  int get notGoingCount;

  /// Current user's RSVP status: 'going', 'interested', 'not_going'
  @override
  @JsonKey(name: 'user_response')
  String? get userResponse;

  /// Create a copy of EventPayloadModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventPayloadModelImplCopyWith<_$EventPayloadModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
