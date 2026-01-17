// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_attachment_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MessageAttachmentEntity {
  String get id => throw _privateConstructorUsedError;
  String get messageId => throw _privateConstructorUsedError;
  String get kind =>
      throw _privateConstructorUsedError; // image, video, audio, file, thumbnail
// Supabase Storage
  String? get bucket => throw _privateConstructorUsedError;
  String? get path =>
      throw _privateConstructorUsedError; // External URL (Cloudinary, etc.)
  String? get url => throw _privateConstructorUsedError; // Common metadata
  String? get filename => throw _privateConstructorUsedError;
  String? get mimeType => throw _privateConstructorUsedError;
  int? get sizeBytes => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  double? get durationSeconds => throw _privateConstructorUsedError;
  String? get blurhash => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Create a copy of MessageAttachmentEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageAttachmentEntityCopyWith<MessageAttachmentEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageAttachmentEntityCopyWith<$Res> {
  factory $MessageAttachmentEntityCopyWith(MessageAttachmentEntity value,
          $Res Function(MessageAttachmentEntity) then) =
      _$MessageAttachmentEntityCopyWithImpl<$Res, MessageAttachmentEntity>;
  @useResult
  $Res call(
      {String id,
      String messageId,
      String kind,
      String? bucket,
      String? path,
      String? url,
      String? filename,
      String? mimeType,
      int? sizeBytes,
      int? width,
      int? height,
      double? durationSeconds,
      String? blurhash,
      DateTime createdAt});
}

/// @nodoc
class _$MessageAttachmentEntityCopyWithImpl<$Res,
        $Val extends MessageAttachmentEntity>
    implements $MessageAttachmentEntityCopyWith<$Res> {
  _$MessageAttachmentEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageAttachmentEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? messageId = null,
    Object? kind = null,
    Object? bucket = freezed,
    Object? path = freezed,
    Object? url = freezed,
    Object? filename = freezed,
    Object? mimeType = freezed,
    Object? sizeBytes = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? durationSeconds = freezed,
    Object? blurhash = freezed,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      bucket: freezed == bucket
          ? _value.bucket
          : bucket // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      filename: freezed == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String?,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String?,
      sizeBytes: freezed == sizeBytes
          ? _value.sizeBytes
          : sizeBytes // ignore: cast_nullable_to_non_nullable
              as int?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      durationSeconds: freezed == durationSeconds
          ? _value.durationSeconds
          : durationSeconds // ignore: cast_nullable_to_non_nullable
              as double?,
      blurhash: freezed == blurhash
          ? _value.blurhash
          : blurhash // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageAttachmentEntityImplCopyWith<$Res>
    implements $MessageAttachmentEntityCopyWith<$Res> {
  factory _$$MessageAttachmentEntityImplCopyWith(
          _$MessageAttachmentEntityImpl value,
          $Res Function(_$MessageAttachmentEntityImpl) then) =
      __$$MessageAttachmentEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String messageId,
      String kind,
      String? bucket,
      String? path,
      String? url,
      String? filename,
      String? mimeType,
      int? sizeBytes,
      int? width,
      int? height,
      double? durationSeconds,
      String? blurhash,
      DateTime createdAt});
}

/// @nodoc
class __$$MessageAttachmentEntityImplCopyWithImpl<$Res>
    extends _$MessageAttachmentEntityCopyWithImpl<$Res,
        _$MessageAttachmentEntityImpl>
    implements _$$MessageAttachmentEntityImplCopyWith<$Res> {
  __$$MessageAttachmentEntityImplCopyWithImpl(
      _$MessageAttachmentEntityImpl _value,
      $Res Function(_$MessageAttachmentEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageAttachmentEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? messageId = null,
    Object? kind = null,
    Object? bucket = freezed,
    Object? path = freezed,
    Object? url = freezed,
    Object? filename = freezed,
    Object? mimeType = freezed,
    Object? sizeBytes = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? durationSeconds = freezed,
    Object? blurhash = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$MessageAttachmentEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      bucket: freezed == bucket
          ? _value.bucket
          : bucket // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      filename: freezed == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String?,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String?,
      sizeBytes: freezed == sizeBytes
          ? _value.sizeBytes
          : sizeBytes // ignore: cast_nullable_to_non_nullable
              as int?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      durationSeconds: freezed == durationSeconds
          ? _value.durationSeconds
          : durationSeconds // ignore: cast_nullable_to_non_nullable
              as double?,
      blurhash: freezed == blurhash
          ? _value.blurhash
          : blurhash // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$MessageAttachmentEntityImpl extends _MessageAttachmentEntity {
  const _$MessageAttachmentEntityImpl(
      {required this.id,
      required this.messageId,
      required this.kind,
      this.bucket,
      this.path,
      this.url,
      this.filename,
      this.mimeType,
      this.sizeBytes,
      this.width,
      this.height,
      this.durationSeconds,
      this.blurhash,
      required this.createdAt})
      : super._();

  @override
  final String id;
  @override
  final String messageId;
  @override
  final String kind;
// image, video, audio, file, thumbnail
// Supabase Storage
  @override
  final String? bucket;
  @override
  final String? path;
// External URL (Cloudinary, etc.)
  @override
  final String? url;
// Common metadata
  @override
  final String? filename;
  @override
  final String? mimeType;
  @override
  final int? sizeBytes;
  @override
  final int? width;
  @override
  final int? height;
  @override
  final double? durationSeconds;
  @override
  final String? blurhash;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'MessageAttachmentEntity(id: $id, messageId: $messageId, kind: $kind, bucket: $bucket, path: $path, url: $url, filename: $filename, mimeType: $mimeType, sizeBytes: $sizeBytes, width: $width, height: $height, durationSeconds: $durationSeconds, blurhash: $blurhash, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageAttachmentEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.bucket, bucket) || other.bucket == bucket) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.filename, filename) ||
                other.filename == filename) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType) &&
            (identical(other.sizeBytes, sizeBytes) ||
                other.sizeBytes == sizeBytes) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.durationSeconds, durationSeconds) ||
                other.durationSeconds == durationSeconds) &&
            (identical(other.blurhash, blurhash) ||
                other.blurhash == blurhash) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      messageId,
      kind,
      bucket,
      path,
      url,
      filename,
      mimeType,
      sizeBytes,
      width,
      height,
      durationSeconds,
      blurhash,
      createdAt);

  /// Create a copy of MessageAttachmentEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageAttachmentEntityImplCopyWith<_$MessageAttachmentEntityImpl>
      get copyWith => __$$MessageAttachmentEntityImplCopyWithImpl<
          _$MessageAttachmentEntityImpl>(this, _$identity);
}

abstract class _MessageAttachmentEntity extends MessageAttachmentEntity {
  const factory _MessageAttachmentEntity(
      {required final String id,
      required final String messageId,
      required final String kind,
      final String? bucket,
      final String? path,
      final String? url,
      final String? filename,
      final String? mimeType,
      final int? sizeBytes,
      final int? width,
      final int? height,
      final double? durationSeconds,
      final String? blurhash,
      required final DateTime createdAt}) = _$MessageAttachmentEntityImpl;
  const _MessageAttachmentEntity._() : super._();

  @override
  String get id;
  @override
  String get messageId;
  @override
  String get kind; // image, video, audio, file, thumbnail
// Supabase Storage
  @override
  String? get bucket;
  @override
  String? get path; // External URL (Cloudinary, etc.)
  @override
  String? get url; // Common metadata
  @override
  String? get filename;
  @override
  String? get mimeType;
  @override
  int? get sizeBytes;
  @override
  int? get width;
  @override
  int? get height;
  @override
  double? get durationSeconds;
  @override
  String? get blurhash;
  @override
  DateTime get createdAt;

  /// Create a copy of MessageAttachmentEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageAttachmentEntityImplCopyWith<_$MessageAttachmentEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
