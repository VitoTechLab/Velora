// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gallery_media_asset_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GalleryMediaAsset {
  String get id => throw _privateConstructorUsedError;
  AssetEntity get assetEntity => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  DateTime get createDateTime => throw _privateConstructorUsedError;

  /// Create a copy of GalleryMediaAsset
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GalleryMediaAssetCopyWith<GalleryMediaAsset> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GalleryMediaAssetCopyWith<$Res> {
  factory $GalleryMediaAssetCopyWith(
          GalleryMediaAsset value, $Res Function(GalleryMediaAsset) then) =
      _$GalleryMediaAssetCopyWithImpl<$Res, GalleryMediaAsset>;
  @useResult
  $Res call(
      {String id,
      AssetEntity assetEntity,
      int width,
      int height,
      DateTime createDateTime});
}

/// @nodoc
class _$GalleryMediaAssetCopyWithImpl<$Res, $Val extends GalleryMediaAsset>
    implements $GalleryMediaAssetCopyWith<$Res> {
  _$GalleryMediaAssetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GalleryMediaAsset
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? assetEntity = null,
    Object? width = null,
    Object? height = null,
    Object? createDateTime = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      assetEntity: null == assetEntity
          ? _value.assetEntity
          : assetEntity // ignore: cast_nullable_to_non_nullable
              as AssetEntity,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      createDateTime: null == createDateTime
          ? _value.createDateTime
          : createDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GalleryMediaAssetImplCopyWith<$Res>
    implements $GalleryMediaAssetCopyWith<$Res> {
  factory _$$GalleryMediaAssetImplCopyWith(_$GalleryMediaAssetImpl value,
          $Res Function(_$GalleryMediaAssetImpl) then) =
      __$$GalleryMediaAssetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      AssetEntity assetEntity,
      int width,
      int height,
      DateTime createDateTime});
}

/// @nodoc
class __$$GalleryMediaAssetImplCopyWithImpl<$Res>
    extends _$GalleryMediaAssetCopyWithImpl<$Res, _$GalleryMediaAssetImpl>
    implements _$$GalleryMediaAssetImplCopyWith<$Res> {
  __$$GalleryMediaAssetImplCopyWithImpl(_$GalleryMediaAssetImpl _value,
      $Res Function(_$GalleryMediaAssetImpl) _then)
      : super(_value, _then);

  /// Create a copy of GalleryMediaAsset
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? assetEntity = null,
    Object? width = null,
    Object? height = null,
    Object? createDateTime = null,
  }) {
    return _then(_$GalleryMediaAssetImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      assetEntity: null == assetEntity
          ? _value.assetEntity
          : assetEntity // ignore: cast_nullable_to_non_nullable
              as AssetEntity,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      createDateTime: null == createDateTime
          ? _value.createDateTime
          : createDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$GalleryMediaAssetImpl extends _GalleryMediaAsset {
  const _$GalleryMediaAssetImpl(
      {required this.id,
      required this.assetEntity,
      required this.width,
      required this.height,
      required this.createDateTime})
      : super._();

  @override
  final String id;
  @override
  final AssetEntity assetEntity;
  @override
  final int width;
  @override
  final int height;
  @override
  final DateTime createDateTime;

  @override
  String toString() {
    return 'GalleryMediaAsset(id: $id, assetEntity: $assetEntity, width: $width, height: $height, createDateTime: $createDateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GalleryMediaAssetImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.assetEntity, assetEntity) ||
                other.assetEntity == assetEntity) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.createDateTime, createDateTime) ||
                other.createDateTime == createDateTime));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, assetEntity, width, height, createDateTime);

  /// Create a copy of GalleryMediaAsset
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GalleryMediaAssetImplCopyWith<_$GalleryMediaAssetImpl> get copyWith =>
      __$$GalleryMediaAssetImplCopyWithImpl<_$GalleryMediaAssetImpl>(
          this, _$identity);
}

abstract class _GalleryMediaAsset extends GalleryMediaAsset {
  const factory _GalleryMediaAsset(
      {required final String id,
      required final AssetEntity assetEntity,
      required final int width,
      required final int height,
      required final DateTime createDateTime}) = _$GalleryMediaAssetImpl;
  const _GalleryMediaAsset._() : super._();

  @override
  String get id;
  @override
  AssetEntity get assetEntity;
  @override
  int get width;
  @override
  int get height;
  @override
  DateTime get createDateTime;

  /// Create a copy of GalleryMediaAsset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GalleryMediaAssetImplCopyWith<_$GalleryMediaAssetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GalleryMediaList {
  List<GalleryMediaAsset> get assets => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;

  /// Create a copy of GalleryMediaList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GalleryMediaListCopyWith<GalleryMediaList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GalleryMediaListCopyWith<$Res> {
  factory $GalleryMediaListCopyWith(
          GalleryMediaList value, $Res Function(GalleryMediaList) then) =
      _$GalleryMediaListCopyWithImpl<$Res, GalleryMediaList>;
  @useResult
  $Res call(
      {List<GalleryMediaAsset> assets,
      int currentPage,
      int totalCount,
      bool hasMore});
}

/// @nodoc
class _$GalleryMediaListCopyWithImpl<$Res, $Val extends GalleryMediaList>
    implements $GalleryMediaListCopyWith<$Res> {
  _$GalleryMediaListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GalleryMediaList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assets = null,
    Object? currentPage = null,
    Object? totalCount = null,
    Object? hasMore = null,
  }) {
    return _then(_value.copyWith(
      assets: null == assets
          ? _value.assets
          : assets // ignore: cast_nullable_to_non_nullable
              as List<GalleryMediaAsset>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GalleryMediaListImplCopyWith<$Res>
    implements $GalleryMediaListCopyWith<$Res> {
  factory _$$GalleryMediaListImplCopyWith(_$GalleryMediaListImpl value,
          $Res Function(_$GalleryMediaListImpl) then) =
      __$$GalleryMediaListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<GalleryMediaAsset> assets,
      int currentPage,
      int totalCount,
      bool hasMore});
}

/// @nodoc
class __$$GalleryMediaListImplCopyWithImpl<$Res>
    extends _$GalleryMediaListCopyWithImpl<$Res, _$GalleryMediaListImpl>
    implements _$$GalleryMediaListImplCopyWith<$Res> {
  __$$GalleryMediaListImplCopyWithImpl(_$GalleryMediaListImpl _value,
      $Res Function(_$GalleryMediaListImpl) _then)
      : super(_value, _then);

  /// Create a copy of GalleryMediaList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assets = null,
    Object? currentPage = null,
    Object? totalCount = null,
    Object? hasMore = null,
  }) {
    return _then(_$GalleryMediaListImpl(
      assets: null == assets
          ? _value._assets
          : assets // ignore: cast_nullable_to_non_nullable
              as List<GalleryMediaAsset>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GalleryMediaListImpl implements _GalleryMediaList {
  const _$GalleryMediaListImpl(
      {required final List<GalleryMediaAsset> assets,
      required this.currentPage,
      required this.totalCount,
      required this.hasMore})
      : _assets = assets;

  final List<GalleryMediaAsset> _assets;
  @override
  List<GalleryMediaAsset> get assets {
    if (_assets is EqualUnmodifiableListView) return _assets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assets);
  }

  @override
  final int currentPage;
  @override
  final int totalCount;
  @override
  final bool hasMore;

  @override
  String toString() {
    return 'GalleryMediaList(assets: $assets, currentPage: $currentPage, totalCount: $totalCount, hasMore: $hasMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GalleryMediaListImpl &&
            const DeepCollectionEquality().equals(other._assets, _assets) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_assets),
      currentPage,
      totalCount,
      hasMore);

  /// Create a copy of GalleryMediaList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GalleryMediaListImplCopyWith<_$GalleryMediaListImpl> get copyWith =>
      __$$GalleryMediaListImplCopyWithImpl<_$GalleryMediaListImpl>(
          this, _$identity);
}

abstract class _GalleryMediaList implements GalleryMediaList {
  const factory _GalleryMediaList(
      {required final List<GalleryMediaAsset> assets,
      required final int currentPage,
      required final int totalCount,
      required final bool hasMore}) = _$GalleryMediaListImpl;

  @override
  List<GalleryMediaAsset> get assets;
  @override
  int get currentPage;
  @override
  int get totalCount;
  @override
  bool get hasMore;

  /// Create a copy of GalleryMediaList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GalleryMediaListImplCopyWith<_$GalleryMediaListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
