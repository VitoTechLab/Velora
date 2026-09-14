// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_attachment_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MessageAttachmentEntity {

 String get id; String get messageId; String get kind;// image, video, audio, file, thumbnail
// Supabase Storage
 String? get bucket; String? get path;// External URL (Cloudinary, etc.)
 String? get url;// Common metadata
 String? get filename; String? get mimeType; int? get sizeBytes; int? get width; int? get height; double? get durationSeconds; String? get blurhash; DateTime get createdAt;
/// Create a copy of MessageAttachmentEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessageAttachmentEntityCopyWith<MessageAttachmentEntity> get copyWith => _$MessageAttachmentEntityCopyWithImpl<MessageAttachmentEntity>(this as MessageAttachmentEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageAttachmentEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.messageId, messageId) || other.messageId == messageId)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.bucket, bucket) || other.bucket == bucket)&&(identical(other.path, path) || other.path == path)&&(identical(other.url, url) || other.url == url)&&(identical(other.filename, filename) || other.filename == filename)&&(identical(other.mimeType, mimeType) || other.mimeType == mimeType)&&(identical(other.sizeBytes, sizeBytes) || other.sizeBytes == sizeBytes)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.durationSeconds, durationSeconds) || other.durationSeconds == durationSeconds)&&(identical(other.blurhash, blurhash) || other.blurhash == blurhash)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,messageId,kind,bucket,path,url,filename,mimeType,sizeBytes,width,height,durationSeconds,blurhash,createdAt);

@override
String toString() {
  return 'MessageAttachmentEntity(id: $id, messageId: $messageId, kind: $kind, bucket: $bucket, path: $path, url: $url, filename: $filename, mimeType: $mimeType, sizeBytes: $sizeBytes, width: $width, height: $height, durationSeconds: $durationSeconds, blurhash: $blurhash, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $MessageAttachmentEntityCopyWith<$Res>  {
  factory $MessageAttachmentEntityCopyWith(MessageAttachmentEntity value, $Res Function(MessageAttachmentEntity) _then) = _$MessageAttachmentEntityCopyWithImpl;
@useResult
$Res call({
 String id, String messageId, String kind, String? bucket, String? path, String? url, String? filename, String? mimeType, int? sizeBytes, int? width, int? height, double? durationSeconds, String? blurhash, DateTime createdAt
});




}
/// @nodoc
class _$MessageAttachmentEntityCopyWithImpl<$Res>
    implements $MessageAttachmentEntityCopyWith<$Res> {
  _$MessageAttachmentEntityCopyWithImpl(this._self, this._then);

  final MessageAttachmentEntity _self;
  final $Res Function(MessageAttachmentEntity) _then;

/// Create a copy of MessageAttachmentEntity
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


/// Adds pattern-matching-related methods to [MessageAttachmentEntity].
extension MessageAttachmentEntityPatterns on MessageAttachmentEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MessageAttachmentEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MessageAttachmentEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MessageAttachmentEntity value)  $default,){
final _that = this;
switch (_that) {
case _MessageAttachmentEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MessageAttachmentEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MessageAttachmentEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String messageId,  String kind,  String? bucket,  String? path,  String? url,  String? filename,  String? mimeType,  int? sizeBytes,  int? width,  int? height,  double? durationSeconds,  String? blurhash,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MessageAttachmentEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String messageId,  String kind,  String? bucket,  String? path,  String? url,  String? filename,  String? mimeType,  int? sizeBytes,  int? width,  int? height,  double? durationSeconds,  String? blurhash,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _MessageAttachmentEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String messageId,  String kind,  String? bucket,  String? path,  String? url,  String? filename,  String? mimeType,  int? sizeBytes,  int? width,  int? height,  double? durationSeconds,  String? blurhash,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _MessageAttachmentEntity() when $default != null:
return $default(_that.id,_that.messageId,_that.kind,_that.bucket,_that.path,_that.url,_that.filename,_that.mimeType,_that.sizeBytes,_that.width,_that.height,_that.durationSeconds,_that.blurhash,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _MessageAttachmentEntity extends MessageAttachmentEntity {
  const _MessageAttachmentEntity({required this.id, required this.messageId, required this.kind, this.bucket, this.path, this.url, this.filename, this.mimeType, this.sizeBytes, this.width, this.height, this.durationSeconds, this.blurhash, required this.createdAt}): super._();
  

@override final  String id;
@override final  String messageId;
@override final  String kind;
// image, video, audio, file, thumbnail
// Supabase Storage
@override final  String? bucket;
@override final  String? path;
// External URL (Cloudinary, etc.)
@override final  String? url;
// Common metadata
@override final  String? filename;
@override final  String? mimeType;
@override final  int? sizeBytes;
@override final  int? width;
@override final  int? height;
@override final  double? durationSeconds;
@override final  String? blurhash;
@override final  DateTime createdAt;

/// Create a copy of MessageAttachmentEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessageAttachmentEntityCopyWith<_MessageAttachmentEntity> get copyWith => __$MessageAttachmentEntityCopyWithImpl<_MessageAttachmentEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessageAttachmentEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.messageId, messageId) || other.messageId == messageId)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.bucket, bucket) || other.bucket == bucket)&&(identical(other.path, path) || other.path == path)&&(identical(other.url, url) || other.url == url)&&(identical(other.filename, filename) || other.filename == filename)&&(identical(other.mimeType, mimeType) || other.mimeType == mimeType)&&(identical(other.sizeBytes, sizeBytes) || other.sizeBytes == sizeBytes)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.durationSeconds, durationSeconds) || other.durationSeconds == durationSeconds)&&(identical(other.blurhash, blurhash) || other.blurhash == blurhash)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,messageId,kind,bucket,path,url,filename,mimeType,sizeBytes,width,height,durationSeconds,blurhash,createdAt);

@override
String toString() {
  return 'MessageAttachmentEntity(id: $id, messageId: $messageId, kind: $kind, bucket: $bucket, path: $path, url: $url, filename: $filename, mimeType: $mimeType, sizeBytes: $sizeBytes, width: $width, height: $height, durationSeconds: $durationSeconds, blurhash: $blurhash, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$MessageAttachmentEntityCopyWith<$Res> implements $MessageAttachmentEntityCopyWith<$Res> {
  factory _$MessageAttachmentEntityCopyWith(_MessageAttachmentEntity value, $Res Function(_MessageAttachmentEntity) _then) = __$MessageAttachmentEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String messageId, String kind, String? bucket, String? path, String? url, String? filename, String? mimeType, int? sizeBytes, int? width, int? height, double? durationSeconds, String? blurhash, DateTime createdAt
});




}
/// @nodoc
class __$MessageAttachmentEntityCopyWithImpl<$Res>
    implements _$MessageAttachmentEntityCopyWith<$Res> {
  __$MessageAttachmentEntityCopyWithImpl(this._self, this._then);

  final _MessageAttachmentEntity _self;
  final $Res Function(_MessageAttachmentEntity) _then;

/// Create a copy of MessageAttachmentEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? messageId = null,Object? kind = null,Object? bucket = freezed,Object? path = freezed,Object? url = freezed,Object? filename = freezed,Object? mimeType = freezed,Object? sizeBytes = freezed,Object? width = freezed,Object? height = freezed,Object? durationSeconds = freezed,Object? blurhash = freezed,Object? createdAt = null,}) {
  return _then(_MessageAttachmentEntity(
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
