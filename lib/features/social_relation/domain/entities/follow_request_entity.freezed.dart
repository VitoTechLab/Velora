// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'follow_request_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FollowRequestEntity {

 String get requesterId; String get targetId; DateTime get createdAt; String get status; String? get requesterUsername; String? get requesterPhotoUrl; String? get requesterFullName; String? get targetUsername; String? get targetPhotoUrl; String? get targetFullName;
/// Create a copy of FollowRequestEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FollowRequestEntityCopyWith<FollowRequestEntity> get copyWith => _$FollowRequestEntityCopyWithImpl<FollowRequestEntity>(this as FollowRequestEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FollowRequestEntity&&(identical(other.requesterId, requesterId) || other.requesterId == requesterId)&&(identical(other.targetId, targetId) || other.targetId == targetId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.requesterUsername, requesterUsername) || other.requesterUsername == requesterUsername)&&(identical(other.requesterPhotoUrl, requesterPhotoUrl) || other.requesterPhotoUrl == requesterPhotoUrl)&&(identical(other.requesterFullName, requesterFullName) || other.requesterFullName == requesterFullName)&&(identical(other.targetUsername, targetUsername) || other.targetUsername == targetUsername)&&(identical(other.targetPhotoUrl, targetPhotoUrl) || other.targetPhotoUrl == targetPhotoUrl)&&(identical(other.targetFullName, targetFullName) || other.targetFullName == targetFullName));
}


@override
int get hashCode => Object.hash(runtimeType,requesterId,targetId,createdAt,status,requesterUsername,requesterPhotoUrl,requesterFullName,targetUsername,targetPhotoUrl,targetFullName);

@override
String toString() {
  return 'FollowRequestEntity(requesterId: $requesterId, targetId: $targetId, createdAt: $createdAt, status: $status, requesterUsername: $requesterUsername, requesterPhotoUrl: $requesterPhotoUrl, requesterFullName: $requesterFullName, targetUsername: $targetUsername, targetPhotoUrl: $targetPhotoUrl, targetFullName: $targetFullName)';
}


}

/// @nodoc
abstract mixin class $FollowRequestEntityCopyWith<$Res>  {
  factory $FollowRequestEntityCopyWith(FollowRequestEntity value, $Res Function(FollowRequestEntity) _then) = _$FollowRequestEntityCopyWithImpl;
@useResult
$Res call({
 String requesterId, String targetId, DateTime createdAt, String status, String? requesterUsername, String? requesterPhotoUrl, String? requesterFullName, String? targetUsername, String? targetPhotoUrl, String? targetFullName
});




}
/// @nodoc
class _$FollowRequestEntityCopyWithImpl<$Res>
    implements $FollowRequestEntityCopyWith<$Res> {
  _$FollowRequestEntityCopyWithImpl(this._self, this._then);

  final FollowRequestEntity _self;
  final $Res Function(FollowRequestEntity) _then;

/// Create a copy of FollowRequestEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? requesterId = null,Object? targetId = null,Object? createdAt = null,Object? status = null,Object? requesterUsername = freezed,Object? requesterPhotoUrl = freezed,Object? requesterFullName = freezed,Object? targetUsername = freezed,Object? targetPhotoUrl = freezed,Object? targetFullName = freezed,}) {
  return _then(_self.copyWith(
requesterId: null == requesterId ? _self.requesterId : requesterId // ignore: cast_nullable_to_non_nullable
as String,targetId: null == targetId ? _self.targetId : targetId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,requesterUsername: freezed == requesterUsername ? _self.requesterUsername : requesterUsername // ignore: cast_nullable_to_non_nullable
as String?,requesterPhotoUrl: freezed == requesterPhotoUrl ? _self.requesterPhotoUrl : requesterPhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,requesterFullName: freezed == requesterFullName ? _self.requesterFullName : requesterFullName // ignore: cast_nullable_to_non_nullable
as String?,targetUsername: freezed == targetUsername ? _self.targetUsername : targetUsername // ignore: cast_nullable_to_non_nullable
as String?,targetPhotoUrl: freezed == targetPhotoUrl ? _self.targetPhotoUrl : targetPhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,targetFullName: freezed == targetFullName ? _self.targetFullName : targetFullName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FollowRequestEntity].
extension FollowRequestEntityPatterns on FollowRequestEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FollowRequestEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FollowRequestEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FollowRequestEntity value)  $default,){
final _that = this;
switch (_that) {
case _FollowRequestEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FollowRequestEntity value)?  $default,){
final _that = this;
switch (_that) {
case _FollowRequestEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String requesterId,  String targetId,  DateTime createdAt,  String status,  String? requesterUsername,  String? requesterPhotoUrl,  String? requesterFullName,  String? targetUsername,  String? targetPhotoUrl,  String? targetFullName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FollowRequestEntity() when $default != null:
return $default(_that.requesterId,_that.targetId,_that.createdAt,_that.status,_that.requesterUsername,_that.requesterPhotoUrl,_that.requesterFullName,_that.targetUsername,_that.targetPhotoUrl,_that.targetFullName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String requesterId,  String targetId,  DateTime createdAt,  String status,  String? requesterUsername,  String? requesterPhotoUrl,  String? requesterFullName,  String? targetUsername,  String? targetPhotoUrl,  String? targetFullName)  $default,) {final _that = this;
switch (_that) {
case _FollowRequestEntity():
return $default(_that.requesterId,_that.targetId,_that.createdAt,_that.status,_that.requesterUsername,_that.requesterPhotoUrl,_that.requesterFullName,_that.targetUsername,_that.targetPhotoUrl,_that.targetFullName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String requesterId,  String targetId,  DateTime createdAt,  String status,  String? requesterUsername,  String? requesterPhotoUrl,  String? requesterFullName,  String? targetUsername,  String? targetPhotoUrl,  String? targetFullName)?  $default,) {final _that = this;
switch (_that) {
case _FollowRequestEntity() when $default != null:
return $default(_that.requesterId,_that.targetId,_that.createdAt,_that.status,_that.requesterUsername,_that.requesterPhotoUrl,_that.requesterFullName,_that.targetUsername,_that.targetPhotoUrl,_that.targetFullName);case _:
  return null;

}
}

}

/// @nodoc


class _FollowRequestEntity implements FollowRequestEntity {
  const _FollowRequestEntity({required this.requesterId, required this.targetId, required this.createdAt, required this.status, this.requesterUsername, this.requesterPhotoUrl, this.requesterFullName, this.targetUsername, this.targetPhotoUrl, this.targetFullName});
  

@override final  String requesterId;
@override final  String targetId;
@override final  DateTime createdAt;
@override final  String status;
@override final  String? requesterUsername;
@override final  String? requesterPhotoUrl;
@override final  String? requesterFullName;
@override final  String? targetUsername;
@override final  String? targetPhotoUrl;
@override final  String? targetFullName;

/// Create a copy of FollowRequestEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FollowRequestEntityCopyWith<_FollowRequestEntity> get copyWith => __$FollowRequestEntityCopyWithImpl<_FollowRequestEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FollowRequestEntity&&(identical(other.requesterId, requesterId) || other.requesterId == requesterId)&&(identical(other.targetId, targetId) || other.targetId == targetId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.requesterUsername, requesterUsername) || other.requesterUsername == requesterUsername)&&(identical(other.requesterPhotoUrl, requesterPhotoUrl) || other.requesterPhotoUrl == requesterPhotoUrl)&&(identical(other.requesterFullName, requesterFullName) || other.requesterFullName == requesterFullName)&&(identical(other.targetUsername, targetUsername) || other.targetUsername == targetUsername)&&(identical(other.targetPhotoUrl, targetPhotoUrl) || other.targetPhotoUrl == targetPhotoUrl)&&(identical(other.targetFullName, targetFullName) || other.targetFullName == targetFullName));
}


@override
int get hashCode => Object.hash(runtimeType,requesterId,targetId,createdAt,status,requesterUsername,requesterPhotoUrl,requesterFullName,targetUsername,targetPhotoUrl,targetFullName);

@override
String toString() {
  return 'FollowRequestEntity(requesterId: $requesterId, targetId: $targetId, createdAt: $createdAt, status: $status, requesterUsername: $requesterUsername, requesterPhotoUrl: $requesterPhotoUrl, requesterFullName: $requesterFullName, targetUsername: $targetUsername, targetPhotoUrl: $targetPhotoUrl, targetFullName: $targetFullName)';
}


}

/// @nodoc
abstract mixin class _$FollowRequestEntityCopyWith<$Res> implements $FollowRequestEntityCopyWith<$Res> {
  factory _$FollowRequestEntityCopyWith(_FollowRequestEntity value, $Res Function(_FollowRequestEntity) _then) = __$FollowRequestEntityCopyWithImpl;
@override @useResult
$Res call({
 String requesterId, String targetId, DateTime createdAt, String status, String? requesterUsername, String? requesterPhotoUrl, String? requesterFullName, String? targetUsername, String? targetPhotoUrl, String? targetFullName
});




}
/// @nodoc
class __$FollowRequestEntityCopyWithImpl<$Res>
    implements _$FollowRequestEntityCopyWith<$Res> {
  __$FollowRequestEntityCopyWithImpl(this._self, this._then);

  final _FollowRequestEntity _self;
  final $Res Function(_FollowRequestEntity) _then;

/// Create a copy of FollowRequestEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? requesterId = null,Object? targetId = null,Object? createdAt = null,Object? status = null,Object? requesterUsername = freezed,Object? requesterPhotoUrl = freezed,Object? requesterFullName = freezed,Object? targetUsername = freezed,Object? targetPhotoUrl = freezed,Object? targetFullName = freezed,}) {
  return _then(_FollowRequestEntity(
requesterId: null == requesterId ? _self.requesterId : requesterId // ignore: cast_nullable_to_non_nullable
as String,targetId: null == targetId ? _self.targetId : targetId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,requesterUsername: freezed == requesterUsername ? _self.requesterUsername : requesterUsername // ignore: cast_nullable_to_non_nullable
as String?,requesterPhotoUrl: freezed == requesterPhotoUrl ? _self.requesterPhotoUrl : requesterPhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,requesterFullName: freezed == requesterFullName ? _self.requesterFullName : requesterFullName // ignore: cast_nullable_to_non_nullable
as String?,targetUsername: freezed == targetUsername ? _self.targetUsername : targetUsername // ignore: cast_nullable_to_non_nullable
as String?,targetPhotoUrl: freezed == targetPhotoUrl ? _self.targetPhotoUrl : targetPhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,targetFullName: freezed == targetFullName ? _self.targetFullName : targetFullName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
