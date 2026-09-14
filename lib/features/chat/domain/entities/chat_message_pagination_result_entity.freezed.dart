// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_message_pagination_result_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChatMessagePaginationResultEntity {

 List<ChatMessageEntity> get messages; bool get hasMore; MessageCursorEntity? get cursor;
/// Create a copy of ChatMessagePaginationResultEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatMessagePaginationResultEntityCopyWith<ChatMessagePaginationResultEntity> get copyWith => _$ChatMessagePaginationResultEntityCopyWithImpl<ChatMessagePaginationResultEntity>(this as ChatMessagePaginationResultEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatMessagePaginationResultEntity&&const DeepCollectionEquality().equals(other.messages, messages)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.cursor, cursor) || other.cursor == cursor));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(messages),hasMore,cursor);

@override
String toString() {
  return 'ChatMessagePaginationResultEntity(messages: $messages, hasMore: $hasMore, cursor: $cursor)';
}


}

/// @nodoc
abstract mixin class $ChatMessagePaginationResultEntityCopyWith<$Res>  {
  factory $ChatMessagePaginationResultEntityCopyWith(ChatMessagePaginationResultEntity value, $Res Function(ChatMessagePaginationResultEntity) _then) = _$ChatMessagePaginationResultEntityCopyWithImpl;
@useResult
$Res call({
 List<ChatMessageEntity> messages, bool hasMore, MessageCursorEntity? cursor
});


$MessageCursorEntityCopyWith<$Res>? get cursor;

}
/// @nodoc
class _$ChatMessagePaginationResultEntityCopyWithImpl<$Res>
    implements $ChatMessagePaginationResultEntityCopyWith<$Res> {
  _$ChatMessagePaginationResultEntityCopyWithImpl(this._self, this._then);

  final ChatMessagePaginationResultEntity _self;
  final $Res Function(ChatMessagePaginationResultEntity) _then;

/// Create a copy of ChatMessagePaginationResultEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? messages = null,Object? hasMore = null,Object? cursor = freezed,}) {
  return _then(_self.copyWith(
messages: null == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as List<ChatMessageEntity>,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,cursor: freezed == cursor ? _self.cursor : cursor // ignore: cast_nullable_to_non_nullable
as MessageCursorEntity?,
  ));
}
/// Create a copy of ChatMessagePaginationResultEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MessageCursorEntityCopyWith<$Res>? get cursor {
    if (_self.cursor == null) {
    return null;
  }

  return $MessageCursorEntityCopyWith<$Res>(_self.cursor!, (value) {
    return _then(_self.copyWith(cursor: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChatMessagePaginationResultEntity].
extension ChatMessagePaginationResultEntityPatterns on ChatMessagePaginationResultEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatMessagePaginationResultEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatMessagePaginationResultEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatMessagePaginationResultEntity value)  $default,){
final _that = this;
switch (_that) {
case _ChatMessagePaginationResultEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatMessagePaginationResultEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ChatMessagePaginationResultEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ChatMessageEntity> messages,  bool hasMore,  MessageCursorEntity? cursor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatMessagePaginationResultEntity() when $default != null:
return $default(_that.messages,_that.hasMore,_that.cursor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ChatMessageEntity> messages,  bool hasMore,  MessageCursorEntity? cursor)  $default,) {final _that = this;
switch (_that) {
case _ChatMessagePaginationResultEntity():
return $default(_that.messages,_that.hasMore,_that.cursor);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ChatMessageEntity> messages,  bool hasMore,  MessageCursorEntity? cursor)?  $default,) {final _that = this;
switch (_that) {
case _ChatMessagePaginationResultEntity() when $default != null:
return $default(_that.messages,_that.hasMore,_that.cursor);case _:
  return null;

}
}

}

/// @nodoc


class _ChatMessagePaginationResultEntity implements ChatMessagePaginationResultEntity {
  const _ChatMessagePaginationResultEntity({required final  List<ChatMessageEntity> messages, required this.hasMore, this.cursor}): _messages = messages;
  

 final  List<ChatMessageEntity> _messages;
@override List<ChatMessageEntity> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}

@override final  bool hasMore;
@override final  MessageCursorEntity? cursor;

/// Create a copy of ChatMessagePaginationResultEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatMessagePaginationResultEntityCopyWith<_ChatMessagePaginationResultEntity> get copyWith => __$ChatMessagePaginationResultEntityCopyWithImpl<_ChatMessagePaginationResultEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatMessagePaginationResultEntity&&const DeepCollectionEquality().equals(other._messages, _messages)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.cursor, cursor) || other.cursor == cursor));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_messages),hasMore,cursor);

@override
String toString() {
  return 'ChatMessagePaginationResultEntity(messages: $messages, hasMore: $hasMore, cursor: $cursor)';
}


}

/// @nodoc
abstract mixin class _$ChatMessagePaginationResultEntityCopyWith<$Res> implements $ChatMessagePaginationResultEntityCopyWith<$Res> {
  factory _$ChatMessagePaginationResultEntityCopyWith(_ChatMessagePaginationResultEntity value, $Res Function(_ChatMessagePaginationResultEntity) _then) = __$ChatMessagePaginationResultEntityCopyWithImpl;
@override @useResult
$Res call({
 List<ChatMessageEntity> messages, bool hasMore, MessageCursorEntity? cursor
});


@override $MessageCursorEntityCopyWith<$Res>? get cursor;

}
/// @nodoc
class __$ChatMessagePaginationResultEntityCopyWithImpl<$Res>
    implements _$ChatMessagePaginationResultEntityCopyWith<$Res> {
  __$ChatMessagePaginationResultEntityCopyWithImpl(this._self, this._then);

  final _ChatMessagePaginationResultEntity _self;
  final $Res Function(_ChatMessagePaginationResultEntity) _then;

/// Create a copy of ChatMessagePaginationResultEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? messages = null,Object? hasMore = null,Object? cursor = freezed,}) {
  return _then(_ChatMessagePaginationResultEntity(
messages: null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<ChatMessageEntity>,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,cursor: freezed == cursor ? _self.cursor : cursor // ignore: cast_nullable_to_non_nullable
as MessageCursorEntity?,
  ));
}

/// Create a copy of ChatMessagePaginationResultEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MessageCursorEntityCopyWith<$Res>? get cursor {
    if (_self.cursor == null) {
    return null;
  }

  return $MessageCursorEntityCopyWith<$Res>(_self.cursor!, (value) {
    return _then(_self.copyWith(cursor: value));
  });
}
}

// dart format on
