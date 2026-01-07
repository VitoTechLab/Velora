// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restricted_user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RestrictedUserEntity {

 String get restrictorId; String get restrictedId; DateTime get createdAt; String? get restrictedUsername; String? get restrictedPhotoUrl; String? get restrictedFullName;
/// Create a copy of RestrictedUserEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RestrictedUserEntityCopyWith<RestrictedUserEntity> get copyWith => _$RestrictedUserEntityCopyWithImpl<RestrictedUserEntity>(this as RestrictedUserEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RestrictedUserEntity&&(identical(other.restrictorId, restrictorId) || other.restrictorId == restrictorId)&&(identical(other.restrictedId, restrictedId) || other.restrictedId == restrictedId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.restrictedUsername, restrictedUsername) || other.restrictedUsername == restrictedUsername)&&(identical(other.restrictedPhotoUrl, restrictedPhotoUrl) || other.restrictedPhotoUrl == restrictedPhotoUrl)&&(identical(other.restrictedFullName, restrictedFullName) || other.restrictedFullName == restrictedFullName));
}


@override
int get hashCode => Object.hash(runtimeType,restrictorId,restrictedId,createdAt,restrictedUsername,restrictedPhotoUrl,restrictedFullName);

@override
String toString() {
  return 'RestrictedUserEntity(restrictorId: $restrictorId, restrictedId: $restrictedId, createdAt: $createdAt, restrictedUsername: $restrictedUsername, restrictedPhotoUrl: $restrictedPhotoUrl, restrictedFullName: $restrictedFullName)';
}


}

/// @nodoc
abstract mixin class $RestrictedUserEntityCopyWith<$Res>  {
  factory $RestrictedUserEntityCopyWith(RestrictedUserEntity value, $Res Function(RestrictedUserEntity) _then) = _$RestrictedUserEntityCopyWithImpl;
@useResult
$Res call({
 String restrictorId, String restrictedId, DateTime createdAt, String? restrictedUsername, String? restrictedPhotoUrl, String? restrictedFullName
});




}
/// @nodoc
class _$RestrictedUserEntityCopyWithImpl<$Res>
    implements $RestrictedUserEntityCopyWith<$Res> {
  _$RestrictedUserEntityCopyWithImpl(this._self, this._then);

  final RestrictedUserEntity _self;
  final $Res Function(RestrictedUserEntity) _then;

/// Create a copy of RestrictedUserEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? restrictorId = null,Object? restrictedId = null,Object? createdAt = null,Object? restrictedUsername = freezed,Object? restrictedPhotoUrl = freezed,Object? restrictedFullName = freezed,}) {
  return _then(_self.copyWith(
restrictorId: null == restrictorId ? _self.restrictorId : restrictorId // ignore: cast_nullable_to_non_nullable
as String,restrictedId: null == restrictedId ? _self.restrictedId : restrictedId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,restrictedUsername: freezed == restrictedUsername ? _self.restrictedUsername : restrictedUsername // ignore: cast_nullable_to_non_nullable
as String?,restrictedPhotoUrl: freezed == restrictedPhotoUrl ? _self.restrictedPhotoUrl : restrictedPhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,restrictedFullName: freezed == restrictedFullName ? _self.restrictedFullName : restrictedFullName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RestrictedUserEntity].
extension RestrictedUserEntityPatterns on RestrictedUserEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RestrictedUserEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RestrictedUserEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RestrictedUserEntity value)  $default,){
final _that = this;
switch (_that) {
case _RestrictedUserEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RestrictedUserEntity value)?  $default,){
final _that = this;
switch (_that) {
case _RestrictedUserEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String restrictorId,  String restrictedId,  DateTime createdAt,  String? restrictedUsername,  String? restrictedPhotoUrl,  String? restrictedFullName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RestrictedUserEntity() when $default != null:
return $default(_that.restrictorId,_that.restrictedId,_that.createdAt,_that.restrictedUsername,_that.restrictedPhotoUrl,_that.restrictedFullName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String restrictorId,  String restrictedId,  DateTime createdAt,  String? restrictedUsername,  String? restrictedPhotoUrl,  String? restrictedFullName)  $default,) {final _that = this;
switch (_that) {
case _RestrictedUserEntity():
return $default(_that.restrictorId,_that.restrictedId,_that.createdAt,_that.restrictedUsername,_that.restrictedPhotoUrl,_that.restrictedFullName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String restrictorId,  String restrictedId,  DateTime createdAt,  String? restrictedUsername,  String? restrictedPhotoUrl,  String? restrictedFullName)?  $default,) {final _that = this;
switch (_that) {
case _RestrictedUserEntity() when $default != null:
return $default(_that.restrictorId,_that.restrictedId,_that.createdAt,_that.restrictedUsername,_that.restrictedPhotoUrl,_that.restrictedFullName);case _:
  return null;

}
}

}

/// @nodoc


class _RestrictedUserEntity implements RestrictedUserEntity {
  const _RestrictedUserEntity({required this.restrictorId, required this.restrictedId, required this.createdAt, this.restrictedUsername, this.restrictedPhotoUrl, this.restrictedFullName});
  

@override final  String restrictorId;
@override final  String restrictedId;
@override final  DateTime createdAt;
@override final  String? restrictedUsername;
@override final  String? restrictedPhotoUrl;
@override final  String? restrictedFullName;

/// Create a copy of RestrictedUserEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RestrictedUserEntityCopyWith<_RestrictedUserEntity> get copyWith => __$RestrictedUserEntityCopyWithImpl<_RestrictedUserEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RestrictedUserEntity&&(identical(other.restrictorId, restrictorId) || other.restrictorId == restrictorId)&&(identical(other.restrictedId, restrictedId) || other.restrictedId == restrictedId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.restrictedUsername, restrictedUsername) || other.restrictedUsername == restrictedUsername)&&(identical(other.restrictedPhotoUrl, restrictedPhotoUrl) || other.restrictedPhotoUrl == restrictedPhotoUrl)&&(identical(other.restrictedFullName, restrictedFullName) || other.restrictedFullName == restrictedFullName));
}


@override
int get hashCode => Object.hash(runtimeType,restrictorId,restrictedId,createdAt,restrictedUsername,restrictedPhotoUrl,restrictedFullName);

@override
String toString() {
  return 'RestrictedUserEntity(restrictorId: $restrictorId, restrictedId: $restrictedId, createdAt: $createdAt, restrictedUsername: $restrictedUsername, restrictedPhotoUrl: $restrictedPhotoUrl, restrictedFullName: $restrictedFullName)';
}


}

/// @nodoc
abstract mixin class _$RestrictedUserEntityCopyWith<$Res> implements $RestrictedUserEntityCopyWith<$Res> {
  factory _$RestrictedUserEntityCopyWith(_RestrictedUserEntity value, $Res Function(_RestrictedUserEntity) _then) = __$RestrictedUserEntityCopyWithImpl;
@override @useResult
$Res call({
 String restrictorId, String restrictedId, DateTime createdAt, String? restrictedUsername, String? restrictedPhotoUrl, String? restrictedFullName
});




}
/// @nodoc
class __$RestrictedUserEntityCopyWithImpl<$Res>
    implements _$RestrictedUserEntityCopyWith<$Res> {
  __$RestrictedUserEntityCopyWithImpl(this._self, this._then);

  final _RestrictedUserEntity _self;
  final $Res Function(_RestrictedUserEntity) _then;

/// Create a copy of RestrictedUserEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? restrictorId = null,Object? restrictedId = null,Object? createdAt = null,Object? restrictedUsername = freezed,Object? restrictedPhotoUrl = freezed,Object? restrictedFullName = freezed,}) {
  return _then(_RestrictedUserEntity(
restrictorId: null == restrictorId ? _self.restrictorId : restrictorId // ignore: cast_nullable_to_non_nullable
as String,restrictedId: null == restrictedId ? _self.restrictedId : restrictedId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,restrictedUsername: freezed == restrictedUsername ? _self.restrictedUsername : restrictedUsername // ignore: cast_nullable_to_non_nullable
as String?,restrictedPhotoUrl: freezed == restrictedPhotoUrl ? _self.restrictedPhotoUrl : restrictedPhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,restrictedFullName: freezed == restrictedFullName ? _self.restrictedFullName : restrictedFullName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
