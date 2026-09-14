// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_pagination_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CommentPaginationResult {

 List<CommentEntity> get comments; bool get hasMore; CommentCursorEntity? get cursor;
/// Create a copy of CommentPaginationResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommentPaginationResultCopyWith<CommentPaginationResult> get copyWith => _$CommentPaginationResultCopyWithImpl<CommentPaginationResult>(this as CommentPaginationResult, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommentPaginationResult&&const DeepCollectionEquality().equals(other.comments, comments)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.cursor, cursor) || other.cursor == cursor));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(comments),hasMore,cursor);

@override
String toString() {
  return 'CommentPaginationResult(comments: $comments, hasMore: $hasMore, cursor: $cursor)';
}


}

/// @nodoc
abstract mixin class $CommentPaginationResultCopyWith<$Res>  {
  factory $CommentPaginationResultCopyWith(CommentPaginationResult value, $Res Function(CommentPaginationResult) _then) = _$CommentPaginationResultCopyWithImpl;
@useResult
$Res call({
 List<CommentEntity> comments, bool hasMore, CommentCursorEntity? cursor
});




}
/// @nodoc
class _$CommentPaginationResultCopyWithImpl<$Res>
    implements $CommentPaginationResultCopyWith<$Res> {
  _$CommentPaginationResultCopyWithImpl(this._self, this._then);

  final CommentPaginationResult _self;
  final $Res Function(CommentPaginationResult) _then;

/// Create a copy of CommentPaginationResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? comments = null,Object? hasMore = null,Object? cursor = freezed,}) {
  return _then(_self.copyWith(
comments: null == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as List<CommentEntity>,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,cursor: freezed == cursor ? _self.cursor : cursor // ignore: cast_nullable_to_non_nullable
as CommentCursorEntity?,
  ));
}

}


/// Adds pattern-matching-related methods to [CommentPaginationResult].
extension CommentPaginationResultPatterns on CommentPaginationResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommentPaginationResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommentPaginationResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommentPaginationResult value)  $default,){
final _that = this;
switch (_that) {
case _CommentPaginationResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommentPaginationResult value)?  $default,){
final _that = this;
switch (_that) {
case _CommentPaginationResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CommentEntity> comments,  bool hasMore,  CommentCursorEntity? cursor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommentPaginationResult() when $default != null:
return $default(_that.comments,_that.hasMore,_that.cursor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CommentEntity> comments,  bool hasMore,  CommentCursorEntity? cursor)  $default,) {final _that = this;
switch (_that) {
case _CommentPaginationResult():
return $default(_that.comments,_that.hasMore,_that.cursor);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CommentEntity> comments,  bool hasMore,  CommentCursorEntity? cursor)?  $default,) {final _that = this;
switch (_that) {
case _CommentPaginationResult() when $default != null:
return $default(_that.comments,_that.hasMore,_that.cursor);case _:
  return null;

}
}

}

/// @nodoc


class _CommentPaginationResult implements CommentPaginationResult {
  const _CommentPaginationResult({required final  List<CommentEntity> comments, required this.hasMore, this.cursor}): _comments = comments;
  

 final  List<CommentEntity> _comments;
@override List<CommentEntity> get comments {
  if (_comments is EqualUnmodifiableListView) return _comments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_comments);
}

@override final  bool hasMore;
@override final  CommentCursorEntity? cursor;

/// Create a copy of CommentPaginationResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommentPaginationResultCopyWith<_CommentPaginationResult> get copyWith => __$CommentPaginationResultCopyWithImpl<_CommentPaginationResult>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommentPaginationResult&&const DeepCollectionEquality().equals(other._comments, _comments)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.cursor, cursor) || other.cursor == cursor));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_comments),hasMore,cursor);

@override
String toString() {
  return 'CommentPaginationResult(comments: $comments, hasMore: $hasMore, cursor: $cursor)';
}


}

/// @nodoc
abstract mixin class _$CommentPaginationResultCopyWith<$Res> implements $CommentPaginationResultCopyWith<$Res> {
  factory _$CommentPaginationResultCopyWith(_CommentPaginationResult value, $Res Function(_CommentPaginationResult) _then) = __$CommentPaginationResultCopyWithImpl;
@override @useResult
$Res call({
 List<CommentEntity> comments, bool hasMore, CommentCursorEntity? cursor
});




}
/// @nodoc
class __$CommentPaginationResultCopyWithImpl<$Res>
    implements _$CommentPaginationResultCopyWith<$Res> {
  __$CommentPaginationResultCopyWithImpl(this._self, this._then);

  final _CommentPaginationResult _self;
  final $Res Function(_CommentPaginationResult) _then;

/// Create a copy of CommentPaginationResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? comments = null,Object? hasMore = null,Object? cursor = freezed,}) {
  return _then(_CommentPaginationResult(
comments: null == comments ? _self._comments : comments // ignore: cast_nullable_to_non_nullable
as List<CommentEntity>,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,cursor: freezed == cursor ? _self.cursor : cursor // ignore: cast_nullable_to_non_nullable
as CommentCursorEntity?,
  ));
}


}

// dart format on
