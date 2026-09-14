// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaign_document_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CampaignDocumentEntity {

 String get id; String get campaignId; String get title; String get typeLabel; String? get fileUrl; String get status;// pending, verified, rejected
 DateTime get createdAt; DateTime? get updatedAt;
/// Create a copy of CampaignDocumentEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CampaignDocumentEntityCopyWith<CampaignDocumentEntity> get copyWith => _$CampaignDocumentEntityCopyWithImpl<CampaignDocumentEntity>(this as CampaignDocumentEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CampaignDocumentEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.title, title) || other.title == title)&&(identical(other.typeLabel, typeLabel) || other.typeLabel == typeLabel)&&(identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,campaignId,title,typeLabel,fileUrl,status,createdAt,updatedAt);

@override
String toString() {
  return 'CampaignDocumentEntity(id: $id, campaignId: $campaignId, title: $title, typeLabel: $typeLabel, fileUrl: $fileUrl, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $CampaignDocumentEntityCopyWith<$Res>  {
  factory $CampaignDocumentEntityCopyWith(CampaignDocumentEntity value, $Res Function(CampaignDocumentEntity) _then) = _$CampaignDocumentEntityCopyWithImpl;
@useResult
$Res call({
 String id, String campaignId, String title, String typeLabel, String? fileUrl, String status, DateTime createdAt, DateTime? updatedAt
});




}
/// @nodoc
class _$CampaignDocumentEntityCopyWithImpl<$Res>
    implements $CampaignDocumentEntityCopyWith<$Res> {
  _$CampaignDocumentEntityCopyWithImpl(this._self, this._then);

  final CampaignDocumentEntity _self;
  final $Res Function(CampaignDocumentEntity) _then;

/// Create a copy of CampaignDocumentEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? campaignId = null,Object? title = null,Object? typeLabel = null,Object? fileUrl = freezed,Object? status = null,Object? createdAt = null,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,campaignId: null == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,typeLabel: null == typeLabel ? _self.typeLabel : typeLabel // ignore: cast_nullable_to_non_nullable
as String,fileUrl: freezed == fileUrl ? _self.fileUrl : fileUrl // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [CampaignDocumentEntity].
extension CampaignDocumentEntityPatterns on CampaignDocumentEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CampaignDocumentEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CampaignDocumentEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CampaignDocumentEntity value)  $default,){
final _that = this;
switch (_that) {
case _CampaignDocumentEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CampaignDocumentEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CampaignDocumentEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String campaignId,  String title,  String typeLabel,  String? fileUrl,  String status,  DateTime createdAt,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CampaignDocumentEntity() when $default != null:
return $default(_that.id,_that.campaignId,_that.title,_that.typeLabel,_that.fileUrl,_that.status,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String campaignId,  String title,  String typeLabel,  String? fileUrl,  String status,  DateTime createdAt,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _CampaignDocumentEntity():
return $default(_that.id,_that.campaignId,_that.title,_that.typeLabel,_that.fileUrl,_that.status,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String campaignId,  String title,  String typeLabel,  String? fileUrl,  String status,  DateTime createdAt,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _CampaignDocumentEntity() when $default != null:
return $default(_that.id,_that.campaignId,_that.title,_that.typeLabel,_that.fileUrl,_that.status,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _CampaignDocumentEntity implements CampaignDocumentEntity {
  const _CampaignDocumentEntity({required this.id, required this.campaignId, required this.title, this.typeLabel = 'Document', this.fileUrl, this.status = 'pending', required this.createdAt, this.updatedAt});
  

@override final  String id;
@override final  String campaignId;
@override final  String title;
@override@JsonKey() final  String typeLabel;
@override final  String? fileUrl;
@override@JsonKey() final  String status;
// pending, verified, rejected
@override final  DateTime createdAt;
@override final  DateTime? updatedAt;

/// Create a copy of CampaignDocumentEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CampaignDocumentEntityCopyWith<_CampaignDocumentEntity> get copyWith => __$CampaignDocumentEntityCopyWithImpl<_CampaignDocumentEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CampaignDocumentEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.title, title) || other.title == title)&&(identical(other.typeLabel, typeLabel) || other.typeLabel == typeLabel)&&(identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,campaignId,title,typeLabel,fileUrl,status,createdAt,updatedAt);

@override
String toString() {
  return 'CampaignDocumentEntity(id: $id, campaignId: $campaignId, title: $title, typeLabel: $typeLabel, fileUrl: $fileUrl, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$CampaignDocumentEntityCopyWith<$Res> implements $CampaignDocumentEntityCopyWith<$Res> {
  factory _$CampaignDocumentEntityCopyWith(_CampaignDocumentEntity value, $Res Function(_CampaignDocumentEntity) _then) = __$CampaignDocumentEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String campaignId, String title, String typeLabel, String? fileUrl, String status, DateTime createdAt, DateTime? updatedAt
});




}
/// @nodoc
class __$CampaignDocumentEntityCopyWithImpl<$Res>
    implements _$CampaignDocumentEntityCopyWith<$Res> {
  __$CampaignDocumentEntityCopyWithImpl(this._self, this._then);

  final _CampaignDocumentEntity _self;
  final $Res Function(_CampaignDocumentEntity) _then;

/// Create a copy of CampaignDocumentEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? campaignId = null,Object? title = null,Object? typeLabel = null,Object? fileUrl = freezed,Object? status = null,Object? createdAt = null,Object? updatedAt = freezed,}) {
  return _then(_CampaignDocumentEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,campaignId: null == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,typeLabel: null == typeLabel ? _self.typeLabel : typeLabel // ignore: cast_nullable_to_non_nullable
as String,fileUrl: freezed == fileUrl ? _self.fileUrl : fileUrl // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
