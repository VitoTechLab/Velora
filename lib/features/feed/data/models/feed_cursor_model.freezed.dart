// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_cursor_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessageCursor _$MessageCursorFromJson(Map<String, dynamic> json) {
  return _MessageCursor.fromJson(json);
}

/// @nodoc
<<<<<<< HEAD:lib/features/feed/data/models/feed_cursor_model.freezed.dart
mixin _$FeedCursorModel {

@JsonKey(name: 'cursor_created_at') DateTime get createdAt;@JsonKey(name: 'cursor_id') String get id;
/// Create a copy of FeedCursorModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeedCursorModelCopyWith<FeedCursorModel> get copyWith => _$FeedCursorModelCopyWithImpl<FeedCursorModel>(this as FeedCursorModel, _$identity);

  /// Serializes this FeedCursorModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedCursorModel&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,id);

@override
String toString() {
  return 'FeedCursorModel(createdAt: $createdAt, id: $id)';
}

=======
mixin _$MessageCursor {
  @JsonKey(name: 'cursor_created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'cursor_id')
  String get id => throw _privateConstructorUsedError;

  /// Serializes this MessageCursor to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
>>>>>>> fd2118c7948154593cd39da330b75baffc54f46d:lib/features/chat/data/models/message_cursor.freezed.dart

  /// Create a copy of MessageCursor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageCursorCopyWith<MessageCursor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
<<<<<<< HEAD:lib/features/feed/data/models/feed_cursor_model.freezed.dart
abstract mixin class $FeedCursorModelCopyWith<$Res>  {
  factory $FeedCursorModelCopyWith(FeedCursorModel value, $Res Function(FeedCursorModel) _then) = _$FeedCursorModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'cursor_created_at') DateTime createdAt,@JsonKey(name: 'cursor_id') String id
});




=======
abstract class $MessageCursorCopyWith<$Res> {
  factory $MessageCursorCopyWith(
          MessageCursor value, $Res Function(MessageCursor) then) =
      _$MessageCursorCopyWithImpl<$Res, MessageCursor>;
  @useResult
  $Res call(
      {@JsonKey(name: 'cursor_created_at') DateTime createdAt,
      @JsonKey(name: 'cursor_id') String id});
>>>>>>> fd2118c7948154593cd39da330b75baffc54f46d:lib/features/chat/data/models/message_cursor.freezed.dart
}

/// @nodoc
<<<<<<< HEAD:lib/features/feed/data/models/feed_cursor_model.freezed.dart
class _$FeedCursorModelCopyWithImpl<$Res>
    implements $FeedCursorModelCopyWith<$Res> {
  _$FeedCursorModelCopyWithImpl(this._self, this._then);

  final FeedCursorModel _self;
  final $Res Function(FeedCursorModel) _then;

/// Create a copy of FeedCursorModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdAt = null,Object? id = null,}) {
  return _then(_self.copyWith(
createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
=======
class _$MessageCursorCopyWithImpl<$Res, $Val extends MessageCursor>
    implements $MessageCursorCopyWith<$Res> {
  _$MessageCursorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageCursor
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
>>>>>>> fd2118c7948154593cd39da330b75baffc54f46d:lib/features/chat/data/models/message_cursor.freezed.dart
}

/// @nodoc
abstract class _$$MessageCursorImplCopyWith<$Res>
    implements $MessageCursorCopyWith<$Res> {
  factory _$$MessageCursorImplCopyWith(
          _$MessageCursorImpl value, $Res Function(_$MessageCursorImpl) then) =
      __$$MessageCursorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'cursor_created_at') DateTime createdAt,
      @JsonKey(name: 'cursor_id') String id});
}

/// @nodoc
class __$$MessageCursorImplCopyWithImpl<$Res>
    extends _$MessageCursorCopyWithImpl<$Res, _$MessageCursorImpl>
    implements _$$MessageCursorImplCopyWith<$Res> {
  __$$MessageCursorImplCopyWithImpl(
      _$MessageCursorImpl _value, $Res Function(_$MessageCursorImpl) _then)
      : super(_value, _then);

<<<<<<< HEAD:lib/features/feed/data/models/feed_cursor_model.freezed.dart
/// Adds pattern-matching-related methods to [FeedCursorModel].
extension FeedCursorModelPatterns on FeedCursorModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeedCursorModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeedCursorModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeedCursorModel value)  $default,){
final _that = this;
switch (_that) {
case _FeedCursorModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeedCursorModel value)?  $default,){
final _that = this;
switch (_that) {
case _FeedCursorModel() when $default != null:
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
case _FeedCursorModel() when $default != null:
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
case _FeedCursorModel():
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
case _FeedCursorModel() when $default != null:
return $default(_that.createdAt,_that.id);case _:
  return null;

}
}

=======
  /// Create a copy of MessageCursor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? id = null,
  }) {
    return _then(_$MessageCursorImpl(
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
>>>>>>> fd2118c7948154593cd39da330b75baffc54f46d:lib/features/chat/data/models/message_cursor.freezed.dart
}

/// @nodoc
@JsonSerializable()
class _$MessageCursorImpl extends _MessageCursor {
  const _$MessageCursorImpl(
      {@JsonKey(name: 'cursor_created_at') required this.createdAt,
      @JsonKey(name: 'cursor_id') required this.id})
      : super._();

<<<<<<< HEAD:lib/features/feed/data/models/feed_cursor_model.freezed.dart
class _FeedCursorModel extends FeedCursorModel {
  const _FeedCursorModel({@JsonKey(name: 'cursor_created_at') required this.createdAt, @JsonKey(name: 'cursor_id') required this.id}): super._();
  factory _FeedCursorModel.fromJson(Map<String, dynamic> json) => _$FeedCursorModelFromJson(json);
=======
  factory _$MessageCursorImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageCursorImplFromJson(json);
>>>>>>> fd2118c7948154593cd39da330b75baffc54f46d:lib/features/chat/data/models/message_cursor.freezed.dart

  @override
  @JsonKey(name: 'cursor_created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'cursor_id')
  final String id;

<<<<<<< HEAD:lib/features/feed/data/models/feed_cursor_model.freezed.dart
/// Create a copy of FeedCursorModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeedCursorModelCopyWith<_FeedCursorModel> get copyWith => __$FeedCursorModelCopyWithImpl<_FeedCursorModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeedCursorModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeedCursorModel&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,id);

@override
String toString() {
  return 'FeedCursorModel(createdAt: $createdAt, id: $id)';
}


}

/// @nodoc
abstract mixin class _$FeedCursorModelCopyWith<$Res> implements $FeedCursorModelCopyWith<$Res> {
  factory _$FeedCursorModelCopyWith(_FeedCursorModel value, $Res Function(_FeedCursorModel) _then) = __$FeedCursorModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'cursor_created_at') DateTime createdAt,@JsonKey(name: 'cursor_id') String id
});




}
/// @nodoc
class __$FeedCursorModelCopyWithImpl<$Res>
    implements _$FeedCursorModelCopyWith<$Res> {
  __$FeedCursorModelCopyWithImpl(this._self, this._then);

  final _FeedCursorModel _self;
  final $Res Function(_FeedCursorModel) _then;

/// Create a copy of FeedCursorModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdAt = null,Object? id = null,}) {
  return _then(_FeedCursorModel(
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
    return 'MessageCursor(createdAt: $createdAt, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageCursorImpl &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, createdAt, id);

  /// Create a copy of MessageCursor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageCursorImplCopyWith<_$MessageCursorImpl> get copyWith =>
      __$$MessageCursorImplCopyWithImpl<_$MessageCursorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageCursorImplToJson(
      this,
    );
  }
}

abstract class _MessageCursor extends MessageCursor {
  const factory _MessageCursor(
      {@JsonKey(name: 'cursor_created_at') required final DateTime createdAt,
      @JsonKey(name: 'cursor_id')
      required final String id}) = _$MessageCursorImpl;
  const _MessageCursor._() : super._();

  factory _MessageCursor.fromJson(Map<String, dynamic> json) =
      _$MessageCursorImpl.fromJson;

  @override
  @JsonKey(name: 'cursor_created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'cursor_id')
  String get id;

  /// Create a copy of MessageCursor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageCursorImplCopyWith<_$MessageCursorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
>>>>>>> fd2118c7948154593cd39da330b75baffc54f46d:lib/features/chat/data/models/message_cursor.freezed.dart
