// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'donation_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DonationEntity {

 String get id; String get campaignId; String get userId; double get amountTotal; double get platformFeePercent; double? get platformFeeAmount; double? get amountNet; bool get isAnonymous; String? get message; PaymentStatus get paymentStatus; String? get paymentId; DateTime get createdAt;// Joined from user_profiles (read-only)
 String? get donorUsername; String? get donorDisplayName; String? get donorAvatarUrl;// Joined from campaigns (read-only)
 String? get campaignTitle; String? get campaignImageUrl;
/// Create a copy of DonationEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DonationEntityCopyWith<DonationEntity> get copyWith => _$DonationEntityCopyWithImpl<DonationEntity>(this as DonationEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DonationEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.amountTotal, amountTotal) || other.amountTotal == amountTotal)&&(identical(other.platformFeePercent, platformFeePercent) || other.platformFeePercent == platformFeePercent)&&(identical(other.platformFeeAmount, platformFeeAmount) || other.platformFeeAmount == platformFeeAmount)&&(identical(other.amountNet, amountNet) || other.amountNet == amountNet)&&(identical(other.isAnonymous, isAnonymous) || other.isAnonymous == isAnonymous)&&(identical(other.message, message) || other.message == message)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.donorUsername, donorUsername) || other.donorUsername == donorUsername)&&(identical(other.donorDisplayName, donorDisplayName) || other.donorDisplayName == donorDisplayName)&&(identical(other.donorAvatarUrl, donorAvatarUrl) || other.donorAvatarUrl == donorAvatarUrl)&&(identical(other.campaignTitle, campaignTitle) || other.campaignTitle == campaignTitle)&&(identical(other.campaignImageUrl, campaignImageUrl) || other.campaignImageUrl == campaignImageUrl));
}


@override
int get hashCode => Object.hash(runtimeType,id,campaignId,userId,amountTotal,platformFeePercent,platformFeeAmount,amountNet,isAnonymous,message,paymentStatus,paymentId,createdAt,donorUsername,donorDisplayName,donorAvatarUrl,campaignTitle,campaignImageUrl);

@override
String toString() {
  return 'DonationEntity(id: $id, campaignId: $campaignId, userId: $userId, amountTotal: $amountTotal, platformFeePercent: $platformFeePercent, platformFeeAmount: $platformFeeAmount, amountNet: $amountNet, isAnonymous: $isAnonymous, message: $message, paymentStatus: $paymentStatus, paymentId: $paymentId, createdAt: $createdAt, donorUsername: $donorUsername, donorDisplayName: $donorDisplayName, donorAvatarUrl: $donorAvatarUrl, campaignTitle: $campaignTitle, campaignImageUrl: $campaignImageUrl)';
}


}

/// @nodoc
abstract mixin class $DonationEntityCopyWith<$Res>  {
  factory $DonationEntityCopyWith(DonationEntity value, $Res Function(DonationEntity) _then) = _$DonationEntityCopyWithImpl;
@useResult
$Res call({
 String id, String campaignId, String userId, double amountTotal, double platformFeePercent, double? platformFeeAmount, double? amountNet, bool isAnonymous, String? message, PaymentStatus paymentStatus, String? paymentId, DateTime createdAt, String? donorUsername, String? donorDisplayName, String? donorAvatarUrl, String? campaignTitle, String? campaignImageUrl
});




}
/// @nodoc
class _$DonationEntityCopyWithImpl<$Res>
    implements $DonationEntityCopyWith<$Res> {
  _$DonationEntityCopyWithImpl(this._self, this._then);

  final DonationEntity _self;
  final $Res Function(DonationEntity) _then;

/// Create a copy of DonationEntity
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
as PaymentStatus,paymentId: freezed == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
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


/// Adds pattern-matching-related methods to [DonationEntity].
extension DonationEntityPatterns on DonationEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DonationEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DonationEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DonationEntity value)  $default,){
final _that = this;
switch (_that) {
case _DonationEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DonationEntity value)?  $default,){
final _that = this;
switch (_that) {
case _DonationEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String campaignId,  String userId,  double amountTotal,  double platformFeePercent,  double? platformFeeAmount,  double? amountNet,  bool isAnonymous,  String? message,  PaymentStatus paymentStatus,  String? paymentId,  DateTime createdAt,  String? donorUsername,  String? donorDisplayName,  String? donorAvatarUrl,  String? campaignTitle,  String? campaignImageUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DonationEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String campaignId,  String userId,  double amountTotal,  double platformFeePercent,  double? platformFeeAmount,  double? amountNet,  bool isAnonymous,  String? message,  PaymentStatus paymentStatus,  String? paymentId,  DateTime createdAt,  String? donorUsername,  String? donorDisplayName,  String? donorAvatarUrl,  String? campaignTitle,  String? campaignImageUrl)  $default,) {final _that = this;
switch (_that) {
case _DonationEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String campaignId,  String userId,  double amountTotal,  double platformFeePercent,  double? platformFeeAmount,  double? amountNet,  bool isAnonymous,  String? message,  PaymentStatus paymentStatus,  String? paymentId,  DateTime createdAt,  String? donorUsername,  String? donorDisplayName,  String? donorAvatarUrl,  String? campaignTitle,  String? campaignImageUrl)?  $default,) {final _that = this;
switch (_that) {
case _DonationEntity() when $default != null:
return $default(_that.id,_that.campaignId,_that.userId,_that.amountTotal,_that.platformFeePercent,_that.platformFeeAmount,_that.amountNet,_that.isAnonymous,_that.message,_that.paymentStatus,_that.paymentId,_that.createdAt,_that.donorUsername,_that.donorDisplayName,_that.donorAvatarUrl,_that.campaignTitle,_that.campaignImageUrl);case _:
  return null;

}
}

}

/// @nodoc


class _DonationEntity implements DonationEntity {
  const _DonationEntity({required this.id, required this.campaignId, required this.userId, required this.amountTotal, this.platformFeePercent = 0, this.platformFeeAmount, this.amountNet, this.isAnonymous = false, this.message, this.paymentStatus = PaymentStatus.pending, this.paymentId, required this.createdAt, this.donorUsername, this.donorDisplayName, this.donorAvatarUrl, this.campaignTitle, this.campaignImageUrl});
  

@override final  String id;
@override final  String campaignId;
@override final  String userId;
@override final  double amountTotal;
@override@JsonKey() final  double platformFeePercent;
@override final  double? platformFeeAmount;
@override final  double? amountNet;
@override@JsonKey() final  bool isAnonymous;
@override final  String? message;
@override@JsonKey() final  PaymentStatus paymentStatus;
@override final  String? paymentId;
@override final  DateTime createdAt;
// Joined from user_profiles (read-only)
@override final  String? donorUsername;
@override final  String? donorDisplayName;
@override final  String? donorAvatarUrl;
// Joined from campaigns (read-only)
@override final  String? campaignTitle;
@override final  String? campaignImageUrl;

/// Create a copy of DonationEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DonationEntityCopyWith<_DonationEntity> get copyWith => __$DonationEntityCopyWithImpl<_DonationEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DonationEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.amountTotal, amountTotal) || other.amountTotal == amountTotal)&&(identical(other.platformFeePercent, platformFeePercent) || other.platformFeePercent == platformFeePercent)&&(identical(other.platformFeeAmount, platformFeeAmount) || other.platformFeeAmount == platformFeeAmount)&&(identical(other.amountNet, amountNet) || other.amountNet == amountNet)&&(identical(other.isAnonymous, isAnonymous) || other.isAnonymous == isAnonymous)&&(identical(other.message, message) || other.message == message)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.donorUsername, donorUsername) || other.donorUsername == donorUsername)&&(identical(other.donorDisplayName, donorDisplayName) || other.donorDisplayName == donorDisplayName)&&(identical(other.donorAvatarUrl, donorAvatarUrl) || other.donorAvatarUrl == donorAvatarUrl)&&(identical(other.campaignTitle, campaignTitle) || other.campaignTitle == campaignTitle)&&(identical(other.campaignImageUrl, campaignImageUrl) || other.campaignImageUrl == campaignImageUrl));
}


@override
int get hashCode => Object.hash(runtimeType,id,campaignId,userId,amountTotal,platformFeePercent,platformFeeAmount,amountNet,isAnonymous,message,paymentStatus,paymentId,createdAt,donorUsername,donorDisplayName,donorAvatarUrl,campaignTitle,campaignImageUrl);

@override
String toString() {
  return 'DonationEntity(id: $id, campaignId: $campaignId, userId: $userId, amountTotal: $amountTotal, platformFeePercent: $platformFeePercent, platformFeeAmount: $platformFeeAmount, amountNet: $amountNet, isAnonymous: $isAnonymous, message: $message, paymentStatus: $paymentStatus, paymentId: $paymentId, createdAt: $createdAt, donorUsername: $donorUsername, donorDisplayName: $donorDisplayName, donorAvatarUrl: $donorAvatarUrl, campaignTitle: $campaignTitle, campaignImageUrl: $campaignImageUrl)';
}


}

/// @nodoc
abstract mixin class _$DonationEntityCopyWith<$Res> implements $DonationEntityCopyWith<$Res> {
  factory _$DonationEntityCopyWith(_DonationEntity value, $Res Function(_DonationEntity) _then) = __$DonationEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String campaignId, String userId, double amountTotal, double platformFeePercent, double? platformFeeAmount, double? amountNet, bool isAnonymous, String? message, PaymentStatus paymentStatus, String? paymentId, DateTime createdAt, String? donorUsername, String? donorDisplayName, String? donorAvatarUrl, String? campaignTitle, String? campaignImageUrl
});




}
/// @nodoc
class __$DonationEntityCopyWithImpl<$Res>
    implements _$DonationEntityCopyWith<$Res> {
  __$DonationEntityCopyWithImpl(this._self, this._then);

  final _DonationEntity _self;
  final $Res Function(_DonationEntity) _then;

/// Create a copy of DonationEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? campaignId = null,Object? userId = null,Object? amountTotal = null,Object? platformFeePercent = null,Object? platformFeeAmount = freezed,Object? amountNet = freezed,Object? isAnonymous = null,Object? message = freezed,Object? paymentStatus = null,Object? paymentId = freezed,Object? createdAt = null,Object? donorUsername = freezed,Object? donorDisplayName = freezed,Object? donorAvatarUrl = freezed,Object? campaignTitle = freezed,Object? campaignImageUrl = freezed,}) {
  return _then(_DonationEntity(
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
as PaymentStatus,paymentId: freezed == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
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
