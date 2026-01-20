// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_presence_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserPresenceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() heartbeatTick,
    required TResult Function(bool isOnline) connectivityChanged,
    required TResult Function(AppLifecycleState state) appLifecycleChanged,
    required TResult Function(List<UserPresenceEntity> onlineUsers)
        presenceUpdated,
    required TResult Function(List<String> userIds) fetchLastSeen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? heartbeatTick,
    TResult? Function(bool isOnline)? connectivityChanged,
    TResult? Function(AppLifecycleState state)? appLifecycleChanged,
    TResult? Function(List<UserPresenceEntity> onlineUsers)? presenceUpdated,
    TResult? Function(List<String> userIds)? fetchLastSeen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? heartbeatTick,
    TResult Function(bool isOnline)? connectivityChanged,
    TResult Function(AppLifecycleState state)? appLifecycleChanged,
    TResult Function(List<UserPresenceEntity> onlineUsers)? presenceUpdated,
    TResult Function(List<String> userIds)? fetchLastSeen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(HeartbeatTick value) heartbeatTick,
    required TResult Function(ConnectivityChanged value) connectivityChanged,
    required TResult Function(AppLifecycleChanged value) appLifecycleChanged,
    required TResult Function(PresenceUpdated value) presenceUpdated,
    required TResult Function(FetchLastSeen value) fetchLastSeen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(HeartbeatTick value)? heartbeatTick,
    TResult? Function(ConnectivityChanged value)? connectivityChanged,
    TResult? Function(AppLifecycleChanged value)? appLifecycleChanged,
    TResult? Function(PresenceUpdated value)? presenceUpdated,
    TResult? Function(FetchLastSeen value)? fetchLastSeen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(HeartbeatTick value)? heartbeatTick,
    TResult Function(ConnectivityChanged value)? connectivityChanged,
    TResult Function(AppLifecycleChanged value)? appLifecycleChanged,
    TResult Function(PresenceUpdated value)? presenceUpdated,
    TResult Function(FetchLastSeen value)? fetchLastSeen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPresenceEventCopyWith<$Res> {
  factory $UserPresenceEventCopyWith(
          UserPresenceEvent value, $Res Function(UserPresenceEvent) then) =
      _$UserPresenceEventCopyWithImpl<$Res, UserPresenceEvent>;
}

/// @nodoc
class _$UserPresenceEventCopyWithImpl<$Res, $Val extends UserPresenceEvent>
    implements $UserPresenceEventCopyWith<$Res> {
  _$UserPresenceEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserPresenceEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$UserPresenceEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserPresenceEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'UserPresenceEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() heartbeatTick,
    required TResult Function(bool isOnline) connectivityChanged,
    required TResult Function(AppLifecycleState state) appLifecycleChanged,
    required TResult Function(List<UserPresenceEntity> onlineUsers)
        presenceUpdated,
    required TResult Function(List<String> userIds) fetchLastSeen,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? heartbeatTick,
    TResult? Function(bool isOnline)? connectivityChanged,
    TResult? Function(AppLifecycleState state)? appLifecycleChanged,
    TResult? Function(List<UserPresenceEntity> onlineUsers)? presenceUpdated,
    TResult? Function(List<String> userIds)? fetchLastSeen,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? heartbeatTick,
    TResult Function(bool isOnline)? connectivityChanged,
    TResult Function(AppLifecycleState state)? appLifecycleChanged,
    TResult Function(List<UserPresenceEntity> onlineUsers)? presenceUpdated,
    TResult Function(List<String> userIds)? fetchLastSeen,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(HeartbeatTick value) heartbeatTick,
    required TResult Function(ConnectivityChanged value) connectivityChanged,
    required TResult Function(AppLifecycleChanged value) appLifecycleChanged,
    required TResult Function(PresenceUpdated value) presenceUpdated,
    required TResult Function(FetchLastSeen value) fetchLastSeen,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(HeartbeatTick value)? heartbeatTick,
    TResult? Function(ConnectivityChanged value)? connectivityChanged,
    TResult? Function(AppLifecycleChanged value)? appLifecycleChanged,
    TResult? Function(PresenceUpdated value)? presenceUpdated,
    TResult? Function(FetchLastSeen value)? fetchLastSeen,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(HeartbeatTick value)? heartbeatTick,
    TResult Function(ConnectivityChanged value)? connectivityChanged,
    TResult Function(AppLifecycleChanged value)? appLifecycleChanged,
    TResult Function(PresenceUpdated value)? presenceUpdated,
    TResult Function(FetchLastSeen value)? fetchLastSeen,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements UserPresenceEvent {
  const factory Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$HeartbeatTickImplCopyWith<$Res> {
  factory _$$HeartbeatTickImplCopyWith(
          _$HeartbeatTickImpl value, $Res Function(_$HeartbeatTickImpl) then) =
      __$$HeartbeatTickImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HeartbeatTickImplCopyWithImpl<$Res>
    extends _$UserPresenceEventCopyWithImpl<$Res, _$HeartbeatTickImpl>
    implements _$$HeartbeatTickImplCopyWith<$Res> {
  __$$HeartbeatTickImplCopyWithImpl(
      _$HeartbeatTickImpl _value, $Res Function(_$HeartbeatTickImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserPresenceEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HeartbeatTickImpl implements HeartbeatTick {
  const _$HeartbeatTickImpl();

  @override
  String toString() {
    return 'UserPresenceEvent.heartbeatTick()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HeartbeatTickImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() heartbeatTick,
    required TResult Function(bool isOnline) connectivityChanged,
    required TResult Function(AppLifecycleState state) appLifecycleChanged,
    required TResult Function(List<UserPresenceEntity> onlineUsers)
        presenceUpdated,
    required TResult Function(List<String> userIds) fetchLastSeen,
  }) {
    return heartbeatTick();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? heartbeatTick,
    TResult? Function(bool isOnline)? connectivityChanged,
    TResult? Function(AppLifecycleState state)? appLifecycleChanged,
    TResult? Function(List<UserPresenceEntity> onlineUsers)? presenceUpdated,
    TResult? Function(List<String> userIds)? fetchLastSeen,
  }) {
    return heartbeatTick?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? heartbeatTick,
    TResult Function(bool isOnline)? connectivityChanged,
    TResult Function(AppLifecycleState state)? appLifecycleChanged,
    TResult Function(List<UserPresenceEntity> onlineUsers)? presenceUpdated,
    TResult Function(List<String> userIds)? fetchLastSeen,
    required TResult orElse(),
  }) {
    if (heartbeatTick != null) {
      return heartbeatTick();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(HeartbeatTick value) heartbeatTick,
    required TResult Function(ConnectivityChanged value) connectivityChanged,
    required TResult Function(AppLifecycleChanged value) appLifecycleChanged,
    required TResult Function(PresenceUpdated value) presenceUpdated,
    required TResult Function(FetchLastSeen value) fetchLastSeen,
  }) {
    return heartbeatTick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(HeartbeatTick value)? heartbeatTick,
    TResult? Function(ConnectivityChanged value)? connectivityChanged,
    TResult? Function(AppLifecycleChanged value)? appLifecycleChanged,
    TResult? Function(PresenceUpdated value)? presenceUpdated,
    TResult? Function(FetchLastSeen value)? fetchLastSeen,
  }) {
    return heartbeatTick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(HeartbeatTick value)? heartbeatTick,
    TResult Function(ConnectivityChanged value)? connectivityChanged,
    TResult Function(AppLifecycleChanged value)? appLifecycleChanged,
    TResult Function(PresenceUpdated value)? presenceUpdated,
    TResult Function(FetchLastSeen value)? fetchLastSeen,
    required TResult orElse(),
  }) {
    if (heartbeatTick != null) {
      return heartbeatTick(this);
    }
    return orElse();
  }
}

abstract class HeartbeatTick implements UserPresenceEvent {
  const factory HeartbeatTick() = _$HeartbeatTickImpl;
}

/// @nodoc
abstract class _$$ConnectivityChangedImplCopyWith<$Res> {
  factory _$$ConnectivityChangedImplCopyWith(_$ConnectivityChangedImpl value,
          $Res Function(_$ConnectivityChangedImpl) then) =
      __$$ConnectivityChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isOnline});
}

/// @nodoc
class __$$ConnectivityChangedImplCopyWithImpl<$Res>
    extends _$UserPresenceEventCopyWithImpl<$Res, _$ConnectivityChangedImpl>
    implements _$$ConnectivityChangedImplCopyWith<$Res> {
  __$$ConnectivityChangedImplCopyWithImpl(_$ConnectivityChangedImpl _value,
      $Res Function(_$ConnectivityChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserPresenceEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOnline = null,
  }) {
    return _then(_$ConnectivityChangedImpl(
      null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ConnectivityChangedImpl implements ConnectivityChanged {
  const _$ConnectivityChangedImpl(this.isOnline);

  @override
  final bool isOnline;

  @override
  String toString() {
    return 'UserPresenceEvent.connectivityChanged(isOnline: $isOnline)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectivityChangedImpl &&
            (identical(other.isOnline, isOnline) ||
                other.isOnline == isOnline));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isOnline);

  /// Create a copy of UserPresenceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectivityChangedImplCopyWith<_$ConnectivityChangedImpl> get copyWith =>
      __$$ConnectivityChangedImplCopyWithImpl<_$ConnectivityChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() heartbeatTick,
    required TResult Function(bool isOnline) connectivityChanged,
    required TResult Function(AppLifecycleState state) appLifecycleChanged,
    required TResult Function(List<UserPresenceEntity> onlineUsers)
        presenceUpdated,
    required TResult Function(List<String> userIds) fetchLastSeen,
  }) {
    return connectivityChanged(isOnline);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? heartbeatTick,
    TResult? Function(bool isOnline)? connectivityChanged,
    TResult? Function(AppLifecycleState state)? appLifecycleChanged,
    TResult? Function(List<UserPresenceEntity> onlineUsers)? presenceUpdated,
    TResult? Function(List<String> userIds)? fetchLastSeen,
  }) {
    return connectivityChanged?.call(isOnline);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? heartbeatTick,
    TResult Function(bool isOnline)? connectivityChanged,
    TResult Function(AppLifecycleState state)? appLifecycleChanged,
    TResult Function(List<UserPresenceEntity> onlineUsers)? presenceUpdated,
    TResult Function(List<String> userIds)? fetchLastSeen,
    required TResult orElse(),
  }) {
    if (connectivityChanged != null) {
      return connectivityChanged(isOnline);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(HeartbeatTick value) heartbeatTick,
    required TResult Function(ConnectivityChanged value) connectivityChanged,
    required TResult Function(AppLifecycleChanged value) appLifecycleChanged,
    required TResult Function(PresenceUpdated value) presenceUpdated,
    required TResult Function(FetchLastSeen value) fetchLastSeen,
  }) {
    return connectivityChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(HeartbeatTick value)? heartbeatTick,
    TResult? Function(ConnectivityChanged value)? connectivityChanged,
    TResult? Function(AppLifecycleChanged value)? appLifecycleChanged,
    TResult? Function(PresenceUpdated value)? presenceUpdated,
    TResult? Function(FetchLastSeen value)? fetchLastSeen,
  }) {
    return connectivityChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(HeartbeatTick value)? heartbeatTick,
    TResult Function(ConnectivityChanged value)? connectivityChanged,
    TResult Function(AppLifecycleChanged value)? appLifecycleChanged,
    TResult Function(PresenceUpdated value)? presenceUpdated,
    TResult Function(FetchLastSeen value)? fetchLastSeen,
    required TResult orElse(),
  }) {
    if (connectivityChanged != null) {
      return connectivityChanged(this);
    }
    return orElse();
  }
}

abstract class ConnectivityChanged implements UserPresenceEvent {
  const factory ConnectivityChanged(final bool isOnline) =
      _$ConnectivityChangedImpl;

  bool get isOnline;

  /// Create a copy of UserPresenceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConnectivityChangedImplCopyWith<_$ConnectivityChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppLifecycleChangedImplCopyWith<$Res> {
  factory _$$AppLifecycleChangedImplCopyWith(_$AppLifecycleChangedImpl value,
          $Res Function(_$AppLifecycleChangedImpl) then) =
      __$$AppLifecycleChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppLifecycleState state});
}

/// @nodoc
class __$$AppLifecycleChangedImplCopyWithImpl<$Res>
    extends _$UserPresenceEventCopyWithImpl<$Res, _$AppLifecycleChangedImpl>
    implements _$$AppLifecycleChangedImplCopyWith<$Res> {
  __$$AppLifecycleChangedImplCopyWithImpl(_$AppLifecycleChangedImpl _value,
      $Res Function(_$AppLifecycleChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserPresenceEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_$AppLifecycleChangedImpl(
      null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as AppLifecycleState,
    ));
  }
}

/// @nodoc

class _$AppLifecycleChangedImpl implements AppLifecycleChanged {
  const _$AppLifecycleChangedImpl(this.state);

  @override
  final AppLifecycleState state;

  @override
  String toString() {
    return 'UserPresenceEvent.appLifecycleChanged(state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppLifecycleChangedImpl &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  /// Create a copy of UserPresenceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppLifecycleChangedImplCopyWith<_$AppLifecycleChangedImpl> get copyWith =>
      __$$AppLifecycleChangedImplCopyWithImpl<_$AppLifecycleChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() heartbeatTick,
    required TResult Function(bool isOnline) connectivityChanged,
    required TResult Function(AppLifecycleState state) appLifecycleChanged,
    required TResult Function(List<UserPresenceEntity> onlineUsers)
        presenceUpdated,
    required TResult Function(List<String> userIds) fetchLastSeen,
  }) {
    return appLifecycleChanged(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? heartbeatTick,
    TResult? Function(bool isOnline)? connectivityChanged,
    TResult? Function(AppLifecycleState state)? appLifecycleChanged,
    TResult? Function(List<UserPresenceEntity> onlineUsers)? presenceUpdated,
    TResult? Function(List<String> userIds)? fetchLastSeen,
  }) {
    return appLifecycleChanged?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? heartbeatTick,
    TResult Function(bool isOnline)? connectivityChanged,
    TResult Function(AppLifecycleState state)? appLifecycleChanged,
    TResult Function(List<UserPresenceEntity> onlineUsers)? presenceUpdated,
    TResult Function(List<String> userIds)? fetchLastSeen,
    required TResult orElse(),
  }) {
    if (appLifecycleChanged != null) {
      return appLifecycleChanged(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(HeartbeatTick value) heartbeatTick,
    required TResult Function(ConnectivityChanged value) connectivityChanged,
    required TResult Function(AppLifecycleChanged value) appLifecycleChanged,
    required TResult Function(PresenceUpdated value) presenceUpdated,
    required TResult Function(FetchLastSeen value) fetchLastSeen,
  }) {
    return appLifecycleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(HeartbeatTick value)? heartbeatTick,
    TResult? Function(ConnectivityChanged value)? connectivityChanged,
    TResult? Function(AppLifecycleChanged value)? appLifecycleChanged,
    TResult? Function(PresenceUpdated value)? presenceUpdated,
    TResult? Function(FetchLastSeen value)? fetchLastSeen,
  }) {
    return appLifecycleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(HeartbeatTick value)? heartbeatTick,
    TResult Function(ConnectivityChanged value)? connectivityChanged,
    TResult Function(AppLifecycleChanged value)? appLifecycleChanged,
    TResult Function(PresenceUpdated value)? presenceUpdated,
    TResult Function(FetchLastSeen value)? fetchLastSeen,
    required TResult orElse(),
  }) {
    if (appLifecycleChanged != null) {
      return appLifecycleChanged(this);
    }
    return orElse();
  }
}

abstract class AppLifecycleChanged implements UserPresenceEvent {
  const factory AppLifecycleChanged(final AppLifecycleState state) =
      _$AppLifecycleChangedImpl;

  AppLifecycleState get state;

  /// Create a copy of UserPresenceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppLifecycleChangedImplCopyWith<_$AppLifecycleChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PresenceUpdatedImplCopyWith<$Res> {
  factory _$$PresenceUpdatedImplCopyWith(_$PresenceUpdatedImpl value,
          $Res Function(_$PresenceUpdatedImpl) then) =
      __$$PresenceUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UserPresenceEntity> onlineUsers});
}

/// @nodoc
class __$$PresenceUpdatedImplCopyWithImpl<$Res>
    extends _$UserPresenceEventCopyWithImpl<$Res, _$PresenceUpdatedImpl>
    implements _$$PresenceUpdatedImplCopyWith<$Res> {
  __$$PresenceUpdatedImplCopyWithImpl(
      _$PresenceUpdatedImpl _value, $Res Function(_$PresenceUpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserPresenceEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onlineUsers = null,
  }) {
    return _then(_$PresenceUpdatedImpl(
      null == onlineUsers
          ? _value._onlineUsers
          : onlineUsers // ignore: cast_nullable_to_non_nullable
              as List<UserPresenceEntity>,
    ));
  }
}

/// @nodoc

class _$PresenceUpdatedImpl implements PresenceUpdated {
  const _$PresenceUpdatedImpl(final List<UserPresenceEntity> onlineUsers)
      : _onlineUsers = onlineUsers;

  final List<UserPresenceEntity> _onlineUsers;
  @override
  List<UserPresenceEntity> get onlineUsers {
    if (_onlineUsers is EqualUnmodifiableListView) return _onlineUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_onlineUsers);
  }

  @override
  String toString() {
    return 'UserPresenceEvent.presenceUpdated(onlineUsers: $onlineUsers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PresenceUpdatedImpl &&
            const DeepCollectionEquality()
                .equals(other._onlineUsers, _onlineUsers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_onlineUsers));

  /// Create a copy of UserPresenceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PresenceUpdatedImplCopyWith<_$PresenceUpdatedImpl> get copyWith =>
      __$$PresenceUpdatedImplCopyWithImpl<_$PresenceUpdatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() heartbeatTick,
    required TResult Function(bool isOnline) connectivityChanged,
    required TResult Function(AppLifecycleState state) appLifecycleChanged,
    required TResult Function(List<UserPresenceEntity> onlineUsers)
        presenceUpdated,
    required TResult Function(List<String> userIds) fetchLastSeen,
  }) {
    return presenceUpdated(onlineUsers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? heartbeatTick,
    TResult? Function(bool isOnline)? connectivityChanged,
    TResult? Function(AppLifecycleState state)? appLifecycleChanged,
    TResult? Function(List<UserPresenceEntity> onlineUsers)? presenceUpdated,
    TResult? Function(List<String> userIds)? fetchLastSeen,
  }) {
    return presenceUpdated?.call(onlineUsers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? heartbeatTick,
    TResult Function(bool isOnline)? connectivityChanged,
    TResult Function(AppLifecycleState state)? appLifecycleChanged,
    TResult Function(List<UserPresenceEntity> onlineUsers)? presenceUpdated,
    TResult Function(List<String> userIds)? fetchLastSeen,
    required TResult orElse(),
  }) {
    if (presenceUpdated != null) {
      return presenceUpdated(onlineUsers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(HeartbeatTick value) heartbeatTick,
    required TResult Function(ConnectivityChanged value) connectivityChanged,
    required TResult Function(AppLifecycleChanged value) appLifecycleChanged,
    required TResult Function(PresenceUpdated value) presenceUpdated,
    required TResult Function(FetchLastSeen value) fetchLastSeen,
  }) {
    return presenceUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(HeartbeatTick value)? heartbeatTick,
    TResult? Function(ConnectivityChanged value)? connectivityChanged,
    TResult? Function(AppLifecycleChanged value)? appLifecycleChanged,
    TResult? Function(PresenceUpdated value)? presenceUpdated,
    TResult? Function(FetchLastSeen value)? fetchLastSeen,
  }) {
    return presenceUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(HeartbeatTick value)? heartbeatTick,
    TResult Function(ConnectivityChanged value)? connectivityChanged,
    TResult Function(AppLifecycleChanged value)? appLifecycleChanged,
    TResult Function(PresenceUpdated value)? presenceUpdated,
    TResult Function(FetchLastSeen value)? fetchLastSeen,
    required TResult orElse(),
  }) {
    if (presenceUpdated != null) {
      return presenceUpdated(this);
    }
    return orElse();
  }
}

abstract class PresenceUpdated implements UserPresenceEvent {
  const factory PresenceUpdated(final List<UserPresenceEntity> onlineUsers) =
      _$PresenceUpdatedImpl;

  List<UserPresenceEntity> get onlineUsers;

  /// Create a copy of UserPresenceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PresenceUpdatedImplCopyWith<_$PresenceUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchLastSeenImplCopyWith<$Res> {
  factory _$$FetchLastSeenImplCopyWith(
          _$FetchLastSeenImpl value, $Res Function(_$FetchLastSeenImpl) then) =
      __$$FetchLastSeenImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> userIds});
}

/// @nodoc
class __$$FetchLastSeenImplCopyWithImpl<$Res>
    extends _$UserPresenceEventCopyWithImpl<$Res, _$FetchLastSeenImpl>
    implements _$$FetchLastSeenImplCopyWith<$Res> {
  __$$FetchLastSeenImplCopyWithImpl(
      _$FetchLastSeenImpl _value, $Res Function(_$FetchLastSeenImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserPresenceEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userIds = null,
  }) {
    return _then(_$FetchLastSeenImpl(
      null == userIds
          ? _value._userIds
          : userIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$FetchLastSeenImpl implements FetchLastSeen {
  const _$FetchLastSeenImpl(final List<String> userIds) : _userIds = userIds;

  final List<String> _userIds;
  @override
  List<String> get userIds {
    if (_userIds is EqualUnmodifiableListView) return _userIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userIds);
  }

  @override
  String toString() {
    return 'UserPresenceEvent.fetchLastSeen(userIds: $userIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchLastSeenImpl &&
            const DeepCollectionEquality().equals(other._userIds, _userIds));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_userIds));

  /// Create a copy of UserPresenceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchLastSeenImplCopyWith<_$FetchLastSeenImpl> get copyWith =>
      __$$FetchLastSeenImplCopyWithImpl<_$FetchLastSeenImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() heartbeatTick,
    required TResult Function(bool isOnline) connectivityChanged,
    required TResult Function(AppLifecycleState state) appLifecycleChanged,
    required TResult Function(List<UserPresenceEntity> onlineUsers)
        presenceUpdated,
    required TResult Function(List<String> userIds) fetchLastSeen,
  }) {
    return fetchLastSeen(userIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? heartbeatTick,
    TResult? Function(bool isOnline)? connectivityChanged,
    TResult? Function(AppLifecycleState state)? appLifecycleChanged,
    TResult? Function(List<UserPresenceEntity> onlineUsers)? presenceUpdated,
    TResult? Function(List<String> userIds)? fetchLastSeen,
  }) {
    return fetchLastSeen?.call(userIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? heartbeatTick,
    TResult Function(bool isOnline)? connectivityChanged,
    TResult Function(AppLifecycleState state)? appLifecycleChanged,
    TResult Function(List<UserPresenceEntity> onlineUsers)? presenceUpdated,
    TResult Function(List<String> userIds)? fetchLastSeen,
    required TResult orElse(),
  }) {
    if (fetchLastSeen != null) {
      return fetchLastSeen(userIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(HeartbeatTick value) heartbeatTick,
    required TResult Function(ConnectivityChanged value) connectivityChanged,
    required TResult Function(AppLifecycleChanged value) appLifecycleChanged,
    required TResult Function(PresenceUpdated value) presenceUpdated,
    required TResult Function(FetchLastSeen value) fetchLastSeen,
  }) {
    return fetchLastSeen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(HeartbeatTick value)? heartbeatTick,
    TResult? Function(ConnectivityChanged value)? connectivityChanged,
    TResult? Function(AppLifecycleChanged value)? appLifecycleChanged,
    TResult? Function(PresenceUpdated value)? presenceUpdated,
    TResult? Function(FetchLastSeen value)? fetchLastSeen,
  }) {
    return fetchLastSeen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(HeartbeatTick value)? heartbeatTick,
    TResult Function(ConnectivityChanged value)? connectivityChanged,
    TResult Function(AppLifecycleChanged value)? appLifecycleChanged,
    TResult Function(PresenceUpdated value)? presenceUpdated,
    TResult Function(FetchLastSeen value)? fetchLastSeen,
    required TResult orElse(),
  }) {
    if (fetchLastSeen != null) {
      return fetchLastSeen(this);
    }
    return orElse();
  }
}

abstract class FetchLastSeen implements UserPresenceEvent {
  const factory FetchLastSeen(final List<String> userIds) = _$FetchLastSeenImpl;

  List<String> get userIds;

  /// Create a copy of UserPresenceEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FetchLastSeenImplCopyWith<_$FetchLastSeenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
