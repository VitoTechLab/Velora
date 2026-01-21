// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_asset_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MediaAssetModel _$MediaAssetModelFromJson(Map<String, dynamic> json) {
  return _MediaAssetModel.fromJson(json);
}

/// @nodoc
mixin _$MediaAssetModel {
  @JsonKey(name: 'public_id')
  String get publicId => throw _privateConstructorUsedError;
  @JsonKey(name: 'secure_url')
  String get secureUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'resource_type')
  String get resourceType => throw _privateConstructorUsedError;
  @JsonKey(name: 'format')
  String get format => throw _privateConstructorUsedError;
  @JsonKey(name: 'bytes')
  int get bytes => throw _privateConstructorUsedError;
  @JsonKey(name: 'width')
  int get width => throw _privateConstructorUsedError;
  @JsonKey(name: 'height')
  int get height => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration')
  double? get duration => throw _privateConstructorUsedError;

  /// Serializes this MediaAssetModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MediaAssetModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MediaAssetModelCopyWith<MediaAssetModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaAssetModelCopyWith<$Res> {
  factory $MediaAssetModelCopyWith(
          MediaAssetModel value, $Res Function(MediaAssetModel) then) =
      _$MediaAssetModelCopyWithImpl<$Res, MediaAssetModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'public_id') String publicId,
      @JsonKey(name: 'secure_url') String secureUrl,
      @JsonKey(name: 'resource_type') String resourceType,
      @JsonKey(name: 'format') String format,
      @JsonKey(name: 'bytes') int bytes,
      @JsonKey(name: 'width') int width,
      @JsonKey(name: 'height') int height,
      @JsonKey(name: 'duration') double? duration});
}

/// @nodoc
class _$MediaAssetModelCopyWithImpl<$Res, $Val extends MediaAssetModel>
    implements $MediaAssetModelCopyWith<$Res> {
  _$MediaAssetModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MediaAssetModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicId = null,
    Object? secureUrl = null,
    Object? resourceType = null,
    Object? format = null,
    Object? bytes = null,
    Object? width = null,
    Object? height = null,
    Object? duration = freezed,
  }) {
    return _then(_value.copyWith(
      publicId: null == publicId
          ? _value.publicId
          : publicId // ignore: cast_nullable_to_non_nullable
              as String,
      secureUrl: null == secureUrl
          ? _value.secureUrl
          : secureUrl // ignore: cast_nullable_to_non_nullable
              as String,
      resourceType: null == resourceType
          ? _value.resourceType
          : resourceType // ignore: cast_nullable_to_non_nullable
              as String,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      bytes: null == bytes
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MediaAssetModelImplCopyWith<$Res>
    implements $MediaAssetModelCopyWith<$Res> {
  factory _$$MediaAssetModelImplCopyWith(_$MediaAssetModelImpl value,
          $Res Function(_$MediaAssetModelImpl) then) =
      __$$MediaAssetModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'public_id') String publicId,
      @JsonKey(name: 'secure_url') String secureUrl,
      @JsonKey(name: 'resource_type') String resourceType,
      @JsonKey(name: 'format') String format,
      @JsonKey(name: 'bytes') int bytes,
      @JsonKey(name: 'width') int width,
      @JsonKey(name: 'height') int height,
      @JsonKey(name: 'duration') double? duration});
}

/// @nodoc
class __$$MediaAssetModelImplCopyWithImpl<$Res>
    extends _$MediaAssetModelCopyWithImpl<$Res, _$MediaAssetModelImpl>
    implements _$$MediaAssetModelImplCopyWith<$Res> {
  __$$MediaAssetModelImplCopyWithImpl(
      _$MediaAssetModelImpl _value, $Res Function(_$MediaAssetModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MediaAssetModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicId = null,
    Object? secureUrl = null,
    Object? resourceType = null,
    Object? format = null,
    Object? bytes = null,
    Object? width = null,
    Object? height = null,
    Object? duration = freezed,
  }) {
    return _then(_$MediaAssetModelImpl(
      publicId: null == publicId
          ? _value.publicId
          : publicId // ignore: cast_nullable_to_non_nullable
              as String,
      secureUrl: null == secureUrl
          ? _value.secureUrl
          : secureUrl // ignore: cast_nullable_to_non_nullable
              as String,
      resourceType: null == resourceType
          ? _value.resourceType
          : resourceType // ignore: cast_nullable_to_non_nullable
              as String,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      bytes: null == bytes
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaAssetModelImpl implements _MediaAssetModel {
  const _$MediaAssetModelImpl(
      {@JsonKey(name: 'public_id') required this.publicId,
      @JsonKey(name: 'secure_url') required this.secureUrl,
      @JsonKey(name: 'resource_type') required this.resourceType,
      @JsonKey(name: 'format') required this.format,
      @JsonKey(name: 'bytes') required this.bytes,
      @JsonKey(name: 'width') this.width = 0,
      @JsonKey(name: 'height') this.height = 0,
      @JsonKey(name: 'duration') this.duration});

  factory _$MediaAssetModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaAssetModelImplFromJson(json);

  @override
  @JsonKey(name: 'public_id')
  final String publicId;
  @override
  @JsonKey(name: 'secure_url')
  final String secureUrl;
  @override
  @JsonKey(name: 'resource_type')
  final String resourceType;
  @override
  @JsonKey(name: 'format')
  final String format;
  @override
  @JsonKey(name: 'bytes')
  final int bytes;
  @override
  @JsonKey(name: 'width')
  final int width;
  @override
  @JsonKey(name: 'height')
  final int height;
  @override
  @JsonKey(name: 'duration')
  final double? duration;

  @override
  String toString() {
    return 'MediaAssetModel(publicId: $publicId, secureUrl: $secureUrl, resourceType: $resourceType, format: $format, bytes: $bytes, width: $width, height: $height, duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaAssetModelImpl &&
            (identical(other.publicId, publicId) ||
                other.publicId == publicId) &&
            (identical(other.secureUrl, secureUrl) ||
                other.secureUrl == secureUrl) &&
            (identical(other.resourceType, resourceType) ||
                other.resourceType == resourceType) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.bytes, bytes) || other.bytes == bytes) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, publicId, secureUrl,
      resourceType, format, bytes, width, height, duration);

  /// Create a copy of MediaAssetModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaAssetModelImplCopyWith<_$MediaAssetModelImpl> get copyWith =>
      __$$MediaAssetModelImplCopyWithImpl<_$MediaAssetModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaAssetModelImplToJson(
      this,
    );
  }
}

abstract class _MediaAssetModel implements MediaAssetModel {
  const factory _MediaAssetModel(
          {@JsonKey(name: 'public_id') required final String publicId,
          @JsonKey(name: 'secure_url') required final String secureUrl,
          @JsonKey(name: 'resource_type') required final String resourceType,
          @JsonKey(name: 'format') required final String format,
          @JsonKey(name: 'bytes') required final int bytes,
          @JsonKey(name: 'width') final int width,
          @JsonKey(name: 'height') final int height,
          @JsonKey(name: 'duration') final double? duration}) =
      _$MediaAssetModelImpl;

  factory _MediaAssetModel.fromJson(Map<String, dynamic> json) =
      _$MediaAssetModelImpl.fromJson;

  @override
  @JsonKey(name: 'public_id')
  String get publicId;
  @override
  @JsonKey(name: 'secure_url')
  String get secureUrl;
  @override
  @JsonKey(name: 'resource_type')
  String get resourceType;
  @override
  @JsonKey(name: 'format')
  String get format;
  @override
  @JsonKey(name: 'bytes')
  int get bytes;
  @override
  @JsonKey(name: 'width')
  int get width;
  @override
  @JsonKey(name: 'height')
  int get height;
  @override
  @JsonKey(name: 'duration')
  double? get duration;

  /// Create a copy of MediaAssetModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MediaAssetModelImplCopyWith<_$MediaAssetModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
