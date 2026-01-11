// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_pagination_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessagePaginationModel _$MessagePaginationModelFromJson(
    Map<String, dynamic> json) {
  return _MessagePaginationModel.fromJson(json);
}

/// @nodoc
mixin _$MessagePaginationModel {
<<<<<<< HEAD

 List<ChatMessageModel> get messages; bool get hasMore;@JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson) MessageCursorModel? get nextCursor;
/// Create a copy of MessagePaginationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessagePaginationModelCopyWith<MessagePaginationModel> get copyWith => _$MessagePaginationModelCopyWithImpl<MessagePaginationModel>(this as MessagePaginationModel, _$identity);
=======
  List<ChatMessageModel> get messages => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson)
  MessageCursor? get nextCursor => throw _privateConstructorUsedError;
>>>>>>> fd2118c7948154593cd39da330b75baffc54f46d

  /// Serializes this MessagePaginationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessagePaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessagePaginationModelCopyWith<MessagePaginationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
<<<<<<< HEAD
abstract mixin class $MessagePaginationModelCopyWith<$Res>  {
  factory $MessagePaginationModelCopyWith(MessagePaginationModel value, $Res Function(MessagePaginationModel) _then) = _$MessagePaginationModelCopyWithImpl;
@useResult
$Res call({
 List<ChatMessageModel> messages, bool hasMore,@JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson) MessageCursorModel? nextCursor
});


$MessageCursorModelCopyWith<$Res>? get nextCursor;
=======
abstract class $MessagePaginationModelCopyWith<$Res> {
  factory $MessagePaginationModelCopyWith(MessagePaginationModel value,
          $Res Function(MessagePaginationModel) then) =
      _$MessagePaginationModelCopyWithImpl<$Res, MessagePaginationModel>;
  @useResult
  $Res call(
      {List<ChatMessageModel> messages,
      bool hasMore,
      @JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson)
      MessageCursor? nextCursor});
>>>>>>> fd2118c7948154593cd39da330b75baffc54f46d

  $MessageCursorCopyWith<$Res>? get nextCursor;
}

/// @nodoc
class _$MessagePaginationModelCopyWithImpl<$Res,
        $Val extends MessagePaginationModel>
    implements $MessagePaginationModelCopyWith<$Res> {
  _$MessagePaginationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

<<<<<<< HEAD
/// Create a copy of MessagePaginationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? messages = null,Object? hasMore = null,Object? nextCursor = freezed,}) {
  return _then(_self.copyWith(
messages: null == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as List<ChatMessageModel>,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as MessageCursorModel?,
  ));
}
/// Create a copy of MessagePaginationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MessageCursorModelCopyWith<$Res>? get nextCursor {
    if (_self.nextCursor == null) {
    return null;
  }

  return $MessageCursorModelCopyWith<$Res>(_self.nextCursor!, (value) {
    return _then(_self.copyWith(nextCursor: value));
  });
}
=======
  /// Create a copy of MessagePaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? hasMore = null,
    Object? nextCursor = freezed,
  }) {
    return _then(_value.copyWith(
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessageModel>,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      nextCursor: freezed == nextCursor
          ? _value.nextCursor
          : nextCursor // ignore: cast_nullable_to_non_nullable
              as MessageCursor?,
    ) as $Val);
  }

  /// Create a copy of MessagePaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MessageCursorCopyWith<$Res>? get nextCursor {
    if (_value.nextCursor == null) {
      return null;
    }

    return $MessageCursorCopyWith<$Res>(_value.nextCursor!, (value) {
      return _then(_value.copyWith(nextCursor: value) as $Val);
    });
  }
>>>>>>> fd2118c7948154593cd39da330b75baffc54f46d
}

/// @nodoc
abstract class _$$MessagePaginationModelImplCopyWith<$Res>
    implements $MessagePaginationModelCopyWith<$Res> {
  factory _$$MessagePaginationModelImplCopyWith(
          _$MessagePaginationModelImpl value,
          $Res Function(_$MessagePaginationModelImpl) then) =
      __$$MessagePaginationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ChatMessageModel> messages,
      bool hasMore,
      @JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson)
      MessageCursor? nextCursor});

<<<<<<< HEAD
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ChatMessageModel> messages,  bool hasMore, @JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson)  MessageCursorModel? nextCursor)?  $default,{required TResult orElse(),}) {final _that = this;
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ChatMessageModel> messages,  bool hasMore, @JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson)  MessageCursorModel? nextCursor)  $default,) {final _that = this;
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ChatMessageModel> messages,  bool hasMore, @JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson)  MessageCursorModel? nextCursor)?  $default,) {final _that = this;
switch (_that) {
case _MessagePaginationModel() when $default != null:
return $default(_that.messages,_that.hasMore,_that.nextCursor);case _:
  return null;

}
=======
  @override
  $MessageCursorCopyWith<$Res>? get nextCursor;
>>>>>>> fd2118c7948154593cd39da330b75baffc54f46d
}

/// @nodoc
class __$$MessagePaginationModelImplCopyWithImpl<$Res>
    extends _$MessagePaginationModelCopyWithImpl<$Res,
        _$MessagePaginationModelImpl>
    implements _$$MessagePaginationModelImplCopyWith<$Res> {
  __$$MessagePaginationModelImplCopyWithImpl(
      _$MessagePaginationModelImpl _value,
      $Res Function(_$MessagePaginationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessagePaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? hasMore = null,
    Object? nextCursor = freezed,
  }) {
    return _then(_$MessagePaginationModelImpl(
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessageModel>,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      nextCursor: freezed == nextCursor
          ? _value.nextCursor
          : nextCursor // ignore: cast_nullable_to_non_nullable
              as MessageCursor?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessagePaginationModelImpl extends _MessagePaginationModel {
  const _$MessagePaginationModelImpl(
      {required final List<ChatMessageModel> messages,
      required this.hasMore,
      @JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson)
      this.nextCursor})
      : _messages = messages,
        super._();

  factory _$MessagePaginationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessagePaginationModelImplFromJson(json);

<<<<<<< HEAD
 final  List<ChatMessageModel> _messages;
@override List<ChatMessageModel> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}

@override final  bool hasMore;
@override@JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson) final  MessageCursorModel? nextCursor;

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
 List<ChatMessageModel> messages, bool hasMore,@JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson) MessageCursorModel? nextCursor
});


@override $MessageCursorModelCopyWith<$Res>? get nextCursor;

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
as MessageCursorModel?,
  ));
}

/// Create a copy of MessagePaginationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MessageCursorModelCopyWith<$Res>? get nextCursor {
    if (_self.nextCursor == null) {
    return null;
  }

  return $MessageCursorModelCopyWith<$Res>(_self.nextCursor!, (value) {
    return _then(_self.copyWith(nextCursor: value));
  });
}
=======
  final List<ChatMessageModel> _messages;
  @override
  List<ChatMessageModel> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  final bool hasMore;
  @override
  @JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson)
  final MessageCursor? nextCursor;

  @override
  String toString() {
    return 'MessagePaginationModel(messages: $messages, hasMore: $hasMore, nextCursor: $nextCursor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessagePaginationModelImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.nextCursor, nextCursor) ||
                other.nextCursor == nextCursor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_messages), hasMore, nextCursor);

  /// Create a copy of MessagePaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessagePaginationModelImplCopyWith<_$MessagePaginationModelImpl>
      get copyWith => __$$MessagePaginationModelImplCopyWithImpl<
          _$MessagePaginationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessagePaginationModelImplToJson(
      this,
    );
  }
>>>>>>> fd2118c7948154593cd39da330b75baffc54f46d
}

abstract class _MessagePaginationModel extends MessagePaginationModel {
  const factory _MessagePaginationModel(
      {required final List<ChatMessageModel> messages,
      required final bool hasMore,
      @JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson)
      final MessageCursor? nextCursor}) = _$MessagePaginationModelImpl;
  const _MessagePaginationModel._() : super._();

  factory _MessagePaginationModel.fromJson(Map<String, dynamic> json) =
      _$MessagePaginationModelImpl.fromJson;

  @override
  List<ChatMessageModel> get messages;
  @override
  bool get hasMore;
  @override
  @JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson)
  MessageCursor? get nextCursor;

  /// Create a copy of MessagePaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessagePaginationModelImplCopyWith<_$MessagePaginationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
