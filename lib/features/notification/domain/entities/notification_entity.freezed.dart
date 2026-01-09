// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NotificationEntity {

 String get id; String get userId; String? get actorId; NotificationType get type; String? get targetId; NotificationTargetType? get targetType; String? get groupKey; int get groupCount; bool get isRead; DateTime get createdAt; DateTime? get updatedAt;// Actor info (fetched separately for display)
 String? get actorUsername; String? get actorPhotoUrl;// Target preview (for post thumbnail, etc.)
 String? get targetPreviewUrl;// Follow relationship - whether current user is following the actor
 bool get isFollowingActor;
/// Create a copy of NotificationEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationEntityCopyWith<NotificationEntity> get copyWith => _$NotificationEntityCopyWithImpl<NotificationEntity>(this as NotificationEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.actorId, actorId) || other.actorId == actorId)&&(identical(other.type, type) || other.type == type)&&(identical(other.targetId, targetId) || other.targetId == targetId)&&(identical(other.targetType, targetType) || other.targetType == targetType)&&(identical(other.groupKey, groupKey) || other.groupKey == groupKey)&&(identical(other.groupCount, groupCount) || other.groupCount == groupCount)&&(identical(other.isRead, isRead) || other.isRead == isRead)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.actorUsername, actorUsername) || other.actorUsername == actorUsername)&&(identical(other.actorPhotoUrl, actorPhotoUrl) || other.actorPhotoUrl == actorPhotoUrl)&&(identical(other.targetPreviewUrl, targetPreviewUrl) || other.targetPreviewUrl == targetPreviewUrl)&&(identical(other.isFollowingActor, isFollowingActor) || other.isFollowingActor == isFollowingActor));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,actorId,type,targetId,targetType,groupKey,groupCount,isRead,createdAt,updatedAt,actorUsername,actorPhotoUrl,targetPreviewUrl,isFollowingActor);

@override
String toString() {
  return 'NotificationEntity(id: $id, userId: $userId, actorId: $actorId, type: $type, targetId: $targetId, targetType: $targetType, groupKey: $groupKey, groupCount: $groupCount, isRead: $isRead, createdAt: $createdAt, updatedAt: $updatedAt, actorUsername: $actorUsername, actorPhotoUrl: $actorPhotoUrl, targetPreviewUrl: $targetPreviewUrl, isFollowingActor: $isFollowingActor)';
}


}

/// @nodoc
abstract mixin class $NotificationEntityCopyWith<$Res>  {
  factory $NotificationEntityCopyWith(NotificationEntity value, $Res Function(NotificationEntity) _then) = _$NotificationEntityCopyWithImpl;
@useResult
$Res call({
 String id, String userId, String? actorId, NotificationType type, String? targetId, NotificationTargetType? targetType, String? groupKey, int groupCount, bool isRead, DateTime createdAt, DateTime? updatedAt, String? actorUsername, String? actorPhotoUrl, String? targetPreviewUrl, bool isFollowingActor
});




}
/// @nodoc
class _$NotificationEntityCopyWithImpl<$Res>
    implements $NotificationEntityCopyWith<$Res> {
  _$NotificationEntityCopyWithImpl(this._self, this._then);

  final NotificationEntity _self;
  final $Res Function(NotificationEntity) _then;

/// Create a copy of NotificationEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? actorId = freezed,Object? type = null,Object? targetId = freezed,Object? targetType = freezed,Object? groupKey = freezed,Object? groupCount = null,Object? isRead = null,Object? createdAt = null,Object? updatedAt = freezed,Object? actorUsername = freezed,Object? actorPhotoUrl = freezed,Object? targetPreviewUrl = freezed,Object? isFollowingActor = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,actorId: freezed == actorId ? _self.actorId : actorId // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as NotificationType,targetId: freezed == targetId ? _self.targetId : targetId // ignore: cast_nullable_to_non_nullable
as String?,targetType: freezed == targetType ? _self.targetType : targetType // ignore: cast_nullable_to_non_nullable
as NotificationTargetType?,groupKey: freezed == groupKey ? _self.groupKey : groupKey // ignore: cast_nullable_to_non_nullable
as String?,groupCount: null == groupCount ? _self.groupCount : groupCount // ignore: cast_nullable_to_non_nullable
as int,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,actorUsername: freezed == actorUsername ? _self.actorUsername : actorUsername // ignore: cast_nullable_to_non_nullable
as String?,actorPhotoUrl: freezed == actorPhotoUrl ? _self.actorPhotoUrl : actorPhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,targetPreviewUrl: freezed == targetPreviewUrl ? _self.targetPreviewUrl : targetPreviewUrl // ignore: cast_nullable_to_non_nullable
as String?,isFollowingActor: null == isFollowingActor ? _self.isFollowingActor : isFollowingActor // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationEntity].
extension NotificationEntityPatterns on NotificationEntity {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationEntity() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationEntity value)  $default,){
final _that = this;
switch (_that) {
case _NotificationEntity():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationEntity value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationEntity() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId,  String? actorId,  NotificationType type,  String? targetId,  NotificationTargetType? targetType,  String? groupKey,  int groupCount,  bool isRead,  DateTime createdAt,  DateTime? updatedAt,  String? actorUsername,  String? actorPhotoUrl,  String? targetPreviewUrl,  bool isFollowingActor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationEntity() when $default != null:
return $default(_that.id,_that.userId,_that.actorId,_that.type,_that.targetId,_that.targetType,_that.groupKey,_that.groupCount,_that.isRead,_that.createdAt,_that.updatedAt,_that.actorUsername,_that.actorPhotoUrl,_that.targetPreviewUrl,_that.isFollowingActor);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId,  String? actorId,  NotificationType type,  String? targetId,  NotificationTargetType? targetType,  String? groupKey,  int groupCount,  bool isRead,  DateTime createdAt,  DateTime? updatedAt,  String? actorUsername,  String? actorPhotoUrl,  String? targetPreviewUrl,  bool isFollowingActor)  $default,) {final _that = this;
switch (_that) {
case _NotificationEntity():
return $default(_that.id,_that.userId,_that.actorId,_that.type,_that.targetId,_that.targetType,_that.groupKey,_that.groupCount,_that.isRead,_that.createdAt,_that.updatedAt,_that.actorUsername,_that.actorPhotoUrl,_that.targetPreviewUrl,_that.isFollowingActor);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId,  String? actorId,  NotificationType type,  String? targetId,  NotificationTargetType? targetType,  String? groupKey,  int groupCount,  bool isRead,  DateTime createdAt,  DateTime? updatedAt,  String? actorUsername,  String? actorPhotoUrl,  String? targetPreviewUrl,  bool isFollowingActor)?  $default,) {final _that = this;
switch (_that) {
case _NotificationEntity() when $default != null:
return $default(_that.id,_that.userId,_that.actorId,_that.type,_that.targetId,_that.targetType,_that.groupKey,_that.groupCount,_that.isRead,_that.createdAt,_that.updatedAt,_that.actorUsername,_that.actorPhotoUrl,_that.targetPreviewUrl,_that.isFollowingActor);case _:
  return null;

}
}

}

/// @nodoc


class _NotificationEntity extends NotificationEntity {
  const _NotificationEntity({required this.id, required this.userId, this.actorId, required this.type, this.targetId, this.targetType, this.groupKey, this.groupCount = 1, this.isRead = false, required this.createdAt, this.updatedAt, this.actorUsername, this.actorPhotoUrl, this.targetPreviewUrl, this.isFollowingActor = false}): super._();
  

@override final  String id;
@override final  String userId;
@override final  String? actorId;
@override final  NotificationType type;
@override final  String? targetId;
@override final  NotificationTargetType? targetType;
@override final  String? groupKey;
@override@JsonKey() final  int groupCount;
@override@JsonKey() final  bool isRead;
@override final  DateTime createdAt;
@override final  DateTime? updatedAt;
// Actor info (fetched separately for display)
@override final  String? actorUsername;
@override final  String? actorPhotoUrl;
// Target preview (for post thumbnail, etc.)
@override final  String? targetPreviewUrl;
// Follow relationship - whether current user is following the actor
@override@JsonKey() final  bool isFollowingActor;

/// Create a copy of NotificationEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationEntityCopyWith<_NotificationEntity> get copyWith => __$NotificationEntityCopyWithImpl<_NotificationEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.actorId, actorId) || other.actorId == actorId)&&(identical(other.type, type) || other.type == type)&&(identical(other.targetId, targetId) || other.targetId == targetId)&&(identical(other.targetType, targetType) || other.targetType == targetType)&&(identical(other.groupKey, groupKey) || other.groupKey == groupKey)&&(identical(other.groupCount, groupCount) || other.groupCount == groupCount)&&(identical(other.isRead, isRead) || other.isRead == isRead)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.actorUsername, actorUsername) || other.actorUsername == actorUsername)&&(identical(other.actorPhotoUrl, actorPhotoUrl) || other.actorPhotoUrl == actorPhotoUrl)&&(identical(other.targetPreviewUrl, targetPreviewUrl) || other.targetPreviewUrl == targetPreviewUrl)&&(identical(other.isFollowingActor, isFollowingActor) || other.isFollowingActor == isFollowingActor));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,actorId,type,targetId,targetType,groupKey,groupCount,isRead,createdAt,updatedAt,actorUsername,actorPhotoUrl,targetPreviewUrl,isFollowingActor);

@override
String toString() {
  return 'NotificationEntity(id: $id, userId: $userId, actorId: $actorId, type: $type, targetId: $targetId, targetType: $targetType, groupKey: $groupKey, groupCount: $groupCount, isRead: $isRead, createdAt: $createdAt, updatedAt: $updatedAt, actorUsername: $actorUsername, actorPhotoUrl: $actorPhotoUrl, targetPreviewUrl: $targetPreviewUrl, isFollowingActor: $isFollowingActor)';
}


}

/// @nodoc
abstract mixin class _$NotificationEntityCopyWith<$Res> implements $NotificationEntityCopyWith<$Res> {
  factory _$NotificationEntityCopyWith(_NotificationEntity value, $Res Function(_NotificationEntity) _then) = __$NotificationEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, String? actorId, NotificationType type, String? targetId, NotificationTargetType? targetType, String? groupKey, int groupCount, bool isRead, DateTime createdAt, DateTime? updatedAt, String? actorUsername, String? actorPhotoUrl, String? targetPreviewUrl, bool isFollowingActor
});




}
/// @nodoc
class __$NotificationEntityCopyWithImpl<$Res>
    implements _$NotificationEntityCopyWith<$Res> {
  __$NotificationEntityCopyWithImpl(this._self, this._then);

  final _NotificationEntity _self;
  final $Res Function(_NotificationEntity) _then;

/// Create a copy of NotificationEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? actorId = freezed,Object? type = null,Object? targetId = freezed,Object? targetType = freezed,Object? groupKey = freezed,Object? groupCount = null,Object? isRead = null,Object? createdAt = null,Object? updatedAt = freezed,Object? actorUsername = freezed,Object? actorPhotoUrl = freezed,Object? targetPreviewUrl = freezed,Object? isFollowingActor = null,}) {
  return _then(_NotificationEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,actorId: freezed == actorId ? _self.actorId : actorId // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as NotificationType,targetId: freezed == targetId ? _self.targetId : targetId // ignore: cast_nullable_to_non_nullable
as String?,targetType: freezed == targetType ? _self.targetType : targetType // ignore: cast_nullable_to_non_nullable
as NotificationTargetType?,groupKey: freezed == groupKey ? _self.groupKey : groupKey // ignore: cast_nullable_to_non_nullable
as String?,groupCount: null == groupCount ? _self.groupCount : groupCount // ignore: cast_nullable_to_non_nullable
as int,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,actorUsername: freezed == actorUsername ? _self.actorUsername : actorUsername // ignore: cast_nullable_to_non_nullable
as String?,actorPhotoUrl: freezed == actorPhotoUrl ? _self.actorPhotoUrl : actorPhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,targetPreviewUrl: freezed == targetPreviewUrl ? _self.targetPreviewUrl : targetPreviewUrl // ignore: cast_nullable_to_non_nullable
as String?,isFollowingActor: null == isFollowingActor ? _self.isFollowingActor : isFollowingActor // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
