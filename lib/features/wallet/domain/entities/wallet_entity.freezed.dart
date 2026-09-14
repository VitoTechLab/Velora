// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WalletEntity {

 String get id; String get userId; WalletType get type; double get balance;/// For campaign wallets, the linked campaign ID
 String? get campaignId;/// Bank account details for withdrawals
 String? get bankName; String? get bankAccountNumber; String? get bankAccountHolder;/// Timestamps
 DateTime get createdAt; DateTime? get updatedAt;// Joined data (read-only, from campaigns table)
/// Campaign title for campaign wallets
 String? get campaignTitle;/// Campaign cover image for campaign wallets
 String? get campaignCoverImageUrl;
/// Create a copy of WalletEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletEntityCopyWith<WalletEntity> get copyWith => _$WalletEntityCopyWithImpl<WalletEntity>(this as WalletEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.type, type) || other.type == type)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.bankAccountNumber, bankAccountNumber) || other.bankAccountNumber == bankAccountNumber)&&(identical(other.bankAccountHolder, bankAccountHolder) || other.bankAccountHolder == bankAccountHolder)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.campaignTitle, campaignTitle) || other.campaignTitle == campaignTitle)&&(identical(other.campaignCoverImageUrl, campaignCoverImageUrl) || other.campaignCoverImageUrl == campaignCoverImageUrl));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,type,balance,campaignId,bankName,bankAccountNumber,bankAccountHolder,createdAt,updatedAt,campaignTitle,campaignCoverImageUrl);

@override
String toString() {
  return 'WalletEntity(id: $id, userId: $userId, type: $type, balance: $balance, campaignId: $campaignId, bankName: $bankName, bankAccountNumber: $bankAccountNumber, bankAccountHolder: $bankAccountHolder, createdAt: $createdAt, updatedAt: $updatedAt, campaignTitle: $campaignTitle, campaignCoverImageUrl: $campaignCoverImageUrl)';
}


}

/// @nodoc
abstract mixin class $WalletEntityCopyWith<$Res>  {
  factory $WalletEntityCopyWith(WalletEntity value, $Res Function(WalletEntity) _then) = _$WalletEntityCopyWithImpl;
@useResult
$Res call({
 String id, String userId, WalletType type, double balance, String? campaignId, String? bankName, String? bankAccountNumber, String? bankAccountHolder, DateTime createdAt, DateTime? updatedAt, String? campaignTitle, String? campaignCoverImageUrl
});




}
/// @nodoc
class _$WalletEntityCopyWithImpl<$Res>
    implements $WalletEntityCopyWith<$Res> {
  _$WalletEntityCopyWithImpl(this._self, this._then);

  final WalletEntity _self;
  final $Res Function(WalletEntity) _then;

/// Create a copy of WalletEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? type = null,Object? balance = null,Object? campaignId = freezed,Object? bankName = freezed,Object? bankAccountNumber = freezed,Object? bankAccountHolder = freezed,Object? createdAt = null,Object? updatedAt = freezed,Object? campaignTitle = freezed,Object? campaignCoverImageUrl = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as WalletType,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as double,campaignId: freezed == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String?,bankName: freezed == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String?,bankAccountNumber: freezed == bankAccountNumber ? _self.bankAccountNumber : bankAccountNumber // ignore: cast_nullable_to_non_nullable
as String?,bankAccountHolder: freezed == bankAccountHolder ? _self.bankAccountHolder : bankAccountHolder // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,campaignTitle: freezed == campaignTitle ? _self.campaignTitle : campaignTitle // ignore: cast_nullable_to_non_nullable
as String?,campaignCoverImageUrl: freezed == campaignCoverImageUrl ? _self.campaignCoverImageUrl : campaignCoverImageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [WalletEntity].
extension WalletEntityPatterns on WalletEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WalletEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WalletEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WalletEntity value)  $default,){
final _that = this;
switch (_that) {
case _WalletEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WalletEntity value)?  $default,){
final _that = this;
switch (_that) {
case _WalletEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId,  WalletType type,  double balance,  String? campaignId,  String? bankName,  String? bankAccountNumber,  String? bankAccountHolder,  DateTime createdAt,  DateTime? updatedAt,  String? campaignTitle,  String? campaignCoverImageUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WalletEntity() when $default != null:
return $default(_that.id,_that.userId,_that.type,_that.balance,_that.campaignId,_that.bankName,_that.bankAccountNumber,_that.bankAccountHolder,_that.createdAt,_that.updatedAt,_that.campaignTitle,_that.campaignCoverImageUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId,  WalletType type,  double balance,  String? campaignId,  String? bankName,  String? bankAccountNumber,  String? bankAccountHolder,  DateTime createdAt,  DateTime? updatedAt,  String? campaignTitle,  String? campaignCoverImageUrl)  $default,) {final _that = this;
switch (_that) {
case _WalletEntity():
return $default(_that.id,_that.userId,_that.type,_that.balance,_that.campaignId,_that.bankName,_that.bankAccountNumber,_that.bankAccountHolder,_that.createdAt,_that.updatedAt,_that.campaignTitle,_that.campaignCoverImageUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId,  WalletType type,  double balance,  String? campaignId,  String? bankName,  String? bankAccountNumber,  String? bankAccountHolder,  DateTime createdAt,  DateTime? updatedAt,  String? campaignTitle,  String? campaignCoverImageUrl)?  $default,) {final _that = this;
switch (_that) {
case _WalletEntity() when $default != null:
return $default(_that.id,_that.userId,_that.type,_that.balance,_that.campaignId,_that.bankName,_that.bankAccountNumber,_that.bankAccountHolder,_that.createdAt,_that.updatedAt,_that.campaignTitle,_that.campaignCoverImageUrl);case _:
  return null;

}
}

}

/// @nodoc


class _WalletEntity extends WalletEntity {
  const _WalletEntity({required this.id, required this.userId, required this.type, this.balance = 0, this.campaignId, this.bankName, this.bankAccountNumber, this.bankAccountHolder, required this.createdAt, this.updatedAt, this.campaignTitle, this.campaignCoverImageUrl}): super._();
  

@override final  String id;
@override final  String userId;
@override final  WalletType type;
@override@JsonKey() final  double balance;
/// For campaign wallets, the linked campaign ID
@override final  String? campaignId;
/// Bank account details for withdrawals
@override final  String? bankName;
@override final  String? bankAccountNumber;
@override final  String? bankAccountHolder;
/// Timestamps
@override final  DateTime createdAt;
@override final  DateTime? updatedAt;
// Joined data (read-only, from campaigns table)
/// Campaign title for campaign wallets
@override final  String? campaignTitle;
/// Campaign cover image for campaign wallets
@override final  String? campaignCoverImageUrl;

/// Create a copy of WalletEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletEntityCopyWith<_WalletEntity> get copyWith => __$WalletEntityCopyWithImpl<_WalletEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.type, type) || other.type == type)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.bankAccountNumber, bankAccountNumber) || other.bankAccountNumber == bankAccountNumber)&&(identical(other.bankAccountHolder, bankAccountHolder) || other.bankAccountHolder == bankAccountHolder)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.campaignTitle, campaignTitle) || other.campaignTitle == campaignTitle)&&(identical(other.campaignCoverImageUrl, campaignCoverImageUrl) || other.campaignCoverImageUrl == campaignCoverImageUrl));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,type,balance,campaignId,bankName,bankAccountNumber,bankAccountHolder,createdAt,updatedAt,campaignTitle,campaignCoverImageUrl);

@override
String toString() {
  return 'WalletEntity(id: $id, userId: $userId, type: $type, balance: $balance, campaignId: $campaignId, bankName: $bankName, bankAccountNumber: $bankAccountNumber, bankAccountHolder: $bankAccountHolder, createdAt: $createdAt, updatedAt: $updatedAt, campaignTitle: $campaignTitle, campaignCoverImageUrl: $campaignCoverImageUrl)';
}


}

/// @nodoc
abstract mixin class _$WalletEntityCopyWith<$Res> implements $WalletEntityCopyWith<$Res> {
  factory _$WalletEntityCopyWith(_WalletEntity value, $Res Function(_WalletEntity) _then) = __$WalletEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, WalletType type, double balance, String? campaignId, String? bankName, String? bankAccountNumber, String? bankAccountHolder, DateTime createdAt, DateTime? updatedAt, String? campaignTitle, String? campaignCoverImageUrl
});




}
/// @nodoc
class __$WalletEntityCopyWithImpl<$Res>
    implements _$WalletEntityCopyWith<$Res> {
  __$WalletEntityCopyWithImpl(this._self, this._then);

  final _WalletEntity _self;
  final $Res Function(_WalletEntity) _then;

/// Create a copy of WalletEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? type = null,Object? balance = null,Object? campaignId = freezed,Object? bankName = freezed,Object? bankAccountNumber = freezed,Object? bankAccountHolder = freezed,Object? createdAt = null,Object? updatedAt = freezed,Object? campaignTitle = freezed,Object? campaignCoverImageUrl = freezed,}) {
  return _then(_WalletEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as WalletType,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as double,campaignId: freezed == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String?,bankName: freezed == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String?,bankAccountNumber: freezed == bankAccountNumber ? _self.bankAccountNumber : bankAccountNumber // ignore: cast_nullable_to_non_nullable
as String?,bankAccountHolder: freezed == bankAccountHolder ? _self.bankAccountHolder : bankAccountHolder // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,campaignTitle: freezed == campaignTitle ? _self.campaignTitle : campaignTitle // ignore: cast_nullable_to_non_nullable
as String?,campaignCoverImageUrl: freezed == campaignCoverImageUrl ? _self.campaignCoverImageUrl : campaignCoverImageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
