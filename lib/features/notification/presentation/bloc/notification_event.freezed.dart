// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotificationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit) loadInitial,
    required TResult Function(int limit) loadMore,
    required TResult Function() refresh,
    required TResult Function() markAllAsRead,
    required TResult Function(String notificationId) markAsRead,
    required TResult Function(String notificationId) delete,
    required TResult Function() loadUnreadCount,
    required TResult Function() startWatching,
    required TResult Function() stopWatching,
    required TResult Function() newNotificationReceived,
    required TResult Function() clearTransient,
    required TResult Function(String notificationId, String actorId)
        toggleFollowActor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int limit)? loadInitial,
    TResult? Function(int limit)? loadMore,
    TResult? Function()? refresh,
    TResult? Function()? markAllAsRead,
    TResult? Function(String notificationId)? markAsRead,
    TResult? Function(String notificationId)? delete,
    TResult? Function()? loadUnreadCount,
    TResult? Function()? startWatching,
    TResult? Function()? stopWatching,
    TResult? Function()? newNotificationReceived,
    TResult? Function()? clearTransient,
    TResult? Function(String notificationId, String actorId)? toggleFollowActor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit)? loadInitial,
    TResult Function(int limit)? loadMore,
    TResult Function()? refresh,
    TResult Function()? markAllAsRead,
    TResult Function(String notificationId)? markAsRead,
    TResult Function(String notificationId)? delete,
    TResult Function()? loadUnreadCount,
    TResult Function()? startWatching,
    TResult Function()? stopWatching,
    TResult Function()? newNotificationReceived,
    TResult Function()? clearTransient,
    TResult Function(String notificationId, String actorId)? toggleFollowActor,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInitialNotificationsEvent value) loadInitial,
    required TResult Function(LoadMoreNotificationsEvent value) loadMore,
    required TResult Function(RefreshNotificationsEvent value) refresh,
    required TResult Function(MarkAllNotificationsReadEvent value)
        markAllAsRead,
    required TResult Function(MarkNotificationReadEvent value) markAsRead,
    required TResult Function(DeleteNotificationEvent value) delete,
    required TResult Function(LoadUnreadCountEvent value) loadUnreadCount,
    required TResult Function(StartWatchingNotificationsEvent value)
        startWatching,
    required TResult Function(StopWatchingNotificationsEvent value)
        stopWatching,
    required TResult Function(NewNotificationReceivedEvent value)
        newNotificationReceived,
    required TResult Function(ClearTransientEvent value) clearTransient,
    required TResult Function(ToggleFollowActorEvent value) toggleFollowActor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInitialNotificationsEvent value)? loadInitial,
    TResult? Function(LoadMoreNotificationsEvent value)? loadMore,
    TResult? Function(RefreshNotificationsEvent value)? refresh,
    TResult? Function(MarkAllNotificationsReadEvent value)? markAllAsRead,
    TResult? Function(MarkNotificationReadEvent value)? markAsRead,
    TResult? Function(DeleteNotificationEvent value)? delete,
    TResult? Function(LoadUnreadCountEvent value)? loadUnreadCount,
    TResult? Function(StartWatchingNotificationsEvent value)? startWatching,
    TResult? Function(StopWatchingNotificationsEvent value)? stopWatching,
    TResult? Function(NewNotificationReceivedEvent value)?
        newNotificationReceived,
    TResult? Function(ClearTransientEvent value)? clearTransient,
    TResult? Function(ToggleFollowActorEvent value)? toggleFollowActor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInitialNotificationsEvent value)? loadInitial,
    TResult Function(LoadMoreNotificationsEvent value)? loadMore,
    TResult Function(RefreshNotificationsEvent value)? refresh,
    TResult Function(MarkAllNotificationsReadEvent value)? markAllAsRead,
    TResult Function(MarkNotificationReadEvent value)? markAsRead,
    TResult Function(DeleteNotificationEvent value)? delete,
    TResult Function(LoadUnreadCountEvent value)? loadUnreadCount,
    TResult Function(StartWatchingNotificationsEvent value)? startWatching,
    TResult Function(StopWatchingNotificationsEvent value)? stopWatching,
    TResult Function(NewNotificationReceivedEvent value)?
        newNotificationReceived,
    TResult Function(ClearTransientEvent value)? clearTransient,
    TResult Function(ToggleFollowActorEvent value)? toggleFollowActor,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationEventCopyWith<$Res> {
  factory $NotificationEventCopyWith(
          NotificationEvent value, $Res Function(NotificationEvent) then) =
      _$NotificationEventCopyWithImpl<$Res, NotificationEvent>;
}

/// @nodoc
class _$NotificationEventCopyWithImpl<$Res, $Val extends NotificationEvent>
    implements $NotificationEventCopyWith<$Res> {
  _$NotificationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadInitialNotificationsEventImplCopyWith<$Res> {
  factory _$$LoadInitialNotificationsEventImplCopyWith(
          _$LoadInitialNotificationsEventImpl value,
          $Res Function(_$LoadInitialNotificationsEventImpl) then) =
      __$$LoadInitialNotificationsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int limit});
}

/// @nodoc
class __$$LoadInitialNotificationsEventImplCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res,
        _$LoadInitialNotificationsEventImpl>
    implements _$$LoadInitialNotificationsEventImplCopyWith<$Res> {
  __$$LoadInitialNotificationsEventImplCopyWithImpl(
      _$LoadInitialNotificationsEventImpl _value,
      $Res Function(_$LoadInitialNotificationsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
  }) {
    return _then(_$LoadInitialNotificationsEventImpl(
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadInitialNotificationsEventImpl
    implements LoadInitialNotificationsEvent {
  const _$LoadInitialNotificationsEventImpl({this.limit = 20});

  @override
  @JsonKey()
  final int limit;

  @override
  String toString() {
    return 'NotificationEvent.loadInitial(limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadInitialNotificationsEventImpl &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, limit);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadInitialNotificationsEventImplCopyWith<
          _$LoadInitialNotificationsEventImpl>
      get copyWith => __$$LoadInitialNotificationsEventImplCopyWithImpl<
          _$LoadInitialNotificationsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit) loadInitial,
    required TResult Function(int limit) loadMore,
    required TResult Function() refresh,
    required TResult Function() markAllAsRead,
    required TResult Function(String notificationId) markAsRead,
    required TResult Function(String notificationId) delete,
    required TResult Function() loadUnreadCount,
    required TResult Function() startWatching,
    required TResult Function() stopWatching,
    required TResult Function() newNotificationReceived,
    required TResult Function() clearTransient,
    required TResult Function(String notificationId, String actorId)
        toggleFollowActor,
  }) {
    return loadInitial(limit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int limit)? loadInitial,
    TResult? Function(int limit)? loadMore,
    TResult? Function()? refresh,
    TResult? Function()? markAllAsRead,
    TResult? Function(String notificationId)? markAsRead,
    TResult? Function(String notificationId)? delete,
    TResult? Function()? loadUnreadCount,
    TResult? Function()? startWatching,
    TResult? Function()? stopWatching,
    TResult? Function()? newNotificationReceived,
    TResult? Function()? clearTransient,
    TResult? Function(String notificationId, String actorId)? toggleFollowActor,
  }) {
    return loadInitial?.call(limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit)? loadInitial,
    TResult Function(int limit)? loadMore,
    TResult Function()? refresh,
    TResult Function()? markAllAsRead,
    TResult Function(String notificationId)? markAsRead,
    TResult Function(String notificationId)? delete,
    TResult Function()? loadUnreadCount,
    TResult Function()? startWatching,
    TResult Function()? stopWatching,
    TResult Function()? newNotificationReceived,
    TResult Function()? clearTransient,
    TResult Function(String notificationId, String actorId)? toggleFollowActor,
    required TResult orElse(),
  }) {
    if (loadInitial != null) {
      return loadInitial(limit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInitialNotificationsEvent value) loadInitial,
    required TResult Function(LoadMoreNotificationsEvent value) loadMore,
    required TResult Function(RefreshNotificationsEvent value) refresh,
    required TResult Function(MarkAllNotificationsReadEvent value)
        markAllAsRead,
    required TResult Function(MarkNotificationReadEvent value) markAsRead,
    required TResult Function(DeleteNotificationEvent value) delete,
    required TResult Function(LoadUnreadCountEvent value) loadUnreadCount,
    required TResult Function(StartWatchingNotificationsEvent value)
        startWatching,
    required TResult Function(StopWatchingNotificationsEvent value)
        stopWatching,
    required TResult Function(NewNotificationReceivedEvent value)
        newNotificationReceived,
    required TResult Function(ClearTransientEvent value) clearTransient,
    required TResult Function(ToggleFollowActorEvent value) toggleFollowActor,
  }) {
    return loadInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInitialNotificationsEvent value)? loadInitial,
    TResult? Function(LoadMoreNotificationsEvent value)? loadMore,
    TResult? Function(RefreshNotificationsEvent value)? refresh,
    TResult? Function(MarkAllNotificationsReadEvent value)? markAllAsRead,
    TResult? Function(MarkNotificationReadEvent value)? markAsRead,
    TResult? Function(DeleteNotificationEvent value)? delete,
    TResult? Function(LoadUnreadCountEvent value)? loadUnreadCount,
    TResult? Function(StartWatchingNotificationsEvent value)? startWatching,
    TResult? Function(StopWatchingNotificationsEvent value)? stopWatching,
    TResult? Function(NewNotificationReceivedEvent value)?
        newNotificationReceived,
    TResult? Function(ClearTransientEvent value)? clearTransient,
    TResult? Function(ToggleFollowActorEvent value)? toggleFollowActor,
  }) {
    return loadInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInitialNotificationsEvent value)? loadInitial,
    TResult Function(LoadMoreNotificationsEvent value)? loadMore,
    TResult Function(RefreshNotificationsEvent value)? refresh,
    TResult Function(MarkAllNotificationsReadEvent value)? markAllAsRead,
    TResult Function(MarkNotificationReadEvent value)? markAsRead,
    TResult Function(DeleteNotificationEvent value)? delete,
    TResult Function(LoadUnreadCountEvent value)? loadUnreadCount,
    TResult Function(StartWatchingNotificationsEvent value)? startWatching,
    TResult Function(StopWatchingNotificationsEvent value)? stopWatching,
    TResult Function(NewNotificationReceivedEvent value)?
        newNotificationReceived,
    TResult Function(ClearTransientEvent value)? clearTransient,
    TResult Function(ToggleFollowActorEvent value)? toggleFollowActor,
    required TResult orElse(),
  }) {
    if (loadInitial != null) {
      return loadInitial(this);
    }
    return orElse();
  }
}

abstract class LoadInitialNotificationsEvent implements NotificationEvent {
  const factory LoadInitialNotificationsEvent({final int limit}) =
      _$LoadInitialNotificationsEventImpl;

  int get limit;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadInitialNotificationsEventImplCopyWith<
          _$LoadInitialNotificationsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadMoreNotificationsEventImplCopyWith<$Res> {
  factory _$$LoadMoreNotificationsEventImplCopyWith(
          _$LoadMoreNotificationsEventImpl value,
          $Res Function(_$LoadMoreNotificationsEventImpl) then) =
      __$$LoadMoreNotificationsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int limit});
}

/// @nodoc
class __$$LoadMoreNotificationsEventImplCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res,
        _$LoadMoreNotificationsEventImpl>
    implements _$$LoadMoreNotificationsEventImplCopyWith<$Res> {
  __$$LoadMoreNotificationsEventImplCopyWithImpl(
      _$LoadMoreNotificationsEventImpl _value,
      $Res Function(_$LoadMoreNotificationsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
  }) {
    return _then(_$LoadMoreNotificationsEventImpl(
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadMoreNotificationsEventImpl implements LoadMoreNotificationsEvent {
  const _$LoadMoreNotificationsEventImpl({this.limit = 20});

  @override
  @JsonKey()
  final int limit;

  @override
  String toString() {
    return 'NotificationEvent.loadMore(limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadMoreNotificationsEventImpl &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, limit);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadMoreNotificationsEventImplCopyWith<_$LoadMoreNotificationsEventImpl>
      get copyWith => __$$LoadMoreNotificationsEventImplCopyWithImpl<
          _$LoadMoreNotificationsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit) loadInitial,
    required TResult Function(int limit) loadMore,
    required TResult Function() refresh,
    required TResult Function() markAllAsRead,
    required TResult Function(String notificationId) markAsRead,
    required TResult Function(String notificationId) delete,
    required TResult Function() loadUnreadCount,
    required TResult Function() startWatching,
    required TResult Function() stopWatching,
    required TResult Function() newNotificationReceived,
    required TResult Function() clearTransient,
    required TResult Function(String notificationId, String actorId)
        toggleFollowActor,
  }) {
    return loadMore(limit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int limit)? loadInitial,
    TResult? Function(int limit)? loadMore,
    TResult? Function()? refresh,
    TResult? Function()? markAllAsRead,
    TResult? Function(String notificationId)? markAsRead,
    TResult? Function(String notificationId)? delete,
    TResult? Function()? loadUnreadCount,
    TResult? Function()? startWatching,
    TResult? Function()? stopWatching,
    TResult? Function()? newNotificationReceived,
    TResult? Function()? clearTransient,
    TResult? Function(String notificationId, String actorId)? toggleFollowActor,
  }) {
    return loadMore?.call(limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit)? loadInitial,
    TResult Function(int limit)? loadMore,
    TResult Function()? refresh,
    TResult Function()? markAllAsRead,
    TResult Function(String notificationId)? markAsRead,
    TResult Function(String notificationId)? delete,
    TResult Function()? loadUnreadCount,
    TResult Function()? startWatching,
    TResult Function()? stopWatching,
    TResult Function()? newNotificationReceived,
    TResult Function()? clearTransient,
    TResult Function(String notificationId, String actorId)? toggleFollowActor,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(limit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInitialNotificationsEvent value) loadInitial,
    required TResult Function(LoadMoreNotificationsEvent value) loadMore,
    required TResult Function(RefreshNotificationsEvent value) refresh,
    required TResult Function(MarkAllNotificationsReadEvent value)
        markAllAsRead,
    required TResult Function(MarkNotificationReadEvent value) markAsRead,
    required TResult Function(DeleteNotificationEvent value) delete,
    required TResult Function(LoadUnreadCountEvent value) loadUnreadCount,
    required TResult Function(StartWatchingNotificationsEvent value)
        startWatching,
    required TResult Function(StopWatchingNotificationsEvent value)
        stopWatching,
    required TResult Function(NewNotificationReceivedEvent value)
        newNotificationReceived,
    required TResult Function(ClearTransientEvent value) clearTransient,
    required TResult Function(ToggleFollowActorEvent value) toggleFollowActor,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInitialNotificationsEvent value)? loadInitial,
    TResult? Function(LoadMoreNotificationsEvent value)? loadMore,
    TResult? Function(RefreshNotificationsEvent value)? refresh,
    TResult? Function(MarkAllNotificationsReadEvent value)? markAllAsRead,
    TResult? Function(MarkNotificationReadEvent value)? markAsRead,
    TResult? Function(DeleteNotificationEvent value)? delete,
    TResult? Function(LoadUnreadCountEvent value)? loadUnreadCount,
    TResult? Function(StartWatchingNotificationsEvent value)? startWatching,
    TResult? Function(StopWatchingNotificationsEvent value)? stopWatching,
    TResult? Function(NewNotificationReceivedEvent value)?
        newNotificationReceived,
    TResult? Function(ClearTransientEvent value)? clearTransient,
    TResult? Function(ToggleFollowActorEvent value)? toggleFollowActor,
  }) {
    return loadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInitialNotificationsEvent value)? loadInitial,
    TResult Function(LoadMoreNotificationsEvent value)? loadMore,
    TResult Function(RefreshNotificationsEvent value)? refresh,
    TResult Function(MarkAllNotificationsReadEvent value)? markAllAsRead,
    TResult Function(MarkNotificationReadEvent value)? markAsRead,
    TResult Function(DeleteNotificationEvent value)? delete,
    TResult Function(LoadUnreadCountEvent value)? loadUnreadCount,
    TResult Function(StartWatchingNotificationsEvent value)? startWatching,
    TResult Function(StopWatchingNotificationsEvent value)? stopWatching,
    TResult Function(NewNotificationReceivedEvent value)?
        newNotificationReceived,
    TResult Function(ClearTransientEvent value)? clearTransient,
    TResult Function(ToggleFollowActorEvent value)? toggleFollowActor,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class LoadMoreNotificationsEvent implements NotificationEvent {
  const factory LoadMoreNotificationsEvent({final int limit}) =
      _$LoadMoreNotificationsEventImpl;

  int get limit;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadMoreNotificationsEventImplCopyWith<_$LoadMoreNotificationsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefreshNotificationsEventImplCopyWith<$Res> {
  factory _$$RefreshNotificationsEventImplCopyWith(
          _$RefreshNotificationsEventImpl value,
          $Res Function(_$RefreshNotificationsEventImpl) then) =
      __$$RefreshNotificationsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshNotificationsEventImplCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res,
        _$RefreshNotificationsEventImpl>
    implements _$$RefreshNotificationsEventImplCopyWith<$Res> {
  __$$RefreshNotificationsEventImplCopyWithImpl(
      _$RefreshNotificationsEventImpl _value,
      $Res Function(_$RefreshNotificationsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RefreshNotificationsEventImpl implements RefreshNotificationsEvent {
  const _$RefreshNotificationsEventImpl();

  @override
  String toString() {
    return 'NotificationEvent.refresh()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshNotificationsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit) loadInitial,
    required TResult Function(int limit) loadMore,
    required TResult Function() refresh,
    required TResult Function() markAllAsRead,
    required TResult Function(String notificationId) markAsRead,
    required TResult Function(String notificationId) delete,
    required TResult Function() loadUnreadCount,
    required TResult Function() startWatching,
    required TResult Function() stopWatching,
    required TResult Function() newNotificationReceived,
    required TResult Function() clearTransient,
    required TResult Function(String notificationId, String actorId)
        toggleFollowActor,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int limit)? loadInitial,
    TResult? Function(int limit)? loadMore,
    TResult? Function()? refresh,
    TResult? Function()? markAllAsRead,
    TResult? Function(String notificationId)? markAsRead,
    TResult? Function(String notificationId)? delete,
    TResult? Function()? loadUnreadCount,
    TResult? Function()? startWatching,
    TResult? Function()? stopWatching,
    TResult? Function()? newNotificationReceived,
    TResult? Function()? clearTransient,
    TResult? Function(String notificationId, String actorId)? toggleFollowActor,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit)? loadInitial,
    TResult Function(int limit)? loadMore,
    TResult Function()? refresh,
    TResult Function()? markAllAsRead,
    TResult Function(String notificationId)? markAsRead,
    TResult Function(String notificationId)? delete,
    TResult Function()? loadUnreadCount,
    TResult Function()? startWatching,
    TResult Function()? stopWatching,
    TResult Function()? newNotificationReceived,
    TResult Function()? clearTransient,
    TResult Function(String notificationId, String actorId)? toggleFollowActor,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInitialNotificationsEvent value) loadInitial,
    required TResult Function(LoadMoreNotificationsEvent value) loadMore,
    required TResult Function(RefreshNotificationsEvent value) refresh,
    required TResult Function(MarkAllNotificationsReadEvent value)
        markAllAsRead,
    required TResult Function(MarkNotificationReadEvent value) markAsRead,
    required TResult Function(DeleteNotificationEvent value) delete,
    required TResult Function(LoadUnreadCountEvent value) loadUnreadCount,
    required TResult Function(StartWatchingNotificationsEvent value)
        startWatching,
    required TResult Function(StopWatchingNotificationsEvent value)
        stopWatching,
    required TResult Function(NewNotificationReceivedEvent value)
        newNotificationReceived,
    required TResult Function(ClearTransientEvent value) clearTransient,
    required TResult Function(ToggleFollowActorEvent value) toggleFollowActor,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInitialNotificationsEvent value)? loadInitial,
    TResult? Function(LoadMoreNotificationsEvent value)? loadMore,
    TResult? Function(RefreshNotificationsEvent value)? refresh,
    TResult? Function(MarkAllNotificationsReadEvent value)? markAllAsRead,
    TResult? Function(MarkNotificationReadEvent value)? markAsRead,
    TResult? Function(DeleteNotificationEvent value)? delete,
    TResult? Function(LoadUnreadCountEvent value)? loadUnreadCount,
    TResult? Function(StartWatchingNotificationsEvent value)? startWatching,
    TResult? Function(StopWatchingNotificationsEvent value)? stopWatching,
    TResult? Function(NewNotificationReceivedEvent value)?
        newNotificationReceived,
    TResult? Function(ClearTransientEvent value)? clearTransient,
    TResult? Function(ToggleFollowActorEvent value)? toggleFollowActor,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInitialNotificationsEvent value)? loadInitial,
    TResult Function(LoadMoreNotificationsEvent value)? loadMore,
    TResult Function(RefreshNotificationsEvent value)? refresh,
    TResult Function(MarkAllNotificationsReadEvent value)? markAllAsRead,
    TResult Function(MarkNotificationReadEvent value)? markAsRead,
    TResult Function(DeleteNotificationEvent value)? delete,
    TResult Function(LoadUnreadCountEvent value)? loadUnreadCount,
    TResult Function(StartWatchingNotificationsEvent value)? startWatching,
    TResult Function(StopWatchingNotificationsEvent value)? stopWatching,
    TResult Function(NewNotificationReceivedEvent value)?
        newNotificationReceived,
    TResult Function(ClearTransientEvent value)? clearTransient,
    TResult Function(ToggleFollowActorEvent value)? toggleFollowActor,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class RefreshNotificationsEvent implements NotificationEvent {
  const factory RefreshNotificationsEvent() = _$RefreshNotificationsEventImpl;
}

/// @nodoc
abstract class _$$MarkAllNotificationsReadEventImplCopyWith<$Res> {
  factory _$$MarkAllNotificationsReadEventImplCopyWith(
          _$MarkAllNotificationsReadEventImpl value,
          $Res Function(_$MarkAllNotificationsReadEventImpl) then) =
      __$$MarkAllNotificationsReadEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MarkAllNotificationsReadEventImplCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res,
        _$MarkAllNotificationsReadEventImpl>
    implements _$$MarkAllNotificationsReadEventImplCopyWith<$Res> {
  __$$MarkAllNotificationsReadEventImplCopyWithImpl(
      _$MarkAllNotificationsReadEventImpl _value,
      $Res Function(_$MarkAllNotificationsReadEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MarkAllNotificationsReadEventImpl
    implements MarkAllNotificationsReadEvent {
  const _$MarkAllNotificationsReadEventImpl();

  @override
  String toString() {
    return 'NotificationEvent.markAllAsRead()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkAllNotificationsReadEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit) loadInitial,
    required TResult Function(int limit) loadMore,
    required TResult Function() refresh,
    required TResult Function() markAllAsRead,
    required TResult Function(String notificationId) markAsRead,
    required TResult Function(String notificationId) delete,
    required TResult Function() loadUnreadCount,
    required TResult Function() startWatching,
    required TResult Function() stopWatching,
    required TResult Function() newNotificationReceived,
    required TResult Function() clearTransient,
    required TResult Function(String notificationId, String actorId)
        toggleFollowActor,
  }) {
    return markAllAsRead();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int limit)? loadInitial,
    TResult? Function(int limit)? loadMore,
    TResult? Function()? refresh,
    TResult? Function()? markAllAsRead,
    TResult? Function(String notificationId)? markAsRead,
    TResult? Function(String notificationId)? delete,
    TResult? Function()? loadUnreadCount,
    TResult? Function()? startWatching,
    TResult? Function()? stopWatching,
    TResult? Function()? newNotificationReceived,
    TResult? Function()? clearTransient,
    TResult? Function(String notificationId, String actorId)? toggleFollowActor,
  }) {
    return markAllAsRead?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit)? loadInitial,
    TResult Function(int limit)? loadMore,
    TResult Function()? refresh,
    TResult Function()? markAllAsRead,
    TResult Function(String notificationId)? markAsRead,
    TResult Function(String notificationId)? delete,
    TResult Function()? loadUnreadCount,
    TResult Function()? startWatching,
    TResult Function()? stopWatching,
    TResult Function()? newNotificationReceived,
    TResult Function()? clearTransient,
    TResult Function(String notificationId, String actorId)? toggleFollowActor,
    required TResult orElse(),
  }) {
    if (markAllAsRead != null) {
      return markAllAsRead();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInitialNotificationsEvent value) loadInitial,
    required TResult Function(LoadMoreNotificationsEvent value) loadMore,
    required TResult Function(RefreshNotificationsEvent value) refresh,
    required TResult Function(MarkAllNotificationsReadEvent value)
        markAllAsRead,
    required TResult Function(MarkNotificationReadEvent value) markAsRead,
    required TResult Function(DeleteNotificationEvent value) delete,
    required TResult Function(LoadUnreadCountEvent value) loadUnreadCount,
    required TResult Function(StartWatchingNotificationsEvent value)
        startWatching,
    required TResult Function(StopWatchingNotificationsEvent value)
        stopWatching,
    required TResult Function(NewNotificationReceivedEvent value)
        newNotificationReceived,
    required TResult Function(ClearTransientEvent value) clearTransient,
    required TResult Function(ToggleFollowActorEvent value) toggleFollowActor,
  }) {
    return markAllAsRead(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInitialNotificationsEvent value)? loadInitial,
    TResult? Function(LoadMoreNotificationsEvent value)? loadMore,
    TResult? Function(RefreshNotificationsEvent value)? refresh,
    TResult? Function(MarkAllNotificationsReadEvent value)? markAllAsRead,
    TResult? Function(MarkNotificationReadEvent value)? markAsRead,
    TResult? Function(DeleteNotificationEvent value)? delete,
    TResult? Function(LoadUnreadCountEvent value)? loadUnreadCount,
    TResult? Function(StartWatchingNotificationsEvent value)? startWatching,
    TResult? Function(StopWatchingNotificationsEvent value)? stopWatching,
    TResult? Function(NewNotificationReceivedEvent value)?
        newNotificationReceived,
    TResult? Function(ClearTransientEvent value)? clearTransient,
    TResult? Function(ToggleFollowActorEvent value)? toggleFollowActor,
  }) {
    return markAllAsRead?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInitialNotificationsEvent value)? loadInitial,
    TResult Function(LoadMoreNotificationsEvent value)? loadMore,
    TResult Function(RefreshNotificationsEvent value)? refresh,
    TResult Function(MarkAllNotificationsReadEvent value)? markAllAsRead,
    TResult Function(MarkNotificationReadEvent value)? markAsRead,
    TResult Function(DeleteNotificationEvent value)? delete,
    TResult Function(LoadUnreadCountEvent value)? loadUnreadCount,
    TResult Function(StartWatchingNotificationsEvent value)? startWatching,
    TResult Function(StopWatchingNotificationsEvent value)? stopWatching,
    TResult Function(NewNotificationReceivedEvent value)?
        newNotificationReceived,
    TResult Function(ClearTransientEvent value)? clearTransient,
    TResult Function(ToggleFollowActorEvent value)? toggleFollowActor,
    required TResult orElse(),
  }) {
    if (markAllAsRead != null) {
      return markAllAsRead(this);
    }
    return orElse();
  }
}

abstract class MarkAllNotificationsReadEvent implements NotificationEvent {
  const factory MarkAllNotificationsReadEvent() =
      _$MarkAllNotificationsReadEventImpl;
}

/// @nodoc
abstract class _$$MarkNotificationReadEventImplCopyWith<$Res> {
  factory _$$MarkNotificationReadEventImplCopyWith(
          _$MarkNotificationReadEventImpl value,
          $Res Function(_$MarkNotificationReadEventImpl) then) =
      __$$MarkNotificationReadEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String notificationId});
}

/// @nodoc
class __$$MarkNotificationReadEventImplCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res,
        _$MarkNotificationReadEventImpl>
    implements _$$MarkNotificationReadEventImplCopyWith<$Res> {
  __$$MarkNotificationReadEventImplCopyWithImpl(
      _$MarkNotificationReadEventImpl _value,
      $Res Function(_$MarkNotificationReadEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationId = null,
  }) {
    return _then(_$MarkNotificationReadEventImpl(
      null == notificationId
          ? _value.notificationId
          : notificationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MarkNotificationReadEventImpl implements MarkNotificationReadEvent {
  const _$MarkNotificationReadEventImpl(this.notificationId);

  @override
  final String notificationId;

  @override
  String toString() {
    return 'NotificationEvent.markAsRead(notificationId: $notificationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkNotificationReadEventImpl &&
            (identical(other.notificationId, notificationId) ||
                other.notificationId == notificationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, notificationId);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkNotificationReadEventImplCopyWith<_$MarkNotificationReadEventImpl>
      get copyWith => __$$MarkNotificationReadEventImplCopyWithImpl<
          _$MarkNotificationReadEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit) loadInitial,
    required TResult Function(int limit) loadMore,
    required TResult Function() refresh,
    required TResult Function() markAllAsRead,
    required TResult Function(String notificationId) markAsRead,
    required TResult Function(String notificationId) delete,
    required TResult Function() loadUnreadCount,
    required TResult Function() startWatching,
    required TResult Function() stopWatching,
    required TResult Function() newNotificationReceived,
    required TResult Function() clearTransient,
    required TResult Function(String notificationId, String actorId)
        toggleFollowActor,
  }) {
    return markAsRead(notificationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int limit)? loadInitial,
    TResult? Function(int limit)? loadMore,
    TResult? Function()? refresh,
    TResult? Function()? markAllAsRead,
    TResult? Function(String notificationId)? markAsRead,
    TResult? Function(String notificationId)? delete,
    TResult? Function()? loadUnreadCount,
    TResult? Function()? startWatching,
    TResult? Function()? stopWatching,
    TResult? Function()? newNotificationReceived,
    TResult? Function()? clearTransient,
    TResult? Function(String notificationId, String actorId)? toggleFollowActor,
  }) {
    return markAsRead?.call(notificationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit)? loadInitial,
    TResult Function(int limit)? loadMore,
    TResult Function()? refresh,
    TResult Function()? markAllAsRead,
    TResult Function(String notificationId)? markAsRead,
    TResult Function(String notificationId)? delete,
    TResult Function()? loadUnreadCount,
    TResult Function()? startWatching,
    TResult Function()? stopWatching,
    TResult Function()? newNotificationReceived,
    TResult Function()? clearTransient,
    TResult Function(String notificationId, String actorId)? toggleFollowActor,
    required TResult orElse(),
  }) {
    if (markAsRead != null) {
      return markAsRead(notificationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInitialNotificationsEvent value) loadInitial,
    required TResult Function(LoadMoreNotificationsEvent value) loadMore,
    required TResult Function(RefreshNotificationsEvent value) refresh,
    required TResult Function(MarkAllNotificationsReadEvent value)
        markAllAsRead,
    required TResult Function(MarkNotificationReadEvent value) markAsRead,
    required TResult Function(DeleteNotificationEvent value) delete,
    required TResult Function(LoadUnreadCountEvent value) loadUnreadCount,
    required TResult Function(StartWatchingNotificationsEvent value)
        startWatching,
    required TResult Function(StopWatchingNotificationsEvent value)
        stopWatching,
    required TResult Function(NewNotificationReceivedEvent value)
        newNotificationReceived,
    required TResult Function(ClearTransientEvent value) clearTransient,
    required TResult Function(ToggleFollowActorEvent value) toggleFollowActor,
  }) {
    return markAsRead(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInitialNotificationsEvent value)? loadInitial,
    TResult? Function(LoadMoreNotificationsEvent value)? loadMore,
    TResult? Function(RefreshNotificationsEvent value)? refresh,
    TResult? Function(MarkAllNotificationsReadEvent value)? markAllAsRead,
    TResult? Function(MarkNotificationReadEvent value)? markAsRead,
    TResult? Function(DeleteNotificationEvent value)? delete,
    TResult? Function(LoadUnreadCountEvent value)? loadUnreadCount,
    TResult? Function(StartWatchingNotificationsEvent value)? startWatching,
    TResult? Function(StopWatchingNotificationsEvent value)? stopWatching,
    TResult? Function(NewNotificationReceivedEvent value)?
        newNotificationReceived,
    TResult? Function(ClearTransientEvent value)? clearTransient,
    TResult? Function(ToggleFollowActorEvent value)? toggleFollowActor,
  }) {
    return markAsRead?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInitialNotificationsEvent value)? loadInitial,
    TResult Function(LoadMoreNotificationsEvent value)? loadMore,
    TResult Function(RefreshNotificationsEvent value)? refresh,
    TResult Function(MarkAllNotificationsReadEvent value)? markAllAsRead,
    TResult Function(MarkNotificationReadEvent value)? markAsRead,
    TResult Function(DeleteNotificationEvent value)? delete,
    TResult Function(LoadUnreadCountEvent value)? loadUnreadCount,
    TResult Function(StartWatchingNotificationsEvent value)? startWatching,
    TResult Function(StopWatchingNotificationsEvent value)? stopWatching,
    TResult Function(NewNotificationReceivedEvent value)?
        newNotificationReceived,
    TResult Function(ClearTransientEvent value)? clearTransient,
    TResult Function(ToggleFollowActorEvent value)? toggleFollowActor,
    required TResult orElse(),
  }) {
    if (markAsRead != null) {
      return markAsRead(this);
    }
    return orElse();
  }
}

abstract class MarkNotificationReadEvent implements NotificationEvent {
  const factory MarkNotificationReadEvent(final String notificationId) =
      _$MarkNotificationReadEventImpl;

  String get notificationId;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarkNotificationReadEventImplCopyWith<_$MarkNotificationReadEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteNotificationEventImplCopyWith<$Res> {
  factory _$$DeleteNotificationEventImplCopyWith(
          _$DeleteNotificationEventImpl value,
          $Res Function(_$DeleteNotificationEventImpl) then) =
      __$$DeleteNotificationEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String notificationId});
}

/// @nodoc
class __$$DeleteNotificationEventImplCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res, _$DeleteNotificationEventImpl>
    implements _$$DeleteNotificationEventImplCopyWith<$Res> {
  __$$DeleteNotificationEventImplCopyWithImpl(
      _$DeleteNotificationEventImpl _value,
      $Res Function(_$DeleteNotificationEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationId = null,
  }) {
    return _then(_$DeleteNotificationEventImpl(
      null == notificationId
          ? _value.notificationId
          : notificationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteNotificationEventImpl implements DeleteNotificationEvent {
  const _$DeleteNotificationEventImpl(this.notificationId);

  @override
  final String notificationId;

  @override
  String toString() {
    return 'NotificationEvent.delete(notificationId: $notificationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteNotificationEventImpl &&
            (identical(other.notificationId, notificationId) ||
                other.notificationId == notificationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, notificationId);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteNotificationEventImplCopyWith<_$DeleteNotificationEventImpl>
      get copyWith => __$$DeleteNotificationEventImplCopyWithImpl<
          _$DeleteNotificationEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit) loadInitial,
    required TResult Function(int limit) loadMore,
    required TResult Function() refresh,
    required TResult Function() markAllAsRead,
    required TResult Function(String notificationId) markAsRead,
    required TResult Function(String notificationId) delete,
    required TResult Function() loadUnreadCount,
    required TResult Function() startWatching,
    required TResult Function() stopWatching,
    required TResult Function() newNotificationReceived,
    required TResult Function() clearTransient,
    required TResult Function(String notificationId, String actorId)
        toggleFollowActor,
  }) {
    return delete(notificationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int limit)? loadInitial,
    TResult? Function(int limit)? loadMore,
    TResult? Function()? refresh,
    TResult? Function()? markAllAsRead,
    TResult? Function(String notificationId)? markAsRead,
    TResult? Function(String notificationId)? delete,
    TResult? Function()? loadUnreadCount,
    TResult? Function()? startWatching,
    TResult? Function()? stopWatching,
    TResult? Function()? newNotificationReceived,
    TResult? Function()? clearTransient,
    TResult? Function(String notificationId, String actorId)? toggleFollowActor,
  }) {
    return delete?.call(notificationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit)? loadInitial,
    TResult Function(int limit)? loadMore,
    TResult Function()? refresh,
    TResult Function()? markAllAsRead,
    TResult Function(String notificationId)? markAsRead,
    TResult Function(String notificationId)? delete,
    TResult Function()? loadUnreadCount,
    TResult Function()? startWatching,
    TResult Function()? stopWatching,
    TResult Function()? newNotificationReceived,
    TResult Function()? clearTransient,
    TResult Function(String notificationId, String actorId)? toggleFollowActor,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(notificationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInitialNotificationsEvent value) loadInitial,
    required TResult Function(LoadMoreNotificationsEvent value) loadMore,
    required TResult Function(RefreshNotificationsEvent value) refresh,
    required TResult Function(MarkAllNotificationsReadEvent value)
        markAllAsRead,
    required TResult Function(MarkNotificationReadEvent value) markAsRead,
    required TResult Function(DeleteNotificationEvent value) delete,
    required TResult Function(LoadUnreadCountEvent value) loadUnreadCount,
    required TResult Function(StartWatchingNotificationsEvent value)
        startWatching,
    required TResult Function(StopWatchingNotificationsEvent value)
        stopWatching,
    required TResult Function(NewNotificationReceivedEvent value)
        newNotificationReceived,
    required TResult Function(ClearTransientEvent value) clearTransient,
    required TResult Function(ToggleFollowActorEvent value) toggleFollowActor,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInitialNotificationsEvent value)? loadInitial,
    TResult? Function(LoadMoreNotificationsEvent value)? loadMore,
    TResult? Function(RefreshNotificationsEvent value)? refresh,
    TResult? Function(MarkAllNotificationsReadEvent value)? markAllAsRead,
    TResult? Function(MarkNotificationReadEvent value)? markAsRead,
    TResult? Function(DeleteNotificationEvent value)? delete,
    TResult? Function(LoadUnreadCountEvent value)? loadUnreadCount,
    TResult? Function(StartWatchingNotificationsEvent value)? startWatching,
    TResult? Function(StopWatchingNotificationsEvent value)? stopWatching,
    TResult? Function(NewNotificationReceivedEvent value)?
        newNotificationReceived,
    TResult? Function(ClearTransientEvent value)? clearTransient,
    TResult? Function(ToggleFollowActorEvent value)? toggleFollowActor,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInitialNotificationsEvent value)? loadInitial,
    TResult Function(LoadMoreNotificationsEvent value)? loadMore,
    TResult Function(RefreshNotificationsEvent value)? refresh,
    TResult Function(MarkAllNotificationsReadEvent value)? markAllAsRead,
    TResult Function(MarkNotificationReadEvent value)? markAsRead,
    TResult Function(DeleteNotificationEvent value)? delete,
    TResult Function(LoadUnreadCountEvent value)? loadUnreadCount,
    TResult Function(StartWatchingNotificationsEvent value)? startWatching,
    TResult Function(StopWatchingNotificationsEvent value)? stopWatching,
    TResult Function(NewNotificationReceivedEvent value)?
        newNotificationReceived,
    TResult Function(ClearTransientEvent value)? clearTransient,
    TResult Function(ToggleFollowActorEvent value)? toggleFollowActor,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class DeleteNotificationEvent implements NotificationEvent {
  const factory DeleteNotificationEvent(final String notificationId) =
      _$DeleteNotificationEventImpl;

  String get notificationId;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteNotificationEventImplCopyWith<_$DeleteNotificationEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadUnreadCountEventImplCopyWith<$Res> {
  factory _$$LoadUnreadCountEventImplCopyWith(_$LoadUnreadCountEventImpl value,
          $Res Function(_$LoadUnreadCountEventImpl) then) =
      __$$LoadUnreadCountEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadUnreadCountEventImplCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res, _$LoadUnreadCountEventImpl>
    implements _$$LoadUnreadCountEventImplCopyWith<$Res> {
  __$$LoadUnreadCountEventImplCopyWithImpl(_$LoadUnreadCountEventImpl _value,
      $Res Function(_$LoadUnreadCountEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadUnreadCountEventImpl implements LoadUnreadCountEvent {
  const _$LoadUnreadCountEventImpl();

  @override
  String toString() {
    return 'NotificationEvent.loadUnreadCount()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadUnreadCountEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit) loadInitial,
    required TResult Function(int limit) loadMore,
    required TResult Function() refresh,
    required TResult Function() markAllAsRead,
    required TResult Function(String notificationId) markAsRead,
    required TResult Function(String notificationId) delete,
    required TResult Function() loadUnreadCount,
    required TResult Function() startWatching,
    required TResult Function() stopWatching,
    required TResult Function() newNotificationReceived,
    required TResult Function() clearTransient,
    required TResult Function(String notificationId, String actorId)
        toggleFollowActor,
  }) {
    return loadUnreadCount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int limit)? loadInitial,
    TResult? Function(int limit)? loadMore,
    TResult? Function()? refresh,
    TResult? Function()? markAllAsRead,
    TResult? Function(String notificationId)? markAsRead,
    TResult? Function(String notificationId)? delete,
    TResult? Function()? loadUnreadCount,
    TResult? Function()? startWatching,
    TResult? Function()? stopWatching,
    TResult? Function()? newNotificationReceived,
    TResult? Function()? clearTransient,
    TResult? Function(String notificationId, String actorId)? toggleFollowActor,
  }) {
    return loadUnreadCount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit)? loadInitial,
    TResult Function(int limit)? loadMore,
    TResult Function()? refresh,
    TResult Function()? markAllAsRead,
    TResult Function(String notificationId)? markAsRead,
    TResult Function(String notificationId)? delete,
    TResult Function()? loadUnreadCount,
    TResult Function()? startWatching,
    TResult Function()? stopWatching,
    TResult Function()? newNotificationReceived,
    TResult Function()? clearTransient,
    TResult Function(String notificationId, String actorId)? toggleFollowActor,
    required TResult orElse(),
  }) {
    if (loadUnreadCount != null) {
      return loadUnreadCount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInitialNotificationsEvent value) loadInitial,
    required TResult Function(LoadMoreNotificationsEvent value) loadMore,
    required TResult Function(RefreshNotificationsEvent value) refresh,
    required TResult Function(MarkAllNotificationsReadEvent value)
        markAllAsRead,
    required TResult Function(MarkNotificationReadEvent value) markAsRead,
    required TResult Function(DeleteNotificationEvent value) delete,
    required TResult Function(LoadUnreadCountEvent value) loadUnreadCount,
    required TResult Function(StartWatchingNotificationsEvent value)
        startWatching,
    required TResult Function(StopWatchingNotificationsEvent value)
        stopWatching,
    required TResult Function(NewNotificationReceivedEvent value)
        newNotificationReceived,
    required TResult Function(ClearTransientEvent value) clearTransient,
    required TResult Function(ToggleFollowActorEvent value) toggleFollowActor,
  }) {
    return loadUnreadCount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInitialNotificationsEvent value)? loadInitial,
    TResult? Function(LoadMoreNotificationsEvent value)? loadMore,
    TResult? Function(RefreshNotificationsEvent value)? refresh,
    TResult? Function(MarkAllNotificationsReadEvent value)? markAllAsRead,
    TResult? Function(MarkNotificationReadEvent value)? markAsRead,
    TResult? Function(DeleteNotificationEvent value)? delete,
    TResult? Function(LoadUnreadCountEvent value)? loadUnreadCount,
    TResult? Function(StartWatchingNotificationsEvent value)? startWatching,
    TResult? Function(StopWatchingNotificationsEvent value)? stopWatching,
    TResult? Function(NewNotificationReceivedEvent value)?
        newNotificationReceived,
    TResult? Function(ClearTransientEvent value)? clearTransient,
    TResult? Function(ToggleFollowActorEvent value)? toggleFollowActor,
  }) {
    return loadUnreadCount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInitialNotificationsEvent value)? loadInitial,
    TResult Function(LoadMoreNotificationsEvent value)? loadMore,
    TResult Function(RefreshNotificationsEvent value)? refresh,
    TResult Function(MarkAllNotificationsReadEvent value)? markAllAsRead,
    TResult Function(MarkNotificationReadEvent value)? markAsRead,
    TResult Function(DeleteNotificationEvent value)? delete,
    TResult Function(LoadUnreadCountEvent value)? loadUnreadCount,
    TResult Function(StartWatchingNotificationsEvent value)? startWatching,
    TResult Function(StopWatchingNotificationsEvent value)? stopWatching,
    TResult Function(NewNotificationReceivedEvent value)?
        newNotificationReceived,
    TResult Function(ClearTransientEvent value)? clearTransient,
    TResult Function(ToggleFollowActorEvent value)? toggleFollowActor,
    required TResult orElse(),
  }) {
    if (loadUnreadCount != null) {
      return loadUnreadCount(this);
    }
    return orElse();
  }
}

abstract class LoadUnreadCountEvent implements NotificationEvent {
  const factory LoadUnreadCountEvent() = _$LoadUnreadCountEventImpl;
}

/// @nodoc
abstract class _$$StartWatchingNotificationsEventImplCopyWith<$Res> {
  factory _$$StartWatchingNotificationsEventImplCopyWith(
          _$StartWatchingNotificationsEventImpl value,
          $Res Function(_$StartWatchingNotificationsEventImpl) then) =
      __$$StartWatchingNotificationsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartWatchingNotificationsEventImplCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res,
        _$StartWatchingNotificationsEventImpl>
    implements _$$StartWatchingNotificationsEventImplCopyWith<$Res> {
  __$$StartWatchingNotificationsEventImplCopyWithImpl(
      _$StartWatchingNotificationsEventImpl _value,
      $Res Function(_$StartWatchingNotificationsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartWatchingNotificationsEventImpl
    implements StartWatchingNotificationsEvent {
  const _$StartWatchingNotificationsEventImpl();

  @override
  String toString() {
    return 'NotificationEvent.startWatching()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartWatchingNotificationsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit) loadInitial,
    required TResult Function(int limit) loadMore,
    required TResult Function() refresh,
    required TResult Function() markAllAsRead,
    required TResult Function(String notificationId) markAsRead,
    required TResult Function(String notificationId) delete,
    required TResult Function() loadUnreadCount,
    required TResult Function() startWatching,
    required TResult Function() stopWatching,
    required TResult Function() newNotificationReceived,
    required TResult Function() clearTransient,
    required TResult Function(String notificationId, String actorId)
        toggleFollowActor,
  }) {
    return startWatching();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int limit)? loadInitial,
    TResult? Function(int limit)? loadMore,
    TResult? Function()? refresh,
    TResult? Function()? markAllAsRead,
    TResult? Function(String notificationId)? markAsRead,
    TResult? Function(String notificationId)? delete,
    TResult? Function()? loadUnreadCount,
    TResult? Function()? startWatching,
    TResult? Function()? stopWatching,
    TResult? Function()? newNotificationReceived,
    TResult? Function()? clearTransient,
    TResult? Function(String notificationId, String actorId)? toggleFollowActor,
  }) {
    return startWatching?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit)? loadInitial,
    TResult Function(int limit)? loadMore,
    TResult Function()? refresh,
    TResult Function()? markAllAsRead,
    TResult Function(String notificationId)? markAsRead,
    TResult Function(String notificationId)? delete,
    TResult Function()? loadUnreadCount,
    TResult Function()? startWatching,
    TResult Function()? stopWatching,
    TResult Function()? newNotificationReceived,
    TResult Function()? clearTransient,
    TResult Function(String notificationId, String actorId)? toggleFollowActor,
    required TResult orElse(),
  }) {
    if (startWatching != null) {
      return startWatching();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInitialNotificationsEvent value) loadInitial,
    required TResult Function(LoadMoreNotificationsEvent value) loadMore,
    required TResult Function(RefreshNotificationsEvent value) refresh,
    required TResult Function(MarkAllNotificationsReadEvent value)
        markAllAsRead,
    required TResult Function(MarkNotificationReadEvent value) markAsRead,
    required TResult Function(DeleteNotificationEvent value) delete,
    required TResult Function(LoadUnreadCountEvent value) loadUnreadCount,
    required TResult Function(StartWatchingNotificationsEvent value)
        startWatching,
    required TResult Function(StopWatchingNotificationsEvent value)
        stopWatching,
    required TResult Function(NewNotificationReceivedEvent value)
        newNotificationReceived,
    required TResult Function(ClearTransientEvent value) clearTransient,
    required TResult Function(ToggleFollowActorEvent value) toggleFollowActor,
  }) {
    return startWatching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInitialNotificationsEvent value)? loadInitial,
    TResult? Function(LoadMoreNotificationsEvent value)? loadMore,
    TResult? Function(RefreshNotificationsEvent value)? refresh,
    TResult? Function(MarkAllNotificationsReadEvent value)? markAllAsRead,
    TResult? Function(MarkNotificationReadEvent value)? markAsRead,
    TResult? Function(DeleteNotificationEvent value)? delete,
    TResult? Function(LoadUnreadCountEvent value)? loadUnreadCount,
    TResult? Function(StartWatchingNotificationsEvent value)? startWatching,
    TResult? Function(StopWatchingNotificationsEvent value)? stopWatching,
    TResult? Function(NewNotificationReceivedEvent value)?
        newNotificationReceived,
    TResult? Function(ClearTransientEvent value)? clearTransient,
    TResult? Function(ToggleFollowActorEvent value)? toggleFollowActor,
  }) {
    return startWatching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInitialNotificationsEvent value)? loadInitial,
    TResult Function(LoadMoreNotificationsEvent value)? loadMore,
    TResult Function(RefreshNotificationsEvent value)? refresh,
    TResult Function(MarkAllNotificationsReadEvent value)? markAllAsRead,
    TResult Function(MarkNotificationReadEvent value)? markAsRead,
    TResult Function(DeleteNotificationEvent value)? delete,
    TResult Function(LoadUnreadCountEvent value)? loadUnreadCount,
    TResult Function(StartWatchingNotificationsEvent value)? startWatching,
    TResult Function(StopWatchingNotificationsEvent value)? stopWatching,
    TResult Function(NewNotificationReceivedEvent value)?
        newNotificationReceived,
    TResult Function(ClearTransientEvent value)? clearTransient,
    TResult Function(ToggleFollowActorEvent value)? toggleFollowActor,
    required TResult orElse(),
  }) {
    if (startWatching != null) {
      return startWatching(this);
    }
    return orElse();
  }
}

abstract class StartWatchingNotificationsEvent implements NotificationEvent {
  const factory StartWatchingNotificationsEvent() =
      _$StartWatchingNotificationsEventImpl;
}

/// @nodoc
abstract class _$$StopWatchingNotificationsEventImplCopyWith<$Res> {
  factory _$$StopWatchingNotificationsEventImplCopyWith(
          _$StopWatchingNotificationsEventImpl value,
          $Res Function(_$StopWatchingNotificationsEventImpl) then) =
      __$$StopWatchingNotificationsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StopWatchingNotificationsEventImplCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res,
        _$StopWatchingNotificationsEventImpl>
    implements _$$StopWatchingNotificationsEventImplCopyWith<$Res> {
  __$$StopWatchingNotificationsEventImplCopyWithImpl(
      _$StopWatchingNotificationsEventImpl _value,
      $Res Function(_$StopWatchingNotificationsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StopWatchingNotificationsEventImpl
    implements StopWatchingNotificationsEvent {
  const _$StopWatchingNotificationsEventImpl();

  @override
  String toString() {
    return 'NotificationEvent.stopWatching()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StopWatchingNotificationsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit) loadInitial,
    required TResult Function(int limit) loadMore,
    required TResult Function() refresh,
    required TResult Function() markAllAsRead,
    required TResult Function(String notificationId) markAsRead,
    required TResult Function(String notificationId) delete,
    required TResult Function() loadUnreadCount,
    required TResult Function() startWatching,
    required TResult Function() stopWatching,
    required TResult Function() newNotificationReceived,
    required TResult Function() clearTransient,
    required TResult Function(String notificationId, String actorId)
        toggleFollowActor,
  }) {
    return stopWatching();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int limit)? loadInitial,
    TResult? Function(int limit)? loadMore,
    TResult? Function()? refresh,
    TResult? Function()? markAllAsRead,
    TResult? Function(String notificationId)? markAsRead,
    TResult? Function(String notificationId)? delete,
    TResult? Function()? loadUnreadCount,
    TResult? Function()? startWatching,
    TResult? Function()? stopWatching,
    TResult? Function()? newNotificationReceived,
    TResult? Function()? clearTransient,
    TResult? Function(String notificationId, String actorId)? toggleFollowActor,
  }) {
    return stopWatching?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit)? loadInitial,
    TResult Function(int limit)? loadMore,
    TResult Function()? refresh,
    TResult Function()? markAllAsRead,
    TResult Function(String notificationId)? markAsRead,
    TResult Function(String notificationId)? delete,
    TResult Function()? loadUnreadCount,
    TResult Function()? startWatching,
    TResult Function()? stopWatching,
    TResult Function()? newNotificationReceived,
    TResult Function()? clearTransient,
    TResult Function(String notificationId, String actorId)? toggleFollowActor,
    required TResult orElse(),
  }) {
    if (stopWatching != null) {
      return stopWatching();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInitialNotificationsEvent value) loadInitial,
    required TResult Function(LoadMoreNotificationsEvent value) loadMore,
    required TResult Function(RefreshNotificationsEvent value) refresh,
    required TResult Function(MarkAllNotificationsReadEvent value)
        markAllAsRead,
    required TResult Function(MarkNotificationReadEvent value) markAsRead,
    required TResult Function(DeleteNotificationEvent value) delete,
    required TResult Function(LoadUnreadCountEvent value) loadUnreadCount,
    required TResult Function(StartWatchingNotificationsEvent value)
        startWatching,
    required TResult Function(StopWatchingNotificationsEvent value)
        stopWatching,
    required TResult Function(NewNotificationReceivedEvent value)
        newNotificationReceived,
    required TResult Function(ClearTransientEvent value) clearTransient,
    required TResult Function(ToggleFollowActorEvent value) toggleFollowActor,
  }) {
    return stopWatching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInitialNotificationsEvent value)? loadInitial,
    TResult? Function(LoadMoreNotificationsEvent value)? loadMore,
    TResult? Function(RefreshNotificationsEvent value)? refresh,
    TResult? Function(MarkAllNotificationsReadEvent value)? markAllAsRead,
    TResult? Function(MarkNotificationReadEvent value)? markAsRead,
    TResult? Function(DeleteNotificationEvent value)? delete,
    TResult? Function(LoadUnreadCountEvent value)? loadUnreadCount,
    TResult? Function(StartWatchingNotificationsEvent value)? startWatching,
    TResult? Function(StopWatchingNotificationsEvent value)? stopWatching,
    TResult? Function(NewNotificationReceivedEvent value)?
        newNotificationReceived,
    TResult? Function(ClearTransientEvent value)? clearTransient,
    TResult? Function(ToggleFollowActorEvent value)? toggleFollowActor,
  }) {
    return stopWatching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInitialNotificationsEvent value)? loadInitial,
    TResult Function(LoadMoreNotificationsEvent value)? loadMore,
    TResult Function(RefreshNotificationsEvent value)? refresh,
    TResult Function(MarkAllNotificationsReadEvent value)? markAllAsRead,
    TResult Function(MarkNotificationReadEvent value)? markAsRead,
    TResult Function(DeleteNotificationEvent value)? delete,
    TResult Function(LoadUnreadCountEvent value)? loadUnreadCount,
    TResult Function(StartWatchingNotificationsEvent value)? startWatching,
    TResult Function(StopWatchingNotificationsEvent value)? stopWatching,
    TResult Function(NewNotificationReceivedEvent value)?
        newNotificationReceived,
    TResult Function(ClearTransientEvent value)? clearTransient,
    TResult Function(ToggleFollowActorEvent value)? toggleFollowActor,
    required TResult orElse(),
  }) {
    if (stopWatching != null) {
      return stopWatching(this);
    }
    return orElse();
  }
}

abstract class StopWatchingNotificationsEvent implements NotificationEvent {
  const factory StopWatchingNotificationsEvent() =
      _$StopWatchingNotificationsEventImpl;
}

/// @nodoc
abstract class _$$NewNotificationReceivedEventImplCopyWith<$Res> {
  factory _$$NewNotificationReceivedEventImplCopyWith(
          _$NewNotificationReceivedEventImpl value,
          $Res Function(_$NewNotificationReceivedEventImpl) then) =
      __$$NewNotificationReceivedEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NewNotificationReceivedEventImplCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res,
        _$NewNotificationReceivedEventImpl>
    implements _$$NewNotificationReceivedEventImplCopyWith<$Res> {
  __$$NewNotificationReceivedEventImplCopyWithImpl(
      _$NewNotificationReceivedEventImpl _value,
      $Res Function(_$NewNotificationReceivedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NewNotificationReceivedEventImpl
    implements NewNotificationReceivedEvent {
  const _$NewNotificationReceivedEventImpl();

  @override
  String toString() {
    return 'NotificationEvent.newNotificationReceived()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewNotificationReceivedEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit) loadInitial,
    required TResult Function(int limit) loadMore,
    required TResult Function() refresh,
    required TResult Function() markAllAsRead,
    required TResult Function(String notificationId) markAsRead,
    required TResult Function(String notificationId) delete,
    required TResult Function() loadUnreadCount,
    required TResult Function() startWatching,
    required TResult Function() stopWatching,
    required TResult Function() newNotificationReceived,
    required TResult Function() clearTransient,
    required TResult Function(String notificationId, String actorId)
        toggleFollowActor,
  }) {
    return newNotificationReceived();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int limit)? loadInitial,
    TResult? Function(int limit)? loadMore,
    TResult? Function()? refresh,
    TResult? Function()? markAllAsRead,
    TResult? Function(String notificationId)? markAsRead,
    TResult? Function(String notificationId)? delete,
    TResult? Function()? loadUnreadCount,
    TResult? Function()? startWatching,
    TResult? Function()? stopWatching,
    TResult? Function()? newNotificationReceived,
    TResult? Function()? clearTransient,
    TResult? Function(String notificationId, String actorId)? toggleFollowActor,
  }) {
    return newNotificationReceived?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit)? loadInitial,
    TResult Function(int limit)? loadMore,
    TResult Function()? refresh,
    TResult Function()? markAllAsRead,
    TResult Function(String notificationId)? markAsRead,
    TResult Function(String notificationId)? delete,
    TResult Function()? loadUnreadCount,
    TResult Function()? startWatching,
    TResult Function()? stopWatching,
    TResult Function()? newNotificationReceived,
    TResult Function()? clearTransient,
    TResult Function(String notificationId, String actorId)? toggleFollowActor,
    required TResult orElse(),
  }) {
    if (newNotificationReceived != null) {
      return newNotificationReceived();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInitialNotificationsEvent value) loadInitial,
    required TResult Function(LoadMoreNotificationsEvent value) loadMore,
    required TResult Function(RefreshNotificationsEvent value) refresh,
    required TResult Function(MarkAllNotificationsReadEvent value)
        markAllAsRead,
    required TResult Function(MarkNotificationReadEvent value) markAsRead,
    required TResult Function(DeleteNotificationEvent value) delete,
    required TResult Function(LoadUnreadCountEvent value) loadUnreadCount,
    required TResult Function(StartWatchingNotificationsEvent value)
        startWatching,
    required TResult Function(StopWatchingNotificationsEvent value)
        stopWatching,
    required TResult Function(NewNotificationReceivedEvent value)
        newNotificationReceived,
    required TResult Function(ClearTransientEvent value) clearTransient,
    required TResult Function(ToggleFollowActorEvent value) toggleFollowActor,
  }) {
    return newNotificationReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInitialNotificationsEvent value)? loadInitial,
    TResult? Function(LoadMoreNotificationsEvent value)? loadMore,
    TResult? Function(RefreshNotificationsEvent value)? refresh,
    TResult? Function(MarkAllNotificationsReadEvent value)? markAllAsRead,
    TResult? Function(MarkNotificationReadEvent value)? markAsRead,
    TResult? Function(DeleteNotificationEvent value)? delete,
    TResult? Function(LoadUnreadCountEvent value)? loadUnreadCount,
    TResult? Function(StartWatchingNotificationsEvent value)? startWatching,
    TResult? Function(StopWatchingNotificationsEvent value)? stopWatching,
    TResult? Function(NewNotificationReceivedEvent value)?
        newNotificationReceived,
    TResult? Function(ClearTransientEvent value)? clearTransient,
    TResult? Function(ToggleFollowActorEvent value)? toggleFollowActor,
  }) {
    return newNotificationReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInitialNotificationsEvent value)? loadInitial,
    TResult Function(LoadMoreNotificationsEvent value)? loadMore,
    TResult Function(RefreshNotificationsEvent value)? refresh,
    TResult Function(MarkAllNotificationsReadEvent value)? markAllAsRead,
    TResult Function(MarkNotificationReadEvent value)? markAsRead,
    TResult Function(DeleteNotificationEvent value)? delete,
    TResult Function(LoadUnreadCountEvent value)? loadUnreadCount,
    TResult Function(StartWatchingNotificationsEvent value)? startWatching,
    TResult Function(StopWatchingNotificationsEvent value)? stopWatching,
    TResult Function(NewNotificationReceivedEvent value)?
        newNotificationReceived,
    TResult Function(ClearTransientEvent value)? clearTransient,
    TResult Function(ToggleFollowActorEvent value)? toggleFollowActor,
    required TResult orElse(),
  }) {
    if (newNotificationReceived != null) {
      return newNotificationReceived(this);
    }
    return orElse();
  }
}

abstract class NewNotificationReceivedEvent implements NotificationEvent {
  const factory NewNotificationReceivedEvent() =
      _$NewNotificationReceivedEventImpl;
}

/// @nodoc
abstract class _$$ClearTransientEventImplCopyWith<$Res> {
  factory _$$ClearTransientEventImplCopyWith(_$ClearTransientEventImpl value,
          $Res Function(_$ClearTransientEventImpl) then) =
      __$$ClearTransientEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearTransientEventImplCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res, _$ClearTransientEventImpl>
    implements _$$ClearTransientEventImplCopyWith<$Res> {
  __$$ClearTransientEventImplCopyWithImpl(_$ClearTransientEventImpl _value,
      $Res Function(_$ClearTransientEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearTransientEventImpl implements ClearTransientEvent {
  const _$ClearTransientEventImpl();

  @override
  String toString() {
    return 'NotificationEvent.clearTransient()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearTransientEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit) loadInitial,
    required TResult Function(int limit) loadMore,
    required TResult Function() refresh,
    required TResult Function() markAllAsRead,
    required TResult Function(String notificationId) markAsRead,
    required TResult Function(String notificationId) delete,
    required TResult Function() loadUnreadCount,
    required TResult Function() startWatching,
    required TResult Function() stopWatching,
    required TResult Function() newNotificationReceived,
    required TResult Function() clearTransient,
    required TResult Function(String notificationId, String actorId)
        toggleFollowActor,
  }) {
    return clearTransient();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int limit)? loadInitial,
    TResult? Function(int limit)? loadMore,
    TResult? Function()? refresh,
    TResult? Function()? markAllAsRead,
    TResult? Function(String notificationId)? markAsRead,
    TResult? Function(String notificationId)? delete,
    TResult? Function()? loadUnreadCount,
    TResult? Function()? startWatching,
    TResult? Function()? stopWatching,
    TResult? Function()? newNotificationReceived,
    TResult? Function()? clearTransient,
    TResult? Function(String notificationId, String actorId)? toggleFollowActor,
  }) {
    return clearTransient?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit)? loadInitial,
    TResult Function(int limit)? loadMore,
    TResult Function()? refresh,
    TResult Function()? markAllAsRead,
    TResult Function(String notificationId)? markAsRead,
    TResult Function(String notificationId)? delete,
    TResult Function()? loadUnreadCount,
    TResult Function()? startWatching,
    TResult Function()? stopWatching,
    TResult Function()? newNotificationReceived,
    TResult Function()? clearTransient,
    TResult Function(String notificationId, String actorId)? toggleFollowActor,
    required TResult orElse(),
  }) {
    if (clearTransient != null) {
      return clearTransient();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInitialNotificationsEvent value) loadInitial,
    required TResult Function(LoadMoreNotificationsEvent value) loadMore,
    required TResult Function(RefreshNotificationsEvent value) refresh,
    required TResult Function(MarkAllNotificationsReadEvent value)
        markAllAsRead,
    required TResult Function(MarkNotificationReadEvent value) markAsRead,
    required TResult Function(DeleteNotificationEvent value) delete,
    required TResult Function(LoadUnreadCountEvent value) loadUnreadCount,
    required TResult Function(StartWatchingNotificationsEvent value)
        startWatching,
    required TResult Function(StopWatchingNotificationsEvent value)
        stopWatching,
    required TResult Function(NewNotificationReceivedEvent value)
        newNotificationReceived,
    required TResult Function(ClearTransientEvent value) clearTransient,
    required TResult Function(ToggleFollowActorEvent value) toggleFollowActor,
  }) {
    return clearTransient(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInitialNotificationsEvent value)? loadInitial,
    TResult? Function(LoadMoreNotificationsEvent value)? loadMore,
    TResult? Function(RefreshNotificationsEvent value)? refresh,
    TResult? Function(MarkAllNotificationsReadEvent value)? markAllAsRead,
    TResult? Function(MarkNotificationReadEvent value)? markAsRead,
    TResult? Function(DeleteNotificationEvent value)? delete,
    TResult? Function(LoadUnreadCountEvent value)? loadUnreadCount,
    TResult? Function(StartWatchingNotificationsEvent value)? startWatching,
    TResult? Function(StopWatchingNotificationsEvent value)? stopWatching,
    TResult? Function(NewNotificationReceivedEvent value)?
        newNotificationReceived,
    TResult? Function(ClearTransientEvent value)? clearTransient,
    TResult? Function(ToggleFollowActorEvent value)? toggleFollowActor,
  }) {
    return clearTransient?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInitialNotificationsEvent value)? loadInitial,
    TResult Function(LoadMoreNotificationsEvent value)? loadMore,
    TResult Function(RefreshNotificationsEvent value)? refresh,
    TResult Function(MarkAllNotificationsReadEvent value)? markAllAsRead,
    TResult Function(MarkNotificationReadEvent value)? markAsRead,
    TResult Function(DeleteNotificationEvent value)? delete,
    TResult Function(LoadUnreadCountEvent value)? loadUnreadCount,
    TResult Function(StartWatchingNotificationsEvent value)? startWatching,
    TResult Function(StopWatchingNotificationsEvent value)? stopWatching,
    TResult Function(NewNotificationReceivedEvent value)?
        newNotificationReceived,
    TResult Function(ClearTransientEvent value)? clearTransient,
    TResult Function(ToggleFollowActorEvent value)? toggleFollowActor,
    required TResult orElse(),
  }) {
    if (clearTransient != null) {
      return clearTransient(this);
    }
    return orElse();
  }
}

abstract class ClearTransientEvent implements NotificationEvent {
  const factory ClearTransientEvent() = _$ClearTransientEventImpl;
}

/// @nodoc
abstract class _$$ToggleFollowActorEventImplCopyWith<$Res> {
  factory _$$ToggleFollowActorEventImplCopyWith(
          _$ToggleFollowActorEventImpl value,
          $Res Function(_$ToggleFollowActorEventImpl) then) =
      __$$ToggleFollowActorEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String notificationId, String actorId});
}

/// @nodoc
class __$$ToggleFollowActorEventImplCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res, _$ToggleFollowActorEventImpl>
    implements _$$ToggleFollowActorEventImplCopyWith<$Res> {
  __$$ToggleFollowActorEventImplCopyWithImpl(
      _$ToggleFollowActorEventImpl _value,
      $Res Function(_$ToggleFollowActorEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notificationId = null,
    Object? actorId = null,
  }) {
    return _then(_$ToggleFollowActorEventImpl(
      notificationId: null == notificationId
          ? _value.notificationId
          : notificationId // ignore: cast_nullable_to_non_nullable
              as String,
      actorId: null == actorId
          ? _value.actorId
          : actorId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ToggleFollowActorEventImpl implements ToggleFollowActorEvent {
  const _$ToggleFollowActorEventImpl(
      {required this.notificationId, required this.actorId});

  @override
  final String notificationId;
  @override
  final String actorId;

  @override
  String toString() {
    return 'NotificationEvent.toggleFollowActor(notificationId: $notificationId, actorId: $actorId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleFollowActorEventImpl &&
            (identical(other.notificationId, notificationId) ||
                other.notificationId == notificationId) &&
            (identical(other.actorId, actorId) || other.actorId == actorId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, notificationId, actorId);

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleFollowActorEventImplCopyWith<_$ToggleFollowActorEventImpl>
      get copyWith => __$$ToggleFollowActorEventImplCopyWithImpl<
          _$ToggleFollowActorEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int limit) loadInitial,
    required TResult Function(int limit) loadMore,
    required TResult Function() refresh,
    required TResult Function() markAllAsRead,
    required TResult Function(String notificationId) markAsRead,
    required TResult Function(String notificationId) delete,
    required TResult Function() loadUnreadCount,
    required TResult Function() startWatching,
    required TResult Function() stopWatching,
    required TResult Function() newNotificationReceived,
    required TResult Function() clearTransient,
    required TResult Function(String notificationId, String actorId)
        toggleFollowActor,
  }) {
    return toggleFollowActor(notificationId, actorId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int limit)? loadInitial,
    TResult? Function(int limit)? loadMore,
    TResult? Function()? refresh,
    TResult? Function()? markAllAsRead,
    TResult? Function(String notificationId)? markAsRead,
    TResult? Function(String notificationId)? delete,
    TResult? Function()? loadUnreadCount,
    TResult? Function()? startWatching,
    TResult? Function()? stopWatching,
    TResult? Function()? newNotificationReceived,
    TResult? Function()? clearTransient,
    TResult? Function(String notificationId, String actorId)? toggleFollowActor,
  }) {
    return toggleFollowActor?.call(notificationId, actorId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int limit)? loadInitial,
    TResult Function(int limit)? loadMore,
    TResult Function()? refresh,
    TResult Function()? markAllAsRead,
    TResult Function(String notificationId)? markAsRead,
    TResult Function(String notificationId)? delete,
    TResult Function()? loadUnreadCount,
    TResult Function()? startWatching,
    TResult Function()? stopWatching,
    TResult Function()? newNotificationReceived,
    TResult Function()? clearTransient,
    TResult Function(String notificationId, String actorId)? toggleFollowActor,
    required TResult orElse(),
  }) {
    if (toggleFollowActor != null) {
      return toggleFollowActor(notificationId, actorId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInitialNotificationsEvent value) loadInitial,
    required TResult Function(LoadMoreNotificationsEvent value) loadMore,
    required TResult Function(RefreshNotificationsEvent value) refresh,
    required TResult Function(MarkAllNotificationsReadEvent value)
        markAllAsRead,
    required TResult Function(MarkNotificationReadEvent value) markAsRead,
    required TResult Function(DeleteNotificationEvent value) delete,
    required TResult Function(LoadUnreadCountEvent value) loadUnreadCount,
    required TResult Function(StartWatchingNotificationsEvent value)
        startWatching,
    required TResult Function(StopWatchingNotificationsEvent value)
        stopWatching,
    required TResult Function(NewNotificationReceivedEvent value)
        newNotificationReceived,
    required TResult Function(ClearTransientEvent value) clearTransient,
    required TResult Function(ToggleFollowActorEvent value) toggleFollowActor,
  }) {
    return toggleFollowActor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInitialNotificationsEvent value)? loadInitial,
    TResult? Function(LoadMoreNotificationsEvent value)? loadMore,
    TResult? Function(RefreshNotificationsEvent value)? refresh,
    TResult? Function(MarkAllNotificationsReadEvent value)? markAllAsRead,
    TResult? Function(MarkNotificationReadEvent value)? markAsRead,
    TResult? Function(DeleteNotificationEvent value)? delete,
    TResult? Function(LoadUnreadCountEvent value)? loadUnreadCount,
    TResult? Function(StartWatchingNotificationsEvent value)? startWatching,
    TResult? Function(StopWatchingNotificationsEvent value)? stopWatching,
    TResult? Function(NewNotificationReceivedEvent value)?
        newNotificationReceived,
    TResult? Function(ClearTransientEvent value)? clearTransient,
    TResult? Function(ToggleFollowActorEvent value)? toggleFollowActor,
  }) {
    return toggleFollowActor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInitialNotificationsEvent value)? loadInitial,
    TResult Function(LoadMoreNotificationsEvent value)? loadMore,
    TResult Function(RefreshNotificationsEvent value)? refresh,
    TResult Function(MarkAllNotificationsReadEvent value)? markAllAsRead,
    TResult Function(MarkNotificationReadEvent value)? markAsRead,
    TResult Function(DeleteNotificationEvent value)? delete,
    TResult Function(LoadUnreadCountEvent value)? loadUnreadCount,
    TResult Function(StartWatchingNotificationsEvent value)? startWatching,
    TResult Function(StopWatchingNotificationsEvent value)? stopWatching,
    TResult Function(NewNotificationReceivedEvent value)?
        newNotificationReceived,
    TResult Function(ClearTransientEvent value)? clearTransient,
    TResult Function(ToggleFollowActorEvent value)? toggleFollowActor,
    required TResult orElse(),
  }) {
    if (toggleFollowActor != null) {
      return toggleFollowActor(this);
    }
    return orElse();
  }
}

abstract class ToggleFollowActorEvent implements NotificationEvent {
  const factory ToggleFollowActorEvent(
      {required final String notificationId,
      required final String actorId}) = _$ToggleFollowActorEventImpl;

  String get notificationId;
  String get actorId;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToggleFollowActorEventImplCopyWith<_$ToggleFollowActorEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
