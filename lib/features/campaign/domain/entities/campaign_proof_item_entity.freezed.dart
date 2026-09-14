// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaign_proof_item_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CampaignProofItemEntity {

 String get id; String get campaignId; String get mediaUrl; String? get caption; String get mediaType;// image, video
 int get sortOrder; DateTime get createdAt;
/// Create a copy of CampaignProofItemEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CampaignProofItemEntityCopyWith<CampaignProofItemEntity> get copyWith => _$CampaignProofItemEntityCopyWithImpl<CampaignProofItemEntity>(this as CampaignProofItemEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CampaignProofItemEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.mediaUrl, mediaUrl) || other.mediaUrl == mediaUrl)&&(identical(other.caption, caption) || other.caption == caption)&&(identical(other.mediaType, mediaType) || other.mediaType == mediaType)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,campaignId,mediaUrl,caption,mediaType,sortOrder,createdAt);

@override
String toString() {
  return 'CampaignProofItemEntity(id: $id, campaignId: $campaignId, mediaUrl: $mediaUrl, caption: $caption, mediaType: $mediaType, sortOrder: $sortOrder, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $CampaignProofItemEntityCopyWith<$Res>  {
  factory $CampaignProofItemEntityCopyWith(CampaignProofItemEntity value, $Res Function(CampaignProofItemEntity) _then) = _$CampaignProofItemEntityCopyWithImpl;
@useResult
$Res call({
 String id, String campaignId, String mediaUrl, String? caption, String mediaType, int sortOrder, DateTime createdAt
});




}
/// @nodoc
class _$CampaignProofItemEntityCopyWithImpl<$Res>
    implements $CampaignProofItemEntityCopyWith<$Res> {
  _$CampaignProofItemEntityCopyWithImpl(this._self, this._then);

  final CampaignProofItemEntity _self;
  final $Res Function(CampaignProofItemEntity) _then;

/// Create a copy of CampaignProofItemEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? campaignId = null,Object? mediaUrl = null,Object? caption = freezed,Object? mediaType = null,Object? sortOrder = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,campaignId: null == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String,mediaUrl: null == mediaUrl ? _self.mediaUrl : mediaUrl // ignore: cast_nullable_to_non_nullable
as String,caption: freezed == caption ? _self.caption : caption // ignore: cast_nullable_to_non_nullable
as String?,mediaType: null == mediaType ? _self.mediaType : mediaType // ignore: cast_nullable_to_non_nullable
as String,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [CampaignProofItemEntity].
extension CampaignProofItemEntityPatterns on CampaignProofItemEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CampaignProofItemEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CampaignProofItemEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CampaignProofItemEntity value)  $default,){
final _that = this;
switch (_that) {
case _CampaignProofItemEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CampaignProofItemEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CampaignProofItemEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String campaignId,  String mediaUrl,  String? caption,  String mediaType,  int sortOrder,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CampaignProofItemEntity() when $default != null:
return $default(_that.id,_that.campaignId,_that.mediaUrl,_that.caption,_that.mediaType,_that.sortOrder,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String campaignId,  String mediaUrl,  String? caption,  String mediaType,  int sortOrder,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _CampaignProofItemEntity():
return $default(_that.id,_that.campaignId,_that.mediaUrl,_that.caption,_that.mediaType,_that.sortOrder,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String campaignId,  String mediaUrl,  String? caption,  String mediaType,  int sortOrder,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _CampaignProofItemEntity() when $default != null:
return $default(_that.id,_that.campaignId,_that.mediaUrl,_that.caption,_that.mediaType,_that.sortOrder,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _CampaignProofItemEntity implements CampaignProofItemEntity {
  const _CampaignProofItemEntity({required this.id, required this.campaignId, required this.mediaUrl, this.caption, this.mediaType = 'image', this.sortOrder = 0, required this.createdAt});
  

@override final  String id;
@override final  String campaignId;
@override final  String mediaUrl;
@override final  String? caption;
@override@JsonKey() final  String mediaType;
// image, video
@override@JsonKey() final  int sortOrder;
@override final  DateTime createdAt;

/// Create a copy of CampaignProofItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CampaignProofItemEntityCopyWith<_CampaignProofItemEntity> get copyWith => __$CampaignProofItemEntityCopyWithImpl<_CampaignProofItemEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CampaignProofItemEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.mediaUrl, mediaUrl) || other.mediaUrl == mediaUrl)&&(identical(other.caption, caption) || other.caption == caption)&&(identical(other.mediaType, mediaType) || other.mediaType == mediaType)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,campaignId,mediaUrl,caption,mediaType,sortOrder,createdAt);

@override
String toString() {
  return 'CampaignProofItemEntity(id: $id, campaignId: $campaignId, mediaUrl: $mediaUrl, caption: $caption, mediaType: $mediaType, sortOrder: $sortOrder, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$CampaignProofItemEntityCopyWith<$Res> implements $CampaignProofItemEntityCopyWith<$Res> {
  factory _$CampaignProofItemEntityCopyWith(_CampaignProofItemEntity value, $Res Function(_CampaignProofItemEntity) _then) = __$CampaignProofItemEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String campaignId, String mediaUrl, String? caption, String mediaType, int sortOrder, DateTime createdAt
});




}
/// @nodoc
class __$CampaignProofItemEntityCopyWithImpl<$Res>
    implements _$CampaignProofItemEntityCopyWith<$Res> {
  __$CampaignProofItemEntityCopyWithImpl(this._self, this._then);

  final _CampaignProofItemEntity _self;
  final $Res Function(_CampaignProofItemEntity) _then;

/// Create a copy of CampaignProofItemEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? campaignId = null,Object? mediaUrl = null,Object? caption = freezed,Object? mediaType = null,Object? sortOrder = null,Object? createdAt = null,}) {
  return _then(_CampaignProofItemEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,campaignId: null == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String,mediaUrl: null == mediaUrl ? _self.mediaUrl : mediaUrl // ignore: cast_nullable_to_non_nullable
as String,caption: freezed == caption ? _self.caption : caption // ignore: cast_nullable_to_non_nullable
as String?,mediaType: null == mediaType ? _self.mediaType : mediaType // ignore: cast_nullable_to_non_nullable
as String,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
