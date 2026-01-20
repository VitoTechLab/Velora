// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotificationEntity {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String? get actorId => throw _privateConstructorUsedError;
  NotificationType get type => throw _privateConstructorUsedError;
  String? get targetId => throw _privateConstructorUsedError;
  NotificationTargetType? get targetType => throw _privateConstructorUsedError;
  String? get groupKey => throw _privateConstructorUsedError;
  int get groupCount => throw _privateConstructorUsedError;
  bool get isRead => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt =>
      throw _privateConstructorUsedError; // Actor info (fetched separately for display)
  String? get actorUsername => throw _privateConstructorUsedError;
  String? get actorPhotoUrl =>
      throw _privateConstructorUsedError; // Target preview (for post thumbnail, etc.)
  String? get targetPreviewUrl =>
      throw _privateConstructorUsedError; // Follow relationship - whether current user is following the actor
  bool get isFollowingActor =>
      throw _privateConstructorUsedError; // Metadata for rich notification content (thumbnails, previews, titles)
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;

  /// Create a copy of NotificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationEntityCopyWith<NotificationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationEntityCopyWith<$Res> {
  factory $NotificationEntityCopyWith(
          NotificationEntity value, $Res Function(NotificationEntity) then) =
      _$NotificationEntityCopyWithImpl<$Res, NotificationEntity>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String? actorId,
      NotificationType type,
      String? targetId,
      NotificationTargetType? targetType,
      String? groupKey,
      int groupCount,
      bool isRead,
      DateTime createdAt,
      DateTime? updatedAt,
      String? actorUsername,
      String? actorPhotoUrl,
      String? targetPreviewUrl,
      bool isFollowingActor,
      Map<String, dynamic> metadata});
}

/// @nodoc
class _$NotificationEntityCopyWithImpl<$Res, $Val extends NotificationEntity>
    implements $NotificationEntityCopyWith<$Res> {
  _$NotificationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? actorId = freezed,
    Object? type = null,
    Object? targetId = freezed,
    Object? targetType = freezed,
    Object? groupKey = freezed,
    Object? groupCount = null,
    Object? isRead = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
    Object? actorUsername = freezed,
    Object? actorPhotoUrl = freezed,
    Object? targetPreviewUrl = freezed,
    Object? isFollowingActor = null,
    Object? metadata = null,
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
      actorId: freezed == actorId
          ? _value.actorId
          : actorId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NotificationType,
      targetId: freezed == targetId
          ? _value.targetId
          : targetId // ignore: cast_nullable_to_non_nullable
              as String?,
      targetType: freezed == targetType
          ? _value.targetType
          : targetType // ignore: cast_nullable_to_non_nullable
              as NotificationTargetType?,
      groupKey: freezed == groupKey
          ? _value.groupKey
          : groupKey // ignore: cast_nullable_to_non_nullable
              as String?,
      groupCount: null == groupCount
          ? _value.groupCount
          : groupCount // ignore: cast_nullable_to_non_nullable
              as int,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      actorUsername: freezed == actorUsername
          ? _value.actorUsername
          : actorUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      actorPhotoUrl: freezed == actorPhotoUrl
          ? _value.actorPhotoUrl
          : actorPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      targetPreviewUrl: freezed == targetPreviewUrl
          ? _value.targetPreviewUrl
          : targetPreviewUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isFollowingActor: null == isFollowingActor
          ? _value.isFollowingActor
          : isFollowingActor // ignore: cast_nullable_to_non_nullable
              as bool,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationEntityImplCopyWith<$Res>
    implements $NotificationEntityCopyWith<$Res> {
  factory _$$NotificationEntityImplCopyWith(_$NotificationEntityImpl value,
          $Res Function(_$NotificationEntityImpl) then) =
      __$$NotificationEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String? actorId,
      NotificationType type,
      String? targetId,
      NotificationTargetType? targetType,
      String? groupKey,
      int groupCount,
      bool isRead,
      DateTime createdAt,
      DateTime? updatedAt,
      String? actorUsername,
      String? actorPhotoUrl,
      String? targetPreviewUrl,
      bool isFollowingActor,
      Map<String, dynamic> metadata});
}

/// @nodoc
class __$$NotificationEntityImplCopyWithImpl<$Res>
    extends _$NotificationEntityCopyWithImpl<$Res, _$NotificationEntityImpl>
    implements _$$NotificationEntityImplCopyWith<$Res> {
  __$$NotificationEntityImplCopyWithImpl(_$NotificationEntityImpl _value,
      $Res Function(_$NotificationEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? actorId = freezed,
    Object? type = null,
    Object? targetId = freezed,
    Object? targetType = freezed,
    Object? groupKey = freezed,
    Object? groupCount = null,
    Object? isRead = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
    Object? actorUsername = freezed,
    Object? actorPhotoUrl = freezed,
    Object? targetPreviewUrl = freezed,
    Object? isFollowingActor = null,
    Object? metadata = null,
  }) {
    return _then(_$NotificationEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      actorId: freezed == actorId
          ? _value.actorId
          : actorId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NotificationType,
      targetId: freezed == targetId
          ? _value.targetId
          : targetId // ignore: cast_nullable_to_non_nullable
              as String?,
      targetType: freezed == targetType
          ? _value.targetType
          : targetType // ignore: cast_nullable_to_non_nullable
              as NotificationTargetType?,
      groupKey: freezed == groupKey
          ? _value.groupKey
          : groupKey // ignore: cast_nullable_to_non_nullable
              as String?,
      groupCount: null == groupCount
          ? _value.groupCount
          : groupCount // ignore: cast_nullable_to_non_nullable
              as int,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      actorUsername: freezed == actorUsername
          ? _value.actorUsername
          : actorUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      actorPhotoUrl: freezed == actorPhotoUrl
          ? _value.actorPhotoUrl
          : actorPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      targetPreviewUrl: freezed == targetPreviewUrl
          ? _value.targetPreviewUrl
          : targetPreviewUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      isFollowingActor: null == isFollowingActor
          ? _value.isFollowingActor
          : isFollowingActor // ignore: cast_nullable_to_non_nullable
              as bool,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$NotificationEntityImpl extends _NotificationEntity {
  const _$NotificationEntityImpl(
      {required this.id,
      required this.userId,
      this.actorId,
      required this.type,
      this.targetId,
      this.targetType,
      this.groupKey,
      this.groupCount = 1,
      this.isRead = false,
      required this.createdAt,
      this.updatedAt,
      this.actorUsername,
      this.actorPhotoUrl,
      this.targetPreviewUrl,
      this.isFollowingActor = false,
      final Map<String, dynamic> metadata = const {}})
      : _metadata = metadata,
        super._();

  @override
  final String id;
  @override
  final String userId;
  @override
  final String? actorId;
  @override
  final NotificationType type;
  @override
  final String? targetId;
  @override
  final NotificationTargetType? targetType;
  @override
  final String? groupKey;
  @override
  @JsonKey()
  final int groupCount;
  @override
  @JsonKey()
  final bool isRead;
  @override
  final DateTime createdAt;
  @override
  final DateTime? updatedAt;
// Actor info (fetched separately for display)
  @override
  final String? actorUsername;
  @override
  final String? actorPhotoUrl;
// Target preview (for post thumbnail, etc.)
  @override
  final String? targetPreviewUrl;
// Follow relationship - whether current user is following the actor
  @override
  @JsonKey()
  final bool isFollowingActor;
// Metadata for rich notification content (thumbnails, previews, titles)
  final Map<String, dynamic> _metadata;
// Metadata for rich notification content (thumbnails, previews, titles)
  @override
  @JsonKey()
  Map<String, dynamic> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  @override
  String toString() {
    return 'NotificationEntity(id: $id, userId: $userId, actorId: $actorId, type: $type, targetId: $targetId, targetType: $targetType, groupKey: $groupKey, groupCount: $groupCount, isRead: $isRead, createdAt: $createdAt, updatedAt: $updatedAt, actorUsername: $actorUsername, actorPhotoUrl: $actorPhotoUrl, targetPreviewUrl: $targetPreviewUrl, isFollowingActor: $isFollowingActor, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.actorId, actorId) || other.actorId == actorId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.targetId, targetId) ||
                other.targetId == targetId) &&
            (identical(other.targetType, targetType) ||
                other.targetType == targetType) &&
            (identical(other.groupKey, groupKey) ||
                other.groupKey == groupKey) &&
            (identical(other.groupCount, groupCount) ||
                other.groupCount == groupCount) &&
            (identical(other.isRead, isRead) || other.isRead == isRead) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.actorUsername, actorUsername) ||
                other.actorUsername == actorUsername) &&
            (identical(other.actorPhotoUrl, actorPhotoUrl) ||
                other.actorPhotoUrl == actorPhotoUrl) &&
            (identical(other.targetPreviewUrl, targetPreviewUrl) ||
                other.targetPreviewUrl == targetPreviewUrl) &&
            (identical(other.isFollowingActor, isFollowingActor) ||
                other.isFollowingActor == isFollowingActor) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      actorId,
      type,
      targetId,
      targetType,
      groupKey,
      groupCount,
      isRead,
      createdAt,
      updatedAt,
      actorUsername,
      actorPhotoUrl,
      targetPreviewUrl,
      isFollowingActor,
      const DeepCollectionEquality().hash(_metadata));

  /// Create a copy of NotificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationEntityImplCopyWith<_$NotificationEntityImpl> get copyWith =>
      __$$NotificationEntityImplCopyWithImpl<_$NotificationEntityImpl>(
          this, _$identity);
}

abstract class _NotificationEntity extends NotificationEntity {
  const factory _NotificationEntity(
      {required final String id,
      required final String userId,
      final String? actorId,
      required final NotificationType type,
      final String? targetId,
      final NotificationTargetType? targetType,
      final String? groupKey,
      final int groupCount,
      final bool isRead,
      required final DateTime createdAt,
      final DateTime? updatedAt,
      final String? actorUsername,
      final String? actorPhotoUrl,
      final String? targetPreviewUrl,
      final bool isFollowingActor,
      final Map<String, dynamic> metadata}) = _$NotificationEntityImpl;
  const _NotificationEntity._() : super._();

  @override
  String get id;
  @override
  String get userId;
  @override
  String? get actorId;
  @override
  NotificationType get type;
  @override
  String? get targetId;
  @override
  NotificationTargetType? get targetType;
  @override
  String? get groupKey;
  @override
  int get groupCount;
  @override
  bool get isRead;
  @override
  DateTime get createdAt;
  @override
  DateTime? get updatedAt; // Actor info (fetched separately for display)
  @override
  String? get actorUsername;
  @override
  String? get actorPhotoUrl; // Target preview (for post thumbnail, etc.)
  @override
  String?
      get targetPreviewUrl; // Follow relationship - whether current user is following the actor
  @override
  bool
      get isFollowingActor; // Metadata for rich notification content (thumbnails, previews, titles)
  @override
  Map<String, dynamic> get metadata;

  /// Create a copy of NotificationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationEntityImplCopyWith<_$NotificationEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
