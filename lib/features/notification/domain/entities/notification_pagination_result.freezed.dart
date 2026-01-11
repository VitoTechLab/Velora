// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_pagination_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotificationPaginationResult {
  List<NotificationEntity> get notifications =>
      throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;
  NotificationCursorEntity? get cursor => throw _privateConstructorUsedError;

  /// Create a copy of NotificationPaginationResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationPaginationResultCopyWith<NotificationPaginationResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationPaginationResultCopyWith<$Res> {
  factory $NotificationPaginationResultCopyWith(
          NotificationPaginationResult value,
          $Res Function(NotificationPaginationResult) then) =
      _$NotificationPaginationResultCopyWithImpl<$Res,
          NotificationPaginationResult>;
  @useResult
  $Res call(
      {List<NotificationEntity> notifications,
      bool hasMore,
      NotificationCursorEntity? cursor});

  $NotificationCursorEntityCopyWith<$Res>? get cursor;
}

/// @nodoc
class _$NotificationPaginationResultCopyWithImpl<$Res,
        $Val extends NotificationPaginationResult>
    implements $NotificationPaginationResultCopyWith<$Res> {
  _$NotificationPaginationResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationPaginationResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifications = null,
    Object? hasMore = null,
    Object? cursor = freezed,
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
    ) as $Val);
  }

  /// Create a copy of NotificationPaginationResult
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
abstract class _$$NotificationPaginationResultImplCopyWith<$Res>
    implements $NotificationPaginationResultCopyWith<$Res> {
  factory _$$NotificationPaginationResultImplCopyWith(
          _$NotificationPaginationResultImpl value,
          $Res Function(_$NotificationPaginationResultImpl) then) =
      __$$NotificationPaginationResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<NotificationEntity> notifications,
      bool hasMore,
      NotificationCursorEntity? cursor});

  @override
  $NotificationCursorEntityCopyWith<$Res>? get cursor;
}

/// @nodoc
class __$$NotificationPaginationResultImplCopyWithImpl<$Res>
    extends _$NotificationPaginationResultCopyWithImpl<$Res,
        _$NotificationPaginationResultImpl>
    implements _$$NotificationPaginationResultImplCopyWith<$Res> {
  __$$NotificationPaginationResultImplCopyWithImpl(
      _$NotificationPaginationResultImpl _value,
      $Res Function(_$NotificationPaginationResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationPaginationResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifications = null,
    Object? hasMore = null,
    Object? cursor = freezed,
  }) {
    return _then(_$NotificationPaginationResultImpl(
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
    ));
  }
}

/// @nodoc

class _$NotificationPaginationResultImpl
    implements _NotificationPaginationResult {
  const _$NotificationPaginationResultImpl(
      {required final List<NotificationEntity> notifications,
      required this.hasMore,
      this.cursor})
      : _notifications = notifications;

  final List<NotificationEntity> _notifications;
  @override
  List<NotificationEntity> get notifications {
    if (_notifications is EqualUnmodifiableListView) return _notifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notifications);
  }

  @override
  final bool hasMore;
  @override
  final NotificationCursorEntity? cursor;

  @override
  String toString() {
    return 'NotificationPaginationResult(notifications: $notifications, hasMore: $hasMore, cursor: $cursor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationPaginationResultImpl &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.cursor, cursor) || other.cursor == cursor));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_notifications), hasMore, cursor);

  /// Create a copy of NotificationPaginationResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationPaginationResultImplCopyWith<
          _$NotificationPaginationResultImpl>
      get copyWith => __$$NotificationPaginationResultImplCopyWithImpl<
          _$NotificationPaginationResultImpl>(this, _$identity);
}

abstract class _NotificationPaginationResult
    implements NotificationPaginationResult {
  const factory _NotificationPaginationResult(
          {required final List<NotificationEntity> notifications,
          required final bool hasMore,
          final NotificationCursorEntity? cursor}) =
      _$NotificationPaginationResultImpl;

  @override
  List<NotificationEntity> get notifications;
  @override
  bool get hasMore;
  @override
  NotificationCursorEntity? get cursor;

  /// Create a copy of NotificationPaginationResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationPaginationResultImplCopyWith<
          _$NotificationPaginationResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}
