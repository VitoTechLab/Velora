// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_presence_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserPresenceEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserPresenceEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserPresenceEvent()';
}


}

/// @nodoc
class $UserPresenceEventCopyWith<$Res>  {
$UserPresenceEventCopyWith(UserPresenceEvent _, $Res Function(UserPresenceEvent) __);
}


/// Adds pattern-matching-related methods to [UserPresenceEvent].
extension UserPresenceEventPatterns on UserPresenceEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Started value)?  started,TResult Function( HeartbeatTick value)?  heartbeatTick,TResult Function( ConnectivityChanged value)?  connectivityChanged,TResult Function( AppLifecycleChanged value)?  appLifecycleChanged,TResult Function( PresenceUpdated value)?  presenceUpdated,TResult Function( FetchLastSeen value)?  fetchLastSeen,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Started() when started != null:
return started(_that);case HeartbeatTick() when heartbeatTick != null:
return heartbeatTick(_that);case ConnectivityChanged() when connectivityChanged != null:
return connectivityChanged(_that);case AppLifecycleChanged() when appLifecycleChanged != null:
return appLifecycleChanged(_that);case PresenceUpdated() when presenceUpdated != null:
return presenceUpdated(_that);case FetchLastSeen() when fetchLastSeen != null:
return fetchLastSeen(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Started value)  started,required TResult Function( HeartbeatTick value)  heartbeatTick,required TResult Function( ConnectivityChanged value)  connectivityChanged,required TResult Function( AppLifecycleChanged value)  appLifecycleChanged,required TResult Function( PresenceUpdated value)  presenceUpdated,required TResult Function( FetchLastSeen value)  fetchLastSeen,}){
final _that = this;
switch (_that) {
case Started():
return started(_that);case HeartbeatTick():
return heartbeatTick(_that);case ConnectivityChanged():
return connectivityChanged(_that);case AppLifecycleChanged():
return appLifecycleChanged(_that);case PresenceUpdated():
return presenceUpdated(_that);case FetchLastSeen():
return fetchLastSeen(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Started value)?  started,TResult? Function( HeartbeatTick value)?  heartbeatTick,TResult? Function( ConnectivityChanged value)?  connectivityChanged,TResult? Function( AppLifecycleChanged value)?  appLifecycleChanged,TResult? Function( PresenceUpdated value)?  presenceUpdated,TResult? Function( FetchLastSeen value)?  fetchLastSeen,}){
final _that = this;
switch (_that) {
case Started() when started != null:
return started(_that);case HeartbeatTick() when heartbeatTick != null:
return heartbeatTick(_that);case ConnectivityChanged() when connectivityChanged != null:
return connectivityChanged(_that);case AppLifecycleChanged() when appLifecycleChanged != null:
return appLifecycleChanged(_that);case PresenceUpdated() when presenceUpdated != null:
return presenceUpdated(_that);case FetchLastSeen() when fetchLastSeen != null:
return fetchLastSeen(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  heartbeatTick,TResult Function( bool isOnline)?  connectivityChanged,TResult Function( AppLifecycleState state)?  appLifecycleChanged,TResult Function( List<UserPresenceEntity> onlineUsers)?  presenceUpdated,TResult Function( List<String> userIds)?  fetchLastSeen,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Started() when started != null:
return started();case HeartbeatTick() when heartbeatTick != null:
return heartbeatTick();case ConnectivityChanged() when connectivityChanged != null:
return connectivityChanged(_that.isOnline);case AppLifecycleChanged() when appLifecycleChanged != null:
return appLifecycleChanged(_that.state);case PresenceUpdated() when presenceUpdated != null:
return presenceUpdated(_that.onlineUsers);case FetchLastSeen() when fetchLastSeen != null:
return fetchLastSeen(_that.userIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  heartbeatTick,required TResult Function( bool isOnline)  connectivityChanged,required TResult Function( AppLifecycleState state)  appLifecycleChanged,required TResult Function( List<UserPresenceEntity> onlineUsers)  presenceUpdated,required TResult Function( List<String> userIds)  fetchLastSeen,}) {final _that = this;
switch (_that) {
case Started():
return started();case HeartbeatTick():
return heartbeatTick();case ConnectivityChanged():
return connectivityChanged(_that.isOnline);case AppLifecycleChanged():
return appLifecycleChanged(_that.state);case PresenceUpdated():
return presenceUpdated(_that.onlineUsers);case FetchLastSeen():
return fetchLastSeen(_that.userIds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  heartbeatTick,TResult? Function( bool isOnline)?  connectivityChanged,TResult? Function( AppLifecycleState state)?  appLifecycleChanged,TResult? Function( List<UserPresenceEntity> onlineUsers)?  presenceUpdated,TResult? Function( List<String> userIds)?  fetchLastSeen,}) {final _that = this;
switch (_that) {
case Started() when started != null:
return started();case HeartbeatTick() when heartbeatTick != null:
return heartbeatTick();case ConnectivityChanged() when connectivityChanged != null:
return connectivityChanged(_that.isOnline);case AppLifecycleChanged() when appLifecycleChanged != null:
return appLifecycleChanged(_that.state);case PresenceUpdated() when presenceUpdated != null:
return presenceUpdated(_that.onlineUsers);case FetchLastSeen() when fetchLastSeen != null:
return fetchLastSeen(_that.userIds);case _:
  return null;

}
}

}

/// @nodoc


class Started implements UserPresenceEvent {
  const Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserPresenceEvent.started()';
}


}




/// @nodoc


class HeartbeatTick implements UserPresenceEvent {
  const HeartbeatTick();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HeartbeatTick);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserPresenceEvent.heartbeatTick()';
}


}




/// @nodoc


class ConnectivityChanged implements UserPresenceEvent {
  const ConnectivityChanged(this.isOnline);
  

 final  bool isOnline;

/// Create a copy of UserPresenceEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConnectivityChangedCopyWith<ConnectivityChanged> get copyWith => _$ConnectivityChangedCopyWithImpl<ConnectivityChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectivityChanged&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline));
}


@override
int get hashCode => Object.hash(runtimeType,isOnline);

@override
String toString() {
  return 'UserPresenceEvent.connectivityChanged(isOnline: $isOnline)';
}


}

/// @nodoc
abstract mixin class $ConnectivityChangedCopyWith<$Res> implements $UserPresenceEventCopyWith<$Res> {
  factory $ConnectivityChangedCopyWith(ConnectivityChanged value, $Res Function(ConnectivityChanged) _then) = _$ConnectivityChangedCopyWithImpl;
@useResult
$Res call({
 bool isOnline
});




}
/// @nodoc
class _$ConnectivityChangedCopyWithImpl<$Res>
    implements $ConnectivityChangedCopyWith<$Res> {
  _$ConnectivityChangedCopyWithImpl(this._self, this._then);

  final ConnectivityChanged _self;
  final $Res Function(ConnectivityChanged) _then;

/// Create a copy of UserPresenceEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isOnline = null,}) {
  return _then(ConnectivityChanged(
null == isOnline ? _self.isOnline : isOnline // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class AppLifecycleChanged implements UserPresenceEvent {
  const AppLifecycleChanged(this.state);
  

 final  AppLifecycleState state;

/// Create a copy of UserPresenceEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppLifecycleChangedCopyWith<AppLifecycleChanged> get copyWith => _$AppLifecycleChangedCopyWithImpl<AppLifecycleChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppLifecycleChanged&&(identical(other.state, state) || other.state == state));
}


@override
int get hashCode => Object.hash(runtimeType,state);

@override
String toString() {
  return 'UserPresenceEvent.appLifecycleChanged(state: $state)';
}


}

/// @nodoc
abstract mixin class $AppLifecycleChangedCopyWith<$Res> implements $UserPresenceEventCopyWith<$Res> {
  factory $AppLifecycleChangedCopyWith(AppLifecycleChanged value, $Res Function(AppLifecycleChanged) _then) = _$AppLifecycleChangedCopyWithImpl;
@useResult
$Res call({
 AppLifecycleState state
});




}
/// @nodoc
class _$AppLifecycleChangedCopyWithImpl<$Res>
    implements $AppLifecycleChangedCopyWith<$Res> {
  _$AppLifecycleChangedCopyWithImpl(this._self, this._then);

  final AppLifecycleChanged _self;
  final $Res Function(AppLifecycleChanged) _then;

/// Create a copy of UserPresenceEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? state = null,}) {
  return _then(AppLifecycleChanged(
null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as AppLifecycleState,
  ));
}


}

/// @nodoc


class PresenceUpdated implements UserPresenceEvent {
  const PresenceUpdated(final  List<UserPresenceEntity> onlineUsers): _onlineUsers = onlineUsers;
  

 final  List<UserPresenceEntity> _onlineUsers;
 List<UserPresenceEntity> get onlineUsers {
  if (_onlineUsers is EqualUnmodifiableListView) return _onlineUsers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_onlineUsers);
}


/// Create a copy of UserPresenceEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PresenceUpdatedCopyWith<PresenceUpdated> get copyWith => _$PresenceUpdatedCopyWithImpl<PresenceUpdated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PresenceUpdated&&const DeepCollectionEquality().equals(other._onlineUsers, _onlineUsers));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_onlineUsers));

@override
String toString() {
  return 'UserPresenceEvent.presenceUpdated(onlineUsers: $onlineUsers)';
}


}

/// @nodoc
abstract mixin class $PresenceUpdatedCopyWith<$Res> implements $UserPresenceEventCopyWith<$Res> {
  factory $PresenceUpdatedCopyWith(PresenceUpdated value, $Res Function(PresenceUpdated) _then) = _$PresenceUpdatedCopyWithImpl;
@useResult
$Res call({
 List<UserPresenceEntity> onlineUsers
});




}
/// @nodoc
class _$PresenceUpdatedCopyWithImpl<$Res>
    implements $PresenceUpdatedCopyWith<$Res> {
  _$PresenceUpdatedCopyWithImpl(this._self, this._then);

  final PresenceUpdated _self;
  final $Res Function(PresenceUpdated) _then;

/// Create a copy of UserPresenceEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? onlineUsers = null,}) {
  return _then(PresenceUpdated(
null == onlineUsers ? _self._onlineUsers : onlineUsers // ignore: cast_nullable_to_non_nullable
as List<UserPresenceEntity>,
  ));
}


}

/// @nodoc


class FetchLastSeen implements UserPresenceEvent {
  const FetchLastSeen(final  List<String> userIds): _userIds = userIds;
  

 final  List<String> _userIds;
 List<String> get userIds {
  if (_userIds is EqualUnmodifiableListView) return _userIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_userIds);
}


/// Create a copy of UserPresenceEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchLastSeenCopyWith<FetchLastSeen> get copyWith => _$FetchLastSeenCopyWithImpl<FetchLastSeen>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchLastSeen&&const DeepCollectionEquality().equals(other._userIds, _userIds));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_userIds));

@override
String toString() {
  return 'UserPresenceEvent.fetchLastSeen(userIds: $userIds)';
}


}

/// @nodoc
abstract mixin class $FetchLastSeenCopyWith<$Res> implements $UserPresenceEventCopyWith<$Res> {
  factory $FetchLastSeenCopyWith(FetchLastSeen value, $Res Function(FetchLastSeen) _then) = _$FetchLastSeenCopyWithImpl;
@useResult
$Res call({
 List<String> userIds
});




}
/// @nodoc
class _$FetchLastSeenCopyWithImpl<$Res>
    implements $FetchLastSeenCopyWith<$Res> {
  _$FetchLastSeenCopyWithImpl(this._self, this._then);

  final FetchLastSeen _self;
  final $Res Function(FetchLastSeen) _then;

/// Create a copy of UserPresenceEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userIds = null,}) {
  return _then(FetchLastSeen(
null == userIds ? _self._userIds : userIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
