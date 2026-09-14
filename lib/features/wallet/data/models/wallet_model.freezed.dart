// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WalletModel {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'user_id') String get userId;@JsonKey(name: 'type') String get type;@JsonKey(name: 'balance') double get balance;@JsonKey(name: 'campaign_id') String? get campaignId;@JsonKey(name: 'bank_name') String? get bankName;@JsonKey(name: 'bank_account_number') String? get bankAccountNumber;@JsonKey(name: 'bank_account_holder') String? get bankAccountHolder;@JsonKey(name: 'created_at') DateTime get createdAt;@JsonKey(name: 'updated_at') DateTime? get updatedAt;// Joined from campaigns (when fetching campaign wallets)
@JsonKey(name: 'campaign_title') String? get campaignTitle;@JsonKey(name: 'campaign_cover_image_url') String? get campaignCoverImageUrl;
/// Create a copy of WalletModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletModelCopyWith<WalletModel> get copyWith => _$WalletModelCopyWithImpl<WalletModel>(this as WalletModel, _$identity);

  /// Serializes this WalletModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.type, type) || other.type == type)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.bankAccountNumber, bankAccountNumber) || other.bankAccountNumber == bankAccountNumber)&&(identical(other.bankAccountHolder, bankAccountHolder) || other.bankAccountHolder == bankAccountHolder)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.campaignTitle, campaignTitle) || other.campaignTitle == campaignTitle)&&(identical(other.campaignCoverImageUrl, campaignCoverImageUrl) || other.campaignCoverImageUrl == campaignCoverImageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,type,balance,campaignId,bankName,bankAccountNumber,bankAccountHolder,createdAt,updatedAt,campaignTitle,campaignCoverImageUrl);

@override
String toString() {
  return 'WalletModel(id: $id, userId: $userId, type: $type, balance: $balance, campaignId: $campaignId, bankName: $bankName, bankAccountNumber: $bankAccountNumber, bankAccountHolder: $bankAccountHolder, createdAt: $createdAt, updatedAt: $updatedAt, campaignTitle: $campaignTitle, campaignCoverImageUrl: $campaignCoverImageUrl)';
}


}

/// @nodoc
abstract mixin class $WalletModelCopyWith<$Res>  {
  factory $WalletModelCopyWith(WalletModel value, $Res Function(WalletModel) _then) = _$WalletModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'type') String type,@JsonKey(name: 'balance') double balance,@JsonKey(name: 'campaign_id') String? campaignId,@JsonKey(name: 'bank_name') String? bankName,@JsonKey(name: 'bank_account_number') String? bankAccountNumber,@JsonKey(name: 'bank_account_holder') String? bankAccountHolder,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt,@JsonKey(name: 'campaign_title') String? campaignTitle,@JsonKey(name: 'campaign_cover_image_url') String? campaignCoverImageUrl
});




}
/// @nodoc
class _$WalletModelCopyWithImpl<$Res>
    implements $WalletModelCopyWith<$Res> {
  _$WalletModelCopyWithImpl(this._self, this._then);

  final WalletModel _self;
  final $Res Function(WalletModel) _then;

/// Create a copy of WalletModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? type = null,Object? balance = null,Object? campaignId = freezed,Object? bankName = freezed,Object? bankAccountNumber = freezed,Object? bankAccountHolder = freezed,Object? createdAt = null,Object? updatedAt = freezed,Object? campaignTitle = freezed,Object? campaignCoverImageUrl = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
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


/// Adds pattern-matching-related methods to [WalletModel].
extension WalletModelPatterns on WalletModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WalletModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WalletModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WalletModel value)  $default,){
final _that = this;
switch (_that) {
case _WalletModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WalletModel value)?  $default,){
final _that = this;
switch (_that) {
case _WalletModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'type')  String type, @JsonKey(name: 'balance')  double balance, @JsonKey(name: 'campaign_id')  String? campaignId, @JsonKey(name: 'bank_name')  String? bankName, @JsonKey(name: 'bank_account_number')  String? bankAccountNumber, @JsonKey(name: 'bank_account_holder')  String? bankAccountHolder, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt, @JsonKey(name: 'campaign_title')  String? campaignTitle, @JsonKey(name: 'campaign_cover_image_url')  String? campaignCoverImageUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WalletModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'type')  String type, @JsonKey(name: 'balance')  double balance, @JsonKey(name: 'campaign_id')  String? campaignId, @JsonKey(name: 'bank_name')  String? bankName, @JsonKey(name: 'bank_account_number')  String? bankAccountNumber, @JsonKey(name: 'bank_account_holder')  String? bankAccountHolder, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt, @JsonKey(name: 'campaign_title')  String? campaignTitle, @JsonKey(name: 'campaign_cover_image_url')  String? campaignCoverImageUrl)  $default,) {final _that = this;
switch (_that) {
case _WalletModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'type')  String type, @JsonKey(name: 'balance')  double balance, @JsonKey(name: 'campaign_id')  String? campaignId, @JsonKey(name: 'bank_name')  String? bankName, @JsonKey(name: 'bank_account_number')  String? bankAccountNumber, @JsonKey(name: 'bank_account_holder')  String? bankAccountHolder, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt, @JsonKey(name: 'campaign_title')  String? campaignTitle, @JsonKey(name: 'campaign_cover_image_url')  String? campaignCoverImageUrl)?  $default,) {final _that = this;
switch (_that) {
case _WalletModel() when $default != null:
return $default(_that.id,_that.userId,_that.type,_that.balance,_that.campaignId,_that.bankName,_that.bankAccountNumber,_that.bankAccountHolder,_that.createdAt,_that.updatedAt,_that.campaignTitle,_that.campaignCoverImageUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WalletModel extends WalletModel {
  const _WalletModel({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'user_id') required this.userId, @JsonKey(name: 'type') required this.type, @JsonKey(name: 'balance') this.balance = 0, @JsonKey(name: 'campaign_id') this.campaignId, @JsonKey(name: 'bank_name') this.bankName, @JsonKey(name: 'bank_account_number') this.bankAccountNumber, @JsonKey(name: 'bank_account_holder') this.bankAccountHolder, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'campaign_title') this.campaignTitle, @JsonKey(name: 'campaign_cover_image_url') this.campaignCoverImageUrl}): super._();
  factory _WalletModel.fromJson(Map<String, dynamic> json) => _$WalletModelFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'user_id') final  String userId;
@override@JsonKey(name: 'type') final  String type;
@override@JsonKey(name: 'balance') final  double balance;
@override@JsonKey(name: 'campaign_id') final  String? campaignId;
@override@JsonKey(name: 'bank_name') final  String? bankName;
@override@JsonKey(name: 'bank_account_number') final  String? bankAccountNumber;
@override@JsonKey(name: 'bank_account_holder') final  String? bankAccountHolder;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime? updatedAt;
// Joined from campaigns (when fetching campaign wallets)
@override@JsonKey(name: 'campaign_title') final  String? campaignTitle;
@override@JsonKey(name: 'campaign_cover_image_url') final  String? campaignCoverImageUrl;

/// Create a copy of WalletModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletModelCopyWith<_WalletModel> get copyWith => __$WalletModelCopyWithImpl<_WalletModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WalletModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.type, type) || other.type == type)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.bankAccountNumber, bankAccountNumber) || other.bankAccountNumber == bankAccountNumber)&&(identical(other.bankAccountHolder, bankAccountHolder) || other.bankAccountHolder == bankAccountHolder)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.campaignTitle, campaignTitle) || other.campaignTitle == campaignTitle)&&(identical(other.campaignCoverImageUrl, campaignCoverImageUrl) || other.campaignCoverImageUrl == campaignCoverImageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,type,balance,campaignId,bankName,bankAccountNumber,bankAccountHolder,createdAt,updatedAt,campaignTitle,campaignCoverImageUrl);

@override
String toString() {
  return 'WalletModel(id: $id, userId: $userId, type: $type, balance: $balance, campaignId: $campaignId, bankName: $bankName, bankAccountNumber: $bankAccountNumber, bankAccountHolder: $bankAccountHolder, createdAt: $createdAt, updatedAt: $updatedAt, campaignTitle: $campaignTitle, campaignCoverImageUrl: $campaignCoverImageUrl)';
}


}

/// @nodoc
abstract mixin class _$WalletModelCopyWith<$Res> implements $WalletModelCopyWith<$Res> {
  factory _$WalletModelCopyWith(_WalletModel value, $Res Function(_WalletModel) _then) = __$WalletModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'type') String type,@JsonKey(name: 'balance') double balance,@JsonKey(name: 'campaign_id') String? campaignId,@JsonKey(name: 'bank_name') String? bankName,@JsonKey(name: 'bank_account_number') String? bankAccountNumber,@JsonKey(name: 'bank_account_holder') String? bankAccountHolder,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt,@JsonKey(name: 'campaign_title') String? campaignTitle,@JsonKey(name: 'campaign_cover_image_url') String? campaignCoverImageUrl
});




}
/// @nodoc
class __$WalletModelCopyWithImpl<$Res>
    implements _$WalletModelCopyWith<$Res> {
  __$WalletModelCopyWithImpl(this._self, this._then);

  final _WalletModel _self;
  final $Res Function(_WalletModel) _then;

/// Create a copy of WalletModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? type = null,Object? balance = null,Object? campaignId = freezed,Object? bankName = freezed,Object? bankAccountNumber = freezed,Object? bankAccountHolder = freezed,Object? createdAt = null,Object? updatedAt = freezed,Object? campaignTitle = freezed,Object? campaignCoverImageUrl = freezed,}) {
  return _then(_WalletModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
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
