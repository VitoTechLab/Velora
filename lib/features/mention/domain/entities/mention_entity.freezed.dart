// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mention_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MentionEntity {

 String get id; String get userId; String get createdBy; String get entityType;// 'message', 'post', 'comment', 'story'
 String get entityId; DateTime get createdAt;// Optional expanded fields for display
 String? get creatorUsername; String? get creatorAvatarUrl; String? get creatorFullName;
/// Create a copy of MentionEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MentionEntityCopyWith<MentionEntity> get copyWith => _$MentionEntityCopyWithImpl<MentionEntity>(this as MentionEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MentionEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.entityType, entityType) || other.entityType == entityType)&&(identical(other.entityId, entityId) || other.entityId == entityId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.creatorUsername, creatorUsername) || other.creatorUsername == creatorUsername)&&(identical(other.creatorAvatarUrl, creatorAvatarUrl) || other.creatorAvatarUrl == creatorAvatarUrl)&&(identical(other.creatorFullName, creatorFullName) || other.creatorFullName == creatorFullName));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,createdBy,entityType,entityId,createdAt,creatorUsername,creatorAvatarUrl,creatorFullName);

@override
String toString() {
  return 'MentionEntity(id: $id, userId: $userId, createdBy: $createdBy, entityType: $entityType, entityId: $entityId, createdAt: $createdAt, creatorUsername: $creatorUsername, creatorAvatarUrl: $creatorAvatarUrl, creatorFullName: $creatorFullName)';
}


}

/// @nodoc
abstract mixin class $MentionEntityCopyWith<$Res>  {
  factory $MentionEntityCopyWith(MentionEntity value, $Res Function(MentionEntity) _then) = _$MentionEntityCopyWithImpl;
@useResult
$Res call({
 String id, String userId, String createdBy, String entityType, String entityId, DateTime createdAt, String? creatorUsername, String? creatorAvatarUrl, String? creatorFullName
});




}
/// @nodoc
class _$MentionEntityCopyWithImpl<$Res>
    implements $MentionEntityCopyWith<$Res> {
  _$MentionEntityCopyWithImpl(this._self, this._then);

  final MentionEntity _self;
  final $Res Function(MentionEntity) _then;

/// Create a copy of MentionEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? createdBy = null,Object? entityType = null,Object? entityId = null,Object? createdAt = null,Object? creatorUsername = freezed,Object? creatorAvatarUrl = freezed,Object? creatorFullName = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,entityType: null == entityType ? _self.entityType : entityType // ignore: cast_nullable_to_non_nullable
as String,entityId: null == entityId ? _self.entityId : entityId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,creatorUsername: freezed == creatorUsername ? _self.creatorUsername : creatorUsername // ignore: cast_nullable_to_non_nullable
as String?,creatorAvatarUrl: freezed == creatorAvatarUrl ? _self.creatorAvatarUrl : creatorAvatarUrl // ignore: cast_nullable_to_non_nullable
as String?,creatorFullName: freezed == creatorFullName ? _self.creatorFullName : creatorFullName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MentionEntity].
extension MentionEntityPatterns on MentionEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MentionEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MentionEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MentionEntity value)  $default,){
final _that = this;
switch (_that) {
case _MentionEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MentionEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MentionEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId,  String createdBy,  String entityType,  String entityId,  DateTime createdAt,  String? creatorUsername,  String? creatorAvatarUrl,  String? creatorFullName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MentionEntity() when $default != null:
return $default(_that.id,_that.userId,_that.createdBy,_that.entityType,_that.entityId,_that.createdAt,_that.creatorUsername,_that.creatorAvatarUrl,_that.creatorFullName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId,  String createdBy,  String entityType,  String entityId,  DateTime createdAt,  String? creatorUsername,  String? creatorAvatarUrl,  String? creatorFullName)  $default,) {final _that = this;
switch (_that) {
case _MentionEntity():
return $default(_that.id,_that.userId,_that.createdBy,_that.entityType,_that.entityId,_that.createdAt,_that.creatorUsername,_that.creatorAvatarUrl,_that.creatorFullName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId,  String createdBy,  String entityType,  String entityId,  DateTime createdAt,  String? creatorUsername,  String? creatorAvatarUrl,  String? creatorFullName)?  $default,) {final _that = this;
switch (_that) {
case _MentionEntity() when $default != null:
return $default(_that.id,_that.userId,_that.createdBy,_that.entityType,_that.entityId,_that.createdAt,_that.creatorUsername,_that.creatorAvatarUrl,_that.creatorFullName);case _:
  return null;

}
}

}

/// @nodoc


class _MentionEntity implements MentionEntity {
  const _MentionEntity({required this.id, required this.userId, required this.createdBy, required this.entityType, required this.entityId, required this.createdAt, this.creatorUsername, this.creatorAvatarUrl, this.creatorFullName});
  

@override final  String id;
@override final  String userId;
@override final  String createdBy;
@override final  String entityType;
// 'message', 'post', 'comment', 'story'
@override final  String entityId;
@override final  DateTime createdAt;
// Optional expanded fields for display
@override final  String? creatorUsername;
@override final  String? creatorAvatarUrl;
@override final  String? creatorFullName;

/// Create a copy of MentionEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MentionEntityCopyWith<_MentionEntity> get copyWith => __$MentionEntityCopyWithImpl<_MentionEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MentionEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.entityType, entityType) || other.entityType == entityType)&&(identical(other.entityId, entityId) || other.entityId == entityId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.creatorUsername, creatorUsername) || other.creatorUsername == creatorUsername)&&(identical(other.creatorAvatarUrl, creatorAvatarUrl) || other.creatorAvatarUrl == creatorAvatarUrl)&&(identical(other.creatorFullName, creatorFullName) || other.creatorFullName == creatorFullName));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,createdBy,entityType,entityId,createdAt,creatorUsername,creatorAvatarUrl,creatorFullName);

@override
String toString() {
  return 'MentionEntity(id: $id, userId: $userId, createdBy: $createdBy, entityType: $entityType, entityId: $entityId, createdAt: $createdAt, creatorUsername: $creatorUsername, creatorAvatarUrl: $creatorAvatarUrl, creatorFullName: $creatorFullName)';
}


}

/// @nodoc
abstract mixin class _$MentionEntityCopyWith<$Res> implements $MentionEntityCopyWith<$Res> {
  factory _$MentionEntityCopyWith(_MentionEntity value, $Res Function(_MentionEntity) _then) = __$MentionEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, String createdBy, String entityType, String entityId, DateTime createdAt, String? creatorUsername, String? creatorAvatarUrl, String? creatorFullName
});




}
/// @nodoc
class __$MentionEntityCopyWithImpl<$Res>
    implements _$MentionEntityCopyWith<$Res> {
  __$MentionEntityCopyWithImpl(this._self, this._then);

  final _MentionEntity _self;
  final $Res Function(_MentionEntity) _then;

/// Create a copy of MentionEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? createdBy = null,Object? entityType = null,Object? entityId = null,Object? createdAt = null,Object? creatorUsername = freezed,Object? creatorAvatarUrl = freezed,Object? creatorFullName = freezed,}) {
  return _then(_MentionEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,entityType: null == entityType ? _self.entityType : entityType // ignore: cast_nullable_to_non_nullable
as String,entityId: null == entityId ? _self.entityId : entityId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,creatorUsername: freezed == creatorUsername ? _self.creatorUsername : creatorUsername // ignore: cast_nullable_to_non_nullable
as String?,creatorAvatarUrl: freezed == creatorAvatarUrl ? _self.creatorAvatarUrl : creatorAvatarUrl // ignore: cast_nullable_to_non_nullable
as String?,creatorFullName: freezed == creatorFullName ? _self.creatorFullName : creatorFullName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
