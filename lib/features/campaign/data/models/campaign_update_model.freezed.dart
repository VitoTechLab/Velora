// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaign_update_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CampaignUpdateModel {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'campaign_id') String get campaignId;@JsonKey(name: 'title') String? get title;@JsonKey(name: 'update_text') String get updateText;@JsonKey(name: 'image_url') String? get imageUrl;@JsonKey(name: 'created_at') DateTime get createdAt;
/// Create a copy of CampaignUpdateModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CampaignUpdateModelCopyWith<CampaignUpdateModel> get copyWith => _$CampaignUpdateModelCopyWithImpl<CampaignUpdateModel>(this as CampaignUpdateModel, _$identity);

  /// Serializes this CampaignUpdateModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CampaignUpdateModel&&(identical(other.id, id) || other.id == id)&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.title, title) || other.title == title)&&(identical(other.updateText, updateText) || other.updateText == updateText)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,campaignId,title,updateText,imageUrl,createdAt);

@override
String toString() {
  return 'CampaignUpdateModel(id: $id, campaignId: $campaignId, title: $title, updateText: $updateText, imageUrl: $imageUrl, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $CampaignUpdateModelCopyWith<$Res>  {
  factory $CampaignUpdateModelCopyWith(CampaignUpdateModel value, $Res Function(CampaignUpdateModel) _then) = _$CampaignUpdateModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'campaign_id') String campaignId,@JsonKey(name: 'title') String? title,@JsonKey(name: 'update_text') String updateText,@JsonKey(name: 'image_url') String? imageUrl,@JsonKey(name: 'created_at') DateTime createdAt
});




}
/// @nodoc
class _$CampaignUpdateModelCopyWithImpl<$Res>
    implements $CampaignUpdateModelCopyWith<$Res> {
  _$CampaignUpdateModelCopyWithImpl(this._self, this._then);

  final CampaignUpdateModel _self;
  final $Res Function(CampaignUpdateModel) _then;

/// Create a copy of CampaignUpdateModel
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


/// Adds pattern-matching-related methods to [CampaignUpdateModel].
extension CampaignUpdateModelPatterns on CampaignUpdateModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CampaignUpdateModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CampaignUpdateModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CampaignUpdateModel value)  $default,){
final _that = this;
switch (_that) {
case _CampaignUpdateModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CampaignUpdateModel value)?  $default,){
final _that = this;
switch (_that) {
case _CampaignUpdateModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'campaign_id')  String campaignId, @JsonKey(name: 'title')  String? title, @JsonKey(name: 'update_text')  String updateText, @JsonKey(name: 'image_url')  String? imageUrl, @JsonKey(name: 'created_at')  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CampaignUpdateModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'campaign_id')  String campaignId, @JsonKey(name: 'title')  String? title, @JsonKey(name: 'update_text')  String updateText, @JsonKey(name: 'image_url')  String? imageUrl, @JsonKey(name: 'created_at')  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _CampaignUpdateModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'campaign_id')  String campaignId, @JsonKey(name: 'title')  String? title, @JsonKey(name: 'update_text')  String updateText, @JsonKey(name: 'image_url')  String? imageUrl, @JsonKey(name: 'created_at')  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _CampaignUpdateModel() when $default != null:
return $default(_that.id,_that.campaignId,_that.title,_that.updateText,_that.imageUrl,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CampaignUpdateModel extends CampaignUpdateModel {
  const _CampaignUpdateModel({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'campaign_id') required this.campaignId, @JsonKey(name: 'title') this.title, @JsonKey(name: 'update_text') required this.updateText, @JsonKey(name: 'image_url') this.imageUrl, @JsonKey(name: 'created_at') required this.createdAt}): super._();
  factory _CampaignUpdateModel.fromJson(Map<String, dynamic> json) => _$CampaignUpdateModelFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'campaign_id') final  String campaignId;
@override@JsonKey(name: 'title') final  String? title;
@override@JsonKey(name: 'update_text') final  String updateText;
@override@JsonKey(name: 'image_url') final  String? imageUrl;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;

/// Create a copy of CampaignUpdateModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CampaignUpdateModelCopyWith<_CampaignUpdateModel> get copyWith => __$CampaignUpdateModelCopyWithImpl<_CampaignUpdateModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CampaignUpdateModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CampaignUpdateModel&&(identical(other.id, id) || other.id == id)&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.title, title) || other.title == title)&&(identical(other.updateText, updateText) || other.updateText == updateText)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,campaignId,title,updateText,imageUrl,createdAt);

@override
String toString() {
  return 'CampaignUpdateModel(id: $id, campaignId: $campaignId, title: $title, updateText: $updateText, imageUrl: $imageUrl, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$CampaignUpdateModelCopyWith<$Res> implements $CampaignUpdateModelCopyWith<$Res> {
  factory _$CampaignUpdateModelCopyWith(_CampaignUpdateModel value, $Res Function(_CampaignUpdateModel) _then) = __$CampaignUpdateModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'campaign_id') String campaignId,@JsonKey(name: 'title') String? title,@JsonKey(name: 'update_text') String updateText,@JsonKey(name: 'image_url') String? imageUrl,@JsonKey(name: 'created_at') DateTime createdAt
});




}
/// @nodoc
class __$CampaignUpdateModelCopyWithImpl<$Res>
    implements _$CampaignUpdateModelCopyWith<$Res> {
  __$CampaignUpdateModelCopyWithImpl(this._self, this._then);

  final _CampaignUpdateModel _self;
  final $Res Function(_CampaignUpdateModel) _then;

/// Create a copy of CampaignUpdateModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? campaignId = null,Object? title = freezed,Object? updateText = null,Object? imageUrl = freezed,Object? createdAt = null,}) {
  return _then(_CampaignUpdateModel(
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
