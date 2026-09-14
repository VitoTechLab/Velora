// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_read_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MessageReadModel {

@JsonKey(name: 'message_id') String get messageId;@JsonKey(name: 'user_id') String get userId;@UtcDateTimeConverter()@JsonKey(name: 'read_at') DateTime get readAt;
/// Create a copy of MessageReadModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessageReadModelCopyWith<MessageReadModel> get copyWith => _$MessageReadModelCopyWithImpl<MessageReadModel>(this as MessageReadModel, _$identity);

  /// Serializes this MessageReadModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageReadModel&&(identical(other.messageId, messageId) || other.messageId == messageId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.readAt, readAt) || other.readAt == readAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,messageId,userId,readAt);

@override
String toString() {
  return 'MessageReadModel(messageId: $messageId, userId: $userId, readAt: $readAt)';
}


}

/// @nodoc
abstract mixin class $MessageReadModelCopyWith<$Res>  {
  factory $MessageReadModelCopyWith(MessageReadModel value, $Res Function(MessageReadModel) _then) = _$MessageReadModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'message_id') String messageId,@JsonKey(name: 'user_id') String userId,@UtcDateTimeConverter()@JsonKey(name: 'read_at') DateTime readAt
});




}
/// @nodoc
class _$MessageReadModelCopyWithImpl<$Res>
    implements $MessageReadModelCopyWith<$Res> {
  _$MessageReadModelCopyWithImpl(this._self, this._then);

  final MessageReadModel _self;
  final $Res Function(MessageReadModel) _then;

/// Create a copy of MessageReadModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? messageId = null,Object? userId = null,Object? readAt = null,}) {
  return _then(_self.copyWith(
messageId: null == messageId ? _self.messageId : messageId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,readAt: null == readAt ? _self.readAt : readAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [MessageReadModel].
extension MessageReadModelPatterns on MessageReadModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MessageReadModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MessageReadModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MessageReadModel value)  $default,){
final _that = this;
switch (_that) {
case _MessageReadModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MessageReadModel value)?  $default,){
final _that = this;
switch (_that) {
case _MessageReadModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'message_id')  String messageId, @JsonKey(name: 'user_id')  String userId, @UtcDateTimeConverter()@JsonKey(name: 'read_at')  DateTime readAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MessageReadModel() when $default != null:
return $default(_that.messageId,_that.userId,_that.readAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'message_id')  String messageId, @JsonKey(name: 'user_id')  String userId, @UtcDateTimeConverter()@JsonKey(name: 'read_at')  DateTime readAt)  $default,) {final _that = this;
switch (_that) {
case _MessageReadModel():
return $default(_that.messageId,_that.userId,_that.readAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'message_id')  String messageId, @JsonKey(name: 'user_id')  String userId, @UtcDateTimeConverter()@JsonKey(name: 'read_at')  DateTime readAt)?  $default,) {final _that = this;
switch (_that) {
case _MessageReadModel() when $default != null:
return $default(_that.messageId,_that.userId,_that.readAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MessageReadModel extends MessageReadModel {
  const _MessageReadModel({@JsonKey(name: 'message_id') required this.messageId, @JsonKey(name: 'user_id') required this.userId, @UtcDateTimeConverter()@JsonKey(name: 'read_at') required this.readAt}): super._();
  factory _MessageReadModel.fromJson(Map<String, dynamic> json) => _$MessageReadModelFromJson(json);

@override@JsonKey(name: 'message_id') final  String messageId;
@override@JsonKey(name: 'user_id') final  String userId;
@override@UtcDateTimeConverter()@JsonKey(name: 'read_at') final  DateTime readAt;

/// Create a copy of MessageReadModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessageReadModelCopyWith<_MessageReadModel> get copyWith => __$MessageReadModelCopyWithImpl<_MessageReadModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MessageReadModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessageReadModel&&(identical(other.messageId, messageId) || other.messageId == messageId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.readAt, readAt) || other.readAt == readAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,messageId,userId,readAt);

@override
String toString() {
  return 'MessageReadModel(messageId: $messageId, userId: $userId, readAt: $readAt)';
}


}

/// @nodoc
abstract mixin class _$MessageReadModelCopyWith<$Res> implements $MessageReadModelCopyWith<$Res> {
  factory _$MessageReadModelCopyWith(_MessageReadModel value, $Res Function(_MessageReadModel) _then) = __$MessageReadModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'message_id') String messageId,@JsonKey(name: 'user_id') String userId,@UtcDateTimeConverter()@JsonKey(name: 'read_at') DateTime readAt
});




}
/// @nodoc
class __$MessageReadModelCopyWithImpl<$Res>
    implements _$MessageReadModelCopyWith<$Res> {
  __$MessageReadModelCopyWithImpl(this._self, this._then);

  final _MessageReadModel _self;
  final $Res Function(_MessageReadModel) _then;

/// Create a copy of MessageReadModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? messageId = null,Object? userId = null,Object? readAt = null,}) {
  return _then(_MessageReadModel(
messageId: null == messageId ? _self.messageId : messageId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,readAt: null == readAt ? _self.readAt : readAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
