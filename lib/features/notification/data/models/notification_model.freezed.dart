// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationModel {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'user_id') String get userId;@JsonKey(name: 'actor_id') String? get actorId;@JsonKey(name: 'type') String get type;@JsonKey(name: 'target_id') String? get targetId;@JsonKey(name: 'target_type') String? get targetType;@JsonKey(name: 'group_key') String? get groupKey;@JsonKey(name: 'group_count') int get groupCount;@JsonKey(name: 'is_read') bool get isRead;@UtcDateTimeConverter()@JsonKey(name: 'created_at') DateTime get createdAt;@UtcDateTimeConverter()@JsonKey(name: 'updated_at') DateTime? get updatedAt;// Actor info (from joined profile - optional)
@JsonKey(name: 'actor_username') String? get actorUsername;@JsonKey(name: 'actor_photo_url') String? get actorPhotoUrl;// Target preview
@JsonKey(name: 'target_preview_url') String? get targetPreviewUrl;// Follow relationship - whether current user follows the actor
@JsonKey(name: 'is_following_actor') bool get isFollowingActor;
/// Create a copy of NotificationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationModelCopyWith<NotificationModel> get copyWith => _$NotificationModelCopyWithImpl<NotificationModel>(this as NotificationModel, _$identity);

  /// Serializes this NotificationModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.actorId, actorId) || other.actorId == actorId)&&(identical(other.type, type) || other.type == type)&&(identical(other.targetId, targetId) || other.targetId == targetId)&&(identical(other.targetType, targetType) || other.targetType == targetType)&&(identical(other.groupKey, groupKey) || other.groupKey == groupKey)&&(identical(other.groupCount, groupCount) || other.groupCount == groupCount)&&(identical(other.isRead, isRead) || other.isRead == isRead)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.actorUsername, actorUsername) || other.actorUsername == actorUsername)&&(identical(other.actorPhotoUrl, actorPhotoUrl) || other.actorPhotoUrl == actorPhotoUrl)&&(identical(other.targetPreviewUrl, targetPreviewUrl) || other.targetPreviewUrl == targetPreviewUrl)&&(identical(other.isFollowingActor, isFollowingActor) || other.isFollowingActor == isFollowingActor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,actorId,type,targetId,targetType,groupKey,groupCount,isRead,createdAt,updatedAt,actorUsername,actorPhotoUrl,targetPreviewUrl,isFollowingActor);

@override
String toString() {
  return 'NotificationModel(id: $id, userId: $userId, actorId: $actorId, type: $type, targetId: $targetId, targetType: $targetType, groupKey: $groupKey, groupCount: $groupCount, isRead: $isRead, createdAt: $createdAt, updatedAt: $updatedAt, actorUsername: $actorUsername, actorPhotoUrl: $actorPhotoUrl, targetPreviewUrl: $targetPreviewUrl, isFollowingActor: $isFollowingActor)';
}


}

/// @nodoc
abstract mixin class $NotificationModelCopyWith<$Res>  {
  factory $NotificationModelCopyWith(NotificationModel value, $Res Function(NotificationModel) _then) = _$NotificationModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'actor_id') String? actorId,@JsonKey(name: 'type') String type,@JsonKey(name: 'target_id') String? targetId,@JsonKey(name: 'target_type') String? targetType,@JsonKey(name: 'group_key') String? groupKey,@JsonKey(name: 'group_count') int groupCount,@JsonKey(name: 'is_read') bool isRead,@UtcDateTimeConverter()@JsonKey(name: 'created_at') DateTime createdAt,@UtcDateTimeConverter()@JsonKey(name: 'updated_at') DateTime? updatedAt,@JsonKey(name: 'actor_username') String? actorUsername,@JsonKey(name: 'actor_photo_url') String? actorPhotoUrl,@JsonKey(name: 'target_preview_url') String? targetPreviewUrl,@JsonKey(name: 'is_following_actor') bool isFollowingActor
});




}
/// @nodoc
class _$NotificationModelCopyWithImpl<$Res>
    implements $NotificationModelCopyWith<$Res> {
  _$NotificationModelCopyWithImpl(this._self, this._then);

  final NotificationModel _self;
  final $Res Function(NotificationModel) _then;

/// Create a copy of NotificationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? actorId = freezed,Object? type = null,Object? targetId = freezed,Object? targetType = freezed,Object? groupKey = freezed,Object? groupCount = null,Object? isRead = null,Object? createdAt = null,Object? updatedAt = freezed,Object? actorUsername = freezed,Object? actorPhotoUrl = freezed,Object? targetPreviewUrl = freezed,Object? isFollowingActor = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,actorId: freezed == actorId ? _self.actorId : actorId // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,targetId: freezed == targetId ? _self.targetId : targetId // ignore: cast_nullable_to_non_nullable
as String?,targetType: freezed == targetType ? _self.targetType : targetType // ignore: cast_nullable_to_non_nullable
as String?,groupKey: freezed == groupKey ? _self.groupKey : groupKey // ignore: cast_nullable_to_non_nullable
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


/// Adds pattern-matching-related methods to [NotificationModel].
extension NotificationModelPatterns on NotificationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationModel value)  $default,){
final _that = this;
switch (_that) {
case _NotificationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationModel value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'actor_id')  String? actorId, @JsonKey(name: 'type')  String type, @JsonKey(name: 'target_id')  String? targetId, @JsonKey(name: 'target_type')  String? targetType, @JsonKey(name: 'group_key')  String? groupKey, @JsonKey(name: 'group_count')  int groupCount, @JsonKey(name: 'is_read')  bool isRead, @UtcDateTimeConverter()@JsonKey(name: 'created_at')  DateTime createdAt, @UtcDateTimeConverter()@JsonKey(name: 'updated_at')  DateTime? updatedAt, @JsonKey(name: 'actor_username')  String? actorUsername, @JsonKey(name: 'actor_photo_url')  String? actorPhotoUrl, @JsonKey(name: 'target_preview_url')  String? targetPreviewUrl, @JsonKey(name: 'is_following_actor')  bool isFollowingActor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'actor_id')  String? actorId, @JsonKey(name: 'type')  String type, @JsonKey(name: 'target_id')  String? targetId, @JsonKey(name: 'target_type')  String? targetType, @JsonKey(name: 'group_key')  String? groupKey, @JsonKey(name: 'group_count')  int groupCount, @JsonKey(name: 'is_read')  bool isRead, @UtcDateTimeConverter()@JsonKey(name: 'created_at')  DateTime createdAt, @UtcDateTimeConverter()@JsonKey(name: 'updated_at')  DateTime? updatedAt, @JsonKey(name: 'actor_username')  String? actorUsername, @JsonKey(name: 'actor_photo_url')  String? actorPhotoUrl, @JsonKey(name: 'target_preview_url')  String? targetPreviewUrl, @JsonKey(name: 'is_following_actor')  bool isFollowingActor)  $default,) {final _that = this;
switch (_that) {
case _NotificationModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'actor_id')  String? actorId, @JsonKey(name: 'type')  String type, @JsonKey(name: 'target_id')  String? targetId, @JsonKey(name: 'target_type')  String? targetType, @JsonKey(name: 'group_key')  String? groupKey, @JsonKey(name: 'group_count')  int groupCount, @JsonKey(name: 'is_read')  bool isRead, @UtcDateTimeConverter()@JsonKey(name: 'created_at')  DateTime createdAt, @UtcDateTimeConverter()@JsonKey(name: 'updated_at')  DateTime? updatedAt, @JsonKey(name: 'actor_username')  String? actorUsername, @JsonKey(name: 'actor_photo_url')  String? actorPhotoUrl, @JsonKey(name: 'target_preview_url')  String? targetPreviewUrl, @JsonKey(name: 'is_following_actor')  bool isFollowingActor)?  $default,) {final _that = this;
switch (_that) {
case _NotificationModel() when $default != null:
return $default(_that.id,_that.userId,_that.actorId,_that.type,_that.targetId,_that.targetType,_that.groupKey,_that.groupCount,_that.isRead,_that.createdAt,_that.updatedAt,_that.actorUsername,_that.actorPhotoUrl,_that.targetPreviewUrl,_that.isFollowingActor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationModel extends NotificationModel {
  const _NotificationModel({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'user_id') required this.userId, @JsonKey(name: 'actor_id') this.actorId, @JsonKey(name: 'type') required this.type, @JsonKey(name: 'target_id') this.targetId, @JsonKey(name: 'target_type') this.targetType, @JsonKey(name: 'group_key') this.groupKey, @JsonKey(name: 'group_count') this.groupCount = 1, @JsonKey(name: 'is_read') this.isRead = false, @UtcDateTimeConverter()@JsonKey(name: 'created_at') required this.createdAt, @UtcDateTimeConverter()@JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'actor_username') this.actorUsername, @JsonKey(name: 'actor_photo_url') this.actorPhotoUrl, @JsonKey(name: 'target_preview_url') this.targetPreviewUrl, @JsonKey(name: 'is_following_actor') this.isFollowingActor = false}): super._();
  factory _NotificationModel.fromJson(Map<String, dynamic> json) => _$NotificationModelFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'user_id') final  String userId;
@override@JsonKey(name: 'actor_id') final  String? actorId;
@override@JsonKey(name: 'type') final  String type;
@override@JsonKey(name: 'target_id') final  String? targetId;
@override@JsonKey(name: 'target_type') final  String? targetType;
@override@JsonKey(name: 'group_key') final  String? groupKey;
@override@JsonKey(name: 'group_count') final  int groupCount;
@override@JsonKey(name: 'is_read') final  bool isRead;
@override@UtcDateTimeConverter()@JsonKey(name: 'created_at') final  DateTime createdAt;
@override@UtcDateTimeConverter()@JsonKey(name: 'updated_at') final  DateTime? updatedAt;
// Actor info (from joined profile - optional)
@override@JsonKey(name: 'actor_username') final  String? actorUsername;
@override@JsonKey(name: 'actor_photo_url') final  String? actorPhotoUrl;
// Target preview
@override@JsonKey(name: 'target_preview_url') final  String? targetPreviewUrl;
// Follow relationship - whether current user follows the actor
@override@JsonKey(name: 'is_following_actor') final  bool isFollowingActor;

/// Create a copy of NotificationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationModelCopyWith<_NotificationModel> get copyWith => __$NotificationModelCopyWithImpl<_NotificationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.actorId, actorId) || other.actorId == actorId)&&(identical(other.type, type) || other.type == type)&&(identical(other.targetId, targetId) || other.targetId == targetId)&&(identical(other.targetType, targetType) || other.targetType == targetType)&&(identical(other.groupKey, groupKey) || other.groupKey == groupKey)&&(identical(other.groupCount, groupCount) || other.groupCount == groupCount)&&(identical(other.isRead, isRead) || other.isRead == isRead)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.actorUsername, actorUsername) || other.actorUsername == actorUsername)&&(identical(other.actorPhotoUrl, actorPhotoUrl) || other.actorPhotoUrl == actorPhotoUrl)&&(identical(other.targetPreviewUrl, targetPreviewUrl) || other.targetPreviewUrl == targetPreviewUrl)&&(identical(other.isFollowingActor, isFollowingActor) || other.isFollowingActor == isFollowingActor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,actorId,type,targetId,targetType,groupKey,groupCount,isRead,createdAt,updatedAt,actorUsername,actorPhotoUrl,targetPreviewUrl,isFollowingActor);

@override
String toString() {
  return 'NotificationModel(id: $id, userId: $userId, actorId: $actorId, type: $type, targetId: $targetId, targetType: $targetType, groupKey: $groupKey, groupCount: $groupCount, isRead: $isRead, createdAt: $createdAt, updatedAt: $updatedAt, actorUsername: $actorUsername, actorPhotoUrl: $actorPhotoUrl, targetPreviewUrl: $targetPreviewUrl, isFollowingActor: $isFollowingActor)';
}


}

/// @nodoc
abstract mixin class _$NotificationModelCopyWith<$Res> implements $NotificationModelCopyWith<$Res> {
  factory _$NotificationModelCopyWith(_NotificationModel value, $Res Function(_NotificationModel) _then) = __$NotificationModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'actor_id') String? actorId,@JsonKey(name: 'type') String type,@JsonKey(name: 'target_id') String? targetId,@JsonKey(name: 'target_type') String? targetType,@JsonKey(name: 'group_key') String? groupKey,@JsonKey(name: 'group_count') int groupCount,@JsonKey(name: 'is_read') bool isRead,@UtcDateTimeConverter()@JsonKey(name: 'created_at') DateTime createdAt,@UtcDateTimeConverter()@JsonKey(name: 'updated_at') DateTime? updatedAt,@JsonKey(name: 'actor_username') String? actorUsername,@JsonKey(name: 'actor_photo_url') String? actorPhotoUrl,@JsonKey(name: 'target_preview_url') String? targetPreviewUrl,@JsonKey(name: 'is_following_actor') bool isFollowingActor
});




}
/// @nodoc
class __$NotificationModelCopyWithImpl<$Res>
    implements _$NotificationModelCopyWith<$Res> {
  __$NotificationModelCopyWithImpl(this._self, this._then);

  final _NotificationModel _self;
  final $Res Function(_NotificationModel) _then;

/// Create a copy of NotificationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? actorId = freezed,Object? type = null,Object? targetId = freezed,Object? targetType = freezed,Object? groupKey = freezed,Object? groupCount = null,Object? isRead = null,Object? createdAt = null,Object? updatedAt = freezed,Object? actorUsername = freezed,Object? actorPhotoUrl = freezed,Object? targetPreviewUrl = freezed,Object? isFollowingActor = null,}) {
  return _then(_NotificationModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,actorId: freezed == actorId ? _self.actorId : actorId // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,targetId: freezed == targetId ? _self.targetId : targetId // ignore: cast_nullable_to_non_nullable
as String?,targetType: freezed == targetType ? _self.targetType : targetType // ignore: cast_nullable_to_non_nullable
as String?,groupKey: freezed == groupKey ? _self.groupKey : groupKey // ignore: cast_nullable_to_non_nullable
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
