// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_presence_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserPresenceEntity {

 String get userId; bool get isOnline; DateTime? get lastSeenAt;
/// Create a copy of UserPresenceEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserPresenceEntityCopyWith<UserPresenceEntity> get copyWith => _$UserPresenceEntityCopyWithImpl<UserPresenceEntity>(this as UserPresenceEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserPresenceEntity&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline)&&(identical(other.lastSeenAt, lastSeenAt) || other.lastSeenAt == lastSeenAt));
}


@override
int get hashCode => Object.hash(runtimeType,userId,isOnline,lastSeenAt);

@override
String toString() {
  return 'UserPresenceEntity(userId: $userId, isOnline: $isOnline, lastSeenAt: $lastSeenAt)';
}


}

/// @nodoc
abstract mixin class $UserPresenceEntityCopyWith<$Res>  {
  factory $UserPresenceEntityCopyWith(UserPresenceEntity value, $Res Function(UserPresenceEntity) _then) = _$UserPresenceEntityCopyWithImpl;
@useResult
$Res call({
 String userId, bool isOnline, DateTime? lastSeenAt
});




}
/// @nodoc
class _$UserPresenceEntityCopyWithImpl<$Res>
    implements $UserPresenceEntityCopyWith<$Res> {
  _$UserPresenceEntityCopyWithImpl(this._self, this._then);

  final UserPresenceEntity _self;
  final $Res Function(UserPresenceEntity) _then;

/// Create a copy of UserPresenceEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? isOnline = null,Object? lastSeenAt = freezed,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,isOnline: null == isOnline ? _self.isOnline : isOnline // ignore: cast_nullable_to_non_nullable
as bool,lastSeenAt: freezed == lastSeenAt ? _self.lastSeenAt : lastSeenAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserPresenceEntity].
extension UserPresenceEntityPatterns on UserPresenceEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserPresenceEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserPresenceEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserPresenceEntity value)  $default,){
final _that = this;
switch (_that) {
case _UserPresenceEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserPresenceEntity value)?  $default,){
final _that = this;
switch (_that) {
case _UserPresenceEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  bool isOnline,  DateTime? lastSeenAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserPresenceEntity() when $default != null:
return $default(_that.userId,_that.isOnline,_that.lastSeenAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  bool isOnline,  DateTime? lastSeenAt)  $default,) {final _that = this;
switch (_that) {
case _UserPresenceEntity():
return $default(_that.userId,_that.isOnline,_that.lastSeenAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  bool isOnline,  DateTime? lastSeenAt)?  $default,) {final _that = this;
switch (_that) {
case _UserPresenceEntity() when $default != null:
return $default(_that.userId,_that.isOnline,_that.lastSeenAt);case _:
  return null;

}
}

}

/// @nodoc


class _UserPresenceEntity implements UserPresenceEntity {
  const _UserPresenceEntity({required this.userId, required this.isOnline, this.lastSeenAt});
  

@override final  String userId;
@override final  bool isOnline;
@override final  DateTime? lastSeenAt;

/// Create a copy of UserPresenceEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserPresenceEntityCopyWith<_UserPresenceEntity> get copyWith => __$UserPresenceEntityCopyWithImpl<_UserPresenceEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserPresenceEntity&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline)&&(identical(other.lastSeenAt, lastSeenAt) || other.lastSeenAt == lastSeenAt));
}


@override
int get hashCode => Object.hash(runtimeType,userId,isOnline,lastSeenAt);

@override
String toString() {
  return 'UserPresenceEntity(userId: $userId, isOnline: $isOnline, lastSeenAt: $lastSeenAt)';
}


}

/// @nodoc
abstract mixin class _$UserPresenceEntityCopyWith<$Res> implements $UserPresenceEntityCopyWith<$Res> {
  factory _$UserPresenceEntityCopyWith(_UserPresenceEntity value, $Res Function(_UserPresenceEntity) _then) = __$UserPresenceEntityCopyWithImpl;
@override @useResult
$Res call({
 String userId, bool isOnline, DateTime? lastSeenAt
});




}
/// @nodoc
class __$UserPresenceEntityCopyWithImpl<$Res>
    implements _$UserPresenceEntityCopyWith<$Res> {
  __$UserPresenceEntityCopyWithImpl(this._self, this._then);

  final _UserPresenceEntity _self;
  final $Res Function(_UserPresenceEntity) _then;

/// Create a copy of UserPresenceEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? isOnline = null,Object? lastSeenAt = freezed,}) {
  return _then(_UserPresenceEntity(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,isOnline: null == isOnline ? _self.isOnline : isOnline // ignore: cast_nullable_to_non_nullable
as bool,lastSeenAt: freezed == lastSeenAt ? _self.lastSeenAt : lastSeenAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
