// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_pagination_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NotificationPaginationResult {

 List<NotificationEntity> get notifications; bool get hasMore; NotificationCursorEntity? get cursor;
/// Create a copy of NotificationPaginationResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationPaginationResultCopyWith<NotificationPaginationResult> get copyWith => _$NotificationPaginationResultCopyWithImpl<NotificationPaginationResult>(this as NotificationPaginationResult, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationPaginationResult&&const DeepCollectionEquality().equals(other.notifications, notifications)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.cursor, cursor) || other.cursor == cursor));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(notifications),hasMore,cursor);

@override
String toString() {
  return 'NotificationPaginationResult(notifications: $notifications, hasMore: $hasMore, cursor: $cursor)';
}


}

/// @nodoc
abstract mixin class $NotificationPaginationResultCopyWith<$Res>  {
  factory $NotificationPaginationResultCopyWith(NotificationPaginationResult value, $Res Function(NotificationPaginationResult) _then) = _$NotificationPaginationResultCopyWithImpl;
@useResult
$Res call({
 List<NotificationEntity> notifications, bool hasMore, NotificationCursorEntity? cursor
});


$NotificationCursorEntityCopyWith<$Res>? get cursor;

}
/// @nodoc
class _$NotificationPaginationResultCopyWithImpl<$Res>
    implements $NotificationPaginationResultCopyWith<$Res> {
  _$NotificationPaginationResultCopyWithImpl(this._self, this._then);

  final NotificationPaginationResult _self;
  final $Res Function(NotificationPaginationResult) _then;

/// Create a copy of NotificationPaginationResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? notifications = null,Object? hasMore = null,Object? cursor = freezed,}) {
  return _then(_self.copyWith(
notifications: null == notifications ? _self.notifications : notifications // ignore: cast_nullable_to_non_nullable
as List<NotificationEntity>,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,cursor: freezed == cursor ? _self.cursor : cursor // ignore: cast_nullable_to_non_nullable
as NotificationCursorEntity?,
  ));
}
/// Create a copy of NotificationPaginationResult
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


/// Adds pattern-matching-related methods to [NotificationPaginationResult].
extension NotificationPaginationResultPatterns on NotificationPaginationResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationPaginationResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationPaginationResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationPaginationResult value)  $default,){
final _that = this;
switch (_that) {
case _NotificationPaginationResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationPaginationResult value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationPaginationResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<NotificationEntity> notifications,  bool hasMore,  NotificationCursorEntity? cursor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationPaginationResult() when $default != null:
return $default(_that.notifications,_that.hasMore,_that.cursor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<NotificationEntity> notifications,  bool hasMore,  NotificationCursorEntity? cursor)  $default,) {final _that = this;
switch (_that) {
case _NotificationPaginationResult():
return $default(_that.notifications,_that.hasMore,_that.cursor);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<NotificationEntity> notifications,  bool hasMore,  NotificationCursorEntity? cursor)?  $default,) {final _that = this;
switch (_that) {
case _NotificationPaginationResult() when $default != null:
return $default(_that.notifications,_that.hasMore,_that.cursor);case _:
  return null;

}
}

}

/// @nodoc


class _NotificationPaginationResult implements NotificationPaginationResult {
  const _NotificationPaginationResult({required final  List<NotificationEntity> notifications, required this.hasMore, this.cursor}): _notifications = notifications;
  

 final  List<NotificationEntity> _notifications;
@override List<NotificationEntity> get notifications {
  if (_notifications is EqualUnmodifiableListView) return _notifications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_notifications);
}

@override final  bool hasMore;
@override final  NotificationCursorEntity? cursor;

/// Create a copy of NotificationPaginationResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationPaginationResultCopyWith<_NotificationPaginationResult> get copyWith => __$NotificationPaginationResultCopyWithImpl<_NotificationPaginationResult>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationPaginationResult&&const DeepCollectionEquality().equals(other._notifications, _notifications)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.cursor, cursor) || other.cursor == cursor));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_notifications),hasMore,cursor);

@override
String toString() {
  return 'NotificationPaginationResult(notifications: $notifications, hasMore: $hasMore, cursor: $cursor)';
}


}

/// @nodoc
abstract mixin class _$NotificationPaginationResultCopyWith<$Res> implements $NotificationPaginationResultCopyWith<$Res> {
  factory _$NotificationPaginationResultCopyWith(_NotificationPaginationResult value, $Res Function(_NotificationPaginationResult) _then) = __$NotificationPaginationResultCopyWithImpl;
@override @useResult
$Res call({
 List<NotificationEntity> notifications, bool hasMore, NotificationCursorEntity? cursor
});


@override $NotificationCursorEntityCopyWith<$Res>? get cursor;

}
/// @nodoc
class __$NotificationPaginationResultCopyWithImpl<$Res>
    implements _$NotificationPaginationResultCopyWith<$Res> {
  __$NotificationPaginationResultCopyWithImpl(this._self, this._then);

  final _NotificationPaginationResult _self;
  final $Res Function(_NotificationPaginationResult) _then;

/// Create a copy of NotificationPaginationResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? notifications = null,Object? hasMore = null,Object? cursor = freezed,}) {
  return _then(_NotificationPaginationResult(
notifications: null == notifications ? _self._notifications : notifications // ignore: cast_nullable_to_non_nullable
as List<NotificationEntity>,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,cursor: freezed == cursor ? _self.cursor : cursor // ignore: cast_nullable_to_non_nullable
as NotificationCursorEntity?,
  ));
}

/// Create a copy of NotificationPaginationResult
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
