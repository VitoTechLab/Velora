// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_presence_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserPresenceState {

 Map<String, bool> get onlineUsers; Map<String, DateTime> get lastSeen;
/// Create a copy of UserPresenceState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserPresenceStateCopyWith<UserPresenceState> get copyWith => _$UserPresenceStateCopyWithImpl<UserPresenceState>(this as UserPresenceState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserPresenceState&&const DeepCollectionEquality().equals(other.onlineUsers, onlineUsers)&&const DeepCollectionEquality().equals(other.lastSeen, lastSeen));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(onlineUsers),const DeepCollectionEquality().hash(lastSeen));

@override
String toString() {
  return 'UserPresenceState(onlineUsers: $onlineUsers, lastSeen: $lastSeen)';
}


}

/// @nodoc
abstract mixin class $UserPresenceStateCopyWith<$Res>  {
  factory $UserPresenceStateCopyWith(UserPresenceState value, $Res Function(UserPresenceState) _then) = _$UserPresenceStateCopyWithImpl;
@useResult
$Res call({
 Map<String, bool> onlineUsers, Map<String, DateTime> lastSeen
});




}
/// @nodoc
class _$UserPresenceStateCopyWithImpl<$Res>
    implements $UserPresenceStateCopyWith<$Res> {
  _$UserPresenceStateCopyWithImpl(this._self, this._then);

  final UserPresenceState _self;
  final $Res Function(UserPresenceState) _then;

/// Create a copy of UserPresenceState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? onlineUsers = null,Object? lastSeen = null,}) {
  return _then(_self.copyWith(
onlineUsers: null == onlineUsers ? _self.onlineUsers : onlineUsers // ignore: cast_nullable_to_non_nullable
as Map<String, bool>,lastSeen: null == lastSeen ? _self.lastSeen : lastSeen // ignore: cast_nullable_to_non_nullable
as Map<String, DateTime>,
  ));
}

}


/// Adds pattern-matching-related methods to [UserPresenceState].
extension UserPresenceStatePatterns on UserPresenceState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserPresenceState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserPresenceState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserPresenceState value)  $default,){
final _that = this;
switch (_that) {
case _UserPresenceState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserPresenceState value)?  $default,){
final _that = this;
switch (_that) {
case _UserPresenceState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<String, bool> onlineUsers,  Map<String, DateTime> lastSeen)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserPresenceState() when $default != null:
return $default(_that.onlineUsers,_that.lastSeen);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<String, bool> onlineUsers,  Map<String, DateTime> lastSeen)  $default,) {final _that = this;
switch (_that) {
case _UserPresenceState():
return $default(_that.onlineUsers,_that.lastSeen);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<String, bool> onlineUsers,  Map<String, DateTime> lastSeen)?  $default,) {final _that = this;
switch (_that) {
case _UserPresenceState() when $default != null:
return $default(_that.onlineUsers,_that.lastSeen);case _:
  return null;

}
}

}

/// @nodoc


class _UserPresenceState implements UserPresenceState {
  const _UserPresenceState({final  Map<String, bool> onlineUsers = const {}, final  Map<String, DateTime> lastSeen = const {}}): _onlineUsers = onlineUsers,_lastSeen = lastSeen;
  

 final  Map<String, bool> _onlineUsers;
@override@JsonKey() Map<String, bool> get onlineUsers {
  if (_onlineUsers is EqualUnmodifiableMapView) return _onlineUsers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_onlineUsers);
}

 final  Map<String, DateTime> _lastSeen;
@override@JsonKey() Map<String, DateTime> get lastSeen {
  if (_lastSeen is EqualUnmodifiableMapView) return _lastSeen;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_lastSeen);
}


/// Create a copy of UserPresenceState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserPresenceStateCopyWith<_UserPresenceState> get copyWith => __$UserPresenceStateCopyWithImpl<_UserPresenceState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserPresenceState&&const DeepCollectionEquality().equals(other._onlineUsers, _onlineUsers)&&const DeepCollectionEquality().equals(other._lastSeen, _lastSeen));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_onlineUsers),const DeepCollectionEquality().hash(_lastSeen));

@override
String toString() {
  return 'UserPresenceState(onlineUsers: $onlineUsers, lastSeen: $lastSeen)';
}


}

/// @nodoc
abstract mixin class _$UserPresenceStateCopyWith<$Res> implements $UserPresenceStateCopyWith<$Res> {
  factory _$UserPresenceStateCopyWith(_UserPresenceState value, $Res Function(_UserPresenceState) _then) = __$UserPresenceStateCopyWithImpl;
@override @useResult
$Res call({
 Map<String, bool> onlineUsers, Map<String, DateTime> lastSeen
});




}
/// @nodoc
class __$UserPresenceStateCopyWithImpl<$Res>
    implements _$UserPresenceStateCopyWith<$Res> {
  __$UserPresenceStateCopyWithImpl(this._self, this._then);

  final _UserPresenceState _self;
  final $Res Function(_UserPresenceState) _then;

/// Create a copy of UserPresenceState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? onlineUsers = null,Object? lastSeen = null,}) {
  return _then(_UserPresenceState(
onlineUsers: null == onlineUsers ? _self._onlineUsers : onlineUsers // ignore: cast_nullable_to_non_nullable
as Map<String, bool>,lastSeen: null == lastSeen ? _self._lastSeen : lastSeen // ignore: cast_nullable_to_non_nullable
as Map<String, DateTime>,
  ));
}


}

// dart format on
