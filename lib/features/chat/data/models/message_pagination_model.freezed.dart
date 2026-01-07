// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_pagination_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MessagePaginationModel {

 List<ChatMessageModel> get messages; bool get hasMore;@JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson) MessageCursor? get nextCursor;
/// Create a copy of MessagePaginationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessagePaginationModelCopyWith<MessagePaginationModel> get copyWith => _$MessagePaginationModelCopyWithImpl<MessagePaginationModel>(this as MessagePaginationModel, _$identity);

  /// Serializes this MessagePaginationModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessagePaginationModel&&const DeepCollectionEquality().equals(other.messages, messages)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(messages),hasMore,nextCursor);

@override
String toString() {
  return 'MessagePaginationModel(messages: $messages, hasMore: $hasMore, nextCursor: $nextCursor)';
}


}

/// @nodoc
abstract mixin class $MessagePaginationModelCopyWith<$Res>  {
  factory $MessagePaginationModelCopyWith(MessagePaginationModel value, $Res Function(MessagePaginationModel) _then) = _$MessagePaginationModelCopyWithImpl;
@useResult
$Res call({
 List<ChatMessageModel> messages, bool hasMore,@JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson) MessageCursor? nextCursor
});


$MessageCursorCopyWith<$Res>? get nextCursor;

}
/// @nodoc
class _$MessagePaginationModelCopyWithImpl<$Res>
    implements $MessagePaginationModelCopyWith<$Res> {
  _$MessagePaginationModelCopyWithImpl(this._self, this._then);

  final MessagePaginationModel _self;
  final $Res Function(MessagePaginationModel) _then;

/// Create a copy of MessagePaginationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? messages = null,Object? hasMore = null,Object? nextCursor = freezed,}) {
  return _then(_self.copyWith(
messages: null == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as List<ChatMessageModel>,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as MessageCursor?,
  ));
}
/// Create a copy of MessagePaginationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MessageCursorCopyWith<$Res>? get nextCursor {
    if (_self.nextCursor == null) {
    return null;
  }

  return $MessageCursorCopyWith<$Res>(_self.nextCursor!, (value) {
    return _then(_self.copyWith(nextCursor: value));
  });
}
}


/// Adds pattern-matching-related methods to [MessagePaginationModel].
extension MessagePaginationModelPatterns on MessagePaginationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MessagePaginationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MessagePaginationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MessagePaginationModel value)  $default,){
final _that = this;
switch (_that) {
case _MessagePaginationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MessagePaginationModel value)?  $default,){
final _that = this;
switch (_that) {
case _MessagePaginationModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ChatMessageModel> messages,  bool hasMore, @JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson)  MessageCursor? nextCursor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MessagePaginationModel() when $default != null:
return $default(_that.messages,_that.hasMore,_that.nextCursor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ChatMessageModel> messages,  bool hasMore, @JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson)  MessageCursor? nextCursor)  $default,) {final _that = this;
switch (_that) {
case _MessagePaginationModel():
return $default(_that.messages,_that.hasMore,_that.nextCursor);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ChatMessageModel> messages,  bool hasMore, @JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson)  MessageCursor? nextCursor)?  $default,) {final _that = this;
switch (_that) {
case _MessagePaginationModel() when $default != null:
return $default(_that.messages,_that.hasMore,_that.nextCursor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MessagePaginationModel extends MessagePaginationModel {
  const _MessagePaginationModel({required final  List<ChatMessageModel> messages, required this.hasMore, @JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson) this.nextCursor}): _messages = messages,super._();
  factory _MessagePaginationModel.fromJson(Map<String, dynamic> json) => _$MessagePaginationModelFromJson(json);

 final  List<ChatMessageModel> _messages;
@override List<ChatMessageModel> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}

@override final  bool hasMore;
@override@JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson) final  MessageCursor? nextCursor;

/// Create a copy of MessagePaginationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessagePaginationModelCopyWith<_MessagePaginationModel> get copyWith => __$MessagePaginationModelCopyWithImpl<_MessagePaginationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MessagePaginationModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessagePaginationModel&&const DeepCollectionEquality().equals(other._messages, _messages)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_messages),hasMore,nextCursor);

@override
String toString() {
  return 'MessagePaginationModel(messages: $messages, hasMore: $hasMore, nextCursor: $nextCursor)';
}


}

/// @nodoc
abstract mixin class _$MessagePaginationModelCopyWith<$Res> implements $MessagePaginationModelCopyWith<$Res> {
  factory _$MessagePaginationModelCopyWith(_MessagePaginationModel value, $Res Function(_MessagePaginationModel) _then) = __$MessagePaginationModelCopyWithImpl;
@override @useResult
$Res call({
 List<ChatMessageModel> messages, bool hasMore,@JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson) MessageCursor? nextCursor
});


@override $MessageCursorCopyWith<$Res>? get nextCursor;

}
/// @nodoc
class __$MessagePaginationModelCopyWithImpl<$Res>
    implements _$MessagePaginationModelCopyWith<$Res> {
  __$MessagePaginationModelCopyWithImpl(this._self, this._then);

  final _MessagePaginationModel _self;
  final $Res Function(_MessagePaginationModel) _then;

/// Create a copy of MessagePaginationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? messages = null,Object? hasMore = null,Object? nextCursor = freezed,}) {
  return _then(_MessagePaginationModel(
messages: null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<ChatMessageModel>,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as MessageCursor?,
  ));
}

/// Create a copy of MessagePaginationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MessageCursorCopyWith<$Res>? get nextCursor {
    if (_self.nextCursor == null) {
    return null;
  }

  return $MessageCursorCopyWith<$Res>(_self.nextCursor!, (value) {
    return _then(_self.copyWith(nextCursor: value));
  });
}
}

// dart format on
