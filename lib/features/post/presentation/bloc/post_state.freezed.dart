// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PostState {

 FeedEntity? get createdPost; bool get isCreatingPost; String? get errorCreatePost; String? get message;
/// Create a copy of PostState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostStateCopyWith<PostState> get copyWith => _$PostStateCopyWithImpl<PostState>(this as PostState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostState&&(identical(other.createdPost, createdPost) || other.createdPost == createdPost)&&(identical(other.isCreatingPost, isCreatingPost) || other.isCreatingPost == isCreatingPost)&&(identical(other.errorCreatePost, errorCreatePost) || other.errorCreatePost == errorCreatePost)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,createdPost,isCreatingPost,errorCreatePost,message);

@override
String toString() {
  return 'PostState(createdPost: $createdPost, isCreatingPost: $isCreatingPost, errorCreatePost: $errorCreatePost, message: $message)';
}


}

/// @nodoc
abstract mixin class $PostStateCopyWith<$Res>  {
  factory $PostStateCopyWith(PostState value, $Res Function(PostState) _then) = _$PostStateCopyWithImpl;
@useResult
$Res call({
 FeedEntity? createdPost, bool isCreatingPost, String? errorCreatePost, String? message
});


$FeedEntityCopyWith<$Res>? get createdPost;

}
/// @nodoc
class _$PostStateCopyWithImpl<$Res>
    implements $PostStateCopyWith<$Res> {
  _$PostStateCopyWithImpl(this._self, this._then);

  final PostState _self;
  final $Res Function(PostState) _then;

/// Create a copy of PostState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdPost = freezed,Object? isCreatingPost = null,Object? errorCreatePost = freezed,Object? message = freezed,}) {
  return _then(_self.copyWith(
createdPost: freezed == createdPost ? _self.createdPost : createdPost // ignore: cast_nullable_to_non_nullable
as FeedEntity?,isCreatingPost: null == isCreatingPost ? _self.isCreatingPost : isCreatingPost // ignore: cast_nullable_to_non_nullable
as bool,errorCreatePost: freezed == errorCreatePost ? _self.errorCreatePost : errorCreatePost // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of PostState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeedEntityCopyWith<$Res>? get createdPost {
    if (_self.createdPost == null) {
    return null;
  }

  return $FeedEntityCopyWith<$Res>(_self.createdPost!, (value) {
    return _then(_self.copyWith(createdPost: value));
  });
}
}


/// Adds pattern-matching-related methods to [PostState].
extension PostStatePatterns on PostState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostState value)  $default,){
final _that = this;
switch (_that) {
case _PostState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostState value)?  $default,){
final _that = this;
switch (_that) {
case _PostState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FeedEntity? createdPost,  bool isCreatingPost,  String? errorCreatePost,  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostState() when $default != null:
return $default(_that.createdPost,_that.isCreatingPost,_that.errorCreatePost,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FeedEntity? createdPost,  bool isCreatingPost,  String? errorCreatePost,  String? message)  $default,) {final _that = this;
switch (_that) {
case _PostState():
return $default(_that.createdPost,_that.isCreatingPost,_that.errorCreatePost,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FeedEntity? createdPost,  bool isCreatingPost,  String? errorCreatePost,  String? message)?  $default,) {final _that = this;
switch (_that) {
case _PostState() when $default != null:
return $default(_that.createdPost,_that.isCreatingPost,_that.errorCreatePost,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _PostState implements PostState {
  const _PostState({this.createdPost, this.isCreatingPost = false, this.errorCreatePost, this.message});
  

@override final  FeedEntity? createdPost;
@override@JsonKey() final  bool isCreatingPost;
@override final  String? errorCreatePost;
@override final  String? message;

/// Create a copy of PostState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostStateCopyWith<_PostState> get copyWith => __$PostStateCopyWithImpl<_PostState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostState&&(identical(other.createdPost, createdPost) || other.createdPost == createdPost)&&(identical(other.isCreatingPost, isCreatingPost) || other.isCreatingPost == isCreatingPost)&&(identical(other.errorCreatePost, errorCreatePost) || other.errorCreatePost == errorCreatePost)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,createdPost,isCreatingPost,errorCreatePost,message);

@override
String toString() {
  return 'PostState(createdPost: $createdPost, isCreatingPost: $isCreatingPost, errorCreatePost: $errorCreatePost, message: $message)';
}


}

/// @nodoc
abstract mixin class _$PostStateCopyWith<$Res> implements $PostStateCopyWith<$Res> {
  factory _$PostStateCopyWith(_PostState value, $Res Function(_PostState) _then) = __$PostStateCopyWithImpl;
@override @useResult
$Res call({
 FeedEntity? createdPost, bool isCreatingPost, String? errorCreatePost, String? message
});


@override $FeedEntityCopyWith<$Res>? get createdPost;

}
/// @nodoc
class __$PostStateCopyWithImpl<$Res>
    implements _$PostStateCopyWith<$Res> {
  __$PostStateCopyWithImpl(this._self, this._then);

  final _PostState _self;
  final $Res Function(_PostState) _then;

/// Create a copy of PostState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdPost = freezed,Object? isCreatingPost = null,Object? errorCreatePost = freezed,Object? message = freezed,}) {
  return _then(_PostState(
createdPost: freezed == createdPost ? _self.createdPost : createdPost // ignore: cast_nullable_to_non_nullable
as FeedEntity?,isCreatingPost: null == isCreatingPost ? _self.isCreatingPost : isCreatingPost // ignore: cast_nullable_to_non_nullable
as bool,errorCreatePost: freezed == errorCreatePost ? _self.errorCreatePost : errorCreatePost // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of PostState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeedEntityCopyWith<$Res>? get createdPost {
    if (_self.createdPost == null) {
    return null;
  }

  return $FeedEntityCopyWith<$Res>(_self.createdPost!, (value) {
    return _then(_self.copyWith(createdPost: value));
  });
}
}

// dart format on
