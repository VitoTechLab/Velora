// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_presence_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserPresenceState {
  Map<String, bool> get onlineUsers => throw _privateConstructorUsedError;
  Map<String, DateTime> get lastSeen => throw _privateConstructorUsedError;

  /// Create a copy of UserPresenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserPresenceStateCopyWith<UserPresenceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPresenceStateCopyWith<$Res> {
  factory $UserPresenceStateCopyWith(
          UserPresenceState value, $Res Function(UserPresenceState) then) =
      _$UserPresenceStateCopyWithImpl<$Res, UserPresenceState>;
  @useResult
  $Res call({Map<String, bool> onlineUsers, Map<String, DateTime> lastSeen});
}

/// @nodoc
class _$UserPresenceStateCopyWithImpl<$Res, $Val extends UserPresenceState>
    implements $UserPresenceStateCopyWith<$Res> {
  _$UserPresenceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserPresenceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onlineUsers = null,
    Object? lastSeen = null,
  }) {
    return _then(_value.copyWith(
      onlineUsers: null == onlineUsers
          ? _value.onlineUsers
          : onlineUsers // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      lastSeen: null == lastSeen
          ? _value.lastSeen
          : lastSeen // ignore: cast_nullable_to_non_nullable
              as Map<String, DateTime>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserPresenceStateImplCopyWith<$Res>
    implements $UserPresenceStateCopyWith<$Res> {
  factory _$$UserPresenceStateImplCopyWith(_$UserPresenceStateImpl value,
          $Res Function(_$UserPresenceStateImpl) then) =
      __$$UserPresenceStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, bool> onlineUsers, Map<String, DateTime> lastSeen});
}

/// @nodoc
class __$$UserPresenceStateImplCopyWithImpl<$Res>
    extends _$UserPresenceStateCopyWithImpl<$Res, _$UserPresenceStateImpl>
    implements _$$UserPresenceStateImplCopyWith<$Res> {
  __$$UserPresenceStateImplCopyWithImpl(_$UserPresenceStateImpl _value,
      $Res Function(_$UserPresenceStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserPresenceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onlineUsers = null,
    Object? lastSeen = null,
  }) {
    return _then(_$UserPresenceStateImpl(
      onlineUsers: null == onlineUsers
          ? _value._onlineUsers
          : onlineUsers // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      lastSeen: null == lastSeen
          ? _value._lastSeen
          : lastSeen // ignore: cast_nullable_to_non_nullable
              as Map<String, DateTime>,
    ));
  }
}

/// @nodoc

class _$UserPresenceStateImpl implements _UserPresenceState {
  const _$UserPresenceStateImpl(
      {final Map<String, bool> onlineUsers = const {},
      final Map<String, DateTime> lastSeen = const {}})
      : _onlineUsers = onlineUsers,
        _lastSeen = lastSeen;

  final Map<String, bool> _onlineUsers;
  @override
  @JsonKey()
  Map<String, bool> get onlineUsers {
    if (_onlineUsers is EqualUnmodifiableMapView) return _onlineUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_onlineUsers);
  }

  final Map<String, DateTime> _lastSeen;
  @override
  @JsonKey()
  Map<String, DateTime> get lastSeen {
    if (_lastSeen is EqualUnmodifiableMapView) return _lastSeen;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_lastSeen);
  }

  @override
  String toString() {
    return 'UserPresenceState(onlineUsers: $onlineUsers, lastSeen: $lastSeen)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserPresenceStateImpl &&
            const DeepCollectionEquality()
                .equals(other._onlineUsers, _onlineUsers) &&
            const DeepCollectionEquality().equals(other._lastSeen, _lastSeen));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_onlineUsers),
      const DeepCollectionEquality().hash(_lastSeen));

  /// Create a copy of UserPresenceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserPresenceStateImplCopyWith<_$UserPresenceStateImpl> get copyWith =>
      __$$UserPresenceStateImplCopyWithImpl<_$UserPresenceStateImpl>(
          this, _$identity);
}

abstract class _UserPresenceState implements UserPresenceState {
  const factory _UserPresenceState(
      {final Map<String, bool> onlineUsers,
      final Map<String, DateTime> lastSeen}) = _$UserPresenceStateImpl;

  @override
  Map<String, bool> get onlineUsers;
  @override
  Map<String, DateTime> get lastSeen;

  /// Create a copy of UserPresenceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserPresenceStateImplCopyWith<_$UserPresenceStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
