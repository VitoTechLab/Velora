// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaign_milestone_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CampaignMilestoneEntity {

 String get id; String get campaignId; String get title; String? get description; double get targetAmount; DateTime? get dueDate; String get status;// pending, in_progress, completed, missed
 int get sortOrder; DateTime get createdAt; DateTime? get completedAt;
/// Create a copy of CampaignMilestoneEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CampaignMilestoneEntityCopyWith<CampaignMilestoneEntity> get copyWith => _$CampaignMilestoneEntityCopyWithImpl<CampaignMilestoneEntity>(this as CampaignMilestoneEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CampaignMilestoneEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.targetAmount, targetAmount) || other.targetAmount == targetAmount)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,campaignId,title,description,targetAmount,dueDate,status,sortOrder,createdAt,completedAt);

@override
String toString() {
  return 'CampaignMilestoneEntity(id: $id, campaignId: $campaignId, title: $title, description: $description, targetAmount: $targetAmount, dueDate: $dueDate, status: $status, sortOrder: $sortOrder, createdAt: $createdAt, completedAt: $completedAt)';
}


}

/// @nodoc
abstract mixin class $CampaignMilestoneEntityCopyWith<$Res>  {
  factory $CampaignMilestoneEntityCopyWith(CampaignMilestoneEntity value, $Res Function(CampaignMilestoneEntity) _then) = _$CampaignMilestoneEntityCopyWithImpl;
@useResult
$Res call({
 String id, String campaignId, String title, String? description, double targetAmount, DateTime? dueDate, String status, int sortOrder, DateTime createdAt, DateTime? completedAt
});




}
/// @nodoc
class _$CampaignMilestoneEntityCopyWithImpl<$Res>
    implements $CampaignMilestoneEntityCopyWith<$Res> {
  _$CampaignMilestoneEntityCopyWithImpl(this._self, this._then);

  final CampaignMilestoneEntity _self;
  final $Res Function(CampaignMilestoneEntity) _then;

/// Create a copy of CampaignMilestoneEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? campaignId = null,Object? title = null,Object? description = freezed,Object? targetAmount = null,Object? dueDate = freezed,Object? status = null,Object? sortOrder = null,Object? createdAt = null,Object? completedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,campaignId: null == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,targetAmount: null == targetAmount ? _self.targetAmount : targetAmount // ignore: cast_nullable_to_non_nullable
as double,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [CampaignMilestoneEntity].
extension CampaignMilestoneEntityPatterns on CampaignMilestoneEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CampaignMilestoneEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CampaignMilestoneEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CampaignMilestoneEntity value)  $default,){
final _that = this;
switch (_that) {
case _CampaignMilestoneEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CampaignMilestoneEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CampaignMilestoneEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String campaignId,  String title,  String? description,  double targetAmount,  DateTime? dueDate,  String status,  int sortOrder,  DateTime createdAt,  DateTime? completedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CampaignMilestoneEntity() when $default != null:
return $default(_that.id,_that.campaignId,_that.title,_that.description,_that.targetAmount,_that.dueDate,_that.status,_that.sortOrder,_that.createdAt,_that.completedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String campaignId,  String title,  String? description,  double targetAmount,  DateTime? dueDate,  String status,  int sortOrder,  DateTime createdAt,  DateTime? completedAt)  $default,) {final _that = this;
switch (_that) {
case _CampaignMilestoneEntity():
return $default(_that.id,_that.campaignId,_that.title,_that.description,_that.targetAmount,_that.dueDate,_that.status,_that.sortOrder,_that.createdAt,_that.completedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String campaignId,  String title,  String? description,  double targetAmount,  DateTime? dueDate,  String status,  int sortOrder,  DateTime createdAt,  DateTime? completedAt)?  $default,) {final _that = this;
switch (_that) {
case _CampaignMilestoneEntity() when $default != null:
return $default(_that.id,_that.campaignId,_that.title,_that.description,_that.targetAmount,_that.dueDate,_that.status,_that.sortOrder,_that.createdAt,_that.completedAt);case _:
  return null;

}
}

}

/// @nodoc


class _CampaignMilestoneEntity implements CampaignMilestoneEntity {
  const _CampaignMilestoneEntity({required this.id, required this.campaignId, required this.title, this.description, required this.targetAmount, this.dueDate, this.status = 'pending', this.sortOrder = 0, required this.createdAt, this.completedAt});
  

@override final  String id;
@override final  String campaignId;
@override final  String title;
@override final  String? description;
@override final  double targetAmount;
@override final  DateTime? dueDate;
@override@JsonKey() final  String status;
// pending, in_progress, completed, missed
@override@JsonKey() final  int sortOrder;
@override final  DateTime createdAt;
@override final  DateTime? completedAt;

/// Create a copy of CampaignMilestoneEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CampaignMilestoneEntityCopyWith<_CampaignMilestoneEntity> get copyWith => __$CampaignMilestoneEntityCopyWithImpl<_CampaignMilestoneEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CampaignMilestoneEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.targetAmount, targetAmount) || other.targetAmount == targetAmount)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,campaignId,title,description,targetAmount,dueDate,status,sortOrder,createdAt,completedAt);

@override
String toString() {
  return 'CampaignMilestoneEntity(id: $id, campaignId: $campaignId, title: $title, description: $description, targetAmount: $targetAmount, dueDate: $dueDate, status: $status, sortOrder: $sortOrder, createdAt: $createdAt, completedAt: $completedAt)';
}


}

/// @nodoc
abstract mixin class _$CampaignMilestoneEntityCopyWith<$Res> implements $CampaignMilestoneEntityCopyWith<$Res> {
  factory _$CampaignMilestoneEntityCopyWith(_CampaignMilestoneEntity value, $Res Function(_CampaignMilestoneEntity) _then) = __$CampaignMilestoneEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String campaignId, String title, String? description, double targetAmount, DateTime? dueDate, String status, int sortOrder, DateTime createdAt, DateTime? completedAt
});




}
/// @nodoc
class __$CampaignMilestoneEntityCopyWithImpl<$Res>
    implements _$CampaignMilestoneEntityCopyWith<$Res> {
  __$CampaignMilestoneEntityCopyWithImpl(this._self, this._then);

  final _CampaignMilestoneEntity _self;
  final $Res Function(_CampaignMilestoneEntity) _then;

/// Create a copy of CampaignMilestoneEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? campaignId = null,Object? title = null,Object? description = freezed,Object? targetAmount = null,Object? dueDate = freezed,Object? status = null,Object? sortOrder = null,Object? createdAt = null,Object? completedAt = freezed,}) {
  return _then(_CampaignMilestoneEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,campaignId: null == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,targetAmount: null == targetAmount ? _self.targetAmount : targetAmount // ignore: cast_nullable_to_non_nullable
as double,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
