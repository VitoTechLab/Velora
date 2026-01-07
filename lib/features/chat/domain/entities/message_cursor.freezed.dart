// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_cursor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MessageCursorEntity {

 DateTime get createdAt; String get id;
/// Create a copy of MessageCursorEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessageCursorEntityCopyWith<MessageCursorEntity> get copyWith => _$MessageCursorEntityCopyWithImpl<MessageCursorEntity>(this as MessageCursorEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageCursorEntity&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,createdAt,id);

@override
String toString() {
  return 'MessageCursorEntity(createdAt: $createdAt, id: $id)';
}


}

/// @nodoc
abstract mixin class $MessageCursorEntityCopyWith<$Res>  {
  factory $MessageCursorEntityCopyWith(MessageCursorEntity value, $Res Function(MessageCursorEntity) _then) = _$MessageCursorEntityCopyWithImpl;
@useResult
$Res call({
 DateTime createdAt, String id
});




}
/// @nodoc
class _$MessageCursorEntityCopyWithImpl<$Res>
    implements $MessageCursorEntityCopyWith<$Res> {
  _$MessageCursorEntityCopyWithImpl(this._self, this._then);

  final MessageCursorEntity _self;
  final $Res Function(MessageCursorEntity) _then;

/// Create a copy of MessageCursorEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdAt = null,Object? id = null,}) {
  return _then(_self.copyWith(
createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MessageCursorEntity].
extension MessageCursorEntityPatterns on MessageCursorEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MessageCursorEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MessageCursorEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MessageCursorEntity value)  $default,){
final _that = this;
switch (_that) {
case _MessageCursorEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MessageCursorEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MessageCursorEntity() when $default != null:
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
case _MessageCursorEntity() when $default != null:
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
case _MessageCursorEntity():
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
case _MessageCursorEntity() when $default != null:
return $default(_that.createdAt,_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _MessageCursorEntity implements MessageCursorEntity {
  const _MessageCursorEntity({required this.createdAt, required this.id});
  

@override final  DateTime createdAt;
@override final  String id;

/// Create a copy of MessageCursorEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessageCursorEntityCopyWith<_MessageCursorEntity> get copyWith => __$MessageCursorEntityCopyWithImpl<_MessageCursorEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessageCursorEntity&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,createdAt,id);

@override
String toString() {
  return 'MessageCursorEntity(createdAt: $createdAt, id: $id)';
}


}

/// @nodoc
abstract mixin class _$MessageCursorEntityCopyWith<$Res> implements $MessageCursorEntityCopyWith<$Res> {
  factory _$MessageCursorEntityCopyWith(_MessageCursorEntity value, $Res Function(_MessageCursorEntity) _then) = __$MessageCursorEntityCopyWithImpl;
@override @useResult
$Res call({
 DateTime createdAt, String id
});




}
/// @nodoc
class __$MessageCursorEntityCopyWithImpl<$Res>
    implements _$MessageCursorEntityCopyWith<$Res> {
  __$MessageCursorEntityCopyWithImpl(this._self, this._then);

  final _MessageCursorEntity _self;
  final $Res Function(_MessageCursorEntity) _then;

/// Create a copy of MessageCursorEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdAt = null,Object? id = null,}) {
  return _then(_MessageCursorEntity(
createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
