// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotificationState {
  List<NotificationEntity> get notifications =>
      throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;
  NotificationCursorEntity? get cursor => throw _privateConstructorUsedError;
  bool get isLoadingInitial => throw _privateConstructorUsedError;
  bool get isLoadingMore => throw _privateConstructorUsedError;
  bool get isRefreshing => throw _privateConstructorUsedError;
  int get unreadCount => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  String? get message =>
      throw _privateConstructorUsedError; // Track which notification IDs are currently loading follow toggle
  Set<String> get followLoadingIds => throw _privateConstructorUsedError;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationStateCopyWith<NotificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationStateCopyWith<$Res> {
  factory $NotificationStateCopyWith(
          NotificationState value, $Res Function(NotificationState) then) =
      _$NotificationStateCopyWithImpl<$Res, NotificationState>;
  @useResult
  $Res call(
      {List<NotificationEntity> notifications,
      bool hasMore,
      NotificationCursorEntity? cursor,
      bool isLoadingInitial,
      bool isLoadingMore,
      bool isRefreshing,
      int unreadCount,
      String? error,
      String? message,
      Set<String> followLoadingIds});

  $NotificationCursorEntityCopyWith<$Res>? get cursor;
}

/// @nodoc
class _$NotificationStateCopyWithImpl<$Res, $Val extends NotificationState>
    implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifications = null,
    Object? hasMore = null,
    Object? cursor = freezed,
    Object? isLoadingInitial = null,
    Object? isLoadingMore = null,
    Object? isRefreshing = null,
    Object? unreadCount = null,
    Object? error = freezed,
    Object? message = freezed,
    Object? followLoadingIds = null,
  }) {
    return _then(_value.copyWith(
      notifications: null == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationEntity>,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      cursor: freezed == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as NotificationCursorEntity?,
      isLoadingInitial: null == isLoadingInitial
          ? _value.isLoadingInitial
          : isLoadingInitial // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingMore: null == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      isRefreshing: null == isRefreshing
          ? _value.isRefreshing
          : isRefreshing // ignore: cast_nullable_to_non_nullable
              as bool,
      unreadCount: null == unreadCount
          ? _value.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as int,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      followLoadingIds: null == followLoadingIds
          ? _value.followLoadingIds
          : followLoadingIds // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ) as $Val);
  }

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NotificationCursorEntityCopyWith<$Res>? get cursor {
    if (_value.cursor == null) {
      return null;
    }

    return $NotificationCursorEntityCopyWith<$Res>(_value.cursor!, (value) {
      return _then(_value.copyWith(cursor: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NotificationStateImplCopyWith<$Res>
    implements $NotificationStateCopyWith<$Res> {
  factory _$$NotificationStateImplCopyWith(_$NotificationStateImpl value,
          $Res Function(_$NotificationStateImpl) then) =
      __$$NotificationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<NotificationEntity> notifications,
      bool hasMore,
      NotificationCursorEntity? cursor,
      bool isLoadingInitial,
      bool isLoadingMore,
      bool isRefreshing,
      int unreadCount,
      String? error,
      String? message,
      Set<String> followLoadingIds});

  @override
  $NotificationCursorEntityCopyWith<$Res>? get cursor;
}

/// @nodoc
class __$$NotificationStateImplCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$NotificationStateImpl>
    implements _$$NotificationStateImplCopyWith<$Res> {
  __$$NotificationStateImplCopyWithImpl(_$NotificationStateImpl _value,
      $Res Function(_$NotificationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifications = null,
    Object? hasMore = null,
    Object? cursor = freezed,
    Object? isLoadingInitial = null,
    Object? isLoadingMore = null,
    Object? isRefreshing = null,
    Object? unreadCount = null,
    Object? error = freezed,
    Object? message = freezed,
    Object? followLoadingIds = null,
  }) {
    return _then(_$NotificationStateImpl(
      notifications: null == notifications
          ? _value._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationEntity>,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      cursor: freezed == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as NotificationCursorEntity?,
      isLoadingInitial: null == isLoadingInitial
          ? _value.isLoadingInitial
          : isLoadingInitial // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingMore: null == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      isRefreshing: null == isRefreshing
          ? _value.isRefreshing
          : isRefreshing // ignore: cast_nullable_to_non_nullable
              as bool,
      unreadCount: null == unreadCount
          ? _value.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as int,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      followLoadingIds: null == followLoadingIds
          ? _value._followLoadingIds
          : followLoadingIds // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ));
  }
}

/// @nodoc

class _$NotificationStateImpl implements _NotificationState {
  const _$NotificationStateImpl(
      {final List<NotificationEntity> notifications =
          const <NotificationEntity>[],
      this.hasMore = false,
      this.cursor,
      this.isLoadingInitial = false,
      this.isLoadingMore = false,
      this.isRefreshing = false,
      this.unreadCount = 0,
      this.error,
      this.message,
      final Set<String> followLoadingIds = const <String>{}})
      : _notifications = notifications,
        _followLoadingIds = followLoadingIds;

  final List<NotificationEntity> _notifications;
  @override
  @JsonKey()
  List<NotificationEntity> get notifications {
    if (_notifications is EqualUnmodifiableListView) return _notifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notifications);
  }

  @override
  @JsonKey()
  final bool hasMore;
  @override
  final NotificationCursorEntity? cursor;
  @override
  @JsonKey()
  final bool isLoadingInitial;
  @override
  @JsonKey()
  final bool isLoadingMore;
  @override
  @JsonKey()
  final bool isRefreshing;
  @override
  @JsonKey()
  final int unreadCount;
  @override
  final String? error;
  @override
  final String? message;
// Track which notification IDs are currently loading follow toggle
  final Set<String> _followLoadingIds;
// Track which notification IDs are currently loading follow toggle
  @override
  @JsonKey()
  Set<String> get followLoadingIds {
    if (_followLoadingIds is EqualUnmodifiableSetView) return _followLoadingIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_followLoadingIds);
  }

  @override
  String toString() {
    return 'NotificationState(notifications: $notifications, hasMore: $hasMore, cursor: $cursor, isLoadingInitial: $isLoadingInitial, isLoadingMore: $isLoadingMore, isRefreshing: $isRefreshing, unreadCount: $unreadCount, error: $error, message: $message, followLoadingIds: $followLoadingIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationStateImpl &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.cursor, cursor) || other.cursor == cursor) &&
            (identical(other.isLoadingInitial, isLoadingInitial) ||
                other.isLoadingInitial == isLoadingInitial) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore) &&
            (identical(other.isRefreshing, isRefreshing) ||
                other.isRefreshing == isRefreshing) &&
            (identical(other.unreadCount, unreadCount) ||
                other.unreadCount == unreadCount) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._followLoadingIds, _followLoadingIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_notifications),
      hasMore,
      cursor,
      isLoadingInitial,
      isLoadingMore,
      isRefreshing,
      unreadCount,
      error,
      message,
      const DeepCollectionEquality().hash(_followLoadingIds));

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationStateImplCopyWith<_$NotificationStateImpl> get copyWith =>
      __$$NotificationStateImplCopyWithImpl<_$NotificationStateImpl>(
          this, _$identity);
}

abstract class _NotificationState implements NotificationState {
  const factory _NotificationState(
      {final List<NotificationEntity> notifications,
      final bool hasMore,
      final NotificationCursorEntity? cursor,
      final bool isLoadingInitial,
      final bool isLoadingMore,
      final bool isRefreshing,
      final int unreadCount,
      final String? error,
      final String? message,
      final Set<String> followLoadingIds}) = _$NotificationStateImpl;

  @override
  List<NotificationEntity> get notifications;
  @override
  bool get hasMore;
  @override
  NotificationCursorEntity? get cursor;
  @override
  bool get isLoadingInitial;
  @override
  bool get isLoadingMore;
  @override
  bool get isRefreshing;
  @override
  int get unreadCount;
  @override
  String? get error;
  @override
  String?
      get message; // Track which notification IDs are currently loading follow toggle
  @override
  Set<String> get followLoadingIds;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationStateImplCopyWith<_$NotificationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
