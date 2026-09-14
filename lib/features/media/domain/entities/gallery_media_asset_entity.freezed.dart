// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gallery_media_asset_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GalleryMediaAsset {

 String get id; AssetEntity get assetEntity; int get width; int get height; DateTime get createDateTime;
/// Create a copy of GalleryMediaAsset
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GalleryMediaAssetCopyWith<GalleryMediaAsset> get copyWith => _$GalleryMediaAssetCopyWithImpl<GalleryMediaAsset>(this as GalleryMediaAsset, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GalleryMediaAsset&&(identical(other.id, id) || other.id == id)&&(identical(other.assetEntity, assetEntity) || other.assetEntity == assetEntity)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.createDateTime, createDateTime) || other.createDateTime == createDateTime));
}


@override
int get hashCode => Object.hash(runtimeType,id,assetEntity,width,height,createDateTime);

@override
String toString() {
  return 'GalleryMediaAsset(id: $id, assetEntity: $assetEntity, width: $width, height: $height, createDateTime: $createDateTime)';
}


}

/// @nodoc
abstract mixin class $GalleryMediaAssetCopyWith<$Res>  {
  factory $GalleryMediaAssetCopyWith(GalleryMediaAsset value, $Res Function(GalleryMediaAsset) _then) = _$GalleryMediaAssetCopyWithImpl;
@useResult
$Res call({
 String id, AssetEntity assetEntity, int width, int height, DateTime createDateTime
});




}
/// @nodoc
class _$GalleryMediaAssetCopyWithImpl<$Res>
    implements $GalleryMediaAssetCopyWith<$Res> {
  _$GalleryMediaAssetCopyWithImpl(this._self, this._then);

  final GalleryMediaAsset _self;
  final $Res Function(GalleryMediaAsset) _then;

/// Create a copy of GalleryMediaAsset
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? assetEntity = null,Object? width = null,Object? height = null,Object? createDateTime = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,assetEntity: null == assetEntity ? _self.assetEntity : assetEntity // ignore: cast_nullable_to_non_nullable
as AssetEntity,width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,createDateTime: null == createDateTime ? _self.createDateTime : createDateTime // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [GalleryMediaAsset].
extension GalleryMediaAssetPatterns on GalleryMediaAsset {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GalleryMediaAsset value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GalleryMediaAsset() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GalleryMediaAsset value)  $default,){
final _that = this;
switch (_that) {
case _GalleryMediaAsset():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GalleryMediaAsset value)?  $default,){
final _that = this;
switch (_that) {
case _GalleryMediaAsset() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  AssetEntity assetEntity,  int width,  int height,  DateTime createDateTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GalleryMediaAsset() when $default != null:
return $default(_that.id,_that.assetEntity,_that.width,_that.height,_that.createDateTime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  AssetEntity assetEntity,  int width,  int height,  DateTime createDateTime)  $default,) {final _that = this;
switch (_that) {
case _GalleryMediaAsset():
return $default(_that.id,_that.assetEntity,_that.width,_that.height,_that.createDateTime);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  AssetEntity assetEntity,  int width,  int height,  DateTime createDateTime)?  $default,) {final _that = this;
switch (_that) {
case _GalleryMediaAsset() when $default != null:
return $default(_that.id,_that.assetEntity,_that.width,_that.height,_that.createDateTime);case _:
  return null;

}
}

}

/// @nodoc


class _GalleryMediaAsset extends GalleryMediaAsset {
  const _GalleryMediaAsset({required this.id, required this.assetEntity, required this.width, required this.height, required this.createDateTime}): super._();
  

@override final  String id;
@override final  AssetEntity assetEntity;
@override final  int width;
@override final  int height;
@override final  DateTime createDateTime;

/// Create a copy of GalleryMediaAsset
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GalleryMediaAssetCopyWith<_GalleryMediaAsset> get copyWith => __$GalleryMediaAssetCopyWithImpl<_GalleryMediaAsset>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GalleryMediaAsset&&(identical(other.id, id) || other.id == id)&&(identical(other.assetEntity, assetEntity) || other.assetEntity == assetEntity)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.createDateTime, createDateTime) || other.createDateTime == createDateTime));
}


@override
int get hashCode => Object.hash(runtimeType,id,assetEntity,width,height,createDateTime);

@override
String toString() {
  return 'GalleryMediaAsset(id: $id, assetEntity: $assetEntity, width: $width, height: $height, createDateTime: $createDateTime)';
}


}

/// @nodoc
abstract mixin class _$GalleryMediaAssetCopyWith<$Res> implements $GalleryMediaAssetCopyWith<$Res> {
  factory _$GalleryMediaAssetCopyWith(_GalleryMediaAsset value, $Res Function(_GalleryMediaAsset) _then) = __$GalleryMediaAssetCopyWithImpl;
@override @useResult
$Res call({
 String id, AssetEntity assetEntity, int width, int height, DateTime createDateTime
});




}
/// @nodoc
class __$GalleryMediaAssetCopyWithImpl<$Res>
    implements _$GalleryMediaAssetCopyWith<$Res> {
  __$GalleryMediaAssetCopyWithImpl(this._self, this._then);

  final _GalleryMediaAsset _self;
  final $Res Function(_GalleryMediaAsset) _then;

/// Create a copy of GalleryMediaAsset
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? assetEntity = null,Object? width = null,Object? height = null,Object? createDateTime = null,}) {
  return _then(_GalleryMediaAsset(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,assetEntity: null == assetEntity ? _self.assetEntity : assetEntity // ignore: cast_nullable_to_non_nullable
as AssetEntity,width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,createDateTime: null == createDateTime ? _self.createDateTime : createDateTime // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc
mixin _$GalleryMediaList {

 List<GalleryMediaAsset> get assets; int get currentPage; int get totalCount; bool get hasMore;
/// Create a copy of GalleryMediaList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GalleryMediaListCopyWith<GalleryMediaList> get copyWith => _$GalleryMediaListCopyWithImpl<GalleryMediaList>(this as GalleryMediaList, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GalleryMediaList&&const DeepCollectionEquality().equals(other.assets, assets)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(assets),currentPage,totalCount,hasMore);

@override
String toString() {
  return 'GalleryMediaList(assets: $assets, currentPage: $currentPage, totalCount: $totalCount, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $GalleryMediaListCopyWith<$Res>  {
  factory $GalleryMediaListCopyWith(GalleryMediaList value, $Res Function(GalleryMediaList) _then) = _$GalleryMediaListCopyWithImpl;
@useResult
$Res call({
 List<GalleryMediaAsset> assets, int currentPage, int totalCount, bool hasMore
});




}
/// @nodoc
class _$GalleryMediaListCopyWithImpl<$Res>
    implements $GalleryMediaListCopyWith<$Res> {
  _$GalleryMediaListCopyWithImpl(this._self, this._then);

  final GalleryMediaList _self;
  final $Res Function(GalleryMediaList) _then;

/// Create a copy of GalleryMediaList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? assets = null,Object? currentPage = null,Object? totalCount = null,Object? hasMore = null,}) {
  return _then(_self.copyWith(
assets: null == assets ? _self.assets : assets // ignore: cast_nullable_to_non_nullable
as List<GalleryMediaAsset>,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [GalleryMediaList].
extension GalleryMediaListPatterns on GalleryMediaList {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GalleryMediaList value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GalleryMediaList() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GalleryMediaList value)  $default,){
final _that = this;
switch (_that) {
case _GalleryMediaList():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GalleryMediaList value)?  $default,){
final _that = this;
switch (_that) {
case _GalleryMediaList() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<GalleryMediaAsset> assets,  int currentPage,  int totalCount,  bool hasMore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GalleryMediaList() when $default != null:
return $default(_that.assets,_that.currentPage,_that.totalCount,_that.hasMore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<GalleryMediaAsset> assets,  int currentPage,  int totalCount,  bool hasMore)  $default,) {final _that = this;
switch (_that) {
case _GalleryMediaList():
return $default(_that.assets,_that.currentPage,_that.totalCount,_that.hasMore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<GalleryMediaAsset> assets,  int currentPage,  int totalCount,  bool hasMore)?  $default,) {final _that = this;
switch (_that) {
case _GalleryMediaList() when $default != null:
return $default(_that.assets,_that.currentPage,_that.totalCount,_that.hasMore);case _:
  return null;

}
}

}

/// @nodoc


class _GalleryMediaList implements GalleryMediaList {
  const _GalleryMediaList({required final  List<GalleryMediaAsset> assets, required this.currentPage, required this.totalCount, required this.hasMore}): _assets = assets;
  

 final  List<GalleryMediaAsset> _assets;
@override List<GalleryMediaAsset> get assets {
  if (_assets is EqualUnmodifiableListView) return _assets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_assets);
}

@override final  int currentPage;
@override final  int totalCount;
@override final  bool hasMore;

/// Create a copy of GalleryMediaList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GalleryMediaListCopyWith<_GalleryMediaList> get copyWith => __$GalleryMediaListCopyWithImpl<_GalleryMediaList>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GalleryMediaList&&const DeepCollectionEquality().equals(other._assets, _assets)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_assets),currentPage,totalCount,hasMore);

@override
String toString() {
  return 'GalleryMediaList(assets: $assets, currentPage: $currentPage, totalCount: $totalCount, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class _$GalleryMediaListCopyWith<$Res> implements $GalleryMediaListCopyWith<$Res> {
  factory _$GalleryMediaListCopyWith(_GalleryMediaList value, $Res Function(_GalleryMediaList) _then) = __$GalleryMediaListCopyWithImpl;
@override @useResult
$Res call({
 List<GalleryMediaAsset> assets, int currentPage, int totalCount, bool hasMore
});




}
/// @nodoc
class __$GalleryMediaListCopyWithImpl<$Res>
    implements _$GalleryMediaListCopyWith<$Res> {
  __$GalleryMediaListCopyWithImpl(this._self, this._then);

  final _GalleryMediaList _self;
  final $Res Function(_GalleryMediaList) _then;

/// Create a copy of GalleryMediaList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? assets = null,Object? currentPage = null,Object? totalCount = null,Object? hasMore = null,}) {
  return _then(_GalleryMediaList(
assets: null == assets ? _self._assets : assets // ignore: cast_nullable_to_non_nullable
as List<GalleryMediaAsset>,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
