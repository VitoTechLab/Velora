// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_cursor_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MessageCursorModel {

@JsonKey(name: 'cursor_created_at') DateTime get createdAt;@JsonKey(name: 'cursor_id') String get id;
/// Create a copy of MessageCursorModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessageCursorModelCopyWith<MessageCursorModel> get copyWith => _$MessageCursorModelCopyWithImpl<MessageCursorModel>(this as MessageCursorModel, _$identity);

  /// Serializes this MessageCursorModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageCursorModel&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,id);

@override
String toString() {
  return 'MessageCursorModel(createdAt: $createdAt, id: $id)';
}


}

/// @nodoc
abstract mixin class $MessageCursorModelCopyWith<$Res>  {
  factory $MessageCursorModelCopyWith(MessageCursorModel value, $Res Function(MessageCursorModel) _then) = _$MessageCursorModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'cursor_created_at') DateTime createdAt,@JsonKey(name: 'cursor_id') String id
});




}
/// @nodoc
class _$MessageCursorModelCopyWithImpl<$Res>
    implements $MessageCursorModelCopyWith<$Res> {
  _$MessageCursorModelCopyWithImpl(this._self, this._then);

  final MessageCursorModel _self;
  final $Res Function(MessageCursorModel) _then;

/// Create a copy of MessageCursorModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdAt = null,Object? id = null,}) {
  return _then(_self.copyWith(
createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MessageCursorModel].
extension MessageCursorModelPatterns on MessageCursorModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MessageCursorModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MessageCursorModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MessageCursorModel value)  $default,){
final _that = this;
switch (_that) {
case _MessageCursorModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MessageCursorModel value)?  $default,){
final _that = this;
switch (_that) {
case _MessageCursorModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'cursor_created_at')  DateTime createdAt, @JsonKey(name: 'cursor_id')  String id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MessageCursorModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'cursor_created_at')  DateTime createdAt, @JsonKey(name: 'cursor_id')  String id)  $default,) {final _that = this;
switch (_that) {
case _MessageCursorModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'cursor_created_at')  DateTime createdAt, @JsonKey(name: 'cursor_id')  String id)?  $default,) {final _that = this;
switch (_that) {
case _MessageCursorModel() when $default != null:
return $default(_that.createdAt,_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MessageCursorModel extends MessageCursorModel {
  const _MessageCursorModel({@JsonKey(name: 'cursor_created_at') required this.createdAt, @JsonKey(name: 'cursor_id') required this.id}): super._();
  factory _MessageCursorModel.fromJson(Map<String, dynamic> json) => _$MessageCursorModelFromJson(json);

@override@JsonKey(name: 'cursor_created_at') final  DateTime createdAt;
@override@JsonKey(name: 'cursor_id') final  String id;

/// Create a copy of MessageCursorModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessageCursorModelCopyWith<_MessageCursorModel> get copyWith => __$MessageCursorModelCopyWithImpl<_MessageCursorModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MessageCursorModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessageCursorModel&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,id);

@override
String toString() {
  return 'MessageCursorModel(createdAt: $createdAt, id: $id)';
}


}

/// @nodoc
abstract mixin class _$MessageCursorModelCopyWith<$Res> implements $MessageCursorModelCopyWith<$Res> {
  factory _$MessageCursorModelCopyWith(_MessageCursorModel value, $Res Function(_MessageCursorModel) _then) = __$MessageCursorModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'cursor_created_at') DateTime createdAt,@JsonKey(name: 'cursor_id') String id
});




}
/// @nodoc
class __$MessageCursorModelCopyWithImpl<$Res>
    implements _$MessageCursorModelCopyWith<$Res> {
  __$MessageCursorModelCopyWithImpl(this._self, this._then);

  final _MessageCursorModel _self;
  final $Res Function(_MessageCursorModel) _then;

/// Create a copy of MessageCursorModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdAt = null,Object? id = null,}) {
  return _then(_MessageCursorModel(
createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
