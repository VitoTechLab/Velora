// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blocked_user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BlockedUserEntity {
  String get blockerId => throw _privateConstructorUsedError;
  String get blockedId => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String? get blockedUsername => throw _privateConstructorUsedError;
  String? get blockedPhotoUrl => throw _privateConstructorUsedError;
  String? get blockedFullName => throw _privateConstructorUsedError;

  /// Create a copy of BlockedUserEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlockedUserEntityCopyWith<BlockedUserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlockedUserEntityCopyWith<$Res> {
  factory $BlockedUserEntityCopyWith(
          BlockedUserEntity value, $Res Function(BlockedUserEntity) then) =
      _$BlockedUserEntityCopyWithImpl<$Res, BlockedUserEntity>;
  @useResult
  $Res call(
      {String blockerId,
      String blockedId,
      DateTime createdAt,
      String? blockedUsername,
      String? blockedPhotoUrl,
      String? blockedFullName});
}

/// @nodoc
class _$BlockedUserEntityCopyWithImpl<$Res, $Val extends BlockedUserEntity>
    implements $BlockedUserEntityCopyWith<$Res> {
  _$BlockedUserEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlockedUserEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blockerId = null,
    Object? blockedId = null,
    Object? createdAt = null,
    Object? blockedUsername = freezed,
    Object? blockedPhotoUrl = freezed,
    Object? blockedFullName = freezed,
  }) {
    return _then(_value.copyWith(
      blockerId: null == blockerId
          ? _value.blockerId
          : blockerId // ignore: cast_nullable_to_non_nullable
              as String,
      blockedId: null == blockedId
          ? _value.blockedId
          : blockedId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      blockedUsername: freezed == blockedUsername
          ? _value.blockedUsername
          : blockedUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      blockedPhotoUrl: freezed == blockedPhotoUrl
          ? _value.blockedPhotoUrl
          : blockedPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      blockedFullName: freezed == blockedFullName
          ? _value.blockedFullName
          : blockedFullName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlockedUserEntityImplCopyWith<$Res>
    implements $BlockedUserEntityCopyWith<$Res> {
  factory _$$BlockedUserEntityImplCopyWith(_$BlockedUserEntityImpl value,
          $Res Function(_$BlockedUserEntityImpl) then) =
      __$$BlockedUserEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String blockerId,
      String blockedId,
      DateTime createdAt,
      String? blockedUsername,
      String? blockedPhotoUrl,
      String? blockedFullName});
}

/// @nodoc
class __$$BlockedUserEntityImplCopyWithImpl<$Res>
    extends _$BlockedUserEntityCopyWithImpl<$Res, _$BlockedUserEntityImpl>
    implements _$$BlockedUserEntityImplCopyWith<$Res> {
  __$$BlockedUserEntityImplCopyWithImpl(_$BlockedUserEntityImpl _value,
      $Res Function(_$BlockedUserEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlockedUserEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blockerId = null,
    Object? blockedId = null,
    Object? createdAt = null,
    Object? blockedUsername = freezed,
    Object? blockedPhotoUrl = freezed,
    Object? blockedFullName = freezed,
  }) {
    return _then(_$BlockedUserEntityImpl(
      blockerId: null == blockerId
          ? _value.blockerId
          : blockerId // ignore: cast_nullable_to_non_nullable
              as String,
      blockedId: null == blockedId
          ? _value.blockedId
          : blockedId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      blockedUsername: freezed == blockedUsername
          ? _value.blockedUsername
          : blockedUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      blockedPhotoUrl: freezed == blockedPhotoUrl
          ? _value.blockedPhotoUrl
          : blockedPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      blockedFullName: freezed == blockedFullName
          ? _value.blockedFullName
          : blockedFullName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$BlockedUserEntityImpl implements _BlockedUserEntity {
  const _$BlockedUserEntityImpl(
      {required this.blockerId,
      required this.blockedId,
      required this.createdAt,
      this.blockedUsername,
      this.blockedPhotoUrl,
      this.blockedFullName});

  @override
  final String blockerId;
  @override
  final String blockedId;
  @override
  final DateTime createdAt;
  @override
  final String? blockedUsername;
  @override
  final String? blockedPhotoUrl;
  @override
  final String? blockedFullName;

  @override
  String toString() {
    return 'BlockedUserEntity(blockerId: $blockerId, blockedId: $blockedId, createdAt: $createdAt, blockedUsername: $blockedUsername, blockedPhotoUrl: $blockedPhotoUrl, blockedFullName: $blockedFullName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlockedUserEntityImpl &&
            (identical(other.blockerId, blockerId) ||
                other.blockerId == blockerId) &&
            (identical(other.blockedId, blockedId) ||
                other.blockedId == blockedId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.blockedUsername, blockedUsername) ||
                other.blockedUsername == blockedUsername) &&
            (identical(other.blockedPhotoUrl, blockedPhotoUrl) ||
                other.blockedPhotoUrl == blockedPhotoUrl) &&
            (identical(other.blockedFullName, blockedFullName) ||
                other.blockedFullName == blockedFullName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, blockerId, blockedId, createdAt,
      blockedUsername, blockedPhotoUrl, blockedFullName);

  /// Create a copy of BlockedUserEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlockedUserEntityImplCopyWith<_$BlockedUserEntityImpl> get copyWith =>
      __$$BlockedUserEntityImplCopyWithImpl<_$BlockedUserEntityImpl>(
          this, _$identity);
}

abstract class _BlockedUserEntity implements BlockedUserEntity {
  const factory _BlockedUserEntity(
      {required final String blockerId,
      required final String blockedId,
      required final DateTime createdAt,
      final String? blockedUsername,
      final String? blockedPhotoUrl,
      final String? blockedFullName}) = _$BlockedUserEntityImpl;

  @override
  String get blockerId;
  @override
  String get blockedId;
  @override
  DateTime get createdAt;
  @override
  String? get blockedUsername;
  @override
  String? get blockedPhotoUrl;
  @override
  String? get blockedFullName;

  /// Create a copy of BlockedUserEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlockedUserEntityImplCopyWith<_$BlockedUserEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
