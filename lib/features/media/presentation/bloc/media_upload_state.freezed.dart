// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_upload_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MediaUploadState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MediaUploadState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MediaUploadState()';
}


}

/// @nodoc
class $MediaUploadStateCopyWith<$Res>  {
$MediaUploadStateCopyWith(MediaUploadState _, $Res Function(MediaUploadState) __);
}


/// Adds pattern-matching-related methods to [MediaUploadState].
extension MediaUploadStatePatterns on MediaUploadState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( MediaUploadInitial value)?  initial,TResult Function( MediaUploadLoading value)?  uploading,TResult Function( MediaUploadSuccess value)?  success,TResult Function( MediaUploadFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case MediaUploadInitial() when initial != null:
return initial(_that);case MediaUploadLoading() when uploading != null:
return uploading(_that);case MediaUploadSuccess() when success != null:
return success(_that);case MediaUploadFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( MediaUploadInitial value)  initial,required TResult Function( MediaUploadLoading value)  uploading,required TResult Function( MediaUploadSuccess value)  success,required TResult Function( MediaUploadFailure value)  failure,}){
final _that = this;
switch (_that) {
case MediaUploadInitial():
return initial(_that);case MediaUploadLoading():
return uploading(_that);case MediaUploadSuccess():
return success(_that);case MediaUploadFailure():
return failure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( MediaUploadInitial value)?  initial,TResult? Function( MediaUploadLoading value)?  uploading,TResult? Function( MediaUploadSuccess value)?  success,TResult? Function( MediaUploadFailure value)?  failure,}){
final _that = this;
switch (_that) {
case MediaUploadInitial() when initial != null:
return initial(_that);case MediaUploadLoading() when uploading != null:
return uploading(_that);case MediaUploadSuccess() when success != null:
return success(_that);case MediaUploadFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  uploading,TResult Function( List<MediaAsset> assets)?  success,TResult Function( String message)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case MediaUploadInitial() when initial != null:
return initial();case MediaUploadLoading() when uploading != null:
return uploading();case MediaUploadSuccess() when success != null:
return success(_that.assets);case MediaUploadFailure() when failure != null:
return failure(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  uploading,required TResult Function( List<MediaAsset> assets)  success,required TResult Function( String message)  failure,}) {final _that = this;
switch (_that) {
case MediaUploadInitial():
return initial();case MediaUploadLoading():
return uploading();case MediaUploadSuccess():
return success(_that.assets);case MediaUploadFailure():
return failure(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  uploading,TResult? Function( List<MediaAsset> assets)?  success,TResult? Function( String message)?  failure,}) {final _that = this;
switch (_that) {
case MediaUploadInitial() when initial != null:
return initial();case MediaUploadLoading() when uploading != null:
return uploading();case MediaUploadSuccess() when success != null:
return success(_that.assets);case MediaUploadFailure() when failure != null:
return failure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class MediaUploadInitial implements MediaUploadState {
  const MediaUploadInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MediaUploadInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MediaUploadState.initial()';
}


}




/// @nodoc


class MediaUploadLoading implements MediaUploadState {
  const MediaUploadLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MediaUploadLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MediaUploadState.uploading()';
}


}




/// @nodoc


class MediaUploadSuccess implements MediaUploadState {
  const MediaUploadSuccess(final  List<MediaAsset> assets): _assets = assets;
  

 final  List<MediaAsset> _assets;
 List<MediaAsset> get assets {
  if (_assets is EqualUnmodifiableListView) return _assets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_assets);
}


/// Create a copy of MediaUploadState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MediaUploadSuccessCopyWith<MediaUploadSuccess> get copyWith => _$MediaUploadSuccessCopyWithImpl<MediaUploadSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MediaUploadSuccess&&const DeepCollectionEquality().equals(other._assets, _assets));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_assets));

@override
String toString() {
  return 'MediaUploadState.success(assets: $assets)';
}


}

/// @nodoc
abstract mixin class $MediaUploadSuccessCopyWith<$Res> implements $MediaUploadStateCopyWith<$Res> {
  factory $MediaUploadSuccessCopyWith(MediaUploadSuccess value, $Res Function(MediaUploadSuccess) _then) = _$MediaUploadSuccessCopyWithImpl;
@useResult
$Res call({
 List<MediaAsset> assets
});




}
/// @nodoc
class _$MediaUploadSuccessCopyWithImpl<$Res>
    implements $MediaUploadSuccessCopyWith<$Res> {
  _$MediaUploadSuccessCopyWithImpl(this._self, this._then);

  final MediaUploadSuccess _self;
  final $Res Function(MediaUploadSuccess) _then;

/// Create a copy of MediaUploadState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? assets = null,}) {
  return _then(MediaUploadSuccess(
null == assets ? _self._assets : assets // ignore: cast_nullable_to_non_nullable
as List<MediaAsset>,
  ));
}


}

/// @nodoc


class MediaUploadFailure implements MediaUploadState {
  const MediaUploadFailure(this.message);
  

 final  String message;

/// Create a copy of MediaUploadState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MediaUploadFailureCopyWith<MediaUploadFailure> get copyWith => _$MediaUploadFailureCopyWithImpl<MediaUploadFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MediaUploadFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'MediaUploadState.failure(message: $message)';
}


}

/// @nodoc
abstract mixin class $MediaUploadFailureCopyWith<$Res> implements $MediaUploadStateCopyWith<$Res> {
  factory $MediaUploadFailureCopyWith(MediaUploadFailure value, $Res Function(MediaUploadFailure) _then) = _$MediaUploadFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$MediaUploadFailureCopyWithImpl<$Res>
    implements $MediaUploadFailureCopyWith<$Res> {
  _$MediaUploadFailureCopyWithImpl(this._self, this._then);

  final MediaUploadFailure _self;
  final $Res Function(MediaUploadFailure) _then;

/// Create a copy of MediaUploadState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(MediaUploadFailure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
