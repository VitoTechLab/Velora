// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restricted_user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RestrictedUserEntity {
  String get restrictorId => throw _privateConstructorUsedError;
  String get restrictedId => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String? get restrictedUsername => throw _privateConstructorUsedError;
  String? get restrictedPhotoUrl => throw _privateConstructorUsedError;
  String? get restrictedFullName => throw _privateConstructorUsedError;

  /// Create a copy of RestrictedUserEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RestrictedUserEntityCopyWith<RestrictedUserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestrictedUserEntityCopyWith<$Res> {
  factory $RestrictedUserEntityCopyWith(RestrictedUserEntity value,
          $Res Function(RestrictedUserEntity) then) =
      _$RestrictedUserEntityCopyWithImpl<$Res, RestrictedUserEntity>;
  @useResult
  $Res call(
      {String restrictorId,
      String restrictedId,
      DateTime createdAt,
      String? restrictedUsername,
      String? restrictedPhotoUrl,
      String? restrictedFullName});
}

/// @nodoc
class _$RestrictedUserEntityCopyWithImpl<$Res,
        $Val extends RestrictedUserEntity>
    implements $RestrictedUserEntityCopyWith<$Res> {
  _$RestrictedUserEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RestrictedUserEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restrictorId = null,
    Object? restrictedId = null,
    Object? createdAt = null,
    Object? restrictedUsername = freezed,
    Object? restrictedPhotoUrl = freezed,
    Object? restrictedFullName = freezed,
  }) {
    return _then(_value.copyWith(
      restrictorId: null == restrictorId
          ? _value.restrictorId
          : restrictorId // ignore: cast_nullable_to_non_nullable
              as String,
      restrictedId: null == restrictedId
          ? _value.restrictedId
          : restrictedId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      restrictedUsername: freezed == restrictedUsername
          ? _value.restrictedUsername
          : restrictedUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      restrictedPhotoUrl: freezed == restrictedPhotoUrl
          ? _value.restrictedPhotoUrl
          : restrictedPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      restrictedFullName: freezed == restrictedFullName
          ? _value.restrictedFullName
          : restrictedFullName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RestrictedUserEntityImplCopyWith<$Res>
    implements $RestrictedUserEntityCopyWith<$Res> {
  factory _$$RestrictedUserEntityImplCopyWith(_$RestrictedUserEntityImpl value,
          $Res Function(_$RestrictedUserEntityImpl) then) =
      __$$RestrictedUserEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String restrictorId,
      String restrictedId,
      DateTime createdAt,
      String? restrictedUsername,
      String? restrictedPhotoUrl,
      String? restrictedFullName});
}

/// @nodoc
class __$$RestrictedUserEntityImplCopyWithImpl<$Res>
    extends _$RestrictedUserEntityCopyWithImpl<$Res, _$RestrictedUserEntityImpl>
    implements _$$RestrictedUserEntityImplCopyWith<$Res> {
  __$$RestrictedUserEntityImplCopyWithImpl(_$RestrictedUserEntityImpl _value,
      $Res Function(_$RestrictedUserEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of RestrictedUserEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restrictorId = null,
    Object? restrictedId = null,
    Object? createdAt = null,
    Object? restrictedUsername = freezed,
    Object? restrictedPhotoUrl = freezed,
    Object? restrictedFullName = freezed,
  }) {
    return _then(_$RestrictedUserEntityImpl(
      restrictorId: null == restrictorId
          ? _value.restrictorId
          : restrictorId // ignore: cast_nullable_to_non_nullable
              as String,
      restrictedId: null == restrictedId
          ? _value.restrictedId
          : restrictedId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      restrictedUsername: freezed == restrictedUsername
          ? _value.restrictedUsername
          : restrictedUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      restrictedPhotoUrl: freezed == restrictedPhotoUrl
          ? _value.restrictedPhotoUrl
          : restrictedPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      restrictedFullName: freezed == restrictedFullName
          ? _value.restrictedFullName
          : restrictedFullName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$RestrictedUserEntityImpl implements _RestrictedUserEntity {
  const _$RestrictedUserEntityImpl(
      {required this.restrictorId,
      required this.restrictedId,
      required this.createdAt,
      this.restrictedUsername,
      this.restrictedPhotoUrl,
      this.restrictedFullName});

  @override
  final String restrictorId;
  @override
  final String restrictedId;
  @override
  final DateTime createdAt;
  @override
  final String? restrictedUsername;
  @override
  final String? restrictedPhotoUrl;
  @override
  final String? restrictedFullName;

  @override
  String toString() {
    return 'RestrictedUserEntity(restrictorId: $restrictorId, restrictedId: $restrictedId, createdAt: $createdAt, restrictedUsername: $restrictedUsername, restrictedPhotoUrl: $restrictedPhotoUrl, restrictedFullName: $restrictedFullName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestrictedUserEntityImpl &&
            (identical(other.restrictorId, restrictorId) ||
                other.restrictorId == restrictorId) &&
            (identical(other.restrictedId, restrictedId) ||
                other.restrictedId == restrictedId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.restrictedUsername, restrictedUsername) ||
                other.restrictedUsername == restrictedUsername) &&
            (identical(other.restrictedPhotoUrl, restrictedPhotoUrl) ||
                other.restrictedPhotoUrl == restrictedPhotoUrl) &&
            (identical(other.restrictedFullName, restrictedFullName) ||
                other.restrictedFullName == restrictedFullName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, restrictorId, restrictedId,
      createdAt, restrictedUsername, restrictedPhotoUrl, restrictedFullName);

  /// Create a copy of RestrictedUserEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RestrictedUserEntityImplCopyWith<_$RestrictedUserEntityImpl>
      get copyWith =>
          __$$RestrictedUserEntityImplCopyWithImpl<_$RestrictedUserEntityImpl>(
              this, _$identity);
}

abstract class _RestrictedUserEntity implements RestrictedUserEntity {
  const factory _RestrictedUserEntity(
      {required final String restrictorId,
      required final String restrictedId,
      required final DateTime createdAt,
      final String? restrictedUsername,
      final String? restrictedPhotoUrl,
      final String? restrictedFullName}) = _$RestrictedUserEntityImpl;

  @override
  String get restrictorId;
  @override
  String get restrictedId;
  @override
  DateTime get createdAt;
  @override
  String? get restrictedUsername;
  @override
  String? get restrictedPhotoUrl;
  @override
  String? get restrictedFullName;

  /// Create a copy of RestrictedUserEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RestrictedUserEntityImplCopyWith<_$RestrictedUserEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
