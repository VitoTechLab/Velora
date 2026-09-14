// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'donation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DonationModel {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'campaign_id') String get campaignId;@JsonKey(name: 'user_id') String get userId;@JsonKey(name: 'amount_total') double get amountTotal;@JsonKey(name: 'platform_fee_percent') double get platformFeePercent;@JsonKey(name: 'platform_fee_amount') double? get platformFeeAmount;@JsonKey(name: 'amount_net') double? get amountNet;@JsonKey(name: 'is_anonymous') bool get isAnonymous;@JsonKey(name: 'message') String? get message;@JsonKey(name: 'payment_status') String get paymentStatus;@JsonKey(name: 'payment_id') String? get paymentId;@JsonKey(name: 'created_at') DateTime get createdAt;// Joined from user_profiles (read-only)
@JsonKey(name: 'donor_username') String? get donorUsername;@JsonKey(name: 'donor_display_name') String? get donorDisplayName;@JsonKey(name: 'donor_avatar_url') String? get donorAvatarUrl;// Joined from campaigns (read-only)
@JsonKey(name: 'campaign_title', readValue: _readCampaignTitle) String? get campaignTitle;@JsonKey(name: 'campaign_image_url', readValue: _readCampaignImageUrl) String? get campaignImageUrl;
/// Create a copy of DonationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DonationModelCopyWith<DonationModel> get copyWith => _$DonationModelCopyWithImpl<DonationModel>(this as DonationModel, _$identity);

  /// Serializes this DonationModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DonationModel&&(identical(other.id, id) || other.id == id)&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.amountTotal, amountTotal) || other.amountTotal == amountTotal)&&(identical(other.platformFeePercent, platformFeePercent) || other.platformFeePercent == platformFeePercent)&&(identical(other.platformFeeAmount, platformFeeAmount) || other.platformFeeAmount == platformFeeAmount)&&(identical(other.amountNet, amountNet) || other.amountNet == amountNet)&&(identical(other.isAnonymous, isAnonymous) || other.isAnonymous == isAnonymous)&&(identical(other.message, message) || other.message == message)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.donorUsername, donorUsername) || other.donorUsername == donorUsername)&&(identical(other.donorDisplayName, donorDisplayName) || other.donorDisplayName == donorDisplayName)&&(identical(other.donorAvatarUrl, donorAvatarUrl) || other.donorAvatarUrl == donorAvatarUrl)&&(identical(other.campaignTitle, campaignTitle) || other.campaignTitle == campaignTitle)&&(identical(other.campaignImageUrl, campaignImageUrl) || other.campaignImageUrl == campaignImageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,campaignId,userId,amountTotal,platformFeePercent,platformFeeAmount,amountNet,isAnonymous,message,paymentStatus,paymentId,createdAt,donorUsername,donorDisplayName,donorAvatarUrl,campaignTitle,campaignImageUrl);

@override
String toString() {
  return 'DonationModel(id: $id, campaignId: $campaignId, userId: $userId, amountTotal: $amountTotal, platformFeePercent: $platformFeePercent, platformFeeAmount: $platformFeeAmount, amountNet: $amountNet, isAnonymous: $isAnonymous, message: $message, paymentStatus: $paymentStatus, paymentId: $paymentId, createdAt: $createdAt, donorUsername: $donorUsername, donorDisplayName: $donorDisplayName, donorAvatarUrl: $donorAvatarUrl, campaignTitle: $campaignTitle, campaignImageUrl: $campaignImageUrl)';
}


}

/// @nodoc
abstract mixin class $DonationModelCopyWith<$Res>  {
  factory $DonationModelCopyWith(DonationModel value, $Res Function(DonationModel) _then) = _$DonationModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'campaign_id') String campaignId,@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'amount_total') double amountTotal,@JsonKey(name: 'platform_fee_percent') double platformFeePercent,@JsonKey(name: 'platform_fee_amount') double? platformFeeAmount,@JsonKey(name: 'amount_net') double? amountNet,@JsonKey(name: 'is_anonymous') bool isAnonymous,@JsonKey(name: 'message') String? message,@JsonKey(name: 'payment_status') String paymentStatus,@JsonKey(name: 'payment_id') String? paymentId,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'donor_username') String? donorUsername,@JsonKey(name: 'donor_display_name') String? donorDisplayName,@JsonKey(name: 'donor_avatar_url') String? donorAvatarUrl,@JsonKey(name: 'campaign_title', readValue: _readCampaignTitle) String? campaignTitle,@JsonKey(name: 'campaign_image_url', readValue: _readCampaignImageUrl) String? campaignImageUrl
});




}
/// @nodoc
class _$DonationModelCopyWithImpl<$Res>
    implements $DonationModelCopyWith<$Res> {
  _$DonationModelCopyWithImpl(this._self, this._then);

  final DonationModel _self;
  final $Res Function(DonationModel) _then;

/// Create a copy of DonationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? campaignId = null,Object? userId = null,Object? amountTotal = null,Object? platformFeePercent = null,Object? platformFeeAmount = freezed,Object? amountNet = freezed,Object? isAnonymous = null,Object? message = freezed,Object? paymentStatus = null,Object? paymentId = freezed,Object? createdAt = null,Object? donorUsername = freezed,Object? donorDisplayName = freezed,Object? donorAvatarUrl = freezed,Object? campaignTitle = freezed,Object? campaignImageUrl = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,campaignId: null == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,amountTotal: null == amountTotal ? _self.amountTotal : amountTotal // ignore: cast_nullable_to_non_nullable
as double,platformFeePercent: null == platformFeePercent ? _self.platformFeePercent : platformFeePercent // ignore: cast_nullable_to_non_nullable
as double,platformFeeAmount: freezed == platformFeeAmount ? _self.platformFeeAmount : platformFeeAmount // ignore: cast_nullable_to_non_nullable
as double?,amountNet: freezed == amountNet ? _self.amountNet : amountNet // ignore: cast_nullable_to_non_nullable
as double?,isAnonymous: null == isAnonymous ? _self.isAnonymous : isAnonymous // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,paymentStatus: null == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String,paymentId: freezed == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,donorUsername: freezed == donorUsername ? _self.donorUsername : donorUsername // ignore: cast_nullable_to_non_nullable
as String?,donorDisplayName: freezed == donorDisplayName ? _self.donorDisplayName : donorDisplayName // ignore: cast_nullable_to_non_nullable
as String?,donorAvatarUrl: freezed == donorAvatarUrl ? _self.donorAvatarUrl : donorAvatarUrl // ignore: cast_nullable_to_non_nullable
as String?,campaignTitle: freezed == campaignTitle ? _self.campaignTitle : campaignTitle // ignore: cast_nullable_to_non_nullable
as String?,campaignImageUrl: freezed == campaignImageUrl ? _self.campaignImageUrl : campaignImageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DonationModel].
extension DonationModelPatterns on DonationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DonationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DonationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DonationModel value)  $default,){
final _that = this;
switch (_that) {
case _DonationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DonationModel value)?  $default,){
final _that = this;
switch (_that) {
case _DonationModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'campaign_id')  String campaignId, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'amount_total')  double amountTotal, @JsonKey(name: 'platform_fee_percent')  double platformFeePercent, @JsonKey(name: 'platform_fee_amount')  double? platformFeeAmount, @JsonKey(name: 'amount_net')  double? amountNet, @JsonKey(name: 'is_anonymous')  bool isAnonymous, @JsonKey(name: 'message')  String? message, @JsonKey(name: 'payment_status')  String paymentStatus, @JsonKey(name: 'payment_id')  String? paymentId, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'donor_username')  String? donorUsername, @JsonKey(name: 'donor_display_name')  String? donorDisplayName, @JsonKey(name: 'donor_avatar_url')  String? donorAvatarUrl, @JsonKey(name: 'campaign_title', readValue: _readCampaignTitle)  String? campaignTitle, @JsonKey(name: 'campaign_image_url', readValue: _readCampaignImageUrl)  String? campaignImageUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DonationModel() when $default != null:
return $default(_that.id,_that.campaignId,_that.userId,_that.amountTotal,_that.platformFeePercent,_that.platformFeeAmount,_that.amountNet,_that.isAnonymous,_that.message,_that.paymentStatus,_that.paymentId,_that.createdAt,_that.donorUsername,_that.donorDisplayName,_that.donorAvatarUrl,_that.campaignTitle,_that.campaignImageUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'campaign_id')  String campaignId, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'amount_total')  double amountTotal, @JsonKey(name: 'platform_fee_percent')  double platformFeePercent, @JsonKey(name: 'platform_fee_amount')  double? platformFeeAmount, @JsonKey(name: 'amount_net')  double? amountNet, @JsonKey(name: 'is_anonymous')  bool isAnonymous, @JsonKey(name: 'message')  String? message, @JsonKey(name: 'payment_status')  String paymentStatus, @JsonKey(name: 'payment_id')  String? paymentId, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'donor_username')  String? donorUsername, @JsonKey(name: 'donor_display_name')  String? donorDisplayName, @JsonKey(name: 'donor_avatar_url')  String? donorAvatarUrl, @JsonKey(name: 'campaign_title', readValue: _readCampaignTitle)  String? campaignTitle, @JsonKey(name: 'campaign_image_url', readValue: _readCampaignImageUrl)  String? campaignImageUrl)  $default,) {final _that = this;
switch (_that) {
case _DonationModel():
return $default(_that.id,_that.campaignId,_that.userId,_that.amountTotal,_that.platformFeePercent,_that.platformFeeAmount,_that.amountNet,_that.isAnonymous,_that.message,_that.paymentStatus,_that.paymentId,_that.createdAt,_that.donorUsername,_that.donorDisplayName,_that.donorAvatarUrl,_that.campaignTitle,_that.campaignImageUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'campaign_id')  String campaignId, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'amount_total')  double amountTotal, @JsonKey(name: 'platform_fee_percent')  double platformFeePercent, @JsonKey(name: 'platform_fee_amount')  double? platformFeeAmount, @JsonKey(name: 'amount_net')  double? amountNet, @JsonKey(name: 'is_anonymous')  bool isAnonymous, @JsonKey(name: 'message')  String? message, @JsonKey(name: 'payment_status')  String paymentStatus, @JsonKey(name: 'payment_id')  String? paymentId, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'donor_username')  String? donorUsername, @JsonKey(name: 'donor_display_name')  String? donorDisplayName, @JsonKey(name: 'donor_avatar_url')  String? donorAvatarUrl, @JsonKey(name: 'campaign_title', readValue: _readCampaignTitle)  String? campaignTitle, @JsonKey(name: 'campaign_image_url', readValue: _readCampaignImageUrl)  String? campaignImageUrl)?  $default,) {final _that = this;
switch (_that) {
case _DonationModel() when $default != null:
return $default(_that.id,_that.campaignId,_that.userId,_that.amountTotal,_that.platformFeePercent,_that.platformFeeAmount,_that.amountNet,_that.isAnonymous,_that.message,_that.paymentStatus,_that.paymentId,_that.createdAt,_that.donorUsername,_that.donorDisplayName,_that.donorAvatarUrl,_that.campaignTitle,_that.campaignImageUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DonationModel extends DonationModel {
  const _DonationModel({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'campaign_id') required this.campaignId, @JsonKey(name: 'user_id') required this.userId, @JsonKey(name: 'amount_total') required this.amountTotal, @JsonKey(name: 'platform_fee_percent') this.platformFeePercent = 0, @JsonKey(name: 'platform_fee_amount') this.platformFeeAmount, @JsonKey(name: 'amount_net') this.amountNet, @JsonKey(name: 'is_anonymous') this.isAnonymous = false, @JsonKey(name: 'message') this.message, @JsonKey(name: 'payment_status') this.paymentStatus = 'pending', @JsonKey(name: 'payment_id') this.paymentId, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'donor_username') this.donorUsername, @JsonKey(name: 'donor_display_name') this.donorDisplayName, @JsonKey(name: 'donor_avatar_url') this.donorAvatarUrl, @JsonKey(name: 'campaign_title', readValue: _readCampaignTitle) this.campaignTitle, @JsonKey(name: 'campaign_image_url', readValue: _readCampaignImageUrl) this.campaignImageUrl}): super._();
  factory _DonationModel.fromJson(Map<String, dynamic> json) => _$DonationModelFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'campaign_id') final  String campaignId;
@override@JsonKey(name: 'user_id') final  String userId;
@override@JsonKey(name: 'amount_total') final  double amountTotal;
@override@JsonKey(name: 'platform_fee_percent') final  double platformFeePercent;
@override@JsonKey(name: 'platform_fee_amount') final  double? platformFeeAmount;
@override@JsonKey(name: 'amount_net') final  double? amountNet;
@override@JsonKey(name: 'is_anonymous') final  bool isAnonymous;
@override@JsonKey(name: 'message') final  String? message;
@override@JsonKey(name: 'payment_status') final  String paymentStatus;
@override@JsonKey(name: 'payment_id') final  String? paymentId;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;
// Joined from user_profiles (read-only)
@override@JsonKey(name: 'donor_username') final  String? donorUsername;
@override@JsonKey(name: 'donor_display_name') final  String? donorDisplayName;
@override@JsonKey(name: 'donor_avatar_url') final  String? donorAvatarUrl;
// Joined from campaigns (read-only)
@override@JsonKey(name: 'campaign_title', readValue: _readCampaignTitle) final  String? campaignTitle;
@override@JsonKey(name: 'campaign_image_url', readValue: _readCampaignImageUrl) final  String? campaignImageUrl;

/// Create a copy of DonationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DonationModelCopyWith<_DonationModel> get copyWith => __$DonationModelCopyWithImpl<_DonationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DonationModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DonationModel&&(identical(other.id, id) || other.id == id)&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.amountTotal, amountTotal) || other.amountTotal == amountTotal)&&(identical(other.platformFeePercent, platformFeePercent) || other.platformFeePercent == platformFeePercent)&&(identical(other.platformFeeAmount, platformFeeAmount) || other.platformFeeAmount == platformFeeAmount)&&(identical(other.amountNet, amountNet) || other.amountNet == amountNet)&&(identical(other.isAnonymous, isAnonymous) || other.isAnonymous == isAnonymous)&&(identical(other.message, message) || other.message == message)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.donorUsername, donorUsername) || other.donorUsername == donorUsername)&&(identical(other.donorDisplayName, donorDisplayName) || other.donorDisplayName == donorDisplayName)&&(identical(other.donorAvatarUrl, donorAvatarUrl) || other.donorAvatarUrl == donorAvatarUrl)&&(identical(other.campaignTitle, campaignTitle) || other.campaignTitle == campaignTitle)&&(identical(other.campaignImageUrl, campaignImageUrl) || other.campaignImageUrl == campaignImageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,campaignId,userId,amountTotal,platformFeePercent,platformFeeAmount,amountNet,isAnonymous,message,paymentStatus,paymentId,createdAt,donorUsername,donorDisplayName,donorAvatarUrl,campaignTitle,campaignImageUrl);

@override
String toString() {
  return 'DonationModel(id: $id, campaignId: $campaignId, userId: $userId, amountTotal: $amountTotal, platformFeePercent: $platformFeePercent, platformFeeAmount: $platformFeeAmount, amountNet: $amountNet, isAnonymous: $isAnonymous, message: $message, paymentStatus: $paymentStatus, paymentId: $paymentId, createdAt: $createdAt, donorUsername: $donorUsername, donorDisplayName: $donorDisplayName, donorAvatarUrl: $donorAvatarUrl, campaignTitle: $campaignTitle, campaignImageUrl: $campaignImageUrl)';
}


}

/// @nodoc
abstract mixin class _$DonationModelCopyWith<$Res> implements $DonationModelCopyWith<$Res> {
  factory _$DonationModelCopyWith(_DonationModel value, $Res Function(_DonationModel) _then) = __$DonationModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'campaign_id') String campaignId,@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'amount_total') double amountTotal,@JsonKey(name: 'platform_fee_percent') double platformFeePercent,@JsonKey(name: 'platform_fee_amount') double? platformFeeAmount,@JsonKey(name: 'amount_net') double? amountNet,@JsonKey(name: 'is_anonymous') bool isAnonymous,@JsonKey(name: 'message') String? message,@JsonKey(name: 'payment_status') String paymentStatus,@JsonKey(name: 'payment_id') String? paymentId,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'donor_username') String? donorUsername,@JsonKey(name: 'donor_display_name') String? donorDisplayName,@JsonKey(name: 'donor_avatar_url') String? donorAvatarUrl,@JsonKey(name: 'campaign_title', readValue: _readCampaignTitle) String? campaignTitle,@JsonKey(name: 'campaign_image_url', readValue: _readCampaignImageUrl) String? campaignImageUrl
});




}
/// @nodoc
class __$DonationModelCopyWithImpl<$Res>
    implements _$DonationModelCopyWith<$Res> {
  __$DonationModelCopyWithImpl(this._self, this._then);

  final _DonationModel _self;
  final $Res Function(_DonationModel) _then;

/// Create a copy of DonationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? campaignId = null,Object? userId = null,Object? amountTotal = null,Object? platformFeePercent = null,Object? platformFeeAmount = freezed,Object? amountNet = freezed,Object? isAnonymous = null,Object? message = freezed,Object? paymentStatus = null,Object? paymentId = freezed,Object? createdAt = null,Object? donorUsername = freezed,Object? donorDisplayName = freezed,Object? donorAvatarUrl = freezed,Object? campaignTitle = freezed,Object? campaignImageUrl = freezed,}) {
  return _then(_DonationModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,campaignId: null == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,amountTotal: null == amountTotal ? _self.amountTotal : amountTotal // ignore: cast_nullable_to_non_nullable
as double,platformFeePercent: null == platformFeePercent ? _self.platformFeePercent : platformFeePercent // ignore: cast_nullable_to_non_nullable
as double,platformFeeAmount: freezed == platformFeeAmount ? _self.platformFeeAmount : platformFeeAmount // ignore: cast_nullable_to_non_nullable
as double?,amountNet: freezed == amountNet ? _self.amountNet : amountNet // ignore: cast_nullable_to_non_nullable
as double?,isAnonymous: null == isAnonymous ? _self.isAnonymous : isAnonymous // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,paymentStatus: null == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String,paymentId: freezed == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,donorUsername: freezed == donorUsername ? _self.donorUsername : donorUsername // ignore: cast_nullable_to_non_nullable
as String?,donorDisplayName: freezed == donorDisplayName ? _self.donorDisplayName : donorDisplayName // ignore: cast_nullable_to_non_nullable
as String?,donorAvatarUrl: freezed == donorAvatarUrl ? _self.donorAvatarUrl : donorAvatarUrl // ignore: cast_nullable_to_non_nullable
as String?,campaignTitle: freezed == campaignTitle ? _self.campaignTitle : campaignTitle // ignore: cast_nullable_to_non_nullable
as String?,campaignImageUrl: freezed == campaignImageUrl ? _self.campaignImageUrl : campaignImageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
