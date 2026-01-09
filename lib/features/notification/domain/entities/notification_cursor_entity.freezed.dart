// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_cursor_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NotificationCursorEntity {

 DateTime get createdAt; String get id;
/// Create a copy of NotificationCursorEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationCursorEntityCopyWith<NotificationCursorEntity> get copyWith => _$NotificationCursorEntityCopyWithImpl<NotificationCursorEntity>(this as NotificationCursorEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationCursorEntity&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,createdAt,id);

@override
String toString() {
  return 'NotificationCursorEntity(createdAt: $createdAt, id: $id)';
}


}

/// @nodoc
abstract mixin class $NotificationCursorEntityCopyWith<$Res>  {
  factory $NotificationCursorEntityCopyWith(NotificationCursorEntity value, $Res Function(NotificationCursorEntity) _then) = _$NotificationCursorEntityCopyWithImpl;
@useResult
$Res call({
 DateTime createdAt, String id
});




}
/// @nodoc
class _$NotificationCursorEntityCopyWithImpl<$Res>
    implements $NotificationCursorEntityCopyWith<$Res> {
  _$NotificationCursorEntityCopyWithImpl(this._self, this._then);

  final NotificationCursorEntity _self;
  final $Res Function(NotificationCursorEntity) _then;

/// Create a copy of NotificationCursorEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdAt = null,Object? id = null,}) {
  return _then(_self.copyWith(
createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationCursorEntity].
extension NotificationCursorEntityPatterns on NotificationCursorEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationCursorEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationCursorEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationCursorEntity value)  $default,){
final _that = this;
switch (_that) {
case _NotificationCursorEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationCursorEntity value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationCursorEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime createdAt,  String id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationCursorEntity() when $default != null:
return $default(_that.createdAt,_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime createdAt,  String id)  $default,) {final _that = this;
switch (_that) {
case _NotificationCursorEntity():
return $default(_that.createdAt,_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime createdAt,  String id)?  $default,) {final _that = this;
switch (_that) {
case _NotificationCursorEntity() when $default != null:
return $default(_that.createdAt,_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _NotificationCursorEntity implements NotificationCursorEntity {
  const _NotificationCursorEntity({required this.createdAt, required this.id});
  

@override final  DateTime createdAt;
@override final  String id;

/// Create a copy of NotificationCursorEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationCursorEntityCopyWith<_NotificationCursorEntity> get copyWith => __$NotificationCursorEntityCopyWithImpl<_NotificationCursorEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationCursorEntity&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,createdAt,id);

@override
String toString() {
  return 'NotificationCursorEntity(createdAt: $createdAt, id: $id)';
}


}

/// @nodoc
abstract mixin class _$NotificationCursorEntityCopyWith<$Res> implements $NotificationCursorEntityCopyWith<$Res> {
  factory _$NotificationCursorEntityCopyWith(_NotificationCursorEntity value, $Res Function(_NotificationCursorEntity) _then) = __$NotificationCursorEntityCopyWithImpl;
@override @useResult
$Res call({
 DateTime createdAt, String id
});




}
/// @nodoc
class __$NotificationCursorEntityCopyWithImpl<$Res>
    implements _$NotificationCursorEntityCopyWith<$Res> {
  __$NotificationCursorEntityCopyWithImpl(this._self, this._then);

  final _NotificationCursorEntity _self;
  final $Res Function(_NotificationCursorEntity) _then;

/// Create a copy of NotificationCursorEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdAt = null,Object? id = null,}) {
  return _then(_NotificationCursorEntity(
createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
