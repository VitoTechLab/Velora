// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'muted_user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MutedUserEntity {
  String get muterId => throw _privateConstructorUsedError;
  String get mutedId => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String? get mutedUsername => throw _privateConstructorUsedError;
  String? get mutedPhotoUrl => throw _privateConstructorUsedError;
  String? get mutedFullName => throw _privateConstructorUsedError;

  /// Create a copy of MutedUserEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MutedUserEntityCopyWith<MutedUserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MutedUserEntityCopyWith<$Res> {
  factory $MutedUserEntityCopyWith(
          MutedUserEntity value, $Res Function(MutedUserEntity) then) =
      _$MutedUserEntityCopyWithImpl<$Res, MutedUserEntity>;
  @useResult
  $Res call(
      {String muterId,
      String mutedId,
      DateTime createdAt,
      String? mutedUsername,
      String? mutedPhotoUrl,
      String? mutedFullName});
}

/// @nodoc
class _$MutedUserEntityCopyWithImpl<$Res, $Val extends MutedUserEntity>
    implements $MutedUserEntityCopyWith<$Res> {
  _$MutedUserEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MutedUserEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? muterId = null,
    Object? mutedId = null,
    Object? createdAt = null,
    Object? mutedUsername = freezed,
    Object? mutedPhotoUrl = freezed,
    Object? mutedFullName = freezed,
  }) {
    return _then(_value.copyWith(
      muterId: null == muterId
          ? _value.muterId
          : muterId // ignore: cast_nullable_to_non_nullable
              as String,
      mutedId: null == mutedId
          ? _value.mutedId
          : mutedId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      mutedUsername: freezed == mutedUsername
          ? _value.mutedUsername
          : mutedUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      mutedPhotoUrl: freezed == mutedPhotoUrl
          ? _value.mutedPhotoUrl
          : mutedPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      mutedFullName: freezed == mutedFullName
          ? _value.mutedFullName
          : mutedFullName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MutedUserEntityImplCopyWith<$Res>
    implements $MutedUserEntityCopyWith<$Res> {
  factory _$$MutedUserEntityImplCopyWith(_$MutedUserEntityImpl value,
          $Res Function(_$MutedUserEntityImpl) then) =
      __$$MutedUserEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String muterId,
      String mutedId,
      DateTime createdAt,
      String? mutedUsername,
      String? mutedPhotoUrl,
      String? mutedFullName});
}

/// @nodoc
class __$$MutedUserEntityImplCopyWithImpl<$Res>
    extends _$MutedUserEntityCopyWithImpl<$Res, _$MutedUserEntityImpl>
    implements _$$MutedUserEntityImplCopyWith<$Res> {
  __$$MutedUserEntityImplCopyWithImpl(
      _$MutedUserEntityImpl _value, $Res Function(_$MutedUserEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of MutedUserEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? muterId = null,
    Object? mutedId = null,
    Object? createdAt = null,
    Object? mutedUsername = freezed,
    Object? mutedPhotoUrl = freezed,
    Object? mutedFullName = freezed,
  }) {
    return _then(_$MutedUserEntityImpl(
      muterId: null == muterId
          ? _value.muterId
          : muterId // ignore: cast_nullable_to_non_nullable
              as String,
      mutedId: null == mutedId
          ? _value.mutedId
          : mutedId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      mutedUsername: freezed == mutedUsername
          ? _value.mutedUsername
          : mutedUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      mutedPhotoUrl: freezed == mutedPhotoUrl
          ? _value.mutedPhotoUrl
          : mutedPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      mutedFullName: freezed == mutedFullName
          ? _value.mutedFullName
          : mutedFullName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$MutedUserEntityImpl implements _MutedUserEntity {
  const _$MutedUserEntityImpl(
      {required this.muterId,
      required this.mutedId,
      required this.createdAt,
      this.mutedUsername,
      this.mutedPhotoUrl,
      this.mutedFullName});

  @override
  final String muterId;
  @override
  final String mutedId;
  @override
  final DateTime createdAt;
  @override
  final String? mutedUsername;
  @override
  final String? mutedPhotoUrl;
  @override
  final String? mutedFullName;

  @override
  String toString() {
    return 'MutedUserEntity(muterId: $muterId, mutedId: $mutedId, createdAt: $createdAt, mutedUsername: $mutedUsername, mutedPhotoUrl: $mutedPhotoUrl, mutedFullName: $mutedFullName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MutedUserEntityImpl &&
            (identical(other.muterId, muterId) || other.muterId == muterId) &&
            (identical(other.mutedId, mutedId) || other.mutedId == mutedId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.mutedUsername, mutedUsername) ||
                other.mutedUsername == mutedUsername) &&
            (identical(other.mutedPhotoUrl, mutedPhotoUrl) ||
                other.mutedPhotoUrl == mutedPhotoUrl) &&
            (identical(other.mutedFullName, mutedFullName) ||
                other.mutedFullName == mutedFullName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, muterId, mutedId, createdAt,
      mutedUsername, mutedPhotoUrl, mutedFullName);

  /// Create a copy of MutedUserEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MutedUserEntityImplCopyWith<_$MutedUserEntityImpl> get copyWith =>
      __$$MutedUserEntityImplCopyWithImpl<_$MutedUserEntityImpl>(
          this, _$identity);
}

abstract class _MutedUserEntity implements MutedUserEntity {
  const factory _MutedUserEntity(
      {required final String muterId,
      required final String mutedId,
      required final DateTime createdAt,
      final String? mutedUsername,
      final String? mutedPhotoUrl,
      final String? mutedFullName}) = _$MutedUserEntityImpl;

  @override
  String get muterId;
  @override
  String get mutedId;
  @override
  DateTime get createdAt;
  @override
  String? get mutedUsername;
  @override
  String? get mutedPhotoUrl;
  @override
  String? get mutedFullName;

  /// Create a copy of MutedUserEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MutedUserEntityImplCopyWith<_$MutedUserEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
