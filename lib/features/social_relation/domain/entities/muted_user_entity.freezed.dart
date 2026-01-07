// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'muted_user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MutedUserEntity {

 String get muterId; String get mutedId; DateTime get createdAt; String? get mutedUsername; String? get mutedPhotoUrl; String? get mutedFullName;
/// Create a copy of MutedUserEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MutedUserEntityCopyWith<MutedUserEntity> get copyWith => _$MutedUserEntityCopyWithImpl<MutedUserEntity>(this as MutedUserEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MutedUserEntity&&(identical(other.muterId, muterId) || other.muterId == muterId)&&(identical(other.mutedId, mutedId) || other.mutedId == mutedId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.mutedUsername, mutedUsername) || other.mutedUsername == mutedUsername)&&(identical(other.mutedPhotoUrl, mutedPhotoUrl) || other.mutedPhotoUrl == mutedPhotoUrl)&&(identical(other.mutedFullName, mutedFullName) || other.mutedFullName == mutedFullName));
}


@override
int get hashCode => Object.hash(runtimeType,muterId,mutedId,createdAt,mutedUsername,mutedPhotoUrl,mutedFullName);

@override
String toString() {
  return 'MutedUserEntity(muterId: $muterId, mutedId: $mutedId, createdAt: $createdAt, mutedUsername: $mutedUsername, mutedPhotoUrl: $mutedPhotoUrl, mutedFullName: $mutedFullName)';
}


}

/// @nodoc
abstract mixin class $MutedUserEntityCopyWith<$Res>  {
  factory $MutedUserEntityCopyWith(MutedUserEntity value, $Res Function(MutedUserEntity) _then) = _$MutedUserEntityCopyWithImpl;
@useResult
$Res call({
 String muterId, String mutedId, DateTime createdAt, String? mutedUsername, String? mutedPhotoUrl, String? mutedFullName
});




}
/// @nodoc
class _$MutedUserEntityCopyWithImpl<$Res>
    implements $MutedUserEntityCopyWith<$Res> {
  _$MutedUserEntityCopyWithImpl(this._self, this._then);

  final MutedUserEntity _self;
  final $Res Function(MutedUserEntity) _then;

/// Create a copy of MutedUserEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? muterId = null,Object? mutedId = null,Object? createdAt = null,Object? mutedUsername = freezed,Object? mutedPhotoUrl = freezed,Object? mutedFullName = freezed,}) {
  return _then(_self.copyWith(
muterId: null == muterId ? _self.muterId : muterId // ignore: cast_nullable_to_non_nullable
as String,mutedId: null == mutedId ? _self.mutedId : mutedId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,mutedUsername: freezed == mutedUsername ? _self.mutedUsername : mutedUsername // ignore: cast_nullable_to_non_nullable
as String?,mutedPhotoUrl: freezed == mutedPhotoUrl ? _self.mutedPhotoUrl : mutedPhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,mutedFullName: freezed == mutedFullName ? _self.mutedFullName : mutedFullName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MutedUserEntity].
extension MutedUserEntityPatterns on MutedUserEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MutedUserEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MutedUserEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MutedUserEntity value)  $default,){
final _that = this;
switch (_that) {
case _MutedUserEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MutedUserEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MutedUserEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String muterId,  String mutedId,  DateTime createdAt,  String? mutedUsername,  String? mutedPhotoUrl,  String? mutedFullName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MutedUserEntity() when $default != null:
return $default(_that.muterId,_that.mutedId,_that.createdAt,_that.mutedUsername,_that.mutedPhotoUrl,_that.mutedFullName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String muterId,  String mutedId,  DateTime createdAt,  String? mutedUsername,  String? mutedPhotoUrl,  String? mutedFullName)  $default,) {final _that = this;
switch (_that) {
case _MutedUserEntity():
return $default(_that.muterId,_that.mutedId,_that.createdAt,_that.mutedUsername,_that.mutedPhotoUrl,_that.mutedFullName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String muterId,  String mutedId,  DateTime createdAt,  String? mutedUsername,  String? mutedPhotoUrl,  String? mutedFullName)?  $default,) {final _that = this;
switch (_that) {
case _MutedUserEntity() when $default != null:
return $default(_that.muterId,_that.mutedId,_that.createdAt,_that.mutedUsername,_that.mutedPhotoUrl,_that.mutedFullName);case _:
  return null;

}
}

}

/// @nodoc


class _MutedUserEntity implements MutedUserEntity {
  const _MutedUserEntity({required this.muterId, required this.mutedId, required this.createdAt, this.mutedUsername, this.mutedPhotoUrl, this.mutedFullName});
  

@override final  String muterId;
@override final  String mutedId;
@override final  DateTime createdAt;
@override final  String? mutedUsername;
@override final  String? mutedPhotoUrl;
@override final  String? mutedFullName;

/// Create a copy of MutedUserEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MutedUserEntityCopyWith<_MutedUserEntity> get copyWith => __$MutedUserEntityCopyWithImpl<_MutedUserEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MutedUserEntity&&(identical(other.muterId, muterId) || other.muterId == muterId)&&(identical(other.mutedId, mutedId) || other.mutedId == mutedId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.mutedUsername, mutedUsername) || other.mutedUsername == mutedUsername)&&(identical(other.mutedPhotoUrl, mutedPhotoUrl) || other.mutedPhotoUrl == mutedPhotoUrl)&&(identical(other.mutedFullName, mutedFullName) || other.mutedFullName == mutedFullName));
}


@override
int get hashCode => Object.hash(runtimeType,muterId,mutedId,createdAt,mutedUsername,mutedPhotoUrl,mutedFullName);

@override
String toString() {
  return 'MutedUserEntity(muterId: $muterId, mutedId: $mutedId, createdAt: $createdAt, mutedUsername: $mutedUsername, mutedPhotoUrl: $mutedPhotoUrl, mutedFullName: $mutedFullName)';
}


}

/// @nodoc
abstract mixin class _$MutedUserEntityCopyWith<$Res> implements $MutedUserEntityCopyWith<$Res> {
  factory _$MutedUserEntityCopyWith(_MutedUserEntity value, $Res Function(_MutedUserEntity) _then) = __$MutedUserEntityCopyWithImpl;
@override @useResult
$Res call({
 String muterId, String mutedId, DateTime createdAt, String? mutedUsername, String? mutedPhotoUrl, String? mutedFullName
});




}
/// @nodoc
class __$MutedUserEntityCopyWithImpl<$Res>
    implements _$MutedUserEntityCopyWith<$Res> {
  __$MutedUserEntityCopyWithImpl(this._self, this._then);

  final _MutedUserEntity _self;
  final $Res Function(_MutedUserEntity) _then;

/// Create a copy of MutedUserEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? muterId = null,Object? mutedId = null,Object? createdAt = null,Object? mutedUsername = freezed,Object? mutedPhotoUrl = freezed,Object? mutedFullName = freezed,}) {
  return _then(_MutedUserEntity(
muterId: null == muterId ? _self.muterId : muterId // ignore: cast_nullable_to_non_nullable
as String,mutedId: null == mutedId ? _self.mutedId : mutedId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,mutedUsername: freezed == mutedUsername ? _self.mutedUsername : mutedUsername // ignore: cast_nullable_to_non_nullable
as String?,mutedPhotoUrl: freezed == mutedPhotoUrl ? _self.mutedPhotoUrl : mutedPhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,mutedFullName: freezed == mutedFullName ? _self.mutedFullName : mutedFullName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
