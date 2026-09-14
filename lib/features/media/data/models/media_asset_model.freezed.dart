// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_asset_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MediaAssetModel {

@JsonKey(name: 'public_id') String get publicId;@JsonKey(name: 'secure_url') String get secureUrl;@JsonKey(name: 'resource_type') String get resourceType;@JsonKey(name: 'format') String get format;@JsonKey(name: 'bytes') int get bytes;@JsonKey(name: 'width') int get width;@JsonKey(name: 'height') int get height;@JsonKey(name: 'duration') double? get duration;
/// Create a copy of MediaAssetModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MediaAssetModelCopyWith<MediaAssetModel> get copyWith => _$MediaAssetModelCopyWithImpl<MediaAssetModel>(this as MediaAssetModel, _$identity);

  /// Serializes this MediaAssetModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MediaAssetModel&&(identical(other.publicId, publicId) || other.publicId == publicId)&&(identical(other.secureUrl, secureUrl) || other.secureUrl == secureUrl)&&(identical(other.resourceType, resourceType) || other.resourceType == resourceType)&&(identical(other.format, format) || other.format == format)&&(identical(other.bytes, bytes) || other.bytes == bytes)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.duration, duration) || other.duration == duration));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,publicId,secureUrl,resourceType,format,bytes,width,height,duration);

@override
String toString() {
  return 'MediaAssetModel(publicId: $publicId, secureUrl: $secureUrl, resourceType: $resourceType, format: $format, bytes: $bytes, width: $width, height: $height, duration: $duration)';
}


}

/// @nodoc
abstract mixin class $MediaAssetModelCopyWith<$Res>  {
  factory $MediaAssetModelCopyWith(MediaAssetModel value, $Res Function(MediaAssetModel) _then) = _$MediaAssetModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'public_id') String publicId,@JsonKey(name: 'secure_url') String secureUrl,@JsonKey(name: 'resource_type') String resourceType,@JsonKey(name: 'format') String format,@JsonKey(name: 'bytes') int bytes,@JsonKey(name: 'width') int width,@JsonKey(name: 'height') int height,@JsonKey(name: 'duration') double? duration
});




}
/// @nodoc
class _$MediaAssetModelCopyWithImpl<$Res>
    implements $MediaAssetModelCopyWith<$Res> {
  _$MediaAssetModelCopyWithImpl(this._self, this._then);

  final MediaAssetModel _self;
  final $Res Function(MediaAssetModel) _then;

/// Create a copy of MediaAssetModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? publicId = null,Object? secureUrl = null,Object? resourceType = null,Object? format = null,Object? bytes = null,Object? width = null,Object? height = null,Object? duration = freezed,}) {
  return _then(_self.copyWith(
publicId: null == publicId ? _self.publicId : publicId // ignore: cast_nullable_to_non_nullable
as String,secureUrl: null == secureUrl ? _self.secureUrl : secureUrl // ignore: cast_nullable_to_non_nullable
as String,resourceType: null == resourceType ? _self.resourceType : resourceType // ignore: cast_nullable_to_non_nullable
as String,format: null == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as String,bytes: null == bytes ? _self.bytes : bytes // ignore: cast_nullable_to_non_nullable
as int,width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [MediaAssetModel].
extension MediaAssetModelPatterns on MediaAssetModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MediaAssetModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MediaAssetModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MediaAssetModel value)  $default,){
final _that = this;
switch (_that) {
case _MediaAssetModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MediaAssetModel value)?  $default,){
final _that = this;
switch (_that) {
case _MediaAssetModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'public_id')  String publicId, @JsonKey(name: 'secure_url')  String secureUrl, @JsonKey(name: 'resource_type')  String resourceType, @JsonKey(name: 'format')  String format, @JsonKey(name: 'bytes')  int bytes, @JsonKey(name: 'width')  int width, @JsonKey(name: 'height')  int height, @JsonKey(name: 'duration')  double? duration)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MediaAssetModel() when $default != null:
return $default(_that.publicId,_that.secureUrl,_that.resourceType,_that.format,_that.bytes,_that.width,_that.height,_that.duration);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'public_id')  String publicId, @JsonKey(name: 'secure_url')  String secureUrl, @JsonKey(name: 'resource_type')  String resourceType, @JsonKey(name: 'format')  String format, @JsonKey(name: 'bytes')  int bytes, @JsonKey(name: 'width')  int width, @JsonKey(name: 'height')  int height, @JsonKey(name: 'duration')  double? duration)  $default,) {final _that = this;
switch (_that) {
case _MediaAssetModel():
return $default(_that.publicId,_that.secureUrl,_that.resourceType,_that.format,_that.bytes,_that.width,_that.height,_that.duration);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'public_id')  String publicId, @JsonKey(name: 'secure_url')  String secureUrl, @JsonKey(name: 'resource_type')  String resourceType, @JsonKey(name: 'format')  String format, @JsonKey(name: 'bytes')  int bytes, @JsonKey(name: 'width')  int width, @JsonKey(name: 'height')  int height, @JsonKey(name: 'duration')  double? duration)?  $default,) {final _that = this;
switch (_that) {
case _MediaAssetModel() when $default != null:
return $default(_that.publicId,_that.secureUrl,_that.resourceType,_that.format,_that.bytes,_that.width,_that.height,_that.duration);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MediaAssetModel implements MediaAssetModel {
  const _MediaAssetModel({@JsonKey(name: 'public_id') required this.publicId, @JsonKey(name: 'secure_url') required this.secureUrl, @JsonKey(name: 'resource_type') required this.resourceType, @JsonKey(name: 'format') required this.format, @JsonKey(name: 'bytes') required this.bytes, @JsonKey(name: 'width') this.width = 0, @JsonKey(name: 'height') this.height = 0, @JsonKey(name: 'duration') this.duration});
  factory _MediaAssetModel.fromJson(Map<String, dynamic> json) => _$MediaAssetModelFromJson(json);

@override@JsonKey(name: 'public_id') final  String publicId;
@override@JsonKey(name: 'secure_url') final  String secureUrl;
@override@JsonKey(name: 'resource_type') final  String resourceType;
@override@JsonKey(name: 'format') final  String format;
@override@JsonKey(name: 'bytes') final  int bytes;
@override@JsonKey(name: 'width') final  int width;
@override@JsonKey(name: 'height') final  int height;
@override@JsonKey(name: 'duration') final  double? duration;

/// Create a copy of MediaAssetModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MediaAssetModelCopyWith<_MediaAssetModel> get copyWith => __$MediaAssetModelCopyWithImpl<_MediaAssetModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MediaAssetModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MediaAssetModel&&(identical(other.publicId, publicId) || other.publicId == publicId)&&(identical(other.secureUrl, secureUrl) || other.secureUrl == secureUrl)&&(identical(other.resourceType, resourceType) || other.resourceType == resourceType)&&(identical(other.format, format) || other.format == format)&&(identical(other.bytes, bytes) || other.bytes == bytes)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.duration, duration) || other.duration == duration));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,publicId,secureUrl,resourceType,format,bytes,width,height,duration);

@override
String toString() {
  return 'MediaAssetModel(publicId: $publicId, secureUrl: $secureUrl, resourceType: $resourceType, format: $format, bytes: $bytes, width: $width, height: $height, duration: $duration)';
}


}

/// @nodoc
abstract mixin class _$MediaAssetModelCopyWith<$Res> implements $MediaAssetModelCopyWith<$Res> {
  factory _$MediaAssetModelCopyWith(_MediaAssetModel value, $Res Function(_MediaAssetModel) _then) = __$MediaAssetModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'public_id') String publicId,@JsonKey(name: 'secure_url') String secureUrl,@JsonKey(name: 'resource_type') String resourceType,@JsonKey(name: 'format') String format,@JsonKey(name: 'bytes') int bytes,@JsonKey(name: 'width') int width,@JsonKey(name: 'height') int height,@JsonKey(name: 'duration') double? duration
});




}
/// @nodoc
class __$MediaAssetModelCopyWithImpl<$Res>
    implements _$MediaAssetModelCopyWith<$Res> {
  __$MediaAssetModelCopyWithImpl(this._self, this._then);

  final _MediaAssetModel _self;
  final $Res Function(_MediaAssetModel) _then;

/// Create a copy of MediaAssetModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? publicId = null,Object? secureUrl = null,Object? resourceType = null,Object? format = null,Object? bytes = null,Object? width = null,Object? height = null,Object? duration = freezed,}) {
  return _then(_MediaAssetModel(
publicId: null == publicId ? _self.publicId : publicId // ignore: cast_nullable_to_non_nullable
as String,secureUrl: null == secureUrl ? _self.secureUrl : secureUrl // ignore: cast_nullable_to_non_nullable
as String,resourceType: null == resourceType ? _self.resourceType : resourceType // ignore: cast_nullable_to_non_nullable
as String,format: null == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as String,bytes: null == bytes ? _self.bytes : bytes // ignore: cast_nullable_to_non_nullable
as int,width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
