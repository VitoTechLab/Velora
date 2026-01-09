// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_pagination_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CommentPaginationModel {

 List<CommentModel> get comments; bool get hasMore;@JsonKey(fromJson: _commentCursorFromJson, toJson: _commentCursorToJson) CommentCursor? get nextCursor;
/// Create a copy of CommentPaginationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommentPaginationModelCopyWith<CommentPaginationModel> get copyWith => _$CommentPaginationModelCopyWithImpl<CommentPaginationModel>(this as CommentPaginationModel, _$identity);

  /// Serializes this CommentPaginationModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommentPaginationModel&&const DeepCollectionEquality().equals(other.comments, comments)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(comments),hasMore,nextCursor);

@override
String toString() {
  return 'CommentPaginationModel(comments: $comments, hasMore: $hasMore, nextCursor: $nextCursor)';
}


}

/// @nodoc
abstract mixin class $CommentPaginationModelCopyWith<$Res>  {
  factory $CommentPaginationModelCopyWith(CommentPaginationModel value, $Res Function(CommentPaginationModel) _then) = _$CommentPaginationModelCopyWithImpl;
@useResult
$Res call({
 List<CommentModel> comments, bool hasMore,@JsonKey(fromJson: _commentCursorFromJson, toJson: _commentCursorToJson) CommentCursor? nextCursor
});


$CommentCursorCopyWith<$Res>? get nextCursor;

}
/// @nodoc
class _$CommentPaginationModelCopyWithImpl<$Res>
    implements $CommentPaginationModelCopyWith<$Res> {
  _$CommentPaginationModelCopyWithImpl(this._self, this._then);

  final CommentPaginationModel _self;
  final $Res Function(CommentPaginationModel) _then;

/// Create a copy of CommentPaginationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? comments = null,Object? hasMore = null,Object? nextCursor = freezed,}) {
  return _then(_self.copyWith(
comments: null == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as List<CommentModel>,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as CommentCursor?,
  ));
}
/// Create a copy of CommentPaginationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommentCursorCopyWith<$Res>? get nextCursor {
    if (_self.nextCursor == null) {
    return null;
  }

  return $CommentCursorCopyWith<$Res>(_self.nextCursor!, (value) {
    return _then(_self.copyWith(nextCursor: value));
  });
}
}


/// Adds pattern-matching-related methods to [CommentPaginationModel].
extension CommentPaginationModelPatterns on CommentPaginationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommentPaginationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommentPaginationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommentPaginationModel value)  $default,){
final _that = this;
switch (_that) {
case _CommentPaginationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommentPaginationModel value)?  $default,){
final _that = this;
switch (_that) {
case _CommentPaginationModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CommentModel> comments,  bool hasMore, @JsonKey(fromJson: _commentCursorFromJson, toJson: _commentCursorToJson)  CommentCursor? nextCursor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommentPaginationModel() when $default != null:
return $default(_that.comments,_that.hasMore,_that.nextCursor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CommentModel> comments,  bool hasMore, @JsonKey(fromJson: _commentCursorFromJson, toJson: _commentCursorToJson)  CommentCursor? nextCursor)  $default,) {final _that = this;
switch (_that) {
case _CommentPaginationModel():
return $default(_that.comments,_that.hasMore,_that.nextCursor);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CommentModel> comments,  bool hasMore, @JsonKey(fromJson: _commentCursorFromJson, toJson: _commentCursorToJson)  CommentCursor? nextCursor)?  $default,) {final _that = this;
switch (_that) {
case _CommentPaginationModel() when $default != null:
return $default(_that.comments,_that.hasMore,_that.nextCursor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CommentPaginationModel extends CommentPaginationModel {
  const _CommentPaginationModel({required final  List<CommentModel> comments, required this.hasMore, @JsonKey(fromJson: _commentCursorFromJson, toJson: _commentCursorToJson) this.nextCursor}): _comments = comments,super._();
  factory _CommentPaginationModel.fromJson(Map<String, dynamic> json) => _$CommentPaginationModelFromJson(json);

 final  List<CommentModel> _comments;
@override List<CommentModel> get comments {
  if (_comments is EqualUnmodifiableListView) return _comments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_comments);
}

@override final  bool hasMore;
@override@JsonKey(fromJson: _commentCursorFromJson, toJson: _commentCursorToJson) final  CommentCursor? nextCursor;

/// Create a copy of CommentPaginationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommentPaginationModelCopyWith<_CommentPaginationModel> get copyWith => __$CommentPaginationModelCopyWithImpl<_CommentPaginationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CommentPaginationModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommentPaginationModel&&const DeepCollectionEquality().equals(other._comments, _comments)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_comments),hasMore,nextCursor);

@override
String toString() {
  return 'CommentPaginationModel(comments: $comments, hasMore: $hasMore, nextCursor: $nextCursor)';
}


}

/// @nodoc
abstract mixin class _$CommentPaginationModelCopyWith<$Res> implements $CommentPaginationModelCopyWith<$Res> {
  factory _$CommentPaginationModelCopyWith(_CommentPaginationModel value, $Res Function(_CommentPaginationModel) _then) = __$CommentPaginationModelCopyWithImpl;
@override @useResult
$Res call({
 List<CommentModel> comments, bool hasMore,@JsonKey(fromJson: _commentCursorFromJson, toJson: _commentCursorToJson) CommentCursor? nextCursor
});


@override $CommentCursorCopyWith<$Res>? get nextCursor;

}
/// @nodoc
class __$CommentPaginationModelCopyWithImpl<$Res>
    implements _$CommentPaginationModelCopyWith<$Res> {
  __$CommentPaginationModelCopyWithImpl(this._self, this._then);

  final _CommentPaginationModel _self;
  final $Res Function(_CommentPaginationModel) _then;

/// Create a copy of CommentPaginationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? comments = null,Object? hasMore = null,Object? nextCursor = freezed,}) {
  return _then(_CommentPaginationModel(
comments: null == comments ? _self._comments : comments // ignore: cast_nullable_to_non_nullable
as List<CommentModel>,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as CommentCursor?,
  ));
}

/// Create a copy of CommentPaginationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CommentCursorCopyWith<$Res>? get nextCursor {
    if (_self.nextCursor == null) {
    return null;
  }

  return $CommentCursorCopyWith<$Res>(_self.nextCursor!, (value) {
    return _then(_self.copyWith(nextCursor: value));
  });
}
}

// dart format on
