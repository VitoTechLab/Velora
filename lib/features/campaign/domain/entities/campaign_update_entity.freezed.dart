// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaign_update_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CampaignUpdateEntity {

 String get id; String get campaignId; String? get title; String get updateText; String? get imageUrl; DateTime get createdAt;
/// Create a copy of CampaignUpdateEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CampaignUpdateEntityCopyWith<CampaignUpdateEntity> get copyWith => _$CampaignUpdateEntityCopyWithImpl<CampaignUpdateEntity>(this as CampaignUpdateEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CampaignUpdateEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.title, title) || other.title == title)&&(identical(other.updateText, updateText) || other.updateText == updateText)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,campaignId,title,updateText,imageUrl,createdAt);

@override
String toString() {
  return 'CampaignUpdateEntity(id: $id, campaignId: $campaignId, title: $title, updateText: $updateText, imageUrl: $imageUrl, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $CampaignUpdateEntityCopyWith<$Res>  {
  factory $CampaignUpdateEntityCopyWith(CampaignUpdateEntity value, $Res Function(CampaignUpdateEntity) _then) = _$CampaignUpdateEntityCopyWithImpl;
@useResult
$Res call({
 String id, String campaignId, String? title, String updateText, String? imageUrl, DateTime createdAt
});




}
/// @nodoc
class _$CampaignUpdateEntityCopyWithImpl<$Res>
    implements $CampaignUpdateEntityCopyWith<$Res> {
  _$CampaignUpdateEntityCopyWithImpl(this._self, this._then);

  final CampaignUpdateEntity _self;
  final $Res Function(CampaignUpdateEntity) _then;

/// Create a copy of CampaignUpdateEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? campaignId = null,Object? title = freezed,Object? updateText = null,Object? imageUrl = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,campaignId: null == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,updateText: null == updateText ? _self.updateText : updateText // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [CampaignUpdateEntity].
extension CampaignUpdateEntityPatterns on CampaignUpdateEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CampaignUpdateEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CampaignUpdateEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CampaignUpdateEntity value)  $default,){
final _that = this;
switch (_that) {
case _CampaignUpdateEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CampaignUpdateEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CampaignUpdateEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String campaignId,  String? title,  String updateText,  String? imageUrl,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CampaignUpdateEntity() when $default != null:
return $default(_that.id,_that.campaignId,_that.title,_that.updateText,_that.imageUrl,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String campaignId,  String? title,  String updateText,  String? imageUrl,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _CampaignUpdateEntity():
return $default(_that.id,_that.campaignId,_that.title,_that.updateText,_that.imageUrl,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String campaignId,  String? title,  String updateText,  String? imageUrl,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _CampaignUpdateEntity() when $default != null:
return $default(_that.id,_that.campaignId,_that.title,_that.updateText,_that.imageUrl,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _CampaignUpdateEntity implements CampaignUpdateEntity {
  const _CampaignUpdateEntity({required this.id, required this.campaignId, this.title, required this.updateText, this.imageUrl, required this.createdAt});
  

@override final  String id;
@override final  String campaignId;
@override final  String? title;
@override final  String updateText;
@override final  String? imageUrl;
@override final  DateTime createdAt;

/// Create a copy of CampaignUpdateEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CampaignUpdateEntityCopyWith<_CampaignUpdateEntity> get copyWith => __$CampaignUpdateEntityCopyWithImpl<_CampaignUpdateEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CampaignUpdateEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.title, title) || other.title == title)&&(identical(other.updateText, updateText) || other.updateText == updateText)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,campaignId,title,updateText,imageUrl,createdAt);

@override
String toString() {
  return 'CampaignUpdateEntity(id: $id, campaignId: $campaignId, title: $title, updateText: $updateText, imageUrl: $imageUrl, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$CampaignUpdateEntityCopyWith<$Res> implements $CampaignUpdateEntityCopyWith<$Res> {
  factory _$CampaignUpdateEntityCopyWith(_CampaignUpdateEntity value, $Res Function(_CampaignUpdateEntity) _then) = __$CampaignUpdateEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String campaignId, String? title, String updateText, String? imageUrl, DateTime createdAt
});




}
/// @nodoc
class __$CampaignUpdateEntityCopyWithImpl<$Res>
    implements _$CampaignUpdateEntityCopyWith<$Res> {
  __$CampaignUpdateEntityCopyWithImpl(this._self, this._then);

  final _CampaignUpdateEntity _self;
  final $Res Function(_CampaignUpdateEntity) _then;

/// Create a copy of CampaignUpdateEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? campaignId = null,Object? title = freezed,Object? updateText = null,Object? imageUrl = freezed,Object? createdAt = null,}) {
  return _then(_CampaignUpdateEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,campaignId: null == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,updateText: null == updateText ? _self.updateText : updateText // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
