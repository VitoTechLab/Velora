// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blocked_user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BlockedUserEntity {

 String get blockerId; String get blockedId; DateTime get createdAt; String? get blockedUsername; String? get blockedPhotoUrl; String? get blockedFullName;
/// Create a copy of BlockedUserEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BlockedUserEntityCopyWith<BlockedUserEntity> get copyWith => _$BlockedUserEntityCopyWithImpl<BlockedUserEntity>(this as BlockedUserEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BlockedUserEntity&&(identical(other.blockerId, blockerId) || other.blockerId == blockerId)&&(identical(other.blockedId, blockedId) || other.blockedId == blockedId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.blockedUsername, blockedUsername) || other.blockedUsername == blockedUsername)&&(identical(other.blockedPhotoUrl, blockedPhotoUrl) || other.blockedPhotoUrl == blockedPhotoUrl)&&(identical(other.blockedFullName, blockedFullName) || other.blockedFullName == blockedFullName));
}


@override
int get hashCode => Object.hash(runtimeType,blockerId,blockedId,createdAt,blockedUsername,blockedPhotoUrl,blockedFullName);

@override
String toString() {
  return 'BlockedUserEntity(blockerId: $blockerId, blockedId: $blockedId, createdAt: $createdAt, blockedUsername: $blockedUsername, blockedPhotoUrl: $blockedPhotoUrl, blockedFullName: $blockedFullName)';
}


}

/// @nodoc
abstract mixin class $BlockedUserEntityCopyWith<$Res>  {
  factory $BlockedUserEntityCopyWith(BlockedUserEntity value, $Res Function(BlockedUserEntity) _then) = _$BlockedUserEntityCopyWithImpl;
@useResult
$Res call({
 String blockerId, String blockedId, DateTime createdAt, String? blockedUsername, String? blockedPhotoUrl, String? blockedFullName
});




}
/// @nodoc
class _$BlockedUserEntityCopyWithImpl<$Res>
    implements $BlockedUserEntityCopyWith<$Res> {
  _$BlockedUserEntityCopyWithImpl(this._self, this._then);

  final BlockedUserEntity _self;
  final $Res Function(BlockedUserEntity) _then;

/// Create a copy of BlockedUserEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? blockerId = null,Object? blockedId = null,Object? createdAt = null,Object? blockedUsername = freezed,Object? blockedPhotoUrl = freezed,Object? blockedFullName = freezed,}) {
  return _then(_self.copyWith(
blockerId: null == blockerId ? _self.blockerId : blockerId // ignore: cast_nullable_to_non_nullable
as String,blockedId: null == blockedId ? _self.blockedId : blockedId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,blockedUsername: freezed == blockedUsername ? _self.blockedUsername : blockedUsername // ignore: cast_nullable_to_non_nullable
as String?,blockedPhotoUrl: freezed == blockedPhotoUrl ? _self.blockedPhotoUrl : blockedPhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,blockedFullName: freezed == blockedFullName ? _self.blockedFullName : blockedFullName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BlockedUserEntity].
extension BlockedUserEntityPatterns on BlockedUserEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BlockedUserEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BlockedUserEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BlockedUserEntity value)  $default,){
final _that = this;
switch (_that) {
case _BlockedUserEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BlockedUserEntity value)?  $default,){
final _that = this;
switch (_that) {
case _BlockedUserEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String blockerId,  String blockedId,  DateTime createdAt,  String? blockedUsername,  String? blockedPhotoUrl,  String? blockedFullName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BlockedUserEntity() when $default != null:
return $default(_that.blockerId,_that.blockedId,_that.createdAt,_that.blockedUsername,_that.blockedPhotoUrl,_that.blockedFullName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String blockerId,  String blockedId,  DateTime createdAt,  String? blockedUsername,  String? blockedPhotoUrl,  String? blockedFullName)  $default,) {final _that = this;
switch (_that) {
case _BlockedUserEntity():
return $default(_that.blockerId,_that.blockedId,_that.createdAt,_that.blockedUsername,_that.blockedPhotoUrl,_that.blockedFullName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String blockerId,  String blockedId,  DateTime createdAt,  String? blockedUsername,  String? blockedPhotoUrl,  String? blockedFullName)?  $default,) {final _that = this;
switch (_that) {
case _BlockedUserEntity() when $default != null:
return $default(_that.blockerId,_that.blockedId,_that.createdAt,_that.blockedUsername,_that.blockedPhotoUrl,_that.blockedFullName);case _:
  return null;

}
}

}

/// @nodoc


class _BlockedUserEntity implements BlockedUserEntity {
  const _BlockedUserEntity({required this.blockerId, required this.blockedId, required this.createdAt, this.blockedUsername, this.blockedPhotoUrl, this.blockedFullName});
  

@override final  String blockerId;
@override final  String blockedId;
@override final  DateTime createdAt;
@override final  String? blockedUsername;
@override final  String? blockedPhotoUrl;
@override final  String? blockedFullName;

/// Create a copy of BlockedUserEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BlockedUserEntityCopyWith<_BlockedUserEntity> get copyWith => __$BlockedUserEntityCopyWithImpl<_BlockedUserEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BlockedUserEntity&&(identical(other.blockerId, blockerId) || other.blockerId == blockerId)&&(identical(other.blockedId, blockedId) || other.blockedId == blockedId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.blockedUsername, blockedUsername) || other.blockedUsername == blockedUsername)&&(identical(other.blockedPhotoUrl, blockedPhotoUrl) || other.blockedPhotoUrl == blockedPhotoUrl)&&(identical(other.blockedFullName, blockedFullName) || other.blockedFullName == blockedFullName));
}


@override
int get hashCode => Object.hash(runtimeType,blockerId,blockedId,createdAt,blockedUsername,blockedPhotoUrl,blockedFullName);

@override
String toString() {
  return 'BlockedUserEntity(blockerId: $blockerId, blockedId: $blockedId, createdAt: $createdAt, blockedUsername: $blockedUsername, blockedPhotoUrl: $blockedPhotoUrl, blockedFullName: $blockedFullName)';
}


}

/// @nodoc
abstract mixin class _$BlockedUserEntityCopyWith<$Res> implements $BlockedUserEntityCopyWith<$Res> {
  factory _$BlockedUserEntityCopyWith(_BlockedUserEntity value, $Res Function(_BlockedUserEntity) _then) = __$BlockedUserEntityCopyWithImpl;
@override @useResult
$Res call({
 String blockerId, String blockedId, DateTime createdAt, String? blockedUsername, String? blockedPhotoUrl, String? blockedFullName
});




}
/// @nodoc
class __$BlockedUserEntityCopyWithImpl<$Res>
    implements _$BlockedUserEntityCopyWith<$Res> {
  __$BlockedUserEntityCopyWithImpl(this._self, this._then);

  final _BlockedUserEntity _self;
  final $Res Function(_BlockedUserEntity) _then;

/// Create a copy of BlockedUserEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? blockerId = null,Object? blockedId = null,Object? createdAt = null,Object? blockedUsername = freezed,Object? blockedPhotoUrl = freezed,Object? blockedFullName = freezed,}) {
  return _then(_BlockedUserEntity(
blockerId: null == blockerId ? _self.blockerId : blockerId // ignore: cast_nullable_to_non_nullable
as String,blockedId: null == blockedId ? _self.blockedId : blockedId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,blockedUsername: freezed == blockedUsername ? _self.blockedUsername : blockedUsername // ignore: cast_nullable_to_non_nullable
as String?,blockedPhotoUrl: freezed == blockedPhotoUrl ? _self.blockedPhotoUrl : blockedPhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,blockedFullName: freezed == blockedFullName ? _self.blockedFullName : blockedFullName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
