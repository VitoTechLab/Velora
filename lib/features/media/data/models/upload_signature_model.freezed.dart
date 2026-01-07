// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_signature_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UploadSignatureModel {

@JsonKey(name: 'api_key') String get apiKey;@JsonKey(name: 'timestamp') int get timestamp;@JsonKey(name: 'signature') String get signature;@JsonKey(name: 'public_id') String get publicId;@JsonKey(name: 'folder') String get folder;
/// Create a copy of UploadSignatureModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UploadSignatureModelCopyWith<UploadSignatureModel> get copyWith => _$UploadSignatureModelCopyWithImpl<UploadSignatureModel>(this as UploadSignatureModel, _$identity);

  /// Serializes this UploadSignatureModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadSignatureModel&&(identical(other.apiKey, apiKey) || other.apiKey == apiKey)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.signature, signature) || other.signature == signature)&&(identical(other.publicId, publicId) || other.publicId == publicId)&&(identical(other.folder, folder) || other.folder == folder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,apiKey,timestamp,signature,publicId,folder);

@override
String toString() {
  return 'UploadSignatureModel(apiKey: $apiKey, timestamp: $timestamp, signature: $signature, publicId: $publicId, folder: $folder)';
}


}

/// @nodoc
abstract mixin class $UploadSignatureModelCopyWith<$Res>  {
  factory $UploadSignatureModelCopyWith(UploadSignatureModel value, $Res Function(UploadSignatureModel) _then) = _$UploadSignatureModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'api_key') String apiKey,@JsonKey(name: 'timestamp') int timestamp,@JsonKey(name: 'signature') String signature,@JsonKey(name: 'public_id') String publicId,@JsonKey(name: 'folder') String folder
});




}
/// @nodoc
class _$UploadSignatureModelCopyWithImpl<$Res>
    implements $UploadSignatureModelCopyWith<$Res> {
  _$UploadSignatureModelCopyWithImpl(this._self, this._then);

  final UploadSignatureModel _self;
  final $Res Function(UploadSignatureModel) _then;

/// Create a copy of UploadSignatureModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? apiKey = null,Object? timestamp = null,Object? signature = null,Object? publicId = null,Object? folder = null,}) {
  return _then(_self.copyWith(
apiKey: null == apiKey ? _self.apiKey : apiKey // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int,signature: null == signature ? _self.signature : signature // ignore: cast_nullable_to_non_nullable
as String,publicId: null == publicId ? _self.publicId : publicId // ignore: cast_nullable_to_non_nullable
as String,folder: null == folder ? _self.folder : folder // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UploadSignatureModel].
extension UploadSignatureModelPatterns on UploadSignatureModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UploadSignatureModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UploadSignatureModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UploadSignatureModel value)  $default,){
final _that = this;
switch (_that) {
case _UploadSignatureModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UploadSignatureModel value)?  $default,){
final _that = this;
switch (_that) {
case _UploadSignatureModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'api_key')  String apiKey, @JsonKey(name: 'timestamp')  int timestamp, @JsonKey(name: 'signature')  String signature, @JsonKey(name: 'public_id')  String publicId, @JsonKey(name: 'folder')  String folder)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UploadSignatureModel() when $default != null:
return $default(_that.apiKey,_that.timestamp,_that.signature,_that.publicId,_that.folder);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'api_key')  String apiKey, @JsonKey(name: 'timestamp')  int timestamp, @JsonKey(name: 'signature')  String signature, @JsonKey(name: 'public_id')  String publicId, @JsonKey(name: 'folder')  String folder)  $default,) {final _that = this;
switch (_that) {
case _UploadSignatureModel():
return $default(_that.apiKey,_that.timestamp,_that.signature,_that.publicId,_that.folder);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'api_key')  String apiKey, @JsonKey(name: 'timestamp')  int timestamp, @JsonKey(name: 'signature')  String signature, @JsonKey(name: 'public_id')  String publicId, @JsonKey(name: 'folder')  String folder)?  $default,) {final _that = this;
switch (_that) {
case _UploadSignatureModel() when $default != null:
return $default(_that.apiKey,_that.timestamp,_that.signature,_that.publicId,_that.folder);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UploadSignatureModel implements UploadSignatureModel {
  const _UploadSignatureModel({@JsonKey(name: 'api_key') required this.apiKey, @JsonKey(name: 'timestamp') required this.timestamp, @JsonKey(name: 'signature') required this.signature, @JsonKey(name: 'public_id') required this.publicId, @JsonKey(name: 'folder') required this.folder});
  factory _UploadSignatureModel.fromJson(Map<String, dynamic> json) => _$UploadSignatureModelFromJson(json);

@override@JsonKey(name: 'api_key') final  String apiKey;
@override@JsonKey(name: 'timestamp') final  int timestamp;
@override@JsonKey(name: 'signature') final  String signature;
@override@JsonKey(name: 'public_id') final  String publicId;
@override@JsonKey(name: 'folder') final  String folder;

/// Create a copy of UploadSignatureModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UploadSignatureModelCopyWith<_UploadSignatureModel> get copyWith => __$UploadSignatureModelCopyWithImpl<_UploadSignatureModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UploadSignatureModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UploadSignatureModel&&(identical(other.apiKey, apiKey) || other.apiKey == apiKey)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.signature, signature) || other.signature == signature)&&(identical(other.publicId, publicId) || other.publicId == publicId)&&(identical(other.folder, folder) || other.folder == folder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,apiKey,timestamp,signature,publicId,folder);

@override
String toString() {
  return 'UploadSignatureModel(apiKey: $apiKey, timestamp: $timestamp, signature: $signature, publicId: $publicId, folder: $folder)';
}


}

/// @nodoc
abstract mixin class _$UploadSignatureModelCopyWith<$Res> implements $UploadSignatureModelCopyWith<$Res> {
  factory _$UploadSignatureModelCopyWith(_UploadSignatureModel value, $Res Function(_UploadSignatureModel) _then) = __$UploadSignatureModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'api_key') String apiKey,@JsonKey(name: 'timestamp') int timestamp,@JsonKey(name: 'signature') String signature,@JsonKey(name: 'public_id') String publicId,@JsonKey(name: 'folder') String folder
});




}
/// @nodoc
class __$UploadSignatureModelCopyWithImpl<$Res>
    implements _$UploadSignatureModelCopyWith<$Res> {
  __$UploadSignatureModelCopyWithImpl(this._self, this._then);

  final _UploadSignatureModel _self;
  final $Res Function(_UploadSignatureModel) _then;

/// Create a copy of UploadSignatureModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? apiKey = null,Object? timestamp = null,Object? signature = null,Object? publicId = null,Object? folder = null,}) {
  return _then(_UploadSignatureModel(
apiKey: null == apiKey ? _self.apiKey : apiKey // ignore: cast_nullable_to_non_nullable
as String,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int,signature: null == signature ? _self.signature : signature // ignore: cast_nullable_to_non_nullable
as String,publicId: null == publicId ? _self.publicId : publicId // ignore: cast_nullable_to_non_nullable
as String,folder: null == folder ? _self.folder : folder // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
