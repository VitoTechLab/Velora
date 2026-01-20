// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mention_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MentionEntity {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get createdBy => throw _privateConstructorUsedError;
  String get entityType =>
      throw _privateConstructorUsedError; // 'message', 'post', 'comment', 'story'
  String get entityId => throw _privateConstructorUsedError;
  DateTime get createdAt =>
      throw _privateConstructorUsedError; // Optional expanded fields for display
  String? get creatorUsername => throw _privateConstructorUsedError;
  String? get creatorAvatarUrl => throw _privateConstructorUsedError;
  String? get creatorFullName => throw _privateConstructorUsedError;

  /// Create a copy of MentionEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MentionEntityCopyWith<MentionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MentionEntityCopyWith<$Res> {
  factory $MentionEntityCopyWith(
          MentionEntity value, $Res Function(MentionEntity) then) =
      _$MentionEntityCopyWithImpl<$Res, MentionEntity>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String createdBy,
      String entityType,
      String entityId,
      DateTime createdAt,
      String? creatorUsername,
      String? creatorAvatarUrl,
      String? creatorFullName});
}

/// @nodoc
class _$MentionEntityCopyWithImpl<$Res, $Val extends MentionEntity>
    implements $MentionEntityCopyWith<$Res> {
  _$MentionEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MentionEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? createdBy = null,
    Object? entityType = null,
    Object? entityId = null,
    Object? createdAt = null,
    Object? creatorUsername = freezed,
    Object? creatorAvatarUrl = freezed,
    Object? creatorFullName = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      entityType: null == entityType
          ? _value.entityType
          : entityType // ignore: cast_nullable_to_non_nullable
              as String,
      entityId: null == entityId
          ? _value.entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      creatorUsername: freezed == creatorUsername
          ? _value.creatorUsername
          : creatorUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      creatorAvatarUrl: freezed == creatorAvatarUrl
          ? _value.creatorAvatarUrl
          : creatorAvatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      creatorFullName: freezed == creatorFullName
          ? _value.creatorFullName
          : creatorFullName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MentionEntityImplCopyWith<$Res>
    implements $MentionEntityCopyWith<$Res> {
  factory _$$MentionEntityImplCopyWith(
          _$MentionEntityImpl value, $Res Function(_$MentionEntityImpl) then) =
      __$$MentionEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String createdBy,
      String entityType,
      String entityId,
      DateTime createdAt,
      String? creatorUsername,
      String? creatorAvatarUrl,
      String? creatorFullName});
}

/// @nodoc
class __$$MentionEntityImplCopyWithImpl<$Res>
    extends _$MentionEntityCopyWithImpl<$Res, _$MentionEntityImpl>
    implements _$$MentionEntityImplCopyWith<$Res> {
  __$$MentionEntityImplCopyWithImpl(
      _$MentionEntityImpl _value, $Res Function(_$MentionEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of MentionEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? createdBy = null,
    Object? entityType = null,
    Object? entityId = null,
    Object? createdAt = null,
    Object? creatorUsername = freezed,
    Object? creatorAvatarUrl = freezed,
    Object? creatorFullName = freezed,
  }) {
    return _then(_$MentionEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      entityType: null == entityType
          ? _value.entityType
          : entityType // ignore: cast_nullable_to_non_nullable
              as String,
      entityId: null == entityId
          ? _value.entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      creatorUsername: freezed == creatorUsername
          ? _value.creatorUsername
          : creatorUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      creatorAvatarUrl: freezed == creatorAvatarUrl
          ? _value.creatorAvatarUrl
          : creatorAvatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      creatorFullName: freezed == creatorFullName
          ? _value.creatorFullName
          : creatorFullName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$MentionEntityImpl implements _MentionEntity {
  const _$MentionEntityImpl(
      {required this.id,
      required this.userId,
      required this.createdBy,
      required this.entityType,
      required this.entityId,
      required this.createdAt,
      this.creatorUsername,
      this.creatorAvatarUrl,
      this.creatorFullName});

  @override
  final String id;
  @override
  final String userId;
  @override
  final String createdBy;
  @override
  final String entityType;
// 'message', 'post', 'comment', 'story'
  @override
  final String entityId;
  @override
  final DateTime createdAt;
// Optional expanded fields for display
  @override
  final String? creatorUsername;
  @override
  final String? creatorAvatarUrl;
  @override
  final String? creatorFullName;

  @override
  String toString() {
    return 'MentionEntity(id: $id, userId: $userId, createdBy: $createdBy, entityType: $entityType, entityId: $entityId, createdAt: $createdAt, creatorUsername: $creatorUsername, creatorAvatarUrl: $creatorAvatarUrl, creatorFullName: $creatorFullName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MentionEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.entityType, entityType) ||
                other.entityType == entityType) &&
            (identical(other.entityId, entityId) ||
                other.entityId == entityId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.creatorUsername, creatorUsername) ||
                other.creatorUsername == creatorUsername) &&
            (identical(other.creatorAvatarUrl, creatorAvatarUrl) ||
                other.creatorAvatarUrl == creatorAvatarUrl) &&
            (identical(other.creatorFullName, creatorFullName) ||
                other.creatorFullName == creatorFullName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      createdBy,
      entityType,
      entityId,
      createdAt,
      creatorUsername,
      creatorAvatarUrl,
      creatorFullName);

  /// Create a copy of MentionEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MentionEntityImplCopyWith<_$MentionEntityImpl> get copyWith =>
      __$$MentionEntityImplCopyWithImpl<_$MentionEntityImpl>(this, _$identity);
}

abstract class _MentionEntity implements MentionEntity {
  const factory _MentionEntity(
      {required final String id,
      required final String userId,
      required final String createdBy,
      required final String entityType,
      required final String entityId,
      required final DateTime createdAt,
      final String? creatorUsername,
      final String? creatorAvatarUrl,
      final String? creatorFullName}) = _$MentionEntityImpl;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get createdBy;
  @override
  String get entityType; // 'message', 'post', 'comment', 'story'
  @override
  String get entityId;
  @override
  DateTime get createdAt; // Optional expanded fields for display
  @override
  String? get creatorUsername;
  @override
  String? get creatorAvatarUrl;
  @override
  String? get creatorFullName;

  /// Create a copy of MentionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MentionEntityImplCopyWith<_$MentionEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
