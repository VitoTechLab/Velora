// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_attachment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MessageAttachmentModel {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'message_id') String get messageId;@JsonKey(name: 'kind') String get kind;@JsonKey(name: 'bucket') String? get bucket;@JsonKey(name: 'path') String? get path;@JsonKey(name: 'url') String? get url;@JsonKey(name: 'filename') String? get filename;@JsonKey(name: 'mime_type') String? get mimeType;@JsonKey(name: 'size_bytes') int? get sizeBytes;@JsonKey(name: 'width') int? get width;@JsonKey(name: 'height') int? get height;@JsonKey(name: 'duration_seconds') double? get durationSeconds;@JsonKey(name: 'blurhash') String? get blurhash;@UtcDateTimeConverter()@JsonKey(name: 'created_at') DateTime get createdAt;
/// Create a copy of MessageAttachmentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessageAttachmentModelCopyWith<MessageAttachmentModel> get copyWith => _$MessageAttachmentModelCopyWithImpl<MessageAttachmentModel>(this as MessageAttachmentModel, _$identity);

  /// Serializes this MessageAttachmentModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageAttachmentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.messageId, messageId) || other.messageId == messageId)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.bucket, bucket) || other.bucket == bucket)&&(identical(other.path, path) || other.path == path)&&(identical(other.url, url) || other.url == url)&&(identical(other.filename, filename) || other.filename == filename)&&(identical(other.mimeType, mimeType) || other.mimeType == mimeType)&&(identical(other.sizeBytes, sizeBytes) || other.sizeBytes == sizeBytes)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.durationSeconds, durationSeconds) || other.durationSeconds == durationSeconds)&&(identical(other.blurhash, blurhash) || other.blurhash == blurhash)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,messageId,kind,bucket,path,url,filename,mimeType,sizeBytes,width,height,durationSeconds,blurhash,createdAt);

@override
String toString() {
  return 'MessageAttachmentModel(id: $id, messageId: $messageId, kind: $kind, bucket: $bucket, path: $path, url: $url, filename: $filename, mimeType: $mimeType, sizeBytes: $sizeBytes, width: $width, height: $height, durationSeconds: $durationSeconds, blurhash: $blurhash, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $MessageAttachmentModelCopyWith<$Res>  {
  factory $MessageAttachmentModelCopyWith(MessageAttachmentModel value, $Res Function(MessageAttachmentModel) _then) = _$MessageAttachmentModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'message_id') String messageId,@JsonKey(name: 'kind') String kind,@JsonKey(name: 'bucket') String? bucket,@JsonKey(name: 'path') String? path,@JsonKey(name: 'url') String? url,@JsonKey(name: 'filename') String? filename,@JsonKey(name: 'mime_type') String? mimeType,@JsonKey(name: 'size_bytes') int? sizeBytes,@JsonKey(name: 'width') int? width,@JsonKey(name: 'height') int? height,@JsonKey(name: 'duration_seconds') double? durationSeconds,@JsonKey(name: 'blurhash') String? blurhash,@UtcDateTimeConverter()@JsonKey(name: 'created_at') DateTime createdAt
});




}
/// @nodoc
class _$MessageAttachmentModelCopyWithImpl<$Res>
    implements $MessageAttachmentModelCopyWith<$Res> {
  _$MessageAttachmentModelCopyWithImpl(this._self, this._then);

  final MessageAttachmentModel _self;
  final $Res Function(MessageAttachmentModel) _then;

/// Create a copy of MessageAttachmentModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? messageId = null,Object? kind = null,Object? bucket = freezed,Object? path = freezed,Object? url = freezed,Object? filename = freezed,Object? mimeType = freezed,Object? sizeBytes = freezed,Object? width = freezed,Object? height = freezed,Object? durationSeconds = freezed,Object? blurhash = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,messageId: null == messageId ? _self.messageId : messageId // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String,bucket: freezed == bucket ? _self.bucket : bucket // ignore: cast_nullable_to_non_nullable
as String?,path: freezed == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,filename: freezed == filename ? _self.filename : filename // ignore: cast_nullable_to_non_nullable
as String?,mimeType: freezed == mimeType ? _self.mimeType : mimeType // ignore: cast_nullable_to_non_nullable
as String?,sizeBytes: freezed == sizeBytes ? _self.sizeBytes : sizeBytes // ignore: cast_nullable_to_non_nullable
as int?,width: freezed == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int?,durationSeconds: freezed == durationSeconds ? _self.durationSeconds : durationSeconds // ignore: cast_nullable_to_non_nullable
as double?,blurhash: freezed == blurhash ? _self.blurhash : blurhash // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [MessageAttachmentModel].
extension MessageAttachmentModelPatterns on MessageAttachmentModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MessageAttachmentModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MessageAttachmentModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MessageAttachmentModel value)  $default,){
final _that = this;
switch (_that) {
case _MessageAttachmentModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MessageAttachmentModel value)?  $default,){
final _that = this;
switch (_that) {
case _MessageAttachmentModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'message_id')  String messageId, @JsonKey(name: 'kind')  String kind, @JsonKey(name: 'bucket')  String? bucket, @JsonKey(name: 'path')  String? path, @JsonKey(name: 'url')  String? url, @JsonKey(name: 'filename')  String? filename, @JsonKey(name: 'mime_type')  String? mimeType, @JsonKey(name: 'size_bytes')  int? sizeBytes, @JsonKey(name: 'width')  int? width, @JsonKey(name: 'height')  int? height, @JsonKey(name: 'duration_seconds')  double? durationSeconds, @JsonKey(name: 'blurhash')  String? blurhash, @UtcDateTimeConverter()@JsonKey(name: 'created_at')  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MessageAttachmentModel() when $default != null:
return $default(_that.id,_that.messageId,_that.kind,_that.bucket,_that.path,_that.url,_that.filename,_that.mimeType,_that.sizeBytes,_that.width,_that.height,_that.durationSeconds,_that.blurhash,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'message_id')  String messageId, @JsonKey(name: 'kind')  String kind, @JsonKey(name: 'bucket')  String? bucket, @JsonKey(name: 'path')  String? path, @JsonKey(name: 'url')  String? url, @JsonKey(name: 'filename')  String? filename, @JsonKey(name: 'mime_type')  String? mimeType, @JsonKey(name: 'size_bytes')  int? sizeBytes, @JsonKey(name: 'width')  int? width, @JsonKey(name: 'height')  int? height, @JsonKey(name: 'duration_seconds')  double? durationSeconds, @JsonKey(name: 'blurhash')  String? blurhash, @UtcDateTimeConverter()@JsonKey(name: 'created_at')  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _MessageAttachmentModel():
return $default(_that.id,_that.messageId,_that.kind,_that.bucket,_that.path,_that.url,_that.filename,_that.mimeType,_that.sizeBytes,_that.width,_that.height,_that.durationSeconds,_that.blurhash,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'message_id')  String messageId, @JsonKey(name: 'kind')  String kind, @JsonKey(name: 'bucket')  String? bucket, @JsonKey(name: 'path')  String? path, @JsonKey(name: 'url')  String? url, @JsonKey(name: 'filename')  String? filename, @JsonKey(name: 'mime_type')  String? mimeType, @JsonKey(name: 'size_bytes')  int? sizeBytes, @JsonKey(name: 'width')  int? width, @JsonKey(name: 'height')  int? height, @JsonKey(name: 'duration_seconds')  double? durationSeconds, @JsonKey(name: 'blurhash')  String? blurhash, @UtcDateTimeConverter()@JsonKey(name: 'created_at')  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _MessageAttachmentModel() when $default != null:
return $default(_that.id,_that.messageId,_that.kind,_that.bucket,_that.path,_that.url,_that.filename,_that.mimeType,_that.sizeBytes,_that.width,_that.height,_that.durationSeconds,_that.blurhash,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MessageAttachmentModel extends MessageAttachmentModel {
  const _MessageAttachmentModel({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'message_id') required this.messageId, @JsonKey(name: 'kind') required this.kind, @JsonKey(name: 'bucket') this.bucket, @JsonKey(name: 'path') this.path, @JsonKey(name: 'url') this.url, @JsonKey(name: 'filename') this.filename, @JsonKey(name: 'mime_type') this.mimeType, @JsonKey(name: 'size_bytes') this.sizeBytes, @JsonKey(name: 'width') this.width, @JsonKey(name: 'height') this.height, @JsonKey(name: 'duration_seconds') this.durationSeconds, @JsonKey(name: 'blurhash') this.blurhash, @UtcDateTimeConverter()@JsonKey(name: 'created_at') required this.createdAt}): super._();
  factory _MessageAttachmentModel.fromJson(Map<String, dynamic> json) => _$MessageAttachmentModelFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'message_id') final  String messageId;
@override@JsonKey(name: 'kind') final  String kind;
@override@JsonKey(name: 'bucket') final  String? bucket;
@override@JsonKey(name: 'path') final  String? path;
@override@JsonKey(name: 'url') final  String? url;
@override@JsonKey(name: 'filename') final  String? filename;
@override@JsonKey(name: 'mime_type') final  String? mimeType;
@override@JsonKey(name: 'size_bytes') final  int? sizeBytes;
@override@JsonKey(name: 'width') final  int? width;
@override@JsonKey(name: 'height') final  int? height;
@override@JsonKey(name: 'duration_seconds') final  double? durationSeconds;
@override@JsonKey(name: 'blurhash') final  String? blurhash;
@override@UtcDateTimeConverter()@JsonKey(name: 'created_at') final  DateTime createdAt;

/// Create a copy of MessageAttachmentModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessageAttachmentModelCopyWith<_MessageAttachmentModel> get copyWith => __$MessageAttachmentModelCopyWithImpl<_MessageAttachmentModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MessageAttachmentModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessageAttachmentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.messageId, messageId) || other.messageId == messageId)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.bucket, bucket) || other.bucket == bucket)&&(identical(other.path, path) || other.path == path)&&(identical(other.url, url) || other.url == url)&&(identical(other.filename, filename) || other.filename == filename)&&(identical(other.mimeType, mimeType) || other.mimeType == mimeType)&&(identical(other.sizeBytes, sizeBytes) || other.sizeBytes == sizeBytes)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.durationSeconds, durationSeconds) || other.durationSeconds == durationSeconds)&&(identical(other.blurhash, blurhash) || other.blurhash == blurhash)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,messageId,kind,bucket,path,url,filename,mimeType,sizeBytes,width,height,durationSeconds,blurhash,createdAt);

@override
String toString() {
  return 'MessageAttachmentModel(id: $id, messageId: $messageId, kind: $kind, bucket: $bucket, path: $path, url: $url, filename: $filename, mimeType: $mimeType, sizeBytes: $sizeBytes, width: $width, height: $height, durationSeconds: $durationSeconds, blurhash: $blurhash, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$MessageAttachmentModelCopyWith<$Res> implements $MessageAttachmentModelCopyWith<$Res> {
  factory _$MessageAttachmentModelCopyWith(_MessageAttachmentModel value, $Res Function(_MessageAttachmentModel) _then) = __$MessageAttachmentModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'message_id') String messageId,@JsonKey(name: 'kind') String kind,@JsonKey(name: 'bucket') String? bucket,@JsonKey(name: 'path') String? path,@JsonKey(name: 'url') String? url,@JsonKey(name: 'filename') String? filename,@JsonKey(name: 'mime_type') String? mimeType,@JsonKey(name: 'size_bytes') int? sizeBytes,@JsonKey(name: 'width') int? width,@JsonKey(name: 'height') int? height,@JsonKey(name: 'duration_seconds') double? durationSeconds,@JsonKey(name: 'blurhash') String? blurhash,@UtcDateTimeConverter()@JsonKey(name: 'created_at') DateTime createdAt
});




}
/// @nodoc
class __$MessageAttachmentModelCopyWithImpl<$Res>
    implements _$MessageAttachmentModelCopyWith<$Res> {
  __$MessageAttachmentModelCopyWithImpl(this._self, this._then);

  final _MessageAttachmentModel _self;
  final $Res Function(_MessageAttachmentModel) _then;

/// Create a copy of MessageAttachmentModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? messageId = null,Object? kind = null,Object? bucket = freezed,Object? path = freezed,Object? url = freezed,Object? filename = freezed,Object? mimeType = freezed,Object? sizeBytes = freezed,Object? width = freezed,Object? height = freezed,Object? durationSeconds = freezed,Object? blurhash = freezed,Object? createdAt = null,}) {
  return _then(_MessageAttachmentModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,messageId: null == messageId ? _self.messageId : messageId // ignore: cast_nullable_to_non_nullable
as String,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String,bucket: freezed == bucket ? _self.bucket : bucket // ignore: cast_nullable_to_non_nullable
as String?,path: freezed == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,filename: freezed == filename ? _self.filename : filename // ignore: cast_nullable_to_non_nullable
as String?,mimeType: freezed == mimeType ? _self.mimeType : mimeType // ignore: cast_nullable_to_non_nullable
as String?,sizeBytes: freezed == sizeBytes ? _self.sizeBytes : sizeBytes // ignore: cast_nullable_to_non_nullable
as int?,width: freezed == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int?,durationSeconds: freezed == durationSeconds ? _self.durationSeconds : durationSeconds // ignore: cast_nullable_to_non_nullable
as double?,blurhash: freezed == blurhash ? _self.blurhash : blurhash // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
