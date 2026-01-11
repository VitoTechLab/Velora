// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_cursor_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommentCursor _$CommentCursorFromJson(Map<String, dynamic> json) {
  return _CommentCursor.fromJson(json);
}

/// @nodoc
<<<<<<< HEAD:lib/features/chat/data/models/message_cursor_model.freezed.dart
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

=======
mixin _$CommentCursor {
  @JsonKey(name: 'cursor_created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'cursor_id')
  String get id => throw _privateConstructorUsedError;

  /// Serializes this CommentCursor to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
>>>>>>> fd2118c7948154593cd39da330b75baffc54f46d:lib/features/feed/data/models/comment_cursor.freezed.dart

  /// Create a copy of CommentCursor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentCursorCopyWith<CommentCursor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
<<<<<<< HEAD:lib/features/chat/data/models/message_cursor_model.freezed.dart
abstract mixin class $MessageCursorModelCopyWith<$Res>  {
  factory $MessageCursorModelCopyWith(MessageCursorModel value, $Res Function(MessageCursorModel) _then) = _$MessageCursorModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'cursor_created_at') DateTime createdAt,@JsonKey(name: 'cursor_id') String id
});




=======
abstract class $CommentCursorCopyWith<$Res> {
  factory $CommentCursorCopyWith(
          CommentCursor value, $Res Function(CommentCursor) then) =
      _$CommentCursorCopyWithImpl<$Res, CommentCursor>;
  @useResult
  $Res call(
      {@JsonKey(name: 'cursor_created_at') DateTime createdAt,
      @JsonKey(name: 'cursor_id') String id});
>>>>>>> fd2118c7948154593cd39da330b75baffc54f46d:lib/features/feed/data/models/comment_cursor.freezed.dart
}

/// @nodoc
<<<<<<< HEAD:lib/features/chat/data/models/message_cursor_model.freezed.dart
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
=======
class _$CommentCursorCopyWithImpl<$Res, $Val extends CommentCursor>
    implements $CommentCursorCopyWith<$Res> {
  _$CommentCursorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentCursor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
>>>>>>> fd2118c7948154593cd39da330b75baffc54f46d:lib/features/feed/data/models/comment_cursor.freezed.dart
}

/// @nodoc
abstract class _$$CommentCursorImplCopyWith<$Res>
    implements $CommentCursorCopyWith<$Res> {
  factory _$$CommentCursorImplCopyWith(
          _$CommentCursorImpl value, $Res Function(_$CommentCursorImpl) then) =
      __$$CommentCursorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'cursor_created_at') DateTime createdAt,
      @JsonKey(name: 'cursor_id') String id});
}

/// @nodoc
class __$$CommentCursorImplCopyWithImpl<$Res>
    extends _$CommentCursorCopyWithImpl<$Res, _$CommentCursorImpl>
    implements _$$CommentCursorImplCopyWith<$Res> {
  __$$CommentCursorImplCopyWithImpl(
      _$CommentCursorImpl _value, $Res Function(_$CommentCursorImpl) _then)
      : super(_value, _then);

<<<<<<< HEAD:lib/features/chat/data/models/message_cursor_model.freezed.dart
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

=======
  /// Create a copy of CommentCursor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? id = null,
  }) {
    return _then(_$CommentCursorImpl(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
>>>>>>> fd2118c7948154593cd39da330b75baffc54f46d:lib/features/feed/data/models/comment_cursor.freezed.dart
}

/// @nodoc
@JsonSerializable()
class _$CommentCursorImpl extends _CommentCursor {
  const _$CommentCursorImpl(
      {@JsonKey(name: 'cursor_created_at') required this.createdAt,
      @JsonKey(name: 'cursor_id') required this.id})
      : super._();

<<<<<<< HEAD:lib/features/chat/data/models/message_cursor_model.freezed.dart
class _MessageCursorModel extends MessageCursorModel {
  const _MessageCursorModel({@JsonKey(name: 'cursor_created_at') required this.createdAt, @JsonKey(name: 'cursor_id') required this.id}): super._();
  factory _MessageCursorModel.fromJson(Map<String, dynamic> json) => _$MessageCursorModelFromJson(json);
=======
  factory _$CommentCursorImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentCursorImplFromJson(json);
>>>>>>> fd2118c7948154593cd39da330b75baffc54f46d:lib/features/feed/data/models/comment_cursor.freezed.dart

  @override
  @JsonKey(name: 'cursor_created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'cursor_id')
  final String id;

<<<<<<< HEAD:lib/features/chat/data/models/message_cursor_model.freezed.dart
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
=======
  @override
  String toString() {
    return 'CommentCursor(createdAt: $createdAt, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentCursorImpl &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, createdAt, id);

  /// Create a copy of CommentCursor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentCursorImplCopyWith<_$CommentCursorImpl> get copyWith =>
      __$$CommentCursorImplCopyWithImpl<_$CommentCursorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentCursorImplToJson(
      this,
    );
  }
}

abstract class _CommentCursor extends CommentCursor {
  const factory _CommentCursor(
      {@JsonKey(name: 'cursor_created_at') required final DateTime createdAt,
      @JsonKey(name: 'cursor_id')
      required final String id}) = _$CommentCursorImpl;
  const _CommentCursor._() : super._();

  factory _CommentCursor.fromJson(Map<String, dynamic> json) =
      _$CommentCursorImpl.fromJson;

  @override
  @JsonKey(name: 'cursor_created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'cursor_id')
  String get id;

  /// Create a copy of CommentCursor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentCursorImplCopyWith<_$CommentCursorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
>>>>>>> fd2118c7948154593cd39da330b75baffc54f46d:lib/features/feed/data/models/comment_cursor.freezed.dart
