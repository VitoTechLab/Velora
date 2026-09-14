// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaign_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CampaignModel {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'user_id') String get userId;@JsonKey(name: 'category_id') String? get categoryId;@JsonKey(name: 'title') String get title;@JsonKey(name: 'description') String get description;@JsonKey(name: 'cover_image_url') String? get coverImageUrl;@JsonKey(name: 'target_amount') double get targetAmount;@JsonKey(name: 'amount_raised') double get amountRaised;@JsonKey(name: 'current_balance') double get currentBalance;@JsonKey(name: 'donor_count') int get donorCount;@JsonKey(name: 'status') String get status;@JsonKey(name: 'is_verified') bool get isVerified;@JsonKey(name: 'location_city') String? get locationCity;@JsonKey(name: 'end_date') DateTime? get endDate;@JsonKey(name: 'created_at') DateTime get createdAt;@JsonKey(name: 'updated_at') DateTime? get updatedAt;@JsonKey(name: 'completed_at') DateTime? get completedAt;// Joined from user_profiles (read-only)
@JsonKey(name: 'organizer_username') String? get organizerUsername;@JsonKey(name: 'organizer_avatar_url') String? get organizerAvatarUrl;// Joined from campaign_categories (read-only)
@JsonKey(name: 'category_name') String? get categoryName;@JsonKey(name: 'category_slug') String? get categorySlug;// Bank details for withdrawal processing
@JsonKey(name: 'withdrawal_bank_name') String? get withdrawalBankName;@JsonKey(name: 'withdrawal_account_number') String? get withdrawalAccountNumber;@JsonKey(name: 'withdrawal_account_holder') String? get withdrawalAccountHolder;
/// Create a copy of CampaignModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CampaignModelCopyWith<CampaignModel> get copyWith => _$CampaignModelCopyWithImpl<CampaignModel>(this as CampaignModel, _$identity);

  /// Serializes this CampaignModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CampaignModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.coverImageUrl, coverImageUrl) || other.coverImageUrl == coverImageUrl)&&(identical(other.targetAmount, targetAmount) || other.targetAmount == targetAmount)&&(identical(other.amountRaised, amountRaised) || other.amountRaised == amountRaised)&&(identical(other.currentBalance, currentBalance) || other.currentBalance == currentBalance)&&(identical(other.donorCount, donorCount) || other.donorCount == donorCount)&&(identical(other.status, status) || other.status == status)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.locationCity, locationCity) || other.locationCity == locationCity)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.organizerUsername, organizerUsername) || other.organizerUsername == organizerUsername)&&(identical(other.organizerAvatarUrl, organizerAvatarUrl) || other.organizerAvatarUrl == organizerAvatarUrl)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.categorySlug, categorySlug) || other.categorySlug == categorySlug)&&(identical(other.withdrawalBankName, withdrawalBankName) || other.withdrawalBankName == withdrawalBankName)&&(identical(other.withdrawalAccountNumber, withdrawalAccountNumber) || other.withdrawalAccountNumber == withdrawalAccountNumber)&&(identical(other.withdrawalAccountHolder, withdrawalAccountHolder) || other.withdrawalAccountHolder == withdrawalAccountHolder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,userId,categoryId,title,description,coverImageUrl,targetAmount,amountRaised,currentBalance,donorCount,status,isVerified,locationCity,endDate,createdAt,updatedAt,completedAt,organizerUsername,organizerAvatarUrl,categoryName,categorySlug,withdrawalBankName,withdrawalAccountNumber,withdrawalAccountHolder]);

@override
String toString() {
  return 'CampaignModel(id: $id, userId: $userId, categoryId: $categoryId, title: $title, description: $description, coverImageUrl: $coverImageUrl, targetAmount: $targetAmount, amountRaised: $amountRaised, currentBalance: $currentBalance, donorCount: $donorCount, status: $status, isVerified: $isVerified, locationCity: $locationCity, endDate: $endDate, createdAt: $createdAt, updatedAt: $updatedAt, completedAt: $completedAt, organizerUsername: $organizerUsername, organizerAvatarUrl: $organizerAvatarUrl, categoryName: $categoryName, categorySlug: $categorySlug, withdrawalBankName: $withdrawalBankName, withdrawalAccountNumber: $withdrawalAccountNumber, withdrawalAccountHolder: $withdrawalAccountHolder)';
}


}

/// @nodoc
abstract mixin class $CampaignModelCopyWith<$Res>  {
  factory $CampaignModelCopyWith(CampaignModel value, $Res Function(CampaignModel) _then) = _$CampaignModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'category_id') String? categoryId,@JsonKey(name: 'title') String title,@JsonKey(name: 'description') String description,@JsonKey(name: 'cover_image_url') String? coverImageUrl,@JsonKey(name: 'target_amount') double targetAmount,@JsonKey(name: 'amount_raised') double amountRaised,@JsonKey(name: 'current_balance') double currentBalance,@JsonKey(name: 'donor_count') int donorCount,@JsonKey(name: 'status') String status,@JsonKey(name: 'is_verified') bool isVerified,@JsonKey(name: 'location_city') String? locationCity,@JsonKey(name: 'end_date') DateTime? endDate,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt,@JsonKey(name: 'completed_at') DateTime? completedAt,@JsonKey(name: 'organizer_username') String? organizerUsername,@JsonKey(name: 'organizer_avatar_url') String? organizerAvatarUrl,@JsonKey(name: 'category_name') String? categoryName,@JsonKey(name: 'category_slug') String? categorySlug,@JsonKey(name: 'withdrawal_bank_name') String? withdrawalBankName,@JsonKey(name: 'withdrawal_account_number') String? withdrawalAccountNumber,@JsonKey(name: 'withdrawal_account_holder') String? withdrawalAccountHolder
});




}
/// @nodoc
class _$CampaignModelCopyWithImpl<$Res>
    implements $CampaignModelCopyWith<$Res> {
  _$CampaignModelCopyWithImpl(this._self, this._then);

  final CampaignModel _self;
  final $Res Function(CampaignModel) _then;

/// Create a copy of CampaignModel
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
as String,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
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


/// Adds pattern-matching-related methods to [CampaignModel].
extension CampaignModelPatterns on CampaignModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CampaignModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CampaignModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CampaignModel value)  $default,){
final _that = this;
switch (_that) {
case _CampaignModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CampaignModel value)?  $default,){
final _that = this;
switch (_that) {
case _CampaignModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'category_id')  String? categoryId, @JsonKey(name: 'title')  String title, @JsonKey(name: 'description')  String description, @JsonKey(name: 'cover_image_url')  String? coverImageUrl, @JsonKey(name: 'target_amount')  double targetAmount, @JsonKey(name: 'amount_raised')  double amountRaised, @JsonKey(name: 'current_balance')  double currentBalance, @JsonKey(name: 'donor_count')  int donorCount, @JsonKey(name: 'status')  String status, @JsonKey(name: 'is_verified')  bool isVerified, @JsonKey(name: 'location_city')  String? locationCity, @JsonKey(name: 'end_date')  DateTime? endDate, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt, @JsonKey(name: 'completed_at')  DateTime? completedAt, @JsonKey(name: 'organizer_username')  String? organizerUsername, @JsonKey(name: 'organizer_avatar_url')  String? organizerAvatarUrl, @JsonKey(name: 'category_name')  String? categoryName, @JsonKey(name: 'category_slug')  String? categorySlug, @JsonKey(name: 'withdrawal_bank_name')  String? withdrawalBankName, @JsonKey(name: 'withdrawal_account_number')  String? withdrawalAccountNumber, @JsonKey(name: 'withdrawal_account_holder')  String? withdrawalAccountHolder)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CampaignModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'category_id')  String? categoryId, @JsonKey(name: 'title')  String title, @JsonKey(name: 'description')  String description, @JsonKey(name: 'cover_image_url')  String? coverImageUrl, @JsonKey(name: 'target_amount')  double targetAmount, @JsonKey(name: 'amount_raised')  double amountRaised, @JsonKey(name: 'current_balance')  double currentBalance, @JsonKey(name: 'donor_count')  int donorCount, @JsonKey(name: 'status')  String status, @JsonKey(name: 'is_verified')  bool isVerified, @JsonKey(name: 'location_city')  String? locationCity, @JsonKey(name: 'end_date')  DateTime? endDate, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt, @JsonKey(name: 'completed_at')  DateTime? completedAt, @JsonKey(name: 'organizer_username')  String? organizerUsername, @JsonKey(name: 'organizer_avatar_url')  String? organizerAvatarUrl, @JsonKey(name: 'category_name')  String? categoryName, @JsonKey(name: 'category_slug')  String? categorySlug, @JsonKey(name: 'withdrawal_bank_name')  String? withdrawalBankName, @JsonKey(name: 'withdrawal_account_number')  String? withdrawalAccountNumber, @JsonKey(name: 'withdrawal_account_holder')  String? withdrawalAccountHolder)  $default,) {final _that = this;
switch (_that) {
case _CampaignModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'category_id')  String? categoryId, @JsonKey(name: 'title')  String title, @JsonKey(name: 'description')  String description, @JsonKey(name: 'cover_image_url')  String? coverImageUrl, @JsonKey(name: 'target_amount')  double targetAmount, @JsonKey(name: 'amount_raised')  double amountRaised, @JsonKey(name: 'current_balance')  double currentBalance, @JsonKey(name: 'donor_count')  int donorCount, @JsonKey(name: 'status')  String status, @JsonKey(name: 'is_verified')  bool isVerified, @JsonKey(name: 'location_city')  String? locationCity, @JsonKey(name: 'end_date')  DateTime? endDate, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt, @JsonKey(name: 'completed_at')  DateTime? completedAt, @JsonKey(name: 'organizer_username')  String? organizerUsername, @JsonKey(name: 'organizer_avatar_url')  String? organizerAvatarUrl, @JsonKey(name: 'category_name')  String? categoryName, @JsonKey(name: 'category_slug')  String? categorySlug, @JsonKey(name: 'withdrawal_bank_name')  String? withdrawalBankName, @JsonKey(name: 'withdrawal_account_number')  String? withdrawalAccountNumber, @JsonKey(name: 'withdrawal_account_holder')  String? withdrawalAccountHolder)?  $default,) {final _that = this;
switch (_that) {
case _CampaignModel() when $default != null:
return $default(_that.id,_that.userId,_that.categoryId,_that.title,_that.description,_that.coverImageUrl,_that.targetAmount,_that.amountRaised,_that.currentBalance,_that.donorCount,_that.status,_that.isVerified,_that.locationCity,_that.endDate,_that.createdAt,_that.updatedAt,_that.completedAt,_that.organizerUsername,_that.organizerAvatarUrl,_that.categoryName,_that.categorySlug,_that.withdrawalBankName,_that.withdrawalAccountNumber,_that.withdrawalAccountHolder);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CampaignModel extends CampaignModel {
  const _CampaignModel({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'user_id') required this.userId, @JsonKey(name: 'category_id') this.categoryId, @JsonKey(name: 'title') required this.title, @JsonKey(name: 'description') required this.description, @JsonKey(name: 'cover_image_url') this.coverImageUrl, @JsonKey(name: 'target_amount') required this.targetAmount, @JsonKey(name: 'amount_raised') this.amountRaised = 0, @JsonKey(name: 'current_balance') this.currentBalance = 0, @JsonKey(name: 'donor_count') this.donorCount = 0, @JsonKey(name: 'status') this.status = 'active', @JsonKey(name: 'is_verified') this.isVerified = false, @JsonKey(name: 'location_city') this.locationCity, @JsonKey(name: 'end_date') this.endDate, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'completed_at') this.completedAt, @JsonKey(name: 'organizer_username') this.organizerUsername, @JsonKey(name: 'organizer_avatar_url') this.organizerAvatarUrl, @JsonKey(name: 'category_name') this.categoryName, @JsonKey(name: 'category_slug') this.categorySlug, @JsonKey(name: 'withdrawal_bank_name') this.withdrawalBankName, @JsonKey(name: 'withdrawal_account_number') this.withdrawalAccountNumber, @JsonKey(name: 'withdrawal_account_holder') this.withdrawalAccountHolder}): super._();
  factory _CampaignModel.fromJson(Map<String, dynamic> json) => _$CampaignModelFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'user_id') final  String userId;
@override@JsonKey(name: 'category_id') final  String? categoryId;
@override@JsonKey(name: 'title') final  String title;
@override@JsonKey(name: 'description') final  String description;
@override@JsonKey(name: 'cover_image_url') final  String? coverImageUrl;
@override@JsonKey(name: 'target_amount') final  double targetAmount;
@override@JsonKey(name: 'amount_raised') final  double amountRaised;
@override@JsonKey(name: 'current_balance') final  double currentBalance;
@override@JsonKey(name: 'donor_count') final  int donorCount;
@override@JsonKey(name: 'status') final  String status;
@override@JsonKey(name: 'is_verified') final  bool isVerified;
@override@JsonKey(name: 'location_city') final  String? locationCity;
@override@JsonKey(name: 'end_date') final  DateTime? endDate;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime? updatedAt;
@override@JsonKey(name: 'completed_at') final  DateTime? completedAt;
// Joined from user_profiles (read-only)
@override@JsonKey(name: 'organizer_username') final  String? organizerUsername;
@override@JsonKey(name: 'organizer_avatar_url') final  String? organizerAvatarUrl;
// Joined from campaign_categories (read-only)
@override@JsonKey(name: 'category_name') final  String? categoryName;
@override@JsonKey(name: 'category_slug') final  String? categorySlug;
// Bank details for withdrawal processing
@override@JsonKey(name: 'withdrawal_bank_name') final  String? withdrawalBankName;
@override@JsonKey(name: 'withdrawal_account_number') final  String? withdrawalAccountNumber;
@override@JsonKey(name: 'withdrawal_account_holder') final  String? withdrawalAccountHolder;

/// Create a copy of CampaignModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CampaignModelCopyWith<_CampaignModel> get copyWith => __$CampaignModelCopyWithImpl<_CampaignModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CampaignModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CampaignModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.coverImageUrl, coverImageUrl) || other.coverImageUrl == coverImageUrl)&&(identical(other.targetAmount, targetAmount) || other.targetAmount == targetAmount)&&(identical(other.amountRaised, amountRaised) || other.amountRaised == amountRaised)&&(identical(other.currentBalance, currentBalance) || other.currentBalance == currentBalance)&&(identical(other.donorCount, donorCount) || other.donorCount == donorCount)&&(identical(other.status, status) || other.status == status)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.locationCity, locationCity) || other.locationCity == locationCity)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.organizerUsername, organizerUsername) || other.organizerUsername == organizerUsername)&&(identical(other.organizerAvatarUrl, organizerAvatarUrl) || other.organizerAvatarUrl == organizerAvatarUrl)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.categorySlug, categorySlug) || other.categorySlug == categorySlug)&&(identical(other.withdrawalBankName, withdrawalBankName) || other.withdrawalBankName == withdrawalBankName)&&(identical(other.withdrawalAccountNumber, withdrawalAccountNumber) || other.withdrawalAccountNumber == withdrawalAccountNumber)&&(identical(other.withdrawalAccountHolder, withdrawalAccountHolder) || other.withdrawalAccountHolder == withdrawalAccountHolder));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,userId,categoryId,title,description,coverImageUrl,targetAmount,amountRaised,currentBalance,donorCount,status,isVerified,locationCity,endDate,createdAt,updatedAt,completedAt,organizerUsername,organizerAvatarUrl,categoryName,categorySlug,withdrawalBankName,withdrawalAccountNumber,withdrawalAccountHolder]);

@override
String toString() {
  return 'CampaignModel(id: $id, userId: $userId, categoryId: $categoryId, title: $title, description: $description, coverImageUrl: $coverImageUrl, targetAmount: $targetAmount, amountRaised: $amountRaised, currentBalance: $currentBalance, donorCount: $donorCount, status: $status, isVerified: $isVerified, locationCity: $locationCity, endDate: $endDate, createdAt: $createdAt, updatedAt: $updatedAt, completedAt: $completedAt, organizerUsername: $organizerUsername, organizerAvatarUrl: $organizerAvatarUrl, categoryName: $categoryName, categorySlug: $categorySlug, withdrawalBankName: $withdrawalBankName, withdrawalAccountNumber: $withdrawalAccountNumber, withdrawalAccountHolder: $withdrawalAccountHolder)';
}


}

/// @nodoc
abstract mixin class _$CampaignModelCopyWith<$Res> implements $CampaignModelCopyWith<$Res> {
  factory _$CampaignModelCopyWith(_CampaignModel value, $Res Function(_CampaignModel) _then) = __$CampaignModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'category_id') String? categoryId,@JsonKey(name: 'title') String title,@JsonKey(name: 'description') String description,@JsonKey(name: 'cover_image_url') String? coverImageUrl,@JsonKey(name: 'target_amount') double targetAmount,@JsonKey(name: 'amount_raised') double amountRaised,@JsonKey(name: 'current_balance') double currentBalance,@JsonKey(name: 'donor_count') int donorCount,@JsonKey(name: 'status') String status,@JsonKey(name: 'is_verified') bool isVerified,@JsonKey(name: 'location_city') String? locationCity,@JsonKey(name: 'end_date') DateTime? endDate,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt,@JsonKey(name: 'completed_at') DateTime? completedAt,@JsonKey(name: 'organizer_username') String? organizerUsername,@JsonKey(name: 'organizer_avatar_url') String? organizerAvatarUrl,@JsonKey(name: 'category_name') String? categoryName,@JsonKey(name: 'category_slug') String? categorySlug,@JsonKey(name: 'withdrawal_bank_name') String? withdrawalBankName,@JsonKey(name: 'withdrawal_account_number') String? withdrawalAccountNumber,@JsonKey(name: 'withdrawal_account_holder') String? withdrawalAccountHolder
});




}
/// @nodoc
class __$CampaignModelCopyWithImpl<$Res>
    implements _$CampaignModelCopyWith<$Res> {
  __$CampaignModelCopyWithImpl(this._self, this._then);

  final _CampaignModel _self;
  final $Res Function(_CampaignModel) _then;

/// Create a copy of CampaignModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? categoryId = freezed,Object? title = null,Object? description = null,Object? coverImageUrl = freezed,Object? targetAmount = null,Object? amountRaised = null,Object? currentBalance = null,Object? donorCount = null,Object? status = null,Object? isVerified = null,Object? locationCity = freezed,Object? endDate = freezed,Object? createdAt = null,Object? updatedAt = freezed,Object? completedAt = freezed,Object? organizerUsername = freezed,Object? organizerAvatarUrl = freezed,Object? categoryName = freezed,Object? categorySlug = freezed,Object? withdrawalBankName = freezed,Object? withdrawalAccountNumber = freezed,Object? withdrawalAccountHolder = freezed,}) {
  return _then(_CampaignModel(
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
as String,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
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
