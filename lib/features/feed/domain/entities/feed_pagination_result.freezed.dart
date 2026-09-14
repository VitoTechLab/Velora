// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_pagination_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FeedPaginationResult {

 List<FeedEntity> get posts; bool get hasMore; FeedCursorEntity? get cursor;
/// Create a copy of FeedPaginationResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeedPaginationResultCopyWith<FeedPaginationResult> get copyWith => _$FeedPaginationResultCopyWithImpl<FeedPaginationResult>(this as FeedPaginationResult, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedPaginationResult&&const DeepCollectionEquality().equals(other.posts, posts)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.cursor, cursor) || other.cursor == cursor));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(posts),hasMore,cursor);

@override
String toString() {
  return 'FeedPaginationResult(posts: $posts, hasMore: $hasMore, cursor: $cursor)';
}


}

/// @nodoc
abstract mixin class $FeedPaginationResultCopyWith<$Res>  {
  factory $FeedPaginationResultCopyWith(FeedPaginationResult value, $Res Function(FeedPaginationResult) _then) = _$FeedPaginationResultCopyWithImpl;
@useResult
$Res call({
 List<FeedEntity> posts, bool hasMore, FeedCursorEntity? cursor
});




}
/// @nodoc
class _$FeedPaginationResultCopyWithImpl<$Res>
    implements $FeedPaginationResultCopyWith<$Res> {
  _$FeedPaginationResultCopyWithImpl(this._self, this._then);

  final FeedPaginationResult _self;
  final $Res Function(FeedPaginationResult) _then;

/// Create a copy of FeedPaginationResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? posts = null,Object? hasMore = null,Object? cursor = freezed,}) {
  return _then(_self.copyWith(
posts: null == posts ? _self.posts : posts // ignore: cast_nullable_to_non_nullable
as List<FeedEntity>,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,cursor: freezed == cursor ? _self.cursor : cursor // ignore: cast_nullable_to_non_nullable
as FeedCursorEntity?,
  ));
}

}


/// Adds pattern-matching-related methods to [FeedPaginationResult].
extension FeedPaginationResultPatterns on FeedPaginationResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeedPaginationResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeedPaginationResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeedPaginationResult value)  $default,){
final _that = this;
switch (_that) {
case _FeedPaginationResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeedPaginationResult value)?  $default,){
final _that = this;
switch (_that) {
case _FeedPaginationResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<FeedEntity> posts,  bool hasMore,  FeedCursorEntity? cursor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeedPaginationResult() when $default != null:
return $default(_that.posts,_that.hasMore,_that.cursor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<FeedEntity> posts,  bool hasMore,  FeedCursorEntity? cursor)  $default,) {final _that = this;
switch (_that) {
case _FeedPaginationResult():
return $default(_that.posts,_that.hasMore,_that.cursor);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<FeedEntity> posts,  bool hasMore,  FeedCursorEntity? cursor)?  $default,) {final _that = this;
switch (_that) {
case _FeedPaginationResult() when $default != null:
return $default(_that.posts,_that.hasMore,_that.cursor);case _:
  return null;

}
}

}

/// @nodoc


class _FeedPaginationResult implements FeedPaginationResult {
  const _FeedPaginationResult({required final  List<FeedEntity> posts, required this.hasMore, this.cursor}): _posts = posts;
  

 final  List<FeedEntity> _posts;
@override List<FeedEntity> get posts {
  if (_posts is EqualUnmodifiableListView) return _posts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_posts);
}

@override final  bool hasMore;
@override final  FeedCursorEntity? cursor;

/// Create a copy of FeedPaginationResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeedPaginationResultCopyWith<_FeedPaginationResult> get copyWith => __$FeedPaginationResultCopyWithImpl<_FeedPaginationResult>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeedPaginationResult&&const DeepCollectionEquality().equals(other._posts, _posts)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.cursor, cursor) || other.cursor == cursor));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_posts),hasMore,cursor);

@override
String toString() {
  return 'FeedPaginationResult(posts: $posts, hasMore: $hasMore, cursor: $cursor)';
}


}

/// @nodoc
abstract mixin class _$FeedPaginationResultCopyWith<$Res> implements $FeedPaginationResultCopyWith<$Res> {
  factory _$FeedPaginationResultCopyWith(_FeedPaginationResult value, $Res Function(_FeedPaginationResult) _then) = __$FeedPaginationResultCopyWithImpl;
@override @useResult
$Res call({
 List<FeedEntity> posts, bool hasMore, FeedCursorEntity? cursor
});




}
/// @nodoc
class __$FeedPaginationResultCopyWithImpl<$Res>
    implements _$FeedPaginationResultCopyWith<$Res> {
  __$FeedPaginationResultCopyWithImpl(this._self, this._then);

  final _FeedPaginationResult _self;
  final $Res Function(_FeedPaginationResult) _then;

/// Create a copy of FeedPaginationResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? posts = null,Object? hasMore = null,Object? cursor = freezed,}) {
  return _then(_FeedPaginationResult(
posts: null == posts ? _self._posts : posts // ignore: cast_nullable_to_non_nullable
as List<FeedEntity>,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,cursor: freezed == cursor ? _self.cursor : cursor // ignore: cast_nullable_to_non_nullable
as FeedCursorEntity?,
  ));
}


}

// dart format on
