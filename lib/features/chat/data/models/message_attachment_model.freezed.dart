// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_attachment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessageAttachmentModel _$MessageAttachmentModelFromJson(
    Map<String, dynamic> json) {
  return _MessageAttachmentModel.fromJson(json);
}

/// @nodoc
mixin _$MessageAttachmentModel {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'message_id')
  String get messageId => throw _privateConstructorUsedError;
  @JsonKey(name: 'kind')
  String get kind => throw _privateConstructorUsedError;
  @JsonKey(name: 'bucket')
  String? get bucket => throw _privateConstructorUsedError;
  @JsonKey(name: 'path')
  String? get path => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'filename')
  String? get filename => throw _privateConstructorUsedError;
  @JsonKey(name: 'mime_type')
  String? get mimeType => throw _privateConstructorUsedError;
  @JsonKey(name: 'size_bytes')
  int? get sizeBytes => throw _privateConstructorUsedError;
  @JsonKey(name: 'width')
  int? get width => throw _privateConstructorUsedError;
  @JsonKey(name: 'height')
  int? get height => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration_seconds')
  double? get durationSeconds => throw _privateConstructorUsedError;
  @JsonKey(name: 'blurhash')
  String? get blurhash => throw _privateConstructorUsedError;
  @UtcDateTimeConverter()
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this MessageAttachmentModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageAttachmentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageAttachmentModelCopyWith<MessageAttachmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageAttachmentModelCopyWith<$Res> {
  factory $MessageAttachmentModelCopyWith(MessageAttachmentModel value,
          $Res Function(MessageAttachmentModel) then) =
      _$MessageAttachmentModelCopyWithImpl<$Res, MessageAttachmentModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'message_id') String messageId,
      @JsonKey(name: 'kind') String kind,
      @JsonKey(name: 'bucket') String? bucket,
      @JsonKey(name: 'path') String? path,
      @JsonKey(name: 'url') String? url,
      @JsonKey(name: 'filename') String? filename,
      @JsonKey(name: 'mime_type') String? mimeType,
      @JsonKey(name: 'size_bytes') int? sizeBytes,
      @JsonKey(name: 'width') int? width,
      @JsonKey(name: 'height') int? height,
      @JsonKey(name: 'duration_seconds') double? durationSeconds,
      @JsonKey(name: 'blurhash') String? blurhash,
      @UtcDateTimeConverter() @JsonKey(name: 'created_at') DateTime createdAt});
}

/// @nodoc
class _$MessageAttachmentModelCopyWithImpl<$Res,
        $Val extends MessageAttachmentModel>
    implements $MessageAttachmentModelCopyWith<$Res> {
  _$MessageAttachmentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageAttachmentModel
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
abstract class _$$MessageAttachmentModelImplCopyWith<$Res>
    implements $MessageAttachmentModelCopyWith<$Res> {
  factory _$$MessageAttachmentModelImplCopyWith(
          _$MessageAttachmentModelImpl value,
          $Res Function(_$MessageAttachmentModelImpl) then) =
      __$$MessageAttachmentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'message_id') String messageId,
      @JsonKey(name: 'kind') String kind,
      @JsonKey(name: 'bucket') String? bucket,
      @JsonKey(name: 'path') String? path,
      @JsonKey(name: 'url') String? url,
      @JsonKey(name: 'filename') String? filename,
      @JsonKey(name: 'mime_type') String? mimeType,
      @JsonKey(name: 'size_bytes') int? sizeBytes,
      @JsonKey(name: 'width') int? width,
      @JsonKey(name: 'height') int? height,
      @JsonKey(name: 'duration_seconds') double? durationSeconds,
      @JsonKey(name: 'blurhash') String? blurhash,
      @UtcDateTimeConverter() @JsonKey(name: 'created_at') DateTime createdAt});
}

/// @nodoc
class __$$MessageAttachmentModelImplCopyWithImpl<$Res>
    extends _$MessageAttachmentModelCopyWithImpl<$Res,
        _$MessageAttachmentModelImpl>
    implements _$$MessageAttachmentModelImplCopyWith<$Res> {
  __$$MessageAttachmentModelImplCopyWithImpl(
      _$MessageAttachmentModelImpl _value,
      $Res Function(_$MessageAttachmentModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageAttachmentModel
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
    return _then(_$MessageAttachmentModelImpl(
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
@JsonSerializable()
class _$MessageAttachmentModelImpl extends _MessageAttachmentModel {
  const _$MessageAttachmentModelImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'message_id') required this.messageId,
      @JsonKey(name: 'kind') required this.kind,
      @JsonKey(name: 'bucket') this.bucket,
      @JsonKey(name: 'path') this.path,
      @JsonKey(name: 'url') this.url,
      @JsonKey(name: 'filename') this.filename,
      @JsonKey(name: 'mime_type') this.mimeType,
      @JsonKey(name: 'size_bytes') this.sizeBytes,
      @JsonKey(name: 'width') this.width,
      @JsonKey(name: 'height') this.height,
      @JsonKey(name: 'duration_seconds') this.durationSeconds,
      @JsonKey(name: 'blurhash') this.blurhash,
      @UtcDateTimeConverter()
      @JsonKey(name: 'created_at')
      required this.createdAt})
      : super._();

  factory _$MessageAttachmentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageAttachmentModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'message_id')
  final String messageId;
  @override
  @JsonKey(name: 'kind')
  final String kind;
  @override
  @JsonKey(name: 'bucket')
  final String? bucket;
  @override
  @JsonKey(name: 'path')
  final String? path;
  @override
  @JsonKey(name: 'url')
  final String? url;
  @override
  @JsonKey(name: 'filename')
  final String? filename;
  @override
  @JsonKey(name: 'mime_type')
  final String? mimeType;
  @override
  @JsonKey(name: 'size_bytes')
  final int? sizeBytes;
  @override
  @JsonKey(name: 'width')
  final int? width;
  @override
  @JsonKey(name: 'height')
  final int? height;
  @override
  @JsonKey(name: 'duration_seconds')
  final double? durationSeconds;
  @override
  @JsonKey(name: 'blurhash')
  final String? blurhash;
  @override
  @UtcDateTimeConverter()
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  @override
  String toString() {
    return 'MessageAttachmentModel(id: $id, messageId: $messageId, kind: $kind, bucket: $bucket, path: $path, url: $url, filename: $filename, mimeType: $mimeType, sizeBytes: $sizeBytes, width: $width, height: $height, durationSeconds: $durationSeconds, blurhash: $blurhash, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageAttachmentModelImpl &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of MessageAttachmentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageAttachmentModelImplCopyWith<_$MessageAttachmentModelImpl>
      get copyWith => __$$MessageAttachmentModelImplCopyWithImpl<
          _$MessageAttachmentModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageAttachmentModelImplToJson(
      this,
    );
  }
}

abstract class _MessageAttachmentModel extends MessageAttachmentModel {
  const factory _MessageAttachmentModel(
      {@JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'message_id') required final String messageId,
      @JsonKey(name: 'kind') required final String kind,
      @JsonKey(name: 'bucket') final String? bucket,
      @JsonKey(name: 'path') final String? path,
      @JsonKey(name: 'url') final String? url,
      @JsonKey(name: 'filename') final String? filename,
      @JsonKey(name: 'mime_type') final String? mimeType,
      @JsonKey(name: 'size_bytes') final int? sizeBytes,
      @JsonKey(name: 'width') final int? width,
      @JsonKey(name: 'height') final int? height,
      @JsonKey(name: 'duration_seconds') final double? durationSeconds,
      @JsonKey(name: 'blurhash') final String? blurhash,
      @UtcDateTimeConverter()
      @JsonKey(name: 'created_at')
      required final DateTime createdAt}) = _$MessageAttachmentModelImpl;
  const _MessageAttachmentModel._() : super._();

  factory _MessageAttachmentModel.fromJson(Map<String, dynamic> json) =
      _$MessageAttachmentModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'message_id')
  String get messageId;
  @override
  @JsonKey(name: 'kind')
  String get kind;
  @override
  @JsonKey(name: 'bucket')
  String? get bucket;
  @override
  @JsonKey(name: 'path')
  String? get path;
  @override
  @JsonKey(name: 'url')
  String? get url;
  @override
  @JsonKey(name: 'filename')
  String? get filename;
  @override
  @JsonKey(name: 'mime_type')
  String? get mimeType;
  @override
  @JsonKey(name: 'size_bytes')
  int? get sizeBytes;
  @override
  @JsonKey(name: 'width')
  int? get width;
  @override
  @JsonKey(name: 'height')
  int? get height;
  @override
  @JsonKey(name: 'duration_seconds')
  double? get durationSeconds;
  @override
  @JsonKey(name: 'blurhash')
  String? get blurhash;
  @override
  @UtcDateTimeConverter()
  @JsonKey(name: 'created_at')
  DateTime get createdAt;

  /// Create a copy of MessageAttachmentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageAttachmentModelImplCopyWith<_$MessageAttachmentModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
