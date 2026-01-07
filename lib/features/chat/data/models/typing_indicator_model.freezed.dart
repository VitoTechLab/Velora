// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'typing_indicator_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TypingIndicatorModel {

@JsonKey(name: 'user_id') String get userId;@JsonKey(name: 'conversation_id') String get conversationId;@JsonKey(name: 'is_typing') bool get isTyping;@JsonKey(name: 'timestamp') String get timestamp;
/// Create a copy of TypingIndicatorModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TypingIndicatorModelCopyWith<TypingIndicatorModel> get copyWith => _$TypingIndicatorModelCopyWithImpl<TypingIndicatorModel>(this as TypingIndicatorModel, _$identity);

  /// Serializes this TypingIndicatorModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TypingIndicatorModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.conversationId, conversationId) || other.conversationId == conversationId)&&(identical(other.isTyping, isTyping) || other.isTyping == isTyping)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,conversationId,isTyping,timestamp);

@override
String toString() {
  return 'TypingIndicatorModel(userId: $userId, conversationId: $conversationId, isTyping: $isTyping, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $TypingIndicatorModelCopyWith<$Res>  {
  factory $TypingIndicatorModelCopyWith(TypingIndicatorModel value, $Res Function(TypingIndicatorModel) _then) = _$TypingIndicatorModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'conversation_id') String conversationId,@JsonKey(name: 'is_typing') bool isTyping,@JsonKey(name: 'timestamp') String timestamp
});




}
/// @nodoc
class _$TypingIndicatorModelCopyWithImpl<$Res>
    implements $TypingIndicatorModelCopyWith<$Res> {
  _$TypingIndicatorModelCopyWithImpl(this._self, this._then);

  final TypingIndicatorModel _self;
  final $Res Function(TypingIndicatorModel) _then;

/// Create a copy of TypingIndicatorModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? conversationId = null,Object? isTyping = null,Object? timestamp = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,conversationId: null == conversationId ? _self.conversationId : conversationId // ignore: cast_nullable_to_non_nullable
as String,isTyping: null == isTyping ? _self.isTyping : isTyping // ignore: cast_nullable_to_non_nullable
as bool,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TypingIndicatorModel].
extension TypingIndicatorModelPatterns on TypingIndicatorModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TypingIndicatorModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TypingIndicatorModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TypingIndicatorModel value)  $default,){
final _that = this;
switch (_that) {
case _TypingIndicatorModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TypingIndicatorModel value)?  $default,){
final _that = this;
switch (_that) {
case _TypingIndicatorModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'conversation_id')  String conversationId, @JsonKey(name: 'is_typing')  bool isTyping, @JsonKey(name: 'timestamp')  String timestamp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TypingIndicatorModel() when $default != null:
return $default(_that.userId,_that.conversationId,_that.isTyping,_that.timestamp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'conversation_id')  String conversationId, @JsonKey(name: 'is_typing')  bool isTyping, @JsonKey(name: 'timestamp')  String timestamp)  $default,) {final _that = this;
switch (_that) {
case _TypingIndicatorModel():
return $default(_that.userId,_that.conversationId,_that.isTyping,_that.timestamp);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'conversation_id')  String conversationId, @JsonKey(name: 'is_typing')  bool isTyping, @JsonKey(name: 'timestamp')  String timestamp)?  $default,) {final _that = this;
switch (_that) {
case _TypingIndicatorModel() when $default != null:
return $default(_that.userId,_that.conversationId,_that.isTyping,_that.timestamp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TypingIndicatorModel extends TypingIndicatorModel {
  const _TypingIndicatorModel({@JsonKey(name: 'user_id') required this.userId, @JsonKey(name: 'conversation_id') required this.conversationId, @JsonKey(name: 'is_typing') required this.isTyping, @JsonKey(name: 'timestamp') required this.timestamp}): super._();
  factory _TypingIndicatorModel.fromJson(Map<String, dynamic> json) => _$TypingIndicatorModelFromJson(json);

@override@JsonKey(name: 'user_id') final  String userId;
@override@JsonKey(name: 'conversation_id') final  String conversationId;
@override@JsonKey(name: 'is_typing') final  bool isTyping;
@override@JsonKey(name: 'timestamp') final  String timestamp;

/// Create a copy of TypingIndicatorModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TypingIndicatorModelCopyWith<_TypingIndicatorModel> get copyWith => __$TypingIndicatorModelCopyWithImpl<_TypingIndicatorModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TypingIndicatorModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TypingIndicatorModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.conversationId, conversationId) || other.conversationId == conversationId)&&(identical(other.isTyping, isTyping) || other.isTyping == isTyping)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,conversationId,isTyping,timestamp);

@override
String toString() {
  return 'TypingIndicatorModel(userId: $userId, conversationId: $conversationId, isTyping: $isTyping, timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$TypingIndicatorModelCopyWith<$Res> implements $TypingIndicatorModelCopyWith<$Res> {
  factory _$TypingIndicatorModelCopyWith(_TypingIndicatorModel value, $Res Function(_TypingIndicatorModel) _then) = __$TypingIndicatorModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'conversation_id') String conversationId,@JsonKey(name: 'is_typing') bool isTyping,@JsonKey(name: 'timestamp') String timestamp
});




}
/// @nodoc
class __$TypingIndicatorModelCopyWithImpl<$Res>
    implements _$TypingIndicatorModelCopyWith<$Res> {
  __$TypingIndicatorModelCopyWithImpl(this._self, this._then);

  final _TypingIndicatorModel _self;
  final $Res Function(_TypingIndicatorModel) _then;

/// Create a copy of TypingIndicatorModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? conversationId = null,Object? isTyping = null,Object? timestamp = null,}) {
  return _then(_TypingIndicatorModel(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,conversationId: null == conversationId ? _self.conversationId : conversationId // ignore: cast_nullable_to_non_nullable
as String,isTyping: null == isTyping ? _self.isTyping : isTyping // ignore: cast_nullable_to_non_nullable
as bool,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
