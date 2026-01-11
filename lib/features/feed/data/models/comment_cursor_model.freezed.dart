// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_cursor_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FeedCursor _$FeedCursorFromJson(Map<String, dynamic> json) {
  return _FeedCursor.fromJson(json);
}

/// @nodoc
<<<<<<< HEAD:lib/features/feed/data/models/comment_cursor_model.freezed.dart
mixin _$CommentCursorModel {

@JsonKey(name: 'cursor_created_at') DateTime get createdAt;@JsonKey(name: 'cursor_id') String get id;
/// Create a copy of CommentCursorModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommentCursorModelCopyWith<CommentCursorModel> get copyWith => _$CommentCursorModelCopyWithImpl<CommentCursorModel>(this as CommentCursorModel, _$identity);

  /// Serializes this CommentCursorModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommentCursorModel&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,id);

@override
String toString() {
  return 'CommentCursorModel(createdAt: $createdAt, id: $id)';
}

=======
mixin _$FeedCursor {
// Pakai @JsonKey supaya nama field di JSON tetap sesuai map kamu.
  @JsonKey(name: 'cursor_created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'cursor_id')
  String get id => throw _privateConstructorUsedError;

  /// Serializes this FeedCursor to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
>>>>>>> fd2118c7948154593cd39da330b75baffc54f46d:lib/features/feed/data/models/feed_cursor.freezed.dart

  /// Create a copy of FeedCursor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeedCursorCopyWith<FeedCursor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
<<<<<<< HEAD:lib/features/feed/data/models/comment_cursor_model.freezed.dart
abstract mixin class $CommentCursorModelCopyWith<$Res>  {
  factory $CommentCursorModelCopyWith(CommentCursorModel value, $Res Function(CommentCursorModel) _then) = _$CommentCursorModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'cursor_created_at') DateTime createdAt,@JsonKey(name: 'cursor_id') String id
});




=======
abstract class $FeedCursorCopyWith<$Res> {
  factory $FeedCursorCopyWith(
          FeedCursor value, $Res Function(FeedCursor) then) =
      _$FeedCursorCopyWithImpl<$Res, FeedCursor>;
  @useResult
  $Res call(
      {@JsonKey(name: 'cursor_created_at') DateTime createdAt,
      @JsonKey(name: 'cursor_id') String id});
>>>>>>> fd2118c7948154593cd39da330b75baffc54f46d:lib/features/feed/data/models/feed_cursor.freezed.dart
}

/// @nodoc
<<<<<<< HEAD:lib/features/feed/data/models/comment_cursor_model.freezed.dart
class _$CommentCursorModelCopyWithImpl<$Res>
    implements $CommentCursorModelCopyWith<$Res> {
  _$CommentCursorModelCopyWithImpl(this._self, this._then);

  final CommentCursorModel _self;
  final $Res Function(CommentCursorModel) _then;

/// Create a copy of CommentCursorModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdAt = null,Object? id = null,}) {
  return _then(_self.copyWith(
createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
=======
class _$FeedCursorCopyWithImpl<$Res, $Val extends FeedCursor>
    implements $FeedCursorCopyWith<$Res> {
  _$FeedCursorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeedCursor
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
>>>>>>> fd2118c7948154593cd39da330b75baffc54f46d:lib/features/feed/data/models/feed_cursor.freezed.dart
}

/// @nodoc
abstract class _$$FeedCursorImplCopyWith<$Res>
    implements $FeedCursorCopyWith<$Res> {
  factory _$$FeedCursorImplCopyWith(
          _$FeedCursorImpl value, $Res Function(_$FeedCursorImpl) then) =
      __$$FeedCursorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'cursor_created_at') DateTime createdAt,
      @JsonKey(name: 'cursor_id') String id});
}

/// @nodoc
class __$$FeedCursorImplCopyWithImpl<$Res>
    extends _$FeedCursorCopyWithImpl<$Res, _$FeedCursorImpl>
    implements _$$FeedCursorImplCopyWith<$Res> {
  __$$FeedCursorImplCopyWithImpl(
      _$FeedCursorImpl _value, $Res Function(_$FeedCursorImpl) _then)
      : super(_value, _then);

<<<<<<< HEAD:lib/features/feed/data/models/comment_cursor_model.freezed.dart
/// Adds pattern-matching-related methods to [CommentCursorModel].
extension CommentCursorModelPatterns on CommentCursorModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommentCursorModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommentCursorModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommentCursorModel value)  $default,){
final _that = this;
switch (_that) {
case _CommentCursorModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommentCursorModel value)?  $default,){
final _that = this;
switch (_that) {
case _CommentCursorModel() when $default != null:
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
case _CommentCursorModel() when $default != null:
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
case _CommentCursorModel():
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
case _CommentCursorModel() when $default != null:
return $default(_that.createdAt,_that.id);case _:
  return null;

}
}

=======
  /// Create a copy of FeedCursor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? id = null,
  }) {
    return _then(_$FeedCursorImpl(
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
>>>>>>> fd2118c7948154593cd39da330b75baffc54f46d:lib/features/feed/data/models/feed_cursor.freezed.dart
}

/// @nodoc
@JsonSerializable()
class _$FeedCursorImpl extends _FeedCursor {
  const _$FeedCursorImpl(
      {@JsonKey(name: 'cursor_created_at') required this.createdAt,
      @JsonKey(name: 'cursor_id') required this.id})
      : super._();

<<<<<<< HEAD:lib/features/feed/data/models/comment_cursor_model.freezed.dart
class _CommentCursorModel extends CommentCursorModel {
  const _CommentCursorModel({@JsonKey(name: 'cursor_created_at') required this.createdAt, @JsonKey(name: 'cursor_id') required this.id}): super._();
  factory _CommentCursorModel.fromJson(Map<String, dynamic> json) => _$CommentCursorModelFromJson(json);

@override@JsonKey(name: 'cursor_created_at') final  DateTime createdAt;
@override@JsonKey(name: 'cursor_id') final  String id;

/// Create a copy of CommentCursorModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommentCursorModelCopyWith<_CommentCursorModel> get copyWith => __$CommentCursorModelCopyWithImpl<_CommentCursorModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CommentCursorModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommentCursorModel&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,id);

@override
String toString() {
  return 'CommentCursorModel(createdAt: $createdAt, id: $id)';
}


}

/// @nodoc
abstract mixin class _$CommentCursorModelCopyWith<$Res> implements $CommentCursorModelCopyWith<$Res> {
  factory _$CommentCursorModelCopyWith(_CommentCursorModel value, $Res Function(_CommentCursorModel) _then) = __$CommentCursorModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'cursor_created_at') DateTime createdAt,@JsonKey(name: 'cursor_id') String id
});




}
/// @nodoc
class __$CommentCursorModelCopyWithImpl<$Res>
    implements _$CommentCursorModelCopyWith<$Res> {
  __$CommentCursorModelCopyWithImpl(this._self, this._then);

  final _CommentCursorModel _self;
  final $Res Function(_CommentCursorModel) _then;

/// Create a copy of CommentCursorModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdAt = null,Object? id = null,}) {
  return _then(_CommentCursorModel(
createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
=======
  factory _$FeedCursorImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedCursorImplFromJson(json);

// Pakai @JsonKey supaya nama field di JSON tetap sesuai map kamu.
  @override
  @JsonKey(name: 'cursor_created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'cursor_id')
  final String id;

  @override
  String toString() {
    return 'FeedCursor(createdAt: $createdAt, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedCursorImpl &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, createdAt, id);

  /// Create a copy of FeedCursor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedCursorImplCopyWith<_$FeedCursorImpl> get copyWith =>
      __$$FeedCursorImplCopyWithImpl<_$FeedCursorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedCursorImplToJson(
      this,
    );
  }
}

abstract class _FeedCursor extends FeedCursor {
  const factory _FeedCursor(
      {@JsonKey(name: 'cursor_created_at') required final DateTime createdAt,
      @JsonKey(name: 'cursor_id') required final String id}) = _$FeedCursorImpl;
  const _FeedCursor._() : super._();

  factory _FeedCursor.fromJson(Map<String, dynamic> json) =
      _$FeedCursorImpl.fromJson;

// Pakai @JsonKey supaya nama field di JSON tetap sesuai map kamu.
  @override
  @JsonKey(name: 'cursor_created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'cursor_id')
  String get id;

  /// Create a copy of FeedCursor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeedCursorImplCopyWith<_$FeedCursorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
>>>>>>> fd2118c7948154593cd39da330b75baffc54f46d:lib/features/feed/data/models/feed_cursor.freezed.dart
