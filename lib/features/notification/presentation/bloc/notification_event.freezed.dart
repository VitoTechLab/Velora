// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NotificationEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotificationEvent()';
}


}

/// @nodoc
class $NotificationEventCopyWith<$Res>  {
$NotificationEventCopyWith(NotificationEvent _, $Res Function(NotificationEvent) __);
}


/// Adds pattern-matching-related methods to [NotificationEvent].
extension NotificationEventPatterns on NotificationEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadInitialNotificationsEvent value)?  loadInitial,TResult Function( LoadMoreNotificationsEvent value)?  loadMore,TResult Function( RefreshNotificationsEvent value)?  refresh,TResult Function( MarkAllNotificationsReadEvent value)?  markAllAsRead,TResult Function( MarkNotificationReadEvent value)?  markAsRead,TResult Function( DeleteNotificationEvent value)?  delete,TResult Function( LoadUnreadCountEvent value)?  loadUnreadCount,TResult Function( StartWatchingNotificationsEvent value)?  startWatching,TResult Function( StopWatchingNotificationsEvent value)?  stopWatching,TResult Function( NewNotificationReceivedEvent value)?  newNotificationReceived,TResult Function( ClearTransientEvent value)?  clearTransient,TResult Function( ToggleFollowActorEvent value)?  toggleFollowActor,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadInitialNotificationsEvent() when loadInitial != null:
return loadInitial(_that);case LoadMoreNotificationsEvent() when loadMore != null:
return loadMore(_that);case RefreshNotificationsEvent() when refresh != null:
return refresh(_that);case MarkAllNotificationsReadEvent() when markAllAsRead != null:
return markAllAsRead(_that);case MarkNotificationReadEvent() when markAsRead != null:
return markAsRead(_that);case DeleteNotificationEvent() when delete != null:
return delete(_that);case LoadUnreadCountEvent() when loadUnreadCount != null:
return loadUnreadCount(_that);case StartWatchingNotificationsEvent() when startWatching != null:
return startWatching(_that);case StopWatchingNotificationsEvent() when stopWatching != null:
return stopWatching(_that);case NewNotificationReceivedEvent() when newNotificationReceived != null:
return newNotificationReceived(_that);case ClearTransientEvent() when clearTransient != null:
return clearTransient(_that);case ToggleFollowActorEvent() when toggleFollowActor != null:
return toggleFollowActor(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadInitialNotificationsEvent value)  loadInitial,required TResult Function( LoadMoreNotificationsEvent value)  loadMore,required TResult Function( RefreshNotificationsEvent value)  refresh,required TResult Function( MarkAllNotificationsReadEvent value)  markAllAsRead,required TResult Function( MarkNotificationReadEvent value)  markAsRead,required TResult Function( DeleteNotificationEvent value)  delete,required TResult Function( LoadUnreadCountEvent value)  loadUnreadCount,required TResult Function( StartWatchingNotificationsEvent value)  startWatching,required TResult Function( StopWatchingNotificationsEvent value)  stopWatching,required TResult Function( NewNotificationReceivedEvent value)  newNotificationReceived,required TResult Function( ClearTransientEvent value)  clearTransient,required TResult Function( ToggleFollowActorEvent value)  toggleFollowActor,}){
final _that = this;
switch (_that) {
case LoadInitialNotificationsEvent():
return loadInitial(_that);case LoadMoreNotificationsEvent():
return loadMore(_that);case RefreshNotificationsEvent():
return refresh(_that);case MarkAllNotificationsReadEvent():
return markAllAsRead(_that);case MarkNotificationReadEvent():
return markAsRead(_that);case DeleteNotificationEvent():
return delete(_that);case LoadUnreadCountEvent():
return loadUnreadCount(_that);case StartWatchingNotificationsEvent():
return startWatching(_that);case StopWatchingNotificationsEvent():
return stopWatching(_that);case NewNotificationReceivedEvent():
return newNotificationReceived(_that);case ClearTransientEvent():
return clearTransient(_that);case ToggleFollowActorEvent():
return toggleFollowActor(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadInitialNotificationsEvent value)?  loadInitial,TResult? Function( LoadMoreNotificationsEvent value)?  loadMore,TResult? Function( RefreshNotificationsEvent value)?  refresh,TResult? Function( MarkAllNotificationsReadEvent value)?  markAllAsRead,TResult? Function( MarkNotificationReadEvent value)?  markAsRead,TResult? Function( DeleteNotificationEvent value)?  delete,TResult? Function( LoadUnreadCountEvent value)?  loadUnreadCount,TResult? Function( StartWatchingNotificationsEvent value)?  startWatching,TResult? Function( StopWatchingNotificationsEvent value)?  stopWatching,TResult? Function( NewNotificationReceivedEvent value)?  newNotificationReceived,TResult? Function( ClearTransientEvent value)?  clearTransient,TResult? Function( ToggleFollowActorEvent value)?  toggleFollowActor,}){
final _that = this;
switch (_that) {
case LoadInitialNotificationsEvent() when loadInitial != null:
return loadInitial(_that);case LoadMoreNotificationsEvent() when loadMore != null:
return loadMore(_that);case RefreshNotificationsEvent() when refresh != null:
return refresh(_that);case MarkAllNotificationsReadEvent() when markAllAsRead != null:
return markAllAsRead(_that);case MarkNotificationReadEvent() when markAsRead != null:
return markAsRead(_that);case DeleteNotificationEvent() when delete != null:
return delete(_that);case LoadUnreadCountEvent() when loadUnreadCount != null:
return loadUnreadCount(_that);case StartWatchingNotificationsEvent() when startWatching != null:
return startWatching(_that);case StopWatchingNotificationsEvent() when stopWatching != null:
return stopWatching(_that);case NewNotificationReceivedEvent() when newNotificationReceived != null:
return newNotificationReceived(_that);case ClearTransientEvent() when clearTransient != null:
return clearTransient(_that);case ToggleFollowActorEvent() when toggleFollowActor != null:
return toggleFollowActor(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int limit)?  loadInitial,TResult Function( int limit)?  loadMore,TResult Function()?  refresh,TResult Function()?  markAllAsRead,TResult Function( String notificationId)?  markAsRead,TResult Function( String notificationId)?  delete,TResult Function()?  loadUnreadCount,TResult Function()?  startWatching,TResult Function()?  stopWatching,TResult Function()?  newNotificationReceived,TResult Function()?  clearTransient,TResult Function( String notificationId,  String actorId)?  toggleFollowActor,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadInitialNotificationsEvent() when loadInitial != null:
return loadInitial(_that.limit);case LoadMoreNotificationsEvent() when loadMore != null:
return loadMore(_that.limit);case RefreshNotificationsEvent() when refresh != null:
return refresh();case MarkAllNotificationsReadEvent() when markAllAsRead != null:
return markAllAsRead();case MarkNotificationReadEvent() when markAsRead != null:
return markAsRead(_that.notificationId);case DeleteNotificationEvent() when delete != null:
return delete(_that.notificationId);case LoadUnreadCountEvent() when loadUnreadCount != null:
return loadUnreadCount();case StartWatchingNotificationsEvent() when startWatching != null:
return startWatching();case StopWatchingNotificationsEvent() when stopWatching != null:
return stopWatching();case NewNotificationReceivedEvent() when newNotificationReceived != null:
return newNotificationReceived();case ClearTransientEvent() when clearTransient != null:
return clearTransient();case ToggleFollowActorEvent() when toggleFollowActor != null:
return toggleFollowActor(_that.notificationId,_that.actorId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int limit)  loadInitial,required TResult Function( int limit)  loadMore,required TResult Function()  refresh,required TResult Function()  markAllAsRead,required TResult Function( String notificationId)  markAsRead,required TResult Function( String notificationId)  delete,required TResult Function()  loadUnreadCount,required TResult Function()  startWatching,required TResult Function()  stopWatching,required TResult Function()  newNotificationReceived,required TResult Function()  clearTransient,required TResult Function( String notificationId,  String actorId)  toggleFollowActor,}) {final _that = this;
switch (_that) {
case LoadInitialNotificationsEvent():
return loadInitial(_that.limit);case LoadMoreNotificationsEvent():
return loadMore(_that.limit);case RefreshNotificationsEvent():
return refresh();case MarkAllNotificationsReadEvent():
return markAllAsRead();case MarkNotificationReadEvent():
return markAsRead(_that.notificationId);case DeleteNotificationEvent():
return delete(_that.notificationId);case LoadUnreadCountEvent():
return loadUnreadCount();case StartWatchingNotificationsEvent():
return startWatching();case StopWatchingNotificationsEvent():
return stopWatching();case NewNotificationReceivedEvent():
return newNotificationReceived();case ClearTransientEvent():
return clearTransient();case ToggleFollowActorEvent():
return toggleFollowActor(_that.notificationId,_that.actorId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int limit)?  loadInitial,TResult? Function( int limit)?  loadMore,TResult? Function()?  refresh,TResult? Function()?  markAllAsRead,TResult? Function( String notificationId)?  markAsRead,TResult? Function( String notificationId)?  delete,TResult? Function()?  loadUnreadCount,TResult? Function()?  startWatching,TResult? Function()?  stopWatching,TResult? Function()?  newNotificationReceived,TResult? Function()?  clearTransient,TResult? Function( String notificationId,  String actorId)?  toggleFollowActor,}) {final _that = this;
switch (_that) {
case LoadInitialNotificationsEvent() when loadInitial != null:
return loadInitial(_that.limit);case LoadMoreNotificationsEvent() when loadMore != null:
return loadMore(_that.limit);case RefreshNotificationsEvent() when refresh != null:
return refresh();case MarkAllNotificationsReadEvent() when markAllAsRead != null:
return markAllAsRead();case MarkNotificationReadEvent() when markAsRead != null:
return markAsRead(_that.notificationId);case DeleteNotificationEvent() when delete != null:
return delete(_that.notificationId);case LoadUnreadCountEvent() when loadUnreadCount != null:
return loadUnreadCount();case StartWatchingNotificationsEvent() when startWatching != null:
return startWatching();case StopWatchingNotificationsEvent() when stopWatching != null:
return stopWatching();case NewNotificationReceivedEvent() when newNotificationReceived != null:
return newNotificationReceived();case ClearTransientEvent() when clearTransient != null:
return clearTransient();case ToggleFollowActorEvent() when toggleFollowActor != null:
return toggleFollowActor(_that.notificationId,_that.actorId);case _:
  return null;

}
}

}

/// @nodoc


class LoadInitialNotificationsEvent implements NotificationEvent {
  const LoadInitialNotificationsEvent({this.limit = 20});
  

@JsonKey() final  int limit;

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadInitialNotificationsEventCopyWith<LoadInitialNotificationsEvent> get copyWith => _$LoadInitialNotificationsEventCopyWithImpl<LoadInitialNotificationsEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadInitialNotificationsEvent&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,limit);

@override
String toString() {
  return 'NotificationEvent.loadInitial(limit: $limit)';
}


}

/// @nodoc
abstract mixin class $LoadInitialNotificationsEventCopyWith<$Res> implements $NotificationEventCopyWith<$Res> {
  factory $LoadInitialNotificationsEventCopyWith(LoadInitialNotificationsEvent value, $Res Function(LoadInitialNotificationsEvent) _then) = _$LoadInitialNotificationsEventCopyWithImpl;
@useResult
$Res call({
 int limit
});




}
/// @nodoc
class _$LoadInitialNotificationsEventCopyWithImpl<$Res>
    implements $LoadInitialNotificationsEventCopyWith<$Res> {
  _$LoadInitialNotificationsEventCopyWithImpl(this._self, this._then);

  final LoadInitialNotificationsEvent _self;
  final $Res Function(LoadInitialNotificationsEvent) _then;

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? limit = null,}) {
  return _then(LoadInitialNotificationsEvent(
limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class LoadMoreNotificationsEvent implements NotificationEvent {
  const LoadMoreNotificationsEvent({this.limit = 20});
  

@JsonKey() final  int limit;

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadMoreNotificationsEventCopyWith<LoadMoreNotificationsEvent> get copyWith => _$LoadMoreNotificationsEventCopyWithImpl<LoadMoreNotificationsEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadMoreNotificationsEvent&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,limit);

@override
String toString() {
  return 'NotificationEvent.loadMore(limit: $limit)';
}


}

/// @nodoc
abstract mixin class $LoadMoreNotificationsEventCopyWith<$Res> implements $NotificationEventCopyWith<$Res> {
  factory $LoadMoreNotificationsEventCopyWith(LoadMoreNotificationsEvent value, $Res Function(LoadMoreNotificationsEvent) _then) = _$LoadMoreNotificationsEventCopyWithImpl;
@useResult
$Res call({
 int limit
});




}
/// @nodoc
class _$LoadMoreNotificationsEventCopyWithImpl<$Res>
    implements $LoadMoreNotificationsEventCopyWith<$Res> {
  _$LoadMoreNotificationsEventCopyWithImpl(this._self, this._then);

  final LoadMoreNotificationsEvent _self;
  final $Res Function(LoadMoreNotificationsEvent) _then;

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? limit = null,}) {
  return _then(LoadMoreNotificationsEvent(
limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class RefreshNotificationsEvent implements NotificationEvent {
  const RefreshNotificationsEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefreshNotificationsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotificationEvent.refresh()';
}


}




/// @nodoc


class MarkAllNotificationsReadEvent implements NotificationEvent {
  const MarkAllNotificationsReadEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarkAllNotificationsReadEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotificationEvent.markAllAsRead()';
}


}




/// @nodoc


class MarkNotificationReadEvent implements NotificationEvent {
  const MarkNotificationReadEvent(this.notificationId);
  

 final  String notificationId;

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarkNotificationReadEventCopyWith<MarkNotificationReadEvent> get copyWith => _$MarkNotificationReadEventCopyWithImpl<MarkNotificationReadEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarkNotificationReadEvent&&(identical(other.notificationId, notificationId) || other.notificationId == notificationId));
}


@override
int get hashCode => Object.hash(runtimeType,notificationId);

@override
String toString() {
  return 'NotificationEvent.markAsRead(notificationId: $notificationId)';
}


}

/// @nodoc
abstract mixin class $MarkNotificationReadEventCopyWith<$Res> implements $NotificationEventCopyWith<$Res> {
  factory $MarkNotificationReadEventCopyWith(MarkNotificationReadEvent value, $Res Function(MarkNotificationReadEvent) _then) = _$MarkNotificationReadEventCopyWithImpl;
@useResult
$Res call({
 String notificationId
});




}
/// @nodoc
class _$MarkNotificationReadEventCopyWithImpl<$Res>
    implements $MarkNotificationReadEventCopyWith<$Res> {
  _$MarkNotificationReadEventCopyWithImpl(this._self, this._then);

  final MarkNotificationReadEvent _self;
  final $Res Function(MarkNotificationReadEvent) _then;

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? notificationId = null,}) {
  return _then(MarkNotificationReadEvent(
null == notificationId ? _self.notificationId : notificationId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class DeleteNotificationEvent implements NotificationEvent {
  const DeleteNotificationEvent(this.notificationId);
  

 final  String notificationId;

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteNotificationEventCopyWith<DeleteNotificationEvent> get copyWith => _$DeleteNotificationEventCopyWithImpl<DeleteNotificationEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteNotificationEvent&&(identical(other.notificationId, notificationId) || other.notificationId == notificationId));
}


@override
int get hashCode => Object.hash(runtimeType,notificationId);

@override
String toString() {
  return 'NotificationEvent.delete(notificationId: $notificationId)';
}


}

/// @nodoc
abstract mixin class $DeleteNotificationEventCopyWith<$Res> implements $NotificationEventCopyWith<$Res> {
  factory $DeleteNotificationEventCopyWith(DeleteNotificationEvent value, $Res Function(DeleteNotificationEvent) _then) = _$DeleteNotificationEventCopyWithImpl;
@useResult
$Res call({
 String notificationId
});




}
/// @nodoc
class _$DeleteNotificationEventCopyWithImpl<$Res>
    implements $DeleteNotificationEventCopyWith<$Res> {
  _$DeleteNotificationEventCopyWithImpl(this._self, this._then);

  final DeleteNotificationEvent _self;
  final $Res Function(DeleteNotificationEvent) _then;

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? notificationId = null,}) {
  return _then(DeleteNotificationEvent(
null == notificationId ? _self.notificationId : notificationId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoadUnreadCountEvent implements NotificationEvent {
  const LoadUnreadCountEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadUnreadCountEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotificationEvent.loadUnreadCount()';
}


}




/// @nodoc


class StartWatchingNotificationsEvent implements NotificationEvent {
  const StartWatchingNotificationsEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StartWatchingNotificationsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotificationEvent.startWatching()';
}


}




/// @nodoc


class StopWatchingNotificationsEvent implements NotificationEvent {
  const StopWatchingNotificationsEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StopWatchingNotificationsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotificationEvent.stopWatching()';
}


}




/// @nodoc


class NewNotificationReceivedEvent implements NotificationEvent {
  const NewNotificationReceivedEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewNotificationReceivedEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotificationEvent.newNotificationReceived()';
}


}




/// @nodoc


class ClearTransientEvent implements NotificationEvent {
  const ClearTransientEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClearTransientEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NotificationEvent.clearTransient()';
}


}




/// @nodoc


class ToggleFollowActorEvent implements NotificationEvent {
  const ToggleFollowActorEvent({required this.notificationId, required this.actorId});
  

 final  String notificationId;
 final  String actorId;

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ToggleFollowActorEventCopyWith<ToggleFollowActorEvent> get copyWith => _$ToggleFollowActorEventCopyWithImpl<ToggleFollowActorEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToggleFollowActorEvent&&(identical(other.notificationId, notificationId) || other.notificationId == notificationId)&&(identical(other.actorId, actorId) || other.actorId == actorId));
}


@override
int get hashCode => Object.hash(runtimeType,notificationId,actorId);

@override
String toString() {
  return 'NotificationEvent.toggleFollowActor(notificationId: $notificationId, actorId: $actorId)';
}


}

/// @nodoc
abstract mixin class $ToggleFollowActorEventCopyWith<$Res> implements $NotificationEventCopyWith<$Res> {
  factory $ToggleFollowActorEventCopyWith(ToggleFollowActorEvent value, $Res Function(ToggleFollowActorEvent) _then) = _$ToggleFollowActorEventCopyWithImpl;
@useResult
$Res call({
 String notificationId, String actorId
});




}
/// @nodoc
class _$ToggleFollowActorEventCopyWithImpl<$Res>
    implements $ToggleFollowActorEventCopyWith<$Res> {
  _$ToggleFollowActorEventCopyWithImpl(this._self, this._then);

  final ToggleFollowActorEvent _self;
  final $Res Function(ToggleFollowActorEvent) _then;

/// Create a copy of NotificationEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? notificationId = null,Object? actorId = null,}) {
  return _then(ToggleFollowActorEvent(
notificationId: null == notificationId ? _self.notificationId : notificationId // ignore: cast_nullable_to_non_nullable
as String,actorId: null == actorId ? _self.actorId : actorId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
