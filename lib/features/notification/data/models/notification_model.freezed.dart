// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) {
  return _NotificationModel.fromJson(json);
}

/// @nodoc
mixin _$NotificationModel {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'actor_id')
  String? get actorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'target_id')
  String? get targetId => throw _privateConstructorUsedError;
  @JsonKey(name: 'target_type')
  String? get targetType => throw _privateConstructorUsedError;
  @JsonKey(name: 'group_key')
  String? get groupKey => throw _privateConstructorUsedError;
  @JsonKey(name: 'group_count')
  int get groupCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_read')
  bool get isRead => throw _privateConstructorUsedError;
  @UtcDateTimeConverter()
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @UtcDateTimeConverter()
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt =>
      throw _privateConstructorUsedError; // Actor info (from joined profile - matches SQL: actor_username, actor_avatar_url)
  @JsonKey(name: 'actor_username')
  String? get actorUsername => throw _privateConstructorUsedError;
  @JsonKey(name: 'actor_avatar_url')
  String? get actorAvatarUrl =>
      throw _privateConstructorUsedError; // Metadata for rich notification content (thumbnail, preview, title, etc.)
  @JsonKey(name: 'metadata')
  Map<String, dynamic> get metadata =>
      throw _privateConstructorUsedError; // Follow relationship - whether current user follows the actor
  @JsonKey(name: 'is_following_actor')
  bool get isFollowingActor => throw _privateConstructorUsedError;

  /// Serializes this NotificationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationModelCopyWith<NotificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationModelCopyWith<$Res> {
  factory $NotificationModelCopyWith(
          NotificationModel value, $Res Function(NotificationModel) then) =
      _$NotificationModelCopyWithImpl<$Res, NotificationModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'actor_id') String? actorId,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'target_id') String? targetId,
      @JsonKey(name: 'target_type') String? targetType,
      @JsonKey(name: 'group_key') String? groupKey,
      @JsonKey(name: 'group_count') int groupCount,
      @JsonKey(name: 'is_read') bool isRead,
      @UtcDateTimeConverter() @JsonKey(name: 'created_at') DateTime createdAt,
      @UtcDateTimeConverter() @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'actor_username') String? actorUsername,
      @JsonKey(name: 'actor_avatar_url') String? actorAvatarUrl,
      @JsonKey(name: 'metadata') Map<String, dynamic> metadata,
      @JsonKey(name: 'is_following_actor') bool isFollowingActor});
}

/// @nodoc
class _$NotificationModelCopyWithImpl<$Res, $Val extends NotificationModel>
    implements $NotificationModelCopyWith<$Res> {
  _$NotificationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = freezed,
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
    Object? actorAvatarUrl = freezed,
    Object? metadata = null,
    Object? isFollowingActor = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      actorId: freezed == actorId
          ? _value.actorId
          : actorId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      targetId: freezed == targetId
          ? _value.targetId
          : targetId // ignore: cast_nullable_to_non_nullable
              as String?,
      targetType: freezed == targetType
          ? _value.targetType
          : targetType // ignore: cast_nullable_to_non_nullable
              as String?,
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
      actorAvatarUrl: freezed == actorAvatarUrl
          ? _value.actorAvatarUrl
          : actorAvatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      isFollowingActor: null == isFollowingActor
          ? _value.isFollowingActor
          : isFollowingActor // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationModelImplCopyWith<$Res>
    implements $NotificationModelCopyWith<$Res> {
  factory _$$NotificationModelImplCopyWith(_$NotificationModelImpl value,
          $Res Function(_$NotificationModelImpl) then) =
      __$$NotificationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'actor_id') String? actorId,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'target_id') String? targetId,
      @JsonKey(name: 'target_type') String? targetType,
      @JsonKey(name: 'group_key') String? groupKey,
      @JsonKey(name: 'group_count') int groupCount,
      @JsonKey(name: 'is_read') bool isRead,
      @UtcDateTimeConverter() @JsonKey(name: 'created_at') DateTime createdAt,
      @UtcDateTimeConverter() @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'actor_username') String? actorUsername,
      @JsonKey(name: 'actor_avatar_url') String? actorAvatarUrl,
      @JsonKey(name: 'metadata') Map<String, dynamic> metadata,
      @JsonKey(name: 'is_following_actor') bool isFollowingActor});
}

/// @nodoc
class __$$NotificationModelImplCopyWithImpl<$Res>
    extends _$NotificationModelCopyWithImpl<$Res, _$NotificationModelImpl>
    implements _$$NotificationModelImplCopyWith<$Res> {
  __$$NotificationModelImplCopyWithImpl(_$NotificationModelImpl _value,
      $Res Function(_$NotificationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = freezed,
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
    Object? actorAvatarUrl = freezed,
    Object? metadata = null,
    Object? isFollowingActor = null,
  }) {
    return _then(_$NotificationModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      actorId: freezed == actorId
          ? _value.actorId
          : actorId // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      targetId: freezed == targetId
          ? _value.targetId
          : targetId // ignore: cast_nullable_to_non_nullable
              as String?,
      targetType: freezed == targetType
          ? _value.targetType
          : targetType // ignore: cast_nullable_to_non_nullable
              as String?,
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
      actorAvatarUrl: freezed == actorAvatarUrl
          ? _value.actorAvatarUrl
          : actorAvatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      isFollowingActor: null == isFollowingActor
          ? _value.isFollowingActor
          : isFollowingActor // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationModelImpl extends _NotificationModel {
  const _$NotificationModelImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'actor_id') this.actorId,
      @JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'target_id') this.targetId,
      @JsonKey(name: 'target_type') this.targetType,
      @JsonKey(name: 'group_key') this.groupKey,
      @JsonKey(name: 'group_count') this.groupCount = 1,
      @JsonKey(name: 'is_read') this.isRead = false,
      @UtcDateTimeConverter()
      @JsonKey(name: 'created_at')
      required this.createdAt,
      @UtcDateTimeConverter() @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'actor_username') this.actorUsername,
      @JsonKey(name: 'actor_avatar_url') this.actorAvatarUrl,
      @JsonKey(name: 'metadata') final Map<String, dynamic> metadata = const {},
      @JsonKey(name: 'is_following_actor') this.isFollowingActor = false})
      : _metadata = metadata,
        super._();

  factory _$NotificationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  @JsonKey(name: 'actor_id')
  final String? actorId;
  @override
  @JsonKey(name: 'type')
  final String type;
  @override
  @JsonKey(name: 'target_id')
  final String? targetId;
  @override
  @JsonKey(name: 'target_type')
  final String? targetType;
  @override
  @JsonKey(name: 'group_key')
  final String? groupKey;
  @override
  @JsonKey(name: 'group_count')
  final int groupCount;
  @override
  @JsonKey(name: 'is_read')
  final bool isRead;
  @override
  @UtcDateTimeConverter()
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @UtcDateTimeConverter()
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
// Actor info (from joined profile - matches SQL: actor_username, actor_avatar_url)
  @override
  @JsonKey(name: 'actor_username')
  final String? actorUsername;
  @override
  @JsonKey(name: 'actor_avatar_url')
  final String? actorAvatarUrl;
// Metadata for rich notification content (thumbnail, preview, title, etc.)
  final Map<String, dynamic> _metadata;
// Metadata for rich notification content (thumbnail, preview, title, etc.)
  @override
  @JsonKey(name: 'metadata')
  Map<String, dynamic> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

// Follow relationship - whether current user follows the actor
  @override
  @JsonKey(name: 'is_following_actor')
  final bool isFollowingActor;

  @override
  String toString() {
    return 'NotificationModel(id: $id, userId: $userId, actorId: $actorId, type: $type, targetId: $targetId, targetType: $targetType, groupKey: $groupKey, groupCount: $groupCount, isRead: $isRead, createdAt: $createdAt, updatedAt: $updatedAt, actorUsername: $actorUsername, actorAvatarUrl: $actorAvatarUrl, metadata: $metadata, isFollowingActor: $isFollowingActor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationModelImpl &&
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
            (identical(other.actorAvatarUrl, actorAvatarUrl) ||
                other.actorAvatarUrl == actorAvatarUrl) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            (identical(other.isFollowingActor, isFollowingActor) ||
                other.isFollowingActor == isFollowingActor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
      actorAvatarUrl,
      const DeepCollectionEquality().hash(_metadata),
      isFollowingActor);

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationModelImplCopyWith<_$NotificationModelImpl> get copyWith =>
      __$$NotificationModelImplCopyWithImpl<_$NotificationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationModelImplToJson(
      this,
    );
  }
}

abstract class _NotificationModel extends NotificationModel {
  const factory _NotificationModel(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'user_id') final String? userId,
          @JsonKey(name: 'actor_id') final String? actorId,
          @JsonKey(name: 'type') required final String type,
          @JsonKey(name: 'target_id') final String? targetId,
          @JsonKey(name: 'target_type') final String? targetType,
          @JsonKey(name: 'group_key') final String? groupKey,
          @JsonKey(name: 'group_count') final int groupCount,
          @JsonKey(name: 'is_read') final bool isRead,
          @UtcDateTimeConverter()
          @JsonKey(name: 'created_at')
          required final DateTime createdAt,
          @UtcDateTimeConverter()
          @JsonKey(name: 'updated_at')
          final DateTime? updatedAt,
          @JsonKey(name: 'actor_username') final String? actorUsername,
          @JsonKey(name: 'actor_avatar_url') final String? actorAvatarUrl,
          @JsonKey(name: 'metadata') final Map<String, dynamic> metadata,
          @JsonKey(name: 'is_following_actor') final bool isFollowingActor}) =
      _$NotificationModelImpl;
  const _NotificationModel._() : super._();

  factory _NotificationModel.fromJson(Map<String, dynamic> json) =
      _$NotificationModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  @JsonKey(name: 'actor_id')
  String? get actorId;
  @override
  @JsonKey(name: 'type')
  String get type;
  @override
  @JsonKey(name: 'target_id')
  String? get targetId;
  @override
  @JsonKey(name: 'target_type')
  String? get targetType;
  @override
  @JsonKey(name: 'group_key')
  String? get groupKey;
  @override
  @JsonKey(name: 'group_count')
  int get groupCount;
  @override
  @JsonKey(name: 'is_read')
  bool get isRead;
  @override
  @UtcDateTimeConverter()
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @UtcDateTimeConverter()
  @JsonKey(name: 'updated_at')
  DateTime?
      get updatedAt; // Actor info (from joined profile - matches SQL: actor_username, actor_avatar_url)
  @override
  @JsonKey(name: 'actor_username')
  String? get actorUsername;
  @override
  @JsonKey(name: 'actor_avatar_url')
  String?
      get actorAvatarUrl; // Metadata for rich notification content (thumbnail, preview, title, etc.)
  @override
  @JsonKey(name: 'metadata')
  Map<String, dynamic>
      get metadata; // Follow relationship - whether current user follows the actor
  @override
  @JsonKey(name: 'is_following_actor')
  bool get isFollowingActor;

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationModelImplCopyWith<_$NotificationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
