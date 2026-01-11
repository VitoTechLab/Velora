// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NotificationState {

 List<NotificationEntity> get notifications; bool get hasMore; NotificationCursorEntity? get cursor; bool get isLoadingInitial; bool get isLoadingMore; bool get isRefreshing; int get unreadCount; String? get error; String? get message;// Track which notification IDs are currently loading follow toggle
 Set<String> get followLoadingIds;
/// Create a copy of NotificationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationStateCopyWith<NotificationState> get copyWith => _$NotificationStateCopyWithImpl<NotificationState>(this as NotificationState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationState&&const DeepCollectionEquality().equals(other.notifications, notifications)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.cursor, cursor) || other.cursor == cursor)&&(identical(other.isLoadingInitial, isLoadingInitial) || other.isLoadingInitial == isLoadingInitial)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.isRefreshing, isRefreshing) || other.isRefreshing == isRefreshing)&&(identical(other.unreadCount, unreadCount) || other.unreadCount == unreadCount)&&(identical(other.error, error) || other.error == error)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.followLoadingIds, followLoadingIds));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(notifications),hasMore,cursor,isLoadingInitial,isLoadingMore,isRefreshing,unreadCount,error,message,const DeepCollectionEquality().hash(followLoadingIds));

@override
String toString() {
  return 'NotificationState(notifications: $notifications, hasMore: $hasMore, cursor: $cursor, isLoadingInitial: $isLoadingInitial, isLoadingMore: $isLoadingMore, isRefreshing: $isRefreshing, unreadCount: $unreadCount, error: $error, message: $message, followLoadingIds: $followLoadingIds)';
}


}

/// @nodoc
abstract mixin class $NotificationStateCopyWith<$Res>  {
  factory $NotificationStateCopyWith(NotificationState value, $Res Function(NotificationState) _then) = _$NotificationStateCopyWithImpl;
@useResult
$Res call({
 List<NotificationEntity> notifications, bool hasMore, NotificationCursorEntity? cursor, bool isLoadingInitial, bool isLoadingMore, bool isRefreshing, int unreadCount, String? error, String? message, Set<String> followLoadingIds
});


$NotificationCursorEntityCopyWith<$Res>? get cursor;

}
/// @nodoc
class _$NotificationStateCopyWithImpl<$Res>
    implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._self, this._then);

  final NotificationState _self;
  final $Res Function(NotificationState) _then;

/// Create a copy of NotificationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? notifications = null,Object? hasMore = null,Object? cursor = freezed,Object? isLoadingInitial = null,Object? isLoadingMore = null,Object? isRefreshing = null,Object? unreadCount = null,Object? error = freezed,Object? message = freezed,Object? followLoadingIds = null,}) {
  return _then(_self.copyWith(
notifications: null == notifications ? _self.notifications : notifications // ignore: cast_nullable_to_non_nullable
as List<NotificationEntity>,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,cursor: freezed == cursor ? _self.cursor : cursor // ignore: cast_nullable_to_non_nullable
as NotificationCursorEntity?,isLoadingInitial: null == isLoadingInitial ? _self.isLoadingInitial : isLoadingInitial // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,isRefreshing: null == isRefreshing ? _self.isRefreshing : isRefreshing // ignore: cast_nullable_to_non_nullable
as bool,unreadCount: null == unreadCount ? _self.unreadCount : unreadCount // ignore: cast_nullable_to_non_nullable
as int,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,followLoadingIds: null == followLoadingIds ? _self.followLoadingIds : followLoadingIds // ignore: cast_nullable_to_non_nullable
as Set<String>,
  ));
}
/// Create a copy of NotificationState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationCursorEntityCopyWith<$Res>? get cursor {
    if (_self.cursor == null) {
    return null;
  }

  return $NotificationCursorEntityCopyWith<$Res>(_self.cursor!, (value) {
    return _then(_self.copyWith(cursor: value));
  });
}
}


/// Adds pattern-matching-related methods to [NotificationState].
extension NotificationStatePatterns on NotificationState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationState value)  $default,){
final _that = this;
switch (_that) {
case _NotificationState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationState value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<NotificationEntity> notifications,  bool hasMore,  NotificationCursorEntity? cursor,  bool isLoadingInitial,  bool isLoadingMore,  bool isRefreshing,  int unreadCount,  String? error,  String? message,  Set<String> followLoadingIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationState() when $default != null:
return $default(_that.notifications,_that.hasMore,_that.cursor,_that.isLoadingInitial,_that.isLoadingMore,_that.isRefreshing,_that.unreadCount,_that.error,_that.message,_that.followLoadingIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<NotificationEntity> notifications,  bool hasMore,  NotificationCursorEntity? cursor,  bool isLoadingInitial,  bool isLoadingMore,  bool isRefreshing,  int unreadCount,  String? error,  String? message,  Set<String> followLoadingIds)  $default,) {final _that = this;
switch (_that) {
case _NotificationState():
return $default(_that.notifications,_that.hasMore,_that.cursor,_that.isLoadingInitial,_that.isLoadingMore,_that.isRefreshing,_that.unreadCount,_that.error,_that.message,_that.followLoadingIds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<NotificationEntity> notifications,  bool hasMore,  NotificationCursorEntity? cursor,  bool isLoadingInitial,  bool isLoadingMore,  bool isRefreshing,  int unreadCount,  String? error,  String? message,  Set<String> followLoadingIds)?  $default,) {final _that = this;
switch (_that) {
case _NotificationState() when $default != null:
return $default(_that.notifications,_that.hasMore,_that.cursor,_that.isLoadingInitial,_that.isLoadingMore,_that.isRefreshing,_that.unreadCount,_that.error,_that.message,_that.followLoadingIds);case _:
  return null;

}
}

}

/// @nodoc


class _NotificationState implements NotificationState {
  const _NotificationState({final  List<NotificationEntity> notifications = const <NotificationEntity>[], this.hasMore = false, this.cursor, this.isLoadingInitial = false, this.isLoadingMore = false, this.isRefreshing = false, this.unreadCount = 0, this.error, this.message, final  Set<String> followLoadingIds = const <String>{}}): _notifications = notifications,_followLoadingIds = followLoadingIds;
  

 final  List<NotificationEntity> _notifications;
@override@JsonKey() List<NotificationEntity> get notifications {
  if (_notifications is EqualUnmodifiableListView) return _notifications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_notifications);
}

@override@JsonKey() final  bool hasMore;
@override final  NotificationCursorEntity? cursor;
@override@JsonKey() final  bool isLoadingInitial;
@override@JsonKey() final  bool isLoadingMore;
@override@JsonKey() final  bool isRefreshing;
@override@JsonKey() final  int unreadCount;
@override final  String? error;
@override final  String? message;
// Track which notification IDs are currently loading follow toggle
 final  Set<String> _followLoadingIds;
// Track which notification IDs are currently loading follow toggle
@override@JsonKey() Set<String> get followLoadingIds {
  if (_followLoadingIds is EqualUnmodifiableSetView) return _followLoadingIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_followLoadingIds);
}


/// Create a copy of NotificationState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationStateCopyWith<_NotificationState> get copyWith => __$NotificationStateCopyWithImpl<_NotificationState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationState&&const DeepCollectionEquality().equals(other._notifications, _notifications)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.cursor, cursor) || other.cursor == cursor)&&(identical(other.isLoadingInitial, isLoadingInitial) || other.isLoadingInitial == isLoadingInitial)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.isRefreshing, isRefreshing) || other.isRefreshing == isRefreshing)&&(identical(other.unreadCount, unreadCount) || other.unreadCount == unreadCount)&&(identical(other.error, error) || other.error == error)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._followLoadingIds, _followLoadingIds));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_notifications),hasMore,cursor,isLoadingInitial,isLoadingMore,isRefreshing,unreadCount,error,message,const DeepCollectionEquality().hash(_followLoadingIds));

@override
String toString() {
  return 'NotificationState(notifications: $notifications, hasMore: $hasMore, cursor: $cursor, isLoadingInitial: $isLoadingInitial, isLoadingMore: $isLoadingMore, isRefreshing: $isRefreshing, unreadCount: $unreadCount, error: $error, message: $message, followLoadingIds: $followLoadingIds)';
}


}

/// @nodoc
abstract mixin class _$NotificationStateCopyWith<$Res> implements $NotificationStateCopyWith<$Res> {
  factory _$NotificationStateCopyWith(_NotificationState value, $Res Function(_NotificationState) _then) = __$NotificationStateCopyWithImpl;
@override @useResult
$Res call({
 List<NotificationEntity> notifications, bool hasMore, NotificationCursorEntity? cursor, bool isLoadingInitial, bool isLoadingMore, bool isRefreshing, int unreadCount, String? error, String? message, Set<String> followLoadingIds
});


@override $NotificationCursorEntityCopyWith<$Res>? get cursor;

}
/// @nodoc
class __$NotificationStateCopyWithImpl<$Res>
    implements _$NotificationStateCopyWith<$Res> {
  __$NotificationStateCopyWithImpl(this._self, this._then);

  final _NotificationState _self;
  final $Res Function(_NotificationState) _then;

/// Create a copy of NotificationState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? notifications = null,Object? hasMore = null,Object? cursor = freezed,Object? isLoadingInitial = null,Object? isLoadingMore = null,Object? isRefreshing = null,Object? unreadCount = null,Object? error = freezed,Object? message = freezed,Object? followLoadingIds = null,}) {
  return _then(_NotificationState(
notifications: null == notifications ? _self._notifications : notifications // ignore: cast_nullable_to_non_nullable
as List<NotificationEntity>,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,cursor: freezed == cursor ? _self.cursor : cursor // ignore: cast_nullable_to_non_nullable
as NotificationCursorEntity?,isLoadingInitial: null == isLoadingInitial ? _self.isLoadingInitial : isLoadingInitial // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,isRefreshing: null == isRefreshing ? _self.isRefreshing : isRefreshing // ignore: cast_nullable_to_non_nullable
as bool,unreadCount: null == unreadCount ? _self.unreadCount : unreadCount // ignore: cast_nullable_to_non_nullable
as int,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,followLoadingIds: null == followLoadingIds ? _self._followLoadingIds : followLoadingIds // ignore: cast_nullable_to_non_nullable
as Set<String>,
  ));
}

/// Create a copy of NotificationState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationCursorEntityCopyWith<$Res>? get cursor {
    if (_self.cursor == null) {
    return null;
  }

  return $NotificationCursorEntityCopyWith<$Res>(_self.cursor!, (value) {
    return _then(_self.copyWith(cursor: value));
  });
}
}

// dart format on
