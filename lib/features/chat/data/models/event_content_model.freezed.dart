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
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'message_id')
  String get messageId => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'notes')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'location')
  String? get location => throw _privateConstructorUsedError;
  @UtcDateTimeConverter()
  @JsonKey(name: 'starts_at')
  DateTime get startDate => throw _privateConstructorUsedError;
  @UtcDateTimeConverter()
  @JsonKey(name: 'ends_at')
  DateTime get endDate => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'message_id') String messageId,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'notes') String? description,
      @JsonKey(name: 'location') String? location,
      @UtcDateTimeConverter() @JsonKey(name: 'starts_at') DateTime startDate,
      @UtcDateTimeConverter() @JsonKey(name: 'ends_at') DateTime endDate,
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
    Object? id = null,
    Object? messageId = null,
    Object? title = null,
    Object? description = freezed,
    Object? location = freezed,
    Object? startDate = null,
    Object? endDate = null,
    Object? goingCount = null,
    Object? interestedCount = null,
    Object? notGoingCount = null,
    Object? userResponse = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'message_id') String messageId,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'notes') String? description,
      @JsonKey(name: 'location') String? location,
      @UtcDateTimeConverter() @JsonKey(name: 'starts_at') DateTime startDate,
      @UtcDateTimeConverter() @JsonKey(name: 'ends_at') DateTime endDate,
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
    Object? id = null,
    Object? messageId = null,
    Object? title = null,
    Object? description = freezed,
    Object? location = freezed,
    Object? startDate = null,
    Object? endDate = null,
    Object? goingCount = null,
    Object? interestedCount = null,
    Object? notGoingCount = null,
    Object? userResponse = freezed,
  }) {
    return _then(_$EventPayloadModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'message_id') required this.messageId,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'notes') this.description,
      @JsonKey(name: 'location') this.location,
      @UtcDateTimeConverter()
      @JsonKey(name: 'starts_at')
      required this.startDate,
      @UtcDateTimeConverter() @JsonKey(name: 'ends_at') required this.endDate,
      @JsonKey(name: 'going_count') this.goingCount = 0,
      @JsonKey(name: 'interested_count') this.interestedCount = 0,
      @JsonKey(name: 'not_going_count') this.notGoingCount = 0,
      @JsonKey(name: 'user_response') this.userResponse});

  factory _$EventPayloadModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventPayloadModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'message_id')
  final String messageId;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'notes')
  final String? description;
  @override
  @JsonKey(name: 'location')
  final String? location;
  @override
  @UtcDateTimeConverter()
  @JsonKey(name: 'starts_at')
  final DateTime startDate;
  @override
  @UtcDateTimeConverter()
  @JsonKey(name: 'ends_at')
  final DateTime endDate;

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
    return 'EventPayloadModel(id: $id, messageId: $messageId, title: $title, description: $description, location: $location, startDate: $startDate, endDate: $endDate, goingCount: $goingCount, interestedCount: $interestedCount, notGoingCount: $notGoingCount, userResponse: $userResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventPayloadModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
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
      id,
      messageId,
      title,
      description,
      location,
      startDate,
      endDate,
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
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'message_id') required final String messageId,
          @JsonKey(name: 'title') required final String title,
          @JsonKey(name: 'notes') final String? description,
          @JsonKey(name: 'location') final String? location,
          @UtcDateTimeConverter()
          @JsonKey(name: 'starts_at')
          required final DateTime startDate,
          @UtcDateTimeConverter()
          @JsonKey(name: 'ends_at')
          required final DateTime endDate,
          @JsonKey(name: 'going_count') final int goingCount,
          @JsonKey(name: 'interested_count') final int interestedCount,
          @JsonKey(name: 'not_going_count') final int notGoingCount,
          @JsonKey(name: 'user_response') final String? userResponse}) =
      _$EventPayloadModelImpl;

  factory _EventPayloadModel.fromJson(Map<String, dynamic> json) =
      _$EventPayloadModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'message_id')
  String get messageId;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'notes')
  String? get description;
  @override
  @JsonKey(name: 'location')
  String? get location;
  @override
  @UtcDateTimeConverter()
  @JsonKey(name: 'starts_at')
  DateTime get startDate;
  @override
  @UtcDateTimeConverter()
  @JsonKey(name: 'ends_at')
  DateTime get endDate;

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
