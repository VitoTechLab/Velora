// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaign_category_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CampaignCategoryEntity {

 String get id; String get name; String get slug; String? get iconName; bool get isActive; DateTime? get createdAt;
/// Create a copy of CampaignCategoryEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CampaignCategoryEntityCopyWith<CampaignCategoryEntity> get copyWith => _$CampaignCategoryEntityCopyWithImpl<CampaignCategoryEntity>(this as CampaignCategoryEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CampaignCategoryEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.iconName, iconName) || other.iconName == iconName)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,slug,iconName,isActive,createdAt);

@override
String toString() {
  return 'CampaignCategoryEntity(id: $id, name: $name, slug: $slug, iconName: $iconName, isActive: $isActive, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $CampaignCategoryEntityCopyWith<$Res>  {
  factory $CampaignCategoryEntityCopyWith(CampaignCategoryEntity value, $Res Function(CampaignCategoryEntity) _then) = _$CampaignCategoryEntityCopyWithImpl;
@useResult
$Res call({
 String id, String name, String slug, String? iconName, bool isActive, DateTime? createdAt
});




}
/// @nodoc
class _$CampaignCategoryEntityCopyWithImpl<$Res>
    implements $CampaignCategoryEntityCopyWith<$Res> {
  _$CampaignCategoryEntityCopyWithImpl(this._self, this._then);

  final CampaignCategoryEntity _self;
  final $Res Function(CampaignCategoryEntity) _then;

/// Create a copy of CampaignCategoryEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? slug = null,Object? iconName = freezed,Object? isActive = null,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,iconName: freezed == iconName ? _self.iconName : iconName // ignore: cast_nullable_to_non_nullable
as String?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [CampaignCategoryEntity].
extension CampaignCategoryEntityPatterns on CampaignCategoryEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CampaignCategoryEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CampaignCategoryEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CampaignCategoryEntity value)  $default,){
final _that = this;
switch (_that) {
case _CampaignCategoryEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CampaignCategoryEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CampaignCategoryEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String slug,  String? iconName,  bool isActive,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CampaignCategoryEntity() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.iconName,_that.isActive,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String slug,  String? iconName,  bool isActive,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _CampaignCategoryEntity():
return $default(_that.id,_that.name,_that.slug,_that.iconName,_that.isActive,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String slug,  String? iconName,  bool isActive,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _CampaignCategoryEntity() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.iconName,_that.isActive,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _CampaignCategoryEntity implements CampaignCategoryEntity {
  const _CampaignCategoryEntity({required this.id, required this.name, required this.slug, this.iconName, this.isActive = true, this.createdAt});
  

@override final  String id;
@override final  String name;
@override final  String slug;
@override final  String? iconName;
@override@JsonKey() final  bool isActive;
@override final  DateTime? createdAt;

/// Create a copy of CampaignCategoryEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CampaignCategoryEntityCopyWith<_CampaignCategoryEntity> get copyWith => __$CampaignCategoryEntityCopyWithImpl<_CampaignCategoryEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CampaignCategoryEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.iconName, iconName) || other.iconName == iconName)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,slug,iconName,isActive,createdAt);

@override
String toString() {
  return 'CampaignCategoryEntity(id: $id, name: $name, slug: $slug, iconName: $iconName, isActive: $isActive, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$CampaignCategoryEntityCopyWith<$Res> implements $CampaignCategoryEntityCopyWith<$Res> {
  factory _$CampaignCategoryEntityCopyWith(_CampaignCategoryEntity value, $Res Function(_CampaignCategoryEntity) _then) = __$CampaignCategoryEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String slug, String? iconName, bool isActive, DateTime? createdAt
});




}
/// @nodoc
class __$CampaignCategoryEntityCopyWithImpl<$Res>
    implements _$CampaignCategoryEntityCopyWith<$Res> {
  __$CampaignCategoryEntityCopyWithImpl(this._self, this._then);

  final _CampaignCategoryEntity _self;
  final $Res Function(_CampaignCategoryEntity) _then;

/// Create a copy of CampaignCategoryEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? slug = null,Object? iconName = freezed,Object? isActive = null,Object? createdAt = freezed,}) {
  return _then(_CampaignCategoryEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,iconName: freezed == iconName ? _self.iconName : iconName // ignore: cast_nullable_to_non_nullable
as String?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
