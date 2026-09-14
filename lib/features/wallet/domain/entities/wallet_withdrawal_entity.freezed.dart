// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_withdrawal_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WalletWithdrawalEntity {

 String get id; String get walletId; String get userId; double get amount; WalletWithdrawalStatus get status;/// Target bank for transfer
 String get targetBankName; String get targetAccountNumber; String get targetAccountHolder;/// Reference number from mock bank transfer
 String? get transferReference;/// Admin/system notes
 String? get notes; DateTime get createdAt; DateTime? get processedAt;
/// Create a copy of WalletWithdrawalEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletWithdrawalEntityCopyWith<WalletWithdrawalEntity> get copyWith => _$WalletWithdrawalEntityCopyWithImpl<WalletWithdrawalEntity>(this as WalletWithdrawalEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletWithdrawalEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.walletId, walletId) || other.walletId == walletId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.status, status) || other.status == status)&&(identical(other.targetBankName, targetBankName) || other.targetBankName == targetBankName)&&(identical(other.targetAccountNumber, targetAccountNumber) || other.targetAccountNumber == targetAccountNumber)&&(identical(other.targetAccountHolder, targetAccountHolder) || other.targetAccountHolder == targetAccountHolder)&&(identical(other.transferReference, transferReference) || other.transferReference == transferReference)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.processedAt, processedAt) || other.processedAt == processedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,walletId,userId,amount,status,targetBankName,targetAccountNumber,targetAccountHolder,transferReference,notes,createdAt,processedAt);

@override
String toString() {
  return 'WalletWithdrawalEntity(id: $id, walletId: $walletId, userId: $userId, amount: $amount, status: $status, targetBankName: $targetBankName, targetAccountNumber: $targetAccountNumber, targetAccountHolder: $targetAccountHolder, transferReference: $transferReference, notes: $notes, createdAt: $createdAt, processedAt: $processedAt)';
}


}

/// @nodoc
abstract mixin class $WalletWithdrawalEntityCopyWith<$Res>  {
  factory $WalletWithdrawalEntityCopyWith(WalletWithdrawalEntity value, $Res Function(WalletWithdrawalEntity) _then) = _$WalletWithdrawalEntityCopyWithImpl;
@useResult
$Res call({
 String id, String walletId, String userId, double amount, WalletWithdrawalStatus status, String targetBankName, String targetAccountNumber, String targetAccountHolder, String? transferReference, String? notes, DateTime createdAt, DateTime? processedAt
});




}
/// @nodoc
class _$WalletWithdrawalEntityCopyWithImpl<$Res>
    implements $WalletWithdrawalEntityCopyWith<$Res> {
  _$WalletWithdrawalEntityCopyWithImpl(this._self, this._then);

  final WalletWithdrawalEntity _self;
  final $Res Function(WalletWithdrawalEntity) _then;

/// Create a copy of WalletWithdrawalEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? walletId = null,Object? userId = null,Object? amount = null,Object? status = null,Object? targetBankName = null,Object? targetAccountNumber = null,Object? targetAccountHolder = null,Object? transferReference = freezed,Object? notes = freezed,Object? createdAt = null,Object? processedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,walletId: null == walletId ? _self.walletId : walletId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as WalletWithdrawalStatus,targetBankName: null == targetBankName ? _self.targetBankName : targetBankName // ignore: cast_nullable_to_non_nullable
as String,targetAccountNumber: null == targetAccountNumber ? _self.targetAccountNumber : targetAccountNumber // ignore: cast_nullable_to_non_nullable
as String,targetAccountHolder: null == targetAccountHolder ? _self.targetAccountHolder : targetAccountHolder // ignore: cast_nullable_to_non_nullable
as String,transferReference: freezed == transferReference ? _self.transferReference : transferReference // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,processedAt: freezed == processedAt ? _self.processedAt : processedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [WalletWithdrawalEntity].
extension WalletWithdrawalEntityPatterns on WalletWithdrawalEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WalletWithdrawalEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WalletWithdrawalEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WalletWithdrawalEntity value)  $default,){
final _that = this;
switch (_that) {
case _WalletWithdrawalEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WalletWithdrawalEntity value)?  $default,){
final _that = this;
switch (_that) {
case _WalletWithdrawalEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String walletId,  String userId,  double amount,  WalletWithdrawalStatus status,  String targetBankName,  String targetAccountNumber,  String targetAccountHolder,  String? transferReference,  String? notes,  DateTime createdAt,  DateTime? processedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WalletWithdrawalEntity() when $default != null:
return $default(_that.id,_that.walletId,_that.userId,_that.amount,_that.status,_that.targetBankName,_that.targetAccountNumber,_that.targetAccountHolder,_that.transferReference,_that.notes,_that.createdAt,_that.processedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String walletId,  String userId,  double amount,  WalletWithdrawalStatus status,  String targetBankName,  String targetAccountNumber,  String targetAccountHolder,  String? transferReference,  String? notes,  DateTime createdAt,  DateTime? processedAt)  $default,) {final _that = this;
switch (_that) {
case _WalletWithdrawalEntity():
return $default(_that.id,_that.walletId,_that.userId,_that.amount,_that.status,_that.targetBankName,_that.targetAccountNumber,_that.targetAccountHolder,_that.transferReference,_that.notes,_that.createdAt,_that.processedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String walletId,  String userId,  double amount,  WalletWithdrawalStatus status,  String targetBankName,  String targetAccountNumber,  String targetAccountHolder,  String? transferReference,  String? notes,  DateTime createdAt,  DateTime? processedAt)?  $default,) {final _that = this;
switch (_that) {
case _WalletWithdrawalEntity() when $default != null:
return $default(_that.id,_that.walletId,_that.userId,_that.amount,_that.status,_that.targetBankName,_that.targetAccountNumber,_that.targetAccountHolder,_that.transferReference,_that.notes,_that.createdAt,_that.processedAt);case _:
  return null;

}
}

}

/// @nodoc


class _WalletWithdrawalEntity extends WalletWithdrawalEntity {
  const _WalletWithdrawalEntity({required this.id, required this.walletId, required this.userId, required this.amount, this.status = WalletWithdrawalStatus.pending, required this.targetBankName, required this.targetAccountNumber, required this.targetAccountHolder, this.transferReference, this.notes, required this.createdAt, this.processedAt}): super._();
  

@override final  String id;
@override final  String walletId;
@override final  String userId;
@override final  double amount;
@override@JsonKey() final  WalletWithdrawalStatus status;
/// Target bank for transfer
@override final  String targetBankName;
@override final  String targetAccountNumber;
@override final  String targetAccountHolder;
/// Reference number from mock bank transfer
@override final  String? transferReference;
/// Admin/system notes
@override final  String? notes;
@override final  DateTime createdAt;
@override final  DateTime? processedAt;

/// Create a copy of WalletWithdrawalEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletWithdrawalEntityCopyWith<_WalletWithdrawalEntity> get copyWith => __$WalletWithdrawalEntityCopyWithImpl<_WalletWithdrawalEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletWithdrawalEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.walletId, walletId) || other.walletId == walletId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.status, status) || other.status == status)&&(identical(other.targetBankName, targetBankName) || other.targetBankName == targetBankName)&&(identical(other.targetAccountNumber, targetAccountNumber) || other.targetAccountNumber == targetAccountNumber)&&(identical(other.targetAccountHolder, targetAccountHolder) || other.targetAccountHolder == targetAccountHolder)&&(identical(other.transferReference, transferReference) || other.transferReference == transferReference)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.processedAt, processedAt) || other.processedAt == processedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,walletId,userId,amount,status,targetBankName,targetAccountNumber,targetAccountHolder,transferReference,notes,createdAt,processedAt);

@override
String toString() {
  return 'WalletWithdrawalEntity(id: $id, walletId: $walletId, userId: $userId, amount: $amount, status: $status, targetBankName: $targetBankName, targetAccountNumber: $targetAccountNumber, targetAccountHolder: $targetAccountHolder, transferReference: $transferReference, notes: $notes, createdAt: $createdAt, processedAt: $processedAt)';
}


}

/// @nodoc
abstract mixin class _$WalletWithdrawalEntityCopyWith<$Res> implements $WalletWithdrawalEntityCopyWith<$Res> {
  factory _$WalletWithdrawalEntityCopyWith(_WalletWithdrawalEntity value, $Res Function(_WalletWithdrawalEntity) _then) = __$WalletWithdrawalEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String walletId, String userId, double amount, WalletWithdrawalStatus status, String targetBankName, String targetAccountNumber, String targetAccountHolder, String? transferReference, String? notes, DateTime createdAt, DateTime? processedAt
});




}
/// @nodoc
class __$WalletWithdrawalEntityCopyWithImpl<$Res>
    implements _$WalletWithdrawalEntityCopyWith<$Res> {
  __$WalletWithdrawalEntityCopyWithImpl(this._self, this._then);

  final _WalletWithdrawalEntity _self;
  final $Res Function(_WalletWithdrawalEntity) _then;

/// Create a copy of WalletWithdrawalEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? walletId = null,Object? userId = null,Object? amount = null,Object? status = null,Object? targetBankName = null,Object? targetAccountNumber = null,Object? targetAccountHolder = null,Object? transferReference = freezed,Object? notes = freezed,Object? createdAt = null,Object? processedAt = freezed,}) {
  return _then(_WalletWithdrawalEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,walletId: null == walletId ? _self.walletId : walletId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as WalletWithdrawalStatus,targetBankName: null == targetBankName ? _self.targetBankName : targetBankName // ignore: cast_nullable_to_non_nullable
as String,targetAccountNumber: null == targetAccountNumber ? _self.targetAccountNumber : targetAccountNumber // ignore: cast_nullable_to_non_nullable
as String,targetAccountHolder: null == targetAccountHolder ? _self.targetAccountHolder : targetAccountHolder // ignore: cast_nullable_to_non_nullable
as String,transferReference: freezed == transferReference ? _self.transferReference : transferReference // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,processedAt: freezed == processedAt ? _self.processedAt : processedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
