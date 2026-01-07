// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_pagination_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FeedPaginationModel {

 List<FeedModel> get posts; bool get hasMore;@JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson) FeedCursor? get nextCursor;
/// Create a copy of FeedPaginationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeedPaginationModelCopyWith<FeedPaginationModel> get copyWith => _$FeedPaginationModelCopyWithImpl<FeedPaginationModel>(this as FeedPaginationModel, _$identity);

  /// Serializes this FeedPaginationModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedPaginationModel&&const DeepCollectionEquality().equals(other.posts, posts)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(posts),hasMore,nextCursor);

@override
String toString() {
  return 'FeedPaginationModel(posts: $posts, hasMore: $hasMore, nextCursor: $nextCursor)';
}


}

/// @nodoc
abstract mixin class $FeedPaginationModelCopyWith<$Res>  {
  factory $FeedPaginationModelCopyWith(FeedPaginationModel value, $Res Function(FeedPaginationModel) _then) = _$FeedPaginationModelCopyWithImpl;
@useResult
$Res call({
 List<FeedModel> posts, bool hasMore,@JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson) FeedCursor? nextCursor
});


$FeedCursorCopyWith<$Res>? get nextCursor;

}
/// @nodoc
class _$FeedPaginationModelCopyWithImpl<$Res>
    implements $FeedPaginationModelCopyWith<$Res> {
  _$FeedPaginationModelCopyWithImpl(this._self, this._then);

  final FeedPaginationModel _self;
  final $Res Function(FeedPaginationModel) _then;

/// Create a copy of FeedPaginationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? posts = null,Object? hasMore = null,Object? nextCursor = freezed,}) {
  return _then(_self.copyWith(
posts: null == posts ? _self.posts : posts // ignore: cast_nullable_to_non_nullable
as List<FeedModel>,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as FeedCursor?,
  ));
}
/// Create a copy of FeedPaginationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeedCursorCopyWith<$Res>? get nextCursor {
    if (_self.nextCursor == null) {
    return null;
  }

  return $FeedCursorCopyWith<$Res>(_self.nextCursor!, (value) {
    return _then(_self.copyWith(nextCursor: value));
  });
}
}


/// Adds pattern-matching-related methods to [FeedPaginationModel].
extension FeedPaginationModelPatterns on FeedPaginationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeedPaginationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeedPaginationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeedPaginationModel value)  $default,){
final _that = this;
switch (_that) {
case _FeedPaginationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeedPaginationModel value)?  $default,){
final _that = this;
switch (_that) {
case _FeedPaginationModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<FeedModel> posts,  bool hasMore, @JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson)  FeedCursor? nextCursor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeedPaginationModel() when $default != null:
return $default(_that.posts,_that.hasMore,_that.nextCursor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<FeedModel> posts,  bool hasMore, @JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson)  FeedCursor? nextCursor)  $default,) {final _that = this;
switch (_that) {
case _FeedPaginationModel():
return $default(_that.posts,_that.hasMore,_that.nextCursor);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<FeedModel> posts,  bool hasMore, @JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson)  FeedCursor? nextCursor)?  $default,) {final _that = this;
switch (_that) {
case _FeedPaginationModel() when $default != null:
return $default(_that.posts,_that.hasMore,_that.nextCursor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FeedPaginationModel extends FeedPaginationModel {
  const _FeedPaginationModel({required final  List<FeedModel> posts, required this.hasMore, @JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson) this.nextCursor}): _posts = posts,super._();
  factory _FeedPaginationModel.fromJson(Map<String, dynamic> json) => _$FeedPaginationModelFromJson(json);

 final  List<FeedModel> _posts;
@override List<FeedModel> get posts {
  if (_posts is EqualUnmodifiableListView) return _posts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_posts);
}

@override final  bool hasMore;
@override@JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson) final  FeedCursor? nextCursor;

/// Create a copy of FeedPaginationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeedPaginationModelCopyWith<_FeedPaginationModel> get copyWith => __$FeedPaginationModelCopyWithImpl<_FeedPaginationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeedPaginationModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeedPaginationModel&&const DeepCollectionEquality().equals(other._posts, _posts)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_posts),hasMore,nextCursor);

@override
String toString() {
  return 'FeedPaginationModel(posts: $posts, hasMore: $hasMore, nextCursor: $nextCursor)';
}


}

/// @nodoc
abstract mixin class _$FeedPaginationModelCopyWith<$Res> implements $FeedPaginationModelCopyWith<$Res> {
  factory _$FeedPaginationModelCopyWith(_FeedPaginationModel value, $Res Function(_FeedPaginationModel) _then) = __$FeedPaginationModelCopyWithImpl;
@override @useResult
$Res call({
 List<FeedModel> posts, bool hasMore,@JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson) FeedCursor? nextCursor
});


@override $FeedCursorCopyWith<$Res>? get nextCursor;

}
/// @nodoc
class __$FeedPaginationModelCopyWithImpl<$Res>
    implements _$FeedPaginationModelCopyWith<$Res> {
  __$FeedPaginationModelCopyWithImpl(this._self, this._then);

  final _FeedPaginationModel _self;
  final $Res Function(_FeedPaginationModel) _then;

/// Create a copy of FeedPaginationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? posts = null,Object? hasMore = null,Object? nextCursor = freezed,}) {
  return _then(_FeedPaginationModel(
posts: null == posts ? _self._posts : posts // ignore: cast_nullable_to_non_nullable
as List<FeedModel>,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as FeedCursor?,
  ));
}

/// Create a copy of FeedPaginationModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeedCursorCopyWith<$Res>? get nextCursor {
    if (_self.nextCursor == null) {
    return null;
  }

  return $FeedCursorCopyWith<$Res>(_self.nextCursor!, (value) {
    return _then(_self.copyWith(nextCursor: value));
  });
}
}

// dart format on
