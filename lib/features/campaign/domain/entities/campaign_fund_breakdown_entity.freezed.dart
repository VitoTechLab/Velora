// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaign_fund_breakdown_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CampaignFundBreakdownEntity {

 String get id; String get campaignId; String get label; double get amount; double get percentage; int get sortOrder; DateTime get createdAt;
/// Create a copy of CampaignFundBreakdownEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CampaignFundBreakdownEntityCopyWith<CampaignFundBreakdownEntity> get copyWith => _$CampaignFundBreakdownEntityCopyWithImpl<CampaignFundBreakdownEntity>(this as CampaignFundBreakdownEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CampaignFundBreakdownEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.label, label) || other.label == label)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.percentage, percentage) || other.percentage == percentage)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,campaignId,label,amount,percentage,sortOrder,createdAt);

@override
String toString() {
  return 'CampaignFundBreakdownEntity(id: $id, campaignId: $campaignId, label: $label, amount: $amount, percentage: $percentage, sortOrder: $sortOrder, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $CampaignFundBreakdownEntityCopyWith<$Res>  {
  factory $CampaignFundBreakdownEntityCopyWith(CampaignFundBreakdownEntity value, $Res Function(CampaignFundBreakdownEntity) _then) = _$CampaignFundBreakdownEntityCopyWithImpl;
@useResult
$Res call({
 String id, String campaignId, String label, double amount, double percentage, int sortOrder, DateTime createdAt
});




}
/// @nodoc
class _$CampaignFundBreakdownEntityCopyWithImpl<$Res>
    implements $CampaignFundBreakdownEntityCopyWith<$Res> {
  _$CampaignFundBreakdownEntityCopyWithImpl(this._self, this._then);

  final CampaignFundBreakdownEntity _self;
  final $Res Function(CampaignFundBreakdownEntity) _then;

/// Create a copy of CampaignFundBreakdownEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? campaignId = null,Object? label = null,Object? amount = null,Object? percentage = null,Object? sortOrder = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,campaignId: null == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,percentage: null == percentage ? _self.percentage : percentage // ignore: cast_nullable_to_non_nullable
as double,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [CampaignFundBreakdownEntity].
extension CampaignFundBreakdownEntityPatterns on CampaignFundBreakdownEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CampaignFundBreakdownEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CampaignFundBreakdownEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CampaignFundBreakdownEntity value)  $default,){
final _that = this;
switch (_that) {
case _CampaignFundBreakdownEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CampaignFundBreakdownEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CampaignFundBreakdownEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String campaignId,  String label,  double amount,  double percentage,  int sortOrder,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CampaignFundBreakdownEntity() when $default != null:
return $default(_that.id,_that.campaignId,_that.label,_that.amount,_that.percentage,_that.sortOrder,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String campaignId,  String label,  double amount,  double percentage,  int sortOrder,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _CampaignFundBreakdownEntity():
return $default(_that.id,_that.campaignId,_that.label,_that.amount,_that.percentage,_that.sortOrder,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String campaignId,  String label,  double amount,  double percentage,  int sortOrder,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _CampaignFundBreakdownEntity() when $default != null:
return $default(_that.id,_that.campaignId,_that.label,_that.amount,_that.percentage,_that.sortOrder,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _CampaignFundBreakdownEntity implements CampaignFundBreakdownEntity {
  const _CampaignFundBreakdownEntity({required this.id, required this.campaignId, required this.label, required this.amount, required this.percentage, this.sortOrder = 0, required this.createdAt});
  

@override final  String id;
@override final  String campaignId;
@override final  String label;
@override final  double amount;
@override final  double percentage;
@override@JsonKey() final  int sortOrder;
@override final  DateTime createdAt;

/// Create a copy of CampaignFundBreakdownEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CampaignFundBreakdownEntityCopyWith<_CampaignFundBreakdownEntity> get copyWith => __$CampaignFundBreakdownEntityCopyWithImpl<_CampaignFundBreakdownEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CampaignFundBreakdownEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.label, label) || other.label == label)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.percentage, percentage) || other.percentage == percentage)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,campaignId,label,amount,percentage,sortOrder,createdAt);

@override
String toString() {
  return 'CampaignFundBreakdownEntity(id: $id, campaignId: $campaignId, label: $label, amount: $amount, percentage: $percentage, sortOrder: $sortOrder, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$CampaignFundBreakdownEntityCopyWith<$Res> implements $CampaignFundBreakdownEntityCopyWith<$Res> {
  factory _$CampaignFundBreakdownEntityCopyWith(_CampaignFundBreakdownEntity value, $Res Function(_CampaignFundBreakdownEntity) _then) = __$CampaignFundBreakdownEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String campaignId, String label, double amount, double percentage, int sortOrder, DateTime createdAt
});




}
/// @nodoc
class __$CampaignFundBreakdownEntityCopyWithImpl<$Res>
    implements _$CampaignFundBreakdownEntityCopyWith<$Res> {
  __$CampaignFundBreakdownEntityCopyWithImpl(this._self, this._then);

  final _CampaignFundBreakdownEntity _self;
  final $Res Function(_CampaignFundBreakdownEntity) _then;

/// Create a copy of CampaignFundBreakdownEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? campaignId = null,Object? label = null,Object? amount = null,Object? percentage = null,Object? sortOrder = null,Object? createdAt = null,}) {
  return _then(_CampaignFundBreakdownEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,campaignId: null == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,percentage: null == percentage ? _self.percentage : percentage // ignore: cast_nullable_to_non_nullable
as double,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
