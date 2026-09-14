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

 String get id; String get userId; String? get categoryId; String get title; String get description; String? get coverImageUrl; double get targetAmount; double get amountRaised; double get currentBalance; int get donorCount; CampaignStatus get status; bool get isVerified; String? get locationCity; DateTime? get endDate; DateTime get createdAt; DateTime? get updatedAt; DateTime? get completedAt;// Joined from user_profiles (read-only)
 String? get organizerUsername; String? get organizerAvatarUrl;// Joined from campaign_categories (read-only)
 String? get categoryName; String? get categorySlug;// Bank details for withdrawal processing
 String? get withdrawalBankName; String? get withdrawalAccountNumber; String? get withdrawalAccountHolder;
/// Create a copy of CampaignEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CampaignEntityCopyWith<CampaignEntity> get copyWith => _$CampaignEntityCopyWithImpl<CampaignEntity>(this as CampaignEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CampaignEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.coverImageUrl, coverImageUrl) || other.coverImageUrl == coverImageUrl)&&(identical(other.targetAmount, targetAmount) || other.targetAmount == targetAmount)&&(identical(other.amountRaised, amountRaised) || other.amountRaised == amountRaised)&&(identical(other.currentBalance, currentBalance) || other.currentBalance == currentBalance)&&(identical(other.donorCount, donorCount) || other.donorCount == donorCount)&&(identical(other.status, status) || other.status == status)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.locationCity, locationCity) || other.locationCity == locationCity)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.organizerUsername, organizerUsername) || other.organizerUsername == organizerUsername)&&(identical(other.organizerAvatarUrl, organizerAvatarUrl) || other.organizerAvatarUrl == organizerAvatarUrl)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.categorySlug, categorySlug) || other.categorySlug == categorySlug)&&(identical(other.withdrawalBankName, withdrawalBankName) || other.withdrawalBankName == withdrawalBankName)&&(identical(other.withdrawalAccountNumber, withdrawalAccountNumber) || other.withdrawalAccountNumber == withdrawalAccountNumber)&&(identical(other.withdrawalAccountHolder, withdrawalAccountHolder) || other.withdrawalAccountHolder == withdrawalAccountHolder));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,userId,categoryId,title,description,coverImageUrl,targetAmount,amountRaised,currentBalance,donorCount,status,isVerified,locationCity,endDate,createdAt,updatedAt,completedAt,organizerUsername,organizerAvatarUrl,categoryName,categorySlug,withdrawalBankName,withdrawalAccountNumber,withdrawalAccountHolder]);

@override
String toString() {
  return 'CampaignEntity(id: $id, userId: $userId, categoryId: $categoryId, title: $title, description: $description, coverImageUrl: $coverImageUrl, targetAmount: $targetAmount, amountRaised: $amountRaised, currentBalance: $currentBalance, donorCount: $donorCount, status: $status, isVerified: $isVerified, locationCity: $locationCity, endDate: $endDate, createdAt: $createdAt, updatedAt: $updatedAt, completedAt: $completedAt, organizerUsername: $organizerUsername, organizerAvatarUrl: $organizerAvatarUrl, categoryName: $categoryName, categorySlug: $categorySlug, withdrawalBankName: $withdrawalBankName, withdrawalAccountNumber: $withdrawalAccountNumber, withdrawalAccountHolder: $withdrawalAccountHolder)';
}


}

/// @nodoc
abstract mixin class $CampaignEntityCopyWith<$Res>  {
  factory $CampaignEntityCopyWith(CampaignEntity value, $Res Function(CampaignEntity) _then) = _$CampaignEntityCopyWithImpl;
@useResult
$Res call({
 String id, String userId, String? categoryId, String title, String description, String? coverImageUrl, double targetAmount, double amountRaised, double currentBalance, int donorCount, CampaignStatus status, bool isVerified, String? locationCity, DateTime? endDate, DateTime createdAt, DateTime? updatedAt, DateTime? completedAt, String? organizerUsername, String? organizerAvatarUrl, String? categoryName, String? categorySlug, String? withdrawalBankName, String? withdrawalAccountNumber, String? withdrawalAccountHolder
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? categoryId = freezed,Object? title = null,Object? description = null,Object? coverImageUrl = freezed,Object? targetAmount = null,Object? amountRaised = null,Object? currentBalance = null,Object? donorCount = null,Object? status = null,Object? isVerified = null,Object? locationCity = freezed,Object? endDate = freezed,Object? createdAt = null,Object? updatedAt = freezed,Object? completedAt = freezed,Object? organizerUsername = freezed,Object? organizerAvatarUrl = freezed,Object? categoryName = freezed,Object? categorySlug = freezed,Object? withdrawalBankName = freezed,Object? withdrawalAccountNumber = freezed,Object? withdrawalAccountHolder = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,coverImageUrl: freezed == coverImageUrl ? _self.coverImageUrl : coverImageUrl // ignore: cast_nullable_to_non_nullable
as String?,targetAmount: null == targetAmount ? _self.targetAmount : targetAmount // ignore: cast_nullable_to_non_nullable
as double,amountRaised: null == amountRaised ? _self.amountRaised : amountRaised // ignore: cast_nullable_to_non_nullable
as double,currentBalance: null == currentBalance ? _self.currentBalance : currentBalance // ignore: cast_nullable_to_non_nullable
as double,donorCount: null == donorCount ? _self.donorCount : donorCount // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CampaignStatus,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,locationCity: freezed == locationCity ? _self.locationCity : locationCity // ignore: cast_nullable_to_non_nullable
as String?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,organizerUsername: freezed == organizerUsername ? _self.organizerUsername : organizerUsername // ignore: cast_nullable_to_non_nullable
as String?,organizerAvatarUrl: freezed == organizerAvatarUrl ? _self.organizerAvatarUrl : organizerAvatarUrl // ignore: cast_nullable_to_non_nullable
as String?,categoryName: freezed == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String?,categorySlug: freezed == categorySlug ? _self.categorySlug : categorySlug // ignore: cast_nullable_to_non_nullable
as String?,withdrawalBankName: freezed == withdrawalBankName ? _self.withdrawalBankName : withdrawalBankName // ignore: cast_nullable_to_non_nullable
as String?,withdrawalAccountNumber: freezed == withdrawalAccountNumber ? _self.withdrawalAccountNumber : withdrawalAccountNumber // ignore: cast_nullable_to_non_nullable
as String?,withdrawalAccountHolder: freezed == withdrawalAccountHolder ? _self.withdrawalAccountHolder : withdrawalAccountHolder // ignore: cast_nullable_to_non_nullable
as String?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId,  String? categoryId,  String title,  String description,  String? coverImageUrl,  double targetAmount,  double amountRaised,  double currentBalance,  int donorCount,  CampaignStatus status,  bool isVerified,  String? locationCity,  DateTime? endDate,  DateTime createdAt,  DateTime? updatedAt,  DateTime? completedAt,  String? organizerUsername,  String? organizerAvatarUrl,  String? categoryName,  String? categorySlug,  String? withdrawalBankName,  String? withdrawalAccountNumber,  String? withdrawalAccountHolder)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CampaignEntity() when $default != null:
return $default(_that.id,_that.userId,_that.categoryId,_that.title,_that.description,_that.coverImageUrl,_that.targetAmount,_that.amountRaised,_that.currentBalance,_that.donorCount,_that.status,_that.isVerified,_that.locationCity,_that.endDate,_that.createdAt,_that.updatedAt,_that.completedAt,_that.organizerUsername,_that.organizerAvatarUrl,_that.categoryName,_that.categorySlug,_that.withdrawalBankName,_that.withdrawalAccountNumber,_that.withdrawalAccountHolder);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId,  String? categoryId,  String title,  String description,  String? coverImageUrl,  double targetAmount,  double amountRaised,  double currentBalance,  int donorCount,  CampaignStatus status,  bool isVerified,  String? locationCity,  DateTime? endDate,  DateTime createdAt,  DateTime? updatedAt,  DateTime? completedAt,  String? organizerUsername,  String? organizerAvatarUrl,  String? categoryName,  String? categorySlug,  String? withdrawalBankName,  String? withdrawalAccountNumber,  String? withdrawalAccountHolder)  $default,) {final _that = this;
switch (_that) {
case _CampaignEntity():
return $default(_that.id,_that.userId,_that.categoryId,_that.title,_that.description,_that.coverImageUrl,_that.targetAmount,_that.amountRaised,_that.currentBalance,_that.donorCount,_that.status,_that.isVerified,_that.locationCity,_that.endDate,_that.createdAt,_that.updatedAt,_that.completedAt,_that.organizerUsername,_that.organizerAvatarUrl,_that.categoryName,_that.categorySlug,_that.withdrawalBankName,_that.withdrawalAccountNumber,_that.withdrawalAccountHolder);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId,  String? categoryId,  String title,  String description,  String? coverImageUrl,  double targetAmount,  double amountRaised,  double currentBalance,  int donorCount,  CampaignStatus status,  bool isVerified,  String? locationCity,  DateTime? endDate,  DateTime createdAt,  DateTime? updatedAt,  DateTime? completedAt,  String? organizerUsername,  String? organizerAvatarUrl,  String? categoryName,  String? categorySlug,  String? withdrawalBankName,  String? withdrawalAccountNumber,  String? withdrawalAccountHolder)?  $default,) {final _that = this;
switch (_that) {
case _CampaignEntity() when $default != null:
return $default(_that.id,_that.userId,_that.categoryId,_that.title,_that.description,_that.coverImageUrl,_that.targetAmount,_that.amountRaised,_that.currentBalance,_that.donorCount,_that.status,_that.isVerified,_that.locationCity,_that.endDate,_that.createdAt,_that.updatedAt,_that.completedAt,_that.organizerUsername,_that.organizerAvatarUrl,_that.categoryName,_that.categorySlug,_that.withdrawalBankName,_that.withdrawalAccountNumber,_that.withdrawalAccountHolder);case _:
  return null;

}
}

}

/// @nodoc


class _CampaignEntity extends CampaignEntity {
  const _CampaignEntity({required this.id, required this.userId, this.categoryId, required this.title, required this.description, this.coverImageUrl, required this.targetAmount, this.amountRaised = 0, this.currentBalance = 0, this.donorCount = 0, this.status = CampaignStatus.active, this.isVerified = false, this.locationCity, this.endDate, required this.createdAt, this.updatedAt, this.completedAt, this.organizerUsername, this.organizerAvatarUrl, this.categoryName, this.categorySlug, this.withdrawalBankName, this.withdrawalAccountNumber, this.withdrawalAccountHolder}): super._();
  

@override final  String id;
@override final  String userId;
@override final  String? categoryId;
@override final  String title;
@override final  String description;
@override final  String? coverImageUrl;
@override final  double targetAmount;
@override@JsonKey() final  double amountRaised;
@override@JsonKey() final  double currentBalance;
@override@JsonKey() final  int donorCount;
@override@JsonKey() final  CampaignStatus status;
@override@JsonKey() final  bool isVerified;
@override final  String? locationCity;
@override final  DateTime? endDate;
@override final  DateTime createdAt;
@override final  DateTime? updatedAt;
@override final  DateTime? completedAt;
// Joined from user_profiles (read-only)
@override final  String? organizerUsername;
@override final  String? organizerAvatarUrl;
// Joined from campaign_categories (read-only)
@override final  String? categoryName;
@override final  String? categorySlug;
// Bank details for withdrawal processing
@override final  String? withdrawalBankName;
@override final  String? withdrawalAccountNumber;
@override final  String? withdrawalAccountHolder;

/// Create a copy of CampaignEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CampaignEntityCopyWith<_CampaignEntity> get copyWith => __$CampaignEntityCopyWithImpl<_CampaignEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CampaignEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.coverImageUrl, coverImageUrl) || other.coverImageUrl == coverImageUrl)&&(identical(other.targetAmount, targetAmount) || other.targetAmount == targetAmount)&&(identical(other.amountRaised, amountRaised) || other.amountRaised == amountRaised)&&(identical(other.currentBalance, currentBalance) || other.currentBalance == currentBalance)&&(identical(other.donorCount, donorCount) || other.donorCount == donorCount)&&(identical(other.status, status) || other.status == status)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.locationCity, locationCity) || other.locationCity == locationCity)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.organizerUsername, organizerUsername) || other.organizerUsername == organizerUsername)&&(identical(other.organizerAvatarUrl, organizerAvatarUrl) || other.organizerAvatarUrl == organizerAvatarUrl)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.categorySlug, categorySlug) || other.categorySlug == categorySlug)&&(identical(other.withdrawalBankName, withdrawalBankName) || other.withdrawalBankName == withdrawalBankName)&&(identical(other.withdrawalAccountNumber, withdrawalAccountNumber) || other.withdrawalAccountNumber == withdrawalAccountNumber)&&(identical(other.withdrawalAccountHolder, withdrawalAccountHolder) || other.withdrawalAccountHolder == withdrawalAccountHolder));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,userId,categoryId,title,description,coverImageUrl,targetAmount,amountRaised,currentBalance,donorCount,status,isVerified,locationCity,endDate,createdAt,updatedAt,completedAt,organizerUsername,organizerAvatarUrl,categoryName,categorySlug,withdrawalBankName,withdrawalAccountNumber,withdrawalAccountHolder]);

@override
String toString() {
  return 'CampaignEntity(id: $id, userId: $userId, categoryId: $categoryId, title: $title, description: $description, coverImageUrl: $coverImageUrl, targetAmount: $targetAmount, amountRaised: $amountRaised, currentBalance: $currentBalance, donorCount: $donorCount, status: $status, isVerified: $isVerified, locationCity: $locationCity, endDate: $endDate, createdAt: $createdAt, updatedAt: $updatedAt, completedAt: $completedAt, organizerUsername: $organizerUsername, organizerAvatarUrl: $organizerAvatarUrl, categoryName: $categoryName, categorySlug: $categorySlug, withdrawalBankName: $withdrawalBankName, withdrawalAccountNumber: $withdrawalAccountNumber, withdrawalAccountHolder: $withdrawalAccountHolder)';
}


}

/// @nodoc
abstract mixin class _$CampaignEntityCopyWith<$Res> implements $CampaignEntityCopyWith<$Res> {
  factory _$CampaignEntityCopyWith(_CampaignEntity value, $Res Function(_CampaignEntity) _then) = __$CampaignEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, String? categoryId, String title, String description, String? coverImageUrl, double targetAmount, double amountRaised, double currentBalance, int donorCount, CampaignStatus status, bool isVerified, String? locationCity, DateTime? endDate, DateTime createdAt, DateTime? updatedAt, DateTime? completedAt, String? organizerUsername, String? organizerAvatarUrl, String? categoryName, String? categorySlug, String? withdrawalBankName, String? withdrawalAccountNumber, String? withdrawalAccountHolder
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? categoryId = freezed,Object? title = null,Object? description = null,Object? coverImageUrl = freezed,Object? targetAmount = null,Object? amountRaised = null,Object? currentBalance = null,Object? donorCount = null,Object? status = null,Object? isVerified = null,Object? locationCity = freezed,Object? endDate = freezed,Object? createdAt = null,Object? updatedAt = freezed,Object? completedAt = freezed,Object? organizerUsername = freezed,Object? organizerAvatarUrl = freezed,Object? categoryName = freezed,Object? categorySlug = freezed,Object? withdrawalBankName = freezed,Object? withdrawalAccountNumber = freezed,Object? withdrawalAccountHolder = freezed,}) {
  return _then(_CampaignEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,coverImageUrl: freezed == coverImageUrl ? _self.coverImageUrl : coverImageUrl // ignore: cast_nullable_to_non_nullable
as String?,targetAmount: null == targetAmount ? _self.targetAmount : targetAmount // ignore: cast_nullable_to_non_nullable
as double,amountRaised: null == amountRaised ? _self.amountRaised : amountRaised // ignore: cast_nullable_to_non_nullable
as double,currentBalance: null == currentBalance ? _self.currentBalance : currentBalance // ignore: cast_nullable_to_non_nullable
as double,donorCount: null == donorCount ? _self.donorCount : donorCount // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CampaignStatus,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,locationCity: freezed == locationCity ? _self.locationCity : locationCity // ignore: cast_nullable_to_non_nullable
as String?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,organizerUsername: freezed == organizerUsername ? _self.organizerUsername : organizerUsername // ignore: cast_nullable_to_non_nullable
as String?,organizerAvatarUrl: freezed == organizerAvatarUrl ? _self.organizerAvatarUrl : organizerAvatarUrl // ignore: cast_nullable_to_non_nullable
as String?,categoryName: freezed == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String?,categorySlug: freezed == categorySlug ? _self.categorySlug : categorySlug // ignore: cast_nullable_to_non_nullable
as String?,withdrawalBankName: freezed == withdrawalBankName ? _self.withdrawalBankName : withdrawalBankName // ignore: cast_nullable_to_non_nullable
as String?,withdrawalAccountNumber: freezed == withdrawalAccountNumber ? _self.withdrawalAccountNumber : withdrawalAccountNumber // ignore: cast_nullable_to_non_nullable
as String?,withdrawalAccountHolder: freezed == withdrawalAccountHolder ? _self.withdrawalAccountHolder : withdrawalAccountHolder // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
