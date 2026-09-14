// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'withdrawal_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WithdrawalModel {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'campaign_id') String get campaignId;@JsonKey(name: 'user_id') String get userId;@JsonKey(name: 'amount') double get amount;@JsonKey(name: 'status') String get status;@JsonKey(name: 'target_bank_name') String get targetBankName;@JsonKey(name: 'target_account_number') String get targetAccountNumber;@JsonKey(name: 'target_account_holder') String get targetAccountHolder;@JsonKey(name: 'proof_file_url') String? get proofFileUrl;@JsonKey(name: 'admin_notes') String? get adminNotes;@JsonKey(name: 'created_at') DateTime get createdAt;@JsonKey(name: 'processed_at') DateTime? get processedAt;
/// Create a copy of WithdrawalModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WithdrawalModelCopyWith<WithdrawalModel> get copyWith => _$WithdrawalModelCopyWithImpl<WithdrawalModel>(this as WithdrawalModel, _$identity);

  /// Serializes this WithdrawalModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WithdrawalModel&&(identical(other.id, id) || other.id == id)&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.status, status) || other.status == status)&&(identical(other.targetBankName, targetBankName) || other.targetBankName == targetBankName)&&(identical(other.targetAccountNumber, targetAccountNumber) || other.targetAccountNumber == targetAccountNumber)&&(identical(other.targetAccountHolder, targetAccountHolder) || other.targetAccountHolder == targetAccountHolder)&&(identical(other.proofFileUrl, proofFileUrl) || other.proofFileUrl == proofFileUrl)&&(identical(other.adminNotes, adminNotes) || other.adminNotes == adminNotes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.processedAt, processedAt) || other.processedAt == processedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,campaignId,userId,amount,status,targetBankName,targetAccountNumber,targetAccountHolder,proofFileUrl,adminNotes,createdAt,processedAt);

@override
String toString() {
  return 'WithdrawalModel(id: $id, campaignId: $campaignId, userId: $userId, amount: $amount, status: $status, targetBankName: $targetBankName, targetAccountNumber: $targetAccountNumber, targetAccountHolder: $targetAccountHolder, proofFileUrl: $proofFileUrl, adminNotes: $adminNotes, createdAt: $createdAt, processedAt: $processedAt)';
}


}

/// @nodoc
abstract mixin class $WithdrawalModelCopyWith<$Res>  {
  factory $WithdrawalModelCopyWith(WithdrawalModel value, $Res Function(WithdrawalModel) _then) = _$WithdrawalModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'campaign_id') String campaignId,@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'amount') double amount,@JsonKey(name: 'status') String status,@JsonKey(name: 'target_bank_name') String targetBankName,@JsonKey(name: 'target_account_number') String targetAccountNumber,@JsonKey(name: 'target_account_holder') String targetAccountHolder,@JsonKey(name: 'proof_file_url') String? proofFileUrl,@JsonKey(name: 'admin_notes') String? adminNotes,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'processed_at') DateTime? processedAt
});




}
/// @nodoc
class _$WithdrawalModelCopyWithImpl<$Res>
    implements $WithdrawalModelCopyWith<$Res> {
  _$WithdrawalModelCopyWithImpl(this._self, this._then);

  final WithdrawalModel _self;
  final $Res Function(WithdrawalModel) _then;

/// Create a copy of WithdrawalModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? campaignId = null,Object? userId = null,Object? amount = null,Object? status = null,Object? targetBankName = null,Object? targetAccountNumber = null,Object? targetAccountHolder = null,Object? proofFileUrl = freezed,Object? adminNotes = freezed,Object? createdAt = null,Object? processedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,campaignId: null == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,targetBankName: null == targetBankName ? _self.targetBankName : targetBankName // ignore: cast_nullable_to_non_nullable
as String,targetAccountNumber: null == targetAccountNumber ? _self.targetAccountNumber : targetAccountNumber // ignore: cast_nullable_to_non_nullable
as String,targetAccountHolder: null == targetAccountHolder ? _self.targetAccountHolder : targetAccountHolder // ignore: cast_nullable_to_non_nullable
as String,proofFileUrl: freezed == proofFileUrl ? _self.proofFileUrl : proofFileUrl // ignore: cast_nullable_to_non_nullable
as String?,adminNotes: freezed == adminNotes ? _self.adminNotes : adminNotes // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,processedAt: freezed == processedAt ? _self.processedAt : processedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [WithdrawalModel].
extension WithdrawalModelPatterns on WithdrawalModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WithdrawalModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WithdrawalModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WithdrawalModel value)  $default,){
final _that = this;
switch (_that) {
case _WithdrawalModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WithdrawalModel value)?  $default,){
final _that = this;
switch (_that) {
case _WithdrawalModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'campaign_id')  String campaignId, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'amount')  double amount, @JsonKey(name: 'status')  String status, @JsonKey(name: 'target_bank_name')  String targetBankName, @JsonKey(name: 'target_account_number')  String targetAccountNumber, @JsonKey(name: 'target_account_holder')  String targetAccountHolder, @JsonKey(name: 'proof_file_url')  String? proofFileUrl, @JsonKey(name: 'admin_notes')  String? adminNotes, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'processed_at')  DateTime? processedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WithdrawalModel() when $default != null:
return $default(_that.id,_that.campaignId,_that.userId,_that.amount,_that.status,_that.targetBankName,_that.targetAccountNumber,_that.targetAccountHolder,_that.proofFileUrl,_that.adminNotes,_that.createdAt,_that.processedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'campaign_id')  String campaignId, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'amount')  double amount, @JsonKey(name: 'status')  String status, @JsonKey(name: 'target_bank_name')  String targetBankName, @JsonKey(name: 'target_account_number')  String targetAccountNumber, @JsonKey(name: 'target_account_holder')  String targetAccountHolder, @JsonKey(name: 'proof_file_url')  String? proofFileUrl, @JsonKey(name: 'admin_notes')  String? adminNotes, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'processed_at')  DateTime? processedAt)  $default,) {final _that = this;
switch (_that) {
case _WithdrawalModel():
return $default(_that.id,_that.campaignId,_that.userId,_that.amount,_that.status,_that.targetBankName,_that.targetAccountNumber,_that.targetAccountHolder,_that.proofFileUrl,_that.adminNotes,_that.createdAt,_that.processedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'campaign_id')  String campaignId, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'amount')  double amount, @JsonKey(name: 'status')  String status, @JsonKey(name: 'target_bank_name')  String targetBankName, @JsonKey(name: 'target_account_number')  String targetAccountNumber, @JsonKey(name: 'target_account_holder')  String targetAccountHolder, @JsonKey(name: 'proof_file_url')  String? proofFileUrl, @JsonKey(name: 'admin_notes')  String? adminNotes, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'processed_at')  DateTime? processedAt)?  $default,) {final _that = this;
switch (_that) {
case _WithdrawalModel() when $default != null:
return $default(_that.id,_that.campaignId,_that.userId,_that.amount,_that.status,_that.targetBankName,_that.targetAccountNumber,_that.targetAccountHolder,_that.proofFileUrl,_that.adminNotes,_that.createdAt,_that.processedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WithdrawalModel extends WithdrawalModel {
  const _WithdrawalModel({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'campaign_id') required this.campaignId, @JsonKey(name: 'user_id') required this.userId, @JsonKey(name: 'amount') required this.amount, @JsonKey(name: 'status') this.status = 'pending', @JsonKey(name: 'target_bank_name') required this.targetBankName, @JsonKey(name: 'target_account_number') required this.targetAccountNumber, @JsonKey(name: 'target_account_holder') required this.targetAccountHolder, @JsonKey(name: 'proof_file_url') this.proofFileUrl, @JsonKey(name: 'admin_notes') this.adminNotes, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'processed_at') this.processedAt}): super._();
  factory _WithdrawalModel.fromJson(Map<String, dynamic> json) => _$WithdrawalModelFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'campaign_id') final  String campaignId;
@override@JsonKey(name: 'user_id') final  String userId;
@override@JsonKey(name: 'amount') final  double amount;
@override@JsonKey(name: 'status') final  String status;
@override@JsonKey(name: 'target_bank_name') final  String targetBankName;
@override@JsonKey(name: 'target_account_number') final  String targetAccountNumber;
@override@JsonKey(name: 'target_account_holder') final  String targetAccountHolder;
@override@JsonKey(name: 'proof_file_url') final  String? proofFileUrl;
@override@JsonKey(name: 'admin_notes') final  String? adminNotes;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;
@override@JsonKey(name: 'processed_at') final  DateTime? processedAt;

/// Create a copy of WithdrawalModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WithdrawalModelCopyWith<_WithdrawalModel> get copyWith => __$WithdrawalModelCopyWithImpl<_WithdrawalModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WithdrawalModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WithdrawalModel&&(identical(other.id, id) || other.id == id)&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.status, status) || other.status == status)&&(identical(other.targetBankName, targetBankName) || other.targetBankName == targetBankName)&&(identical(other.targetAccountNumber, targetAccountNumber) || other.targetAccountNumber == targetAccountNumber)&&(identical(other.targetAccountHolder, targetAccountHolder) || other.targetAccountHolder == targetAccountHolder)&&(identical(other.proofFileUrl, proofFileUrl) || other.proofFileUrl == proofFileUrl)&&(identical(other.adminNotes, adminNotes) || other.adminNotes == adminNotes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.processedAt, processedAt) || other.processedAt == processedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,campaignId,userId,amount,status,targetBankName,targetAccountNumber,targetAccountHolder,proofFileUrl,adminNotes,createdAt,processedAt);

@override
String toString() {
  return 'WithdrawalModel(id: $id, campaignId: $campaignId, userId: $userId, amount: $amount, status: $status, targetBankName: $targetBankName, targetAccountNumber: $targetAccountNumber, targetAccountHolder: $targetAccountHolder, proofFileUrl: $proofFileUrl, adminNotes: $adminNotes, createdAt: $createdAt, processedAt: $processedAt)';
}


}

/// @nodoc
abstract mixin class _$WithdrawalModelCopyWith<$Res> implements $WithdrawalModelCopyWith<$Res> {
  factory _$WithdrawalModelCopyWith(_WithdrawalModel value, $Res Function(_WithdrawalModel) _then) = __$WithdrawalModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'campaign_id') String campaignId,@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'amount') double amount,@JsonKey(name: 'status') String status,@JsonKey(name: 'target_bank_name') String targetBankName,@JsonKey(name: 'target_account_number') String targetAccountNumber,@JsonKey(name: 'target_account_holder') String targetAccountHolder,@JsonKey(name: 'proof_file_url') String? proofFileUrl,@JsonKey(name: 'admin_notes') String? adminNotes,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'processed_at') DateTime? processedAt
});




}
/// @nodoc
class __$WithdrawalModelCopyWithImpl<$Res>
    implements _$WithdrawalModelCopyWith<$Res> {
  __$WithdrawalModelCopyWithImpl(this._self, this._then);

  final _WithdrawalModel _self;
  final $Res Function(_WithdrawalModel) _then;

/// Create a copy of WithdrawalModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? campaignId = null,Object? userId = null,Object? amount = null,Object? status = null,Object? targetBankName = null,Object? targetAccountNumber = null,Object? targetAccountHolder = null,Object? proofFileUrl = freezed,Object? adminNotes = freezed,Object? createdAt = null,Object? processedAt = freezed,}) {
  return _then(_WithdrawalModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,campaignId: null == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,targetBankName: null == targetBankName ? _self.targetBankName : targetBankName // ignore: cast_nullable_to_non_nullable
as String,targetAccountNumber: null == targetAccountNumber ? _self.targetAccountNumber : targetAccountNumber // ignore: cast_nullable_to_non_nullable
as String,targetAccountHolder: null == targetAccountHolder ? _self.targetAccountHolder : targetAccountHolder // ignore: cast_nullable_to_non_nullable
as String,proofFileUrl: freezed == proofFileUrl ? _self.proofFileUrl : proofFileUrl // ignore: cast_nullable_to_non_nullable
as String?,adminNotes: freezed == adminNotes ? _self.adminNotes : adminNotes // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,processedAt: freezed == processedAt ? _self.processedAt : processedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
