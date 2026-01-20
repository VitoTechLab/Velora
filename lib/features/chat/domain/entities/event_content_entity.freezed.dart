// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_content_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EventPayloadEntity {
  String get messageId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get locationName => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  bool get isOnline => throw _privateConstructorUsedError;
  String? get meetingUrl => throw _privateConstructorUsedError;
  String? get coverUrl => throw _privateConstructorUsedError;
  DateTime get startsAt => throw _privateConstructorUsedError;
  DateTime? get endsAt =>
      throw _privateConstructorUsedError; // RSVP counts from v_event_with_rsvp
  int get goingCount => throw _privateConstructorUsedError;
  int get interestedCount => throw _privateConstructorUsedError;
  int get notGoingCount =>
      throw _privateConstructorUsedError; // Current user RSVP response: 'going', 'interested', 'not_going'
  String? get userResponse => throw _privateConstructorUsedError;

  /// Create a copy of EventPayloadEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EventPayloadEntityCopyWith<EventPayloadEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventPayloadEntityCopyWith<$Res> {
  factory $EventPayloadEntityCopyWith(
          EventPayloadEntity value, $Res Function(EventPayloadEntity) then) =
      _$EventPayloadEntityCopyWithImpl<$Res, EventPayloadEntity>;
  @useResult
  $Res call(
      {String messageId,
      String title,
      String? description,
      String? locationName,
      String? address,
      bool isOnline,
      String? meetingUrl,
      String? coverUrl,
      DateTime startsAt,
      DateTime? endsAt,
      int goingCount,
      int interestedCount,
      int notGoingCount,
      String? userResponse});
}

/// @nodoc
class _$EventPayloadEntityCopyWithImpl<$Res, $Val extends EventPayloadEntity>
    implements $EventPayloadEntityCopyWith<$Res> {
  _$EventPayloadEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EventPayloadEntity
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
abstract class _$$EventPayloadEntityImplCopyWith<$Res>
    implements $EventPayloadEntityCopyWith<$Res> {
  factory _$$EventPayloadEntityImplCopyWith(_$EventPayloadEntityImpl value,
          $Res Function(_$EventPayloadEntityImpl) then) =
      __$$EventPayloadEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String messageId,
      String title,
      String? description,
      String? locationName,
      String? address,
      bool isOnline,
      String? meetingUrl,
      String? coverUrl,
      DateTime startsAt,
      DateTime? endsAt,
      int goingCount,
      int interestedCount,
      int notGoingCount,
      String? userResponse});
}

/// @nodoc
class __$$EventPayloadEntityImplCopyWithImpl<$Res>
    extends _$EventPayloadEntityCopyWithImpl<$Res, _$EventPayloadEntityImpl>
    implements _$$EventPayloadEntityImplCopyWith<$Res> {
  __$$EventPayloadEntityImplCopyWithImpl(_$EventPayloadEntityImpl _value,
      $Res Function(_$EventPayloadEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventPayloadEntity
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
    return _then(_$EventPayloadEntityImpl(
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

class _$EventPayloadEntityImpl implements _EventPayloadEntity {
  const _$EventPayloadEntityImpl(
      {required this.messageId,
      required this.title,
      this.description,
      this.locationName,
      this.address,
      this.isOnline = false,
      this.meetingUrl,
      this.coverUrl,
      required this.startsAt,
      this.endsAt,
      this.goingCount = 0,
      this.interestedCount = 0,
      this.notGoingCount = 0,
      this.userResponse});

  @override
  final String messageId;
  @override
  final String title;
  @override
  final String? description;
  @override
  final String? locationName;
  @override
  final String? address;
  @override
  @JsonKey()
  final bool isOnline;
  @override
  final String? meetingUrl;
  @override
  final String? coverUrl;
  @override
  final DateTime startsAt;
  @override
  final DateTime? endsAt;
// RSVP counts from v_event_with_rsvp
  @override
  @JsonKey()
  final int goingCount;
  @override
  @JsonKey()
  final int interestedCount;
  @override
  @JsonKey()
  final int notGoingCount;
// Current user RSVP response: 'going', 'interested', 'not_going'
  @override
  final String? userResponse;

  @override
  String toString() {
    return 'EventPayloadEntity(messageId: $messageId, title: $title, description: $description, locationName: $locationName, address: $address, isOnline: $isOnline, meetingUrl: $meetingUrl, coverUrl: $coverUrl, startsAt: $startsAt, endsAt: $endsAt, goingCount: $goingCount, interestedCount: $interestedCount, notGoingCount: $notGoingCount, userResponse: $userResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventPayloadEntityImpl &&
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

  /// Create a copy of EventPayloadEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventPayloadEntityImplCopyWith<_$EventPayloadEntityImpl> get copyWith =>
      __$$EventPayloadEntityImplCopyWithImpl<_$EventPayloadEntityImpl>(
          this, _$identity);
}

abstract class _EventPayloadEntity implements EventPayloadEntity {
  const factory _EventPayloadEntity(
      {required final String messageId,
      required final String title,
      final String? description,
      final String? locationName,
      final String? address,
      final bool isOnline,
      final String? meetingUrl,
      final String? coverUrl,
      required final DateTime startsAt,
      final DateTime? endsAt,
      final int goingCount,
      final int interestedCount,
      final int notGoingCount,
      final String? userResponse}) = _$EventPayloadEntityImpl;

  @override
  String get messageId;
  @override
  String get title;
  @override
  String? get description;
  @override
  String? get locationName;
  @override
  String? get address;
  @override
  bool get isOnline;
  @override
  String? get meetingUrl;
  @override
  String? get coverUrl;
  @override
  DateTime get startsAt;
  @override
  DateTime? get endsAt; // RSVP counts from v_event_with_rsvp
  @override
  int get goingCount;
  @override
  int get interestedCount;
  @override
  int get notGoingCount; // Current user RSVP response: 'going', 'interested', 'not_going'
  @override
  String? get userResponse;

  /// Create a copy of EventPayloadEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventPayloadEntityImplCopyWith<_$EventPayloadEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
