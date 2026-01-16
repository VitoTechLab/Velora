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
  String get id => throw _privateConstructorUsedError;
  String get messageId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get description =>
      throw _privateConstructorUsedError; // Note: ChatDTO said 'notes'? Using description/notes based on widget
  String? get location => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError; // RSVP counts
  int get goingCount => throw _privateConstructorUsedError;
  int get maybeCount => throw _privateConstructorUsedError;
  int get notGoingCount =>
      throw _privateConstructorUsedError; // Current user response
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
      {String id,
      String messageId,
      String title,
      String? description,
      String? location,
      DateTime startDate,
      DateTime endDate,
      int goingCount,
      int maybeCount,
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
    Object? id = null,
    Object? messageId = null,
    Object? title = null,
    Object? description = freezed,
    Object? location = freezed,
    Object? startDate = null,
    Object? endDate = null,
    Object? goingCount = null,
    Object? maybeCount = null,
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
      maybeCount: null == maybeCount
          ? _value.maybeCount
          : maybeCount // ignore: cast_nullable_to_non_nullable
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
      {String id,
      String messageId,
      String title,
      String? description,
      String? location,
      DateTime startDate,
      DateTime endDate,
      int goingCount,
      int maybeCount,
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
    Object? id = null,
    Object? messageId = null,
    Object? title = null,
    Object? description = freezed,
    Object? location = freezed,
    Object? startDate = null,
    Object? endDate = null,
    Object? goingCount = null,
    Object? maybeCount = null,
    Object? notGoingCount = null,
    Object? userResponse = freezed,
  }) {
    return _then(_$EventPayloadEntityImpl(
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
      maybeCount: null == maybeCount
          ? _value.maybeCount
          : maybeCount // ignore: cast_nullable_to_non_nullable
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
      {required this.id,
      required this.messageId,
      required this.title,
      this.description,
      this.location,
      required this.startDate,
      required this.endDate,
      required this.goingCount,
      required this.maybeCount,
      required this.notGoingCount,
      this.userResponse});

  @override
  final String id;
  @override
  final String messageId;
  @override
  final String title;
  @override
  final String? description;
// Note: ChatDTO said 'notes'? Using description/notes based on widget
  @override
  final String? location;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
// RSVP counts
  @override
  final int goingCount;
  @override
  final int maybeCount;
  @override
  final int notGoingCount;
// Current user response
  @override
  final String? userResponse;

  @override
  String toString() {
    return 'EventPayloadEntity(id: $id, messageId: $messageId, title: $title, description: $description, location: $location, startDate: $startDate, endDate: $endDate, goingCount: $goingCount, maybeCount: $maybeCount, notGoingCount: $notGoingCount, userResponse: $userResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventPayloadEntityImpl &&
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
            (identical(other.maybeCount, maybeCount) ||
                other.maybeCount == maybeCount) &&
            (identical(other.notGoingCount, notGoingCount) ||
                other.notGoingCount == notGoingCount) &&
            (identical(other.userResponse, userResponse) ||
                other.userResponse == userResponse));
  }

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
      maybeCount,
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
      {required final String id,
      required final String messageId,
      required final String title,
      final String? description,
      final String? location,
      required final DateTime startDate,
      required final DateTime endDate,
      required final int goingCount,
      required final int maybeCount,
      required final int notGoingCount,
      final String? userResponse}) = _$EventPayloadEntityImpl;

  @override
  String get id;
  @override
  String get messageId;
  @override
  String get title;
  @override
  String?
      get description; // Note: ChatDTO said 'notes'? Using description/notes based on widget
  @override
  String? get location;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate; // RSVP counts
  @override
  int get goingCount;
  @override
  int get maybeCount;
  @override
  int get notGoingCount; // Current user response
  @override
  String? get userResponse;

  /// Create a copy of EventPayloadEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventPayloadEntityImplCopyWith<_$EventPayloadEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
