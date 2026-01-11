// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_presence_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserPresenceModel _$UserPresenceModelFromJson(Map<String, dynamic> json) {
  return _UserPresenceModel.fromJson(json);
}

/// @nodoc
mixin _$UserPresenceModel {
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_seen_at')
  DateTime get lastSeenAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_online')
  bool? get isOnline => throw _privateConstructorUsedError;

  /// Serializes this UserPresenceModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserPresenceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserPresenceModelCopyWith<UserPresenceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPresenceModelCopyWith<$Res> {
  factory $UserPresenceModelCopyWith(
          UserPresenceModel value, $Res Function(UserPresenceModel) then) =
      _$UserPresenceModelCopyWithImpl<$Res, UserPresenceModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'last_seen_at') DateTime lastSeenAt,
      @JsonKey(name: 'is_online') bool? isOnline});
}

/// @nodoc
class _$UserPresenceModelCopyWithImpl<$Res, $Val extends UserPresenceModel>
    implements $UserPresenceModelCopyWith<$Res> {
  _$UserPresenceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserPresenceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? lastSeenAt = null,
    Object? isOnline = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      lastSeenAt: null == lastSeenAt
          ? _value.lastSeenAt
          : lastSeenAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isOnline: freezed == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserPresenceModelImplCopyWith<$Res>
    implements $UserPresenceModelCopyWith<$Res> {
  factory _$$UserPresenceModelImplCopyWith(_$UserPresenceModelImpl value,
          $Res Function(_$UserPresenceModelImpl) then) =
      __$$UserPresenceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'last_seen_at') DateTime lastSeenAt,
      @JsonKey(name: 'is_online') bool? isOnline});
}

/// @nodoc
class __$$UserPresenceModelImplCopyWithImpl<$Res>
    extends _$UserPresenceModelCopyWithImpl<$Res, _$UserPresenceModelImpl>
    implements _$$UserPresenceModelImplCopyWith<$Res> {
  __$$UserPresenceModelImplCopyWithImpl(_$UserPresenceModelImpl _value,
      $Res Function(_$UserPresenceModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserPresenceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? lastSeenAt = null,
    Object? isOnline = freezed,
  }) {
    return _then(_$UserPresenceModelImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      lastSeenAt: null == lastSeenAt
          ? _value.lastSeenAt
          : lastSeenAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isOnline: freezed == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserPresenceModelImpl extends _UserPresenceModel {
  const _$UserPresenceModelImpl(
      {@JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'last_seen_at') required this.lastSeenAt,
      @JsonKey(name: 'is_online') this.isOnline})
      : super._();

  factory _$UserPresenceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserPresenceModelImplFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'last_seen_at')
  final DateTime lastSeenAt;
  @override
  @JsonKey(name: 'is_online')
  final bool? isOnline;

  @override
  String toString() {
    return 'UserPresenceModel(userId: $userId, lastSeenAt: $lastSeenAt, isOnline: $isOnline)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserPresenceModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.lastSeenAt, lastSeenAt) ||
                other.lastSeenAt == lastSeenAt) &&
            (identical(other.isOnline, isOnline) ||
                other.isOnline == isOnline));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, lastSeenAt, isOnline);

  /// Create a copy of UserPresenceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserPresenceModelImplCopyWith<_$UserPresenceModelImpl> get copyWith =>
      __$$UserPresenceModelImplCopyWithImpl<_$UserPresenceModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserPresenceModelImplToJson(
      this,
    );
  }
}

abstract class _UserPresenceModel extends UserPresenceModel {
  const factory _UserPresenceModel(
          {@JsonKey(name: 'user_id') required final String userId,
          @JsonKey(name: 'last_seen_at') required final DateTime lastSeenAt,
          @JsonKey(name: 'is_online') final bool? isOnline}) =
      _$UserPresenceModelImpl;
  const _UserPresenceModel._() : super._();

  factory _UserPresenceModel.fromJson(Map<String, dynamic> json) =
      _$UserPresenceModelImpl.fromJson;

  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'last_seen_at')
  DateTime get lastSeenAt;
  @override
  @JsonKey(name: 'is_online')
  bool? get isOnline;

  /// Create a copy of UserPresenceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserPresenceModelImplCopyWith<_$UserPresenceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
