// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaign_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CampaignEntity {

 String get id; String get postId; String get userId; String get title; String get description; double get targetAmount; double get amountRaised; CampaignStatus get status; DateTime get createdAt; DateTime? get completedAt; List<String> get donorIds;
/// Create a copy of CampaignEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CampaignEntityCopyWith<CampaignEntity> get copyWith => _$CampaignEntityCopyWithImpl<CampaignEntity>(this as CampaignEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CampaignEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.targetAmount, targetAmount) || other.targetAmount == targetAmount)&&(identical(other.amountRaised, amountRaised) || other.amountRaised == amountRaised)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&const DeepCollectionEquality().equals(other.donorIds, donorIds));
}


@override
int get hashCode => Object.hash(runtimeType,id,postId,userId,title,description,targetAmount,amountRaised,status,createdAt,completedAt,const DeepCollectionEquality().hash(donorIds));

@override
String toString() {
  return 'CampaignEntity(id: $id, postId: $postId, userId: $userId, title: $title, description: $description, targetAmount: $targetAmount, amountRaised: $amountRaised, status: $status, createdAt: $createdAt, completedAt: $completedAt, donorIds: $donorIds)';
}


}

/// @nodoc
abstract mixin class $CampaignEntityCopyWith<$Res>  {
  factory $CampaignEntityCopyWith(CampaignEntity value, $Res Function(CampaignEntity) _then) = _$CampaignEntityCopyWithImpl;
@useResult
$Res call({
 String id, String postId, String userId, String title, String description, double targetAmount, double amountRaised, CampaignStatus status, DateTime createdAt, DateTime? completedAt, List<String> donorIds
});




}
/// @nodoc
class _$CampaignEntityCopyWithImpl<$Res>
    implements $CampaignEntityCopyWith<$Res> {
  _$CampaignEntityCopyWithImpl(this._self, this._then);

  final CampaignEntity _self;
  final $Res Function(CampaignEntity) _then;

/// Create a copy of CampaignEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? postId = null,Object? userId = null,Object? title = null,Object? description = null,Object? targetAmount = null,Object? amountRaised = null,Object? status = null,Object? createdAt = null,Object? completedAt = freezed,Object? donorIds = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,targetAmount: null == targetAmount ? _self.targetAmount : targetAmount // ignore: cast_nullable_to_non_nullable
as double,amountRaised: null == amountRaised ? _self.amountRaised : amountRaised // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CampaignStatus,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,donorIds: null == donorIds ? _self.donorIds : donorIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [CampaignEntity].
extension CampaignEntityPatterns on CampaignEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CampaignEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CampaignEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CampaignEntity value)  $default,){
final _that = this;
switch (_that) {
case _CampaignEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CampaignEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CampaignEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String postId,  String userId,  String title,  String description,  double targetAmount,  double amountRaised,  CampaignStatus status,  DateTime createdAt,  DateTime? completedAt,  List<String> donorIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CampaignEntity() when $default != null:
return $default(_that.id,_that.postId,_that.userId,_that.title,_that.description,_that.targetAmount,_that.amountRaised,_that.status,_that.createdAt,_that.completedAt,_that.donorIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String postId,  String userId,  String title,  String description,  double targetAmount,  double amountRaised,  CampaignStatus status,  DateTime createdAt,  DateTime? completedAt,  List<String> donorIds)  $default,) {final _that = this;
switch (_that) {
case _CampaignEntity():
return $default(_that.id,_that.postId,_that.userId,_that.title,_that.description,_that.targetAmount,_that.amountRaised,_that.status,_that.createdAt,_that.completedAt,_that.donorIds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String postId,  String userId,  String title,  String description,  double targetAmount,  double amountRaised,  CampaignStatus status,  DateTime createdAt,  DateTime? completedAt,  List<String> donorIds)?  $default,) {final _that = this;
switch (_that) {
case _CampaignEntity() when $default != null:
return $default(_that.id,_that.postId,_that.userId,_that.title,_that.description,_that.targetAmount,_that.amountRaised,_that.status,_that.createdAt,_that.completedAt,_that.donorIds);case _:
  return null;

}
}

}

/// @nodoc


class _CampaignEntity implements CampaignEntity {
  const _CampaignEntity({required this.id, required this.postId, required this.userId, required this.title, required this.description, required this.targetAmount, required this.amountRaised, required this.status, required this.createdAt, this.completedAt, final  List<String> donorIds = const <String>[]}): _donorIds = donorIds;
  

@override final  String id;
@override final  String postId;
@override final  String userId;
@override final  String title;
@override final  String description;
@override final  double targetAmount;
@override final  double amountRaised;
@override final  CampaignStatus status;
@override final  DateTime createdAt;
@override final  DateTime? completedAt;
 final  List<String> _donorIds;
@override@JsonKey() List<String> get donorIds {
  if (_donorIds is EqualUnmodifiableListView) return _donorIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_donorIds);
}


/// Create a copy of CampaignEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CampaignEntityCopyWith<_CampaignEntity> get copyWith => __$CampaignEntityCopyWithImpl<_CampaignEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CampaignEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.targetAmount, targetAmount) || other.targetAmount == targetAmount)&&(identical(other.amountRaised, amountRaised) || other.amountRaised == amountRaised)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&const DeepCollectionEquality().equals(other._donorIds, _donorIds));
}


@override
int get hashCode => Object.hash(runtimeType,id,postId,userId,title,description,targetAmount,amountRaised,status,createdAt,completedAt,const DeepCollectionEquality().hash(_donorIds));

@override
String toString() {
  return 'CampaignEntity(id: $id, postId: $postId, userId: $userId, title: $title, description: $description, targetAmount: $targetAmount, amountRaised: $amountRaised, status: $status, createdAt: $createdAt, completedAt: $completedAt, donorIds: $donorIds)';
}


}

/// @nodoc
abstract mixin class _$CampaignEntityCopyWith<$Res> implements $CampaignEntityCopyWith<$Res> {
  factory _$CampaignEntityCopyWith(_CampaignEntity value, $Res Function(_CampaignEntity) _then) = __$CampaignEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String postId, String userId, String title, String description, double targetAmount, double amountRaised, CampaignStatus status, DateTime createdAt, DateTime? completedAt, List<String> donorIds
});




}
/// @nodoc
class __$CampaignEntityCopyWithImpl<$Res>
    implements _$CampaignEntityCopyWith<$Res> {
  __$CampaignEntityCopyWithImpl(this._self, this._then);

  final _CampaignEntity _self;
  final $Res Function(_CampaignEntity) _then;

/// Create a copy of CampaignEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? postId = null,Object? userId = null,Object? title = null,Object? description = null,Object? targetAmount = null,Object? amountRaised = null,Object? status = null,Object? createdAt = null,Object? completedAt = freezed,Object? donorIds = null,}) {
  return _then(_CampaignEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,targetAmount: null == targetAmount ? _self.targetAmount : targetAmount // ignore: cast_nullable_to_non_nullable
as double,amountRaised: null == amountRaised ? _self.amountRaised : amountRaised // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CampaignStatus,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,donorIds: null == donorIds ? _self._donorIds : donorIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
