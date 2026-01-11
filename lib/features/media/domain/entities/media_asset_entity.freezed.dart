// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_asset_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MediaAsset {
  String get publicId => throw _privateConstructorUsedError;
  String get secureUrl => throw _privateConstructorUsedError;
  String get resourceType => throw _privateConstructorUsedError;
  String get format => throw _privateConstructorUsedError;
  int get bytes => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;

  /// Create a copy of MediaAsset
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MediaAssetCopyWith<MediaAsset> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaAssetCopyWith<$Res> {
  factory $MediaAssetCopyWith(
          MediaAsset value, $Res Function(MediaAsset) then) =
      _$MediaAssetCopyWithImpl<$Res, MediaAsset>;
  @useResult
  $Res call(
      {String publicId,
      String secureUrl,
      String resourceType,
      String format,
      int bytes,
      int width,
      int height});
}

/// @nodoc
class _$MediaAssetCopyWithImpl<$Res, $Val extends MediaAsset>
    implements $MediaAssetCopyWith<$Res> {
  _$MediaAssetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MediaAsset
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MediaAssetImplCopyWith<$Res>
    implements $MediaAssetCopyWith<$Res> {
  factory _$$MediaAssetImplCopyWith(
          _$MediaAssetImpl value, $Res Function(_$MediaAssetImpl) then) =
      __$$MediaAssetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String publicId,
      String secureUrl,
      String resourceType,
      String format,
      int bytes,
      int width,
      int height});
}

/// @nodoc
class __$$MediaAssetImplCopyWithImpl<$Res>
    extends _$MediaAssetCopyWithImpl<$Res, _$MediaAssetImpl>
    implements _$$MediaAssetImplCopyWith<$Res> {
  __$$MediaAssetImplCopyWithImpl(
      _$MediaAssetImpl _value, $Res Function(_$MediaAssetImpl) _then)
      : super(_value, _then);

  /// Create a copy of MediaAsset
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
  }) {
    return _then(_$MediaAssetImpl(
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
    ));
  }
}

/// @nodoc

class _$MediaAssetImpl implements _MediaAsset {
  const _$MediaAssetImpl(
      {required this.publicId,
      required this.secureUrl,
      required this.resourceType,
      required this.format,
      required this.bytes,
      required this.width,
      required this.height});

  @override
  final String publicId;
  @override
  final String secureUrl;
  @override
  final String resourceType;
  @override
  final String format;
  @override
  final int bytes;
  @override
  final int width;
  @override
  final int height;

  @override
  String toString() {
    return 'MediaAsset(publicId: $publicId, secureUrl: $secureUrl, resourceType: $resourceType, format: $format, bytes: $bytes, width: $width, height: $height)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaAssetImpl &&
            (identical(other.publicId, publicId) ||
                other.publicId == publicId) &&
            (identical(other.secureUrl, secureUrl) ||
                other.secureUrl == secureUrl) &&
            (identical(other.resourceType, resourceType) ||
                other.resourceType == resourceType) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.bytes, bytes) || other.bytes == bytes) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @override
  int get hashCode => Object.hash(runtimeType, publicId, secureUrl,
      resourceType, format, bytes, width, height);

  /// Create a copy of MediaAsset
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaAssetImplCopyWith<_$MediaAssetImpl> get copyWith =>
      __$$MediaAssetImplCopyWithImpl<_$MediaAssetImpl>(this, _$identity);
}

abstract class _MediaAsset implements MediaAsset {
  const factory _MediaAsset(
      {required final String publicId,
      required final String secureUrl,
      required final String resourceType,
      required final String format,
      required final int bytes,
      required final int width,
      required final int height}) = _$MediaAssetImpl;

  @override
  String get publicId;
  @override
  String get secureUrl;
  @override
  String get resourceType;
  @override
  String get format;
  @override
  int get bytes;
  @override
  int get width;
  @override
  int get height;

  /// Create a copy of MediaAsset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MediaAssetImplCopyWith<_$MediaAssetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
