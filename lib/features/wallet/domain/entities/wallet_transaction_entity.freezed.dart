// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_transaction_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WalletTransactionEntity {

 String get id; String get walletId; String get userId; WalletTransactionType get type; double get amount;/// Positive for incoming, negative for outgoing
 double get balanceChange;/// Balance after this transaction
 double get balanceAfter; WalletTransactionStatus get status;/// Reference ID (donation_id, withdrawal_id, topup_id, etc.)
 String? get referenceId;/// Reference type (donation, withdrawal, topup)
 String? get referenceType;/// Description for display
 String? get description;/// Payment gateway reference for top-ups
 String? get paymentId; String? get paymentMethod; DateTime get createdAt; DateTime? get completedAt;
/// Create a copy of WalletTransactionEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletTransactionEntityCopyWith<WalletTransactionEntity> get copyWith => _$WalletTransactionEntityCopyWithImpl<WalletTransactionEntity>(this as WalletTransactionEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletTransactionEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.walletId, walletId) || other.walletId == walletId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.type, type) || other.type == type)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.balanceChange, balanceChange) || other.balanceChange == balanceChange)&&(identical(other.balanceAfter, balanceAfter) || other.balanceAfter == balanceAfter)&&(identical(other.status, status) || other.status == status)&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId)&&(identical(other.referenceType, referenceType) || other.referenceType == referenceType)&&(identical(other.description, description) || other.description == description)&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,walletId,userId,type,amount,balanceChange,balanceAfter,status,referenceId,referenceType,description,paymentId,paymentMethod,createdAt,completedAt);

@override
String toString() {
  return 'WalletTransactionEntity(id: $id, walletId: $walletId, userId: $userId, type: $type, amount: $amount, balanceChange: $balanceChange, balanceAfter: $balanceAfter, status: $status, referenceId: $referenceId, referenceType: $referenceType, description: $description, paymentId: $paymentId, paymentMethod: $paymentMethod, createdAt: $createdAt, completedAt: $completedAt)';
}


}

/// @nodoc
abstract mixin class $WalletTransactionEntityCopyWith<$Res>  {
  factory $WalletTransactionEntityCopyWith(WalletTransactionEntity value, $Res Function(WalletTransactionEntity) _then) = _$WalletTransactionEntityCopyWithImpl;
@useResult
$Res call({
 String id, String walletId, String userId, WalletTransactionType type, double amount, double balanceChange, double balanceAfter, WalletTransactionStatus status, String? referenceId, String? referenceType, String? description, String? paymentId, String? paymentMethod, DateTime createdAt, DateTime? completedAt
});




}
/// @nodoc
class _$WalletTransactionEntityCopyWithImpl<$Res>
    implements $WalletTransactionEntityCopyWith<$Res> {
  _$WalletTransactionEntityCopyWithImpl(this._self, this._then);

  final WalletTransactionEntity _self;
  final $Res Function(WalletTransactionEntity) _then;

/// Create a copy of WalletTransactionEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? walletId = null,Object? userId = null,Object? type = null,Object? amount = null,Object? balanceChange = null,Object? balanceAfter = null,Object? status = null,Object? referenceId = freezed,Object? referenceType = freezed,Object? description = freezed,Object? paymentId = freezed,Object? paymentMethod = freezed,Object? createdAt = null,Object? completedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,walletId: null == walletId ? _self.walletId : walletId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as WalletTransactionType,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,balanceChange: null == balanceChange ? _self.balanceChange : balanceChange // ignore: cast_nullable_to_non_nullable
as double,balanceAfter: null == balanceAfter ? _self.balanceAfter : balanceAfter // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as WalletTransactionStatus,referenceId: freezed == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as String?,referenceType: freezed == referenceType ? _self.referenceType : referenceType // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,paymentId: freezed == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String?,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [WalletTransactionEntity].
extension WalletTransactionEntityPatterns on WalletTransactionEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WalletTransactionEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WalletTransactionEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WalletTransactionEntity value)  $default,){
final _that = this;
switch (_that) {
case _WalletTransactionEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WalletTransactionEntity value)?  $default,){
final _that = this;
switch (_that) {
case _WalletTransactionEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String walletId,  String userId,  WalletTransactionType type,  double amount,  double balanceChange,  double balanceAfter,  WalletTransactionStatus status,  String? referenceId,  String? referenceType,  String? description,  String? paymentId,  String? paymentMethod,  DateTime createdAt,  DateTime? completedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WalletTransactionEntity() when $default != null:
return $default(_that.id,_that.walletId,_that.userId,_that.type,_that.amount,_that.balanceChange,_that.balanceAfter,_that.status,_that.referenceId,_that.referenceType,_that.description,_that.paymentId,_that.paymentMethod,_that.createdAt,_that.completedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String walletId,  String userId,  WalletTransactionType type,  double amount,  double balanceChange,  double balanceAfter,  WalletTransactionStatus status,  String? referenceId,  String? referenceType,  String? description,  String? paymentId,  String? paymentMethod,  DateTime createdAt,  DateTime? completedAt)  $default,) {final _that = this;
switch (_that) {
case _WalletTransactionEntity():
return $default(_that.id,_that.walletId,_that.userId,_that.type,_that.amount,_that.balanceChange,_that.balanceAfter,_that.status,_that.referenceId,_that.referenceType,_that.description,_that.paymentId,_that.paymentMethod,_that.createdAt,_that.completedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String walletId,  String userId,  WalletTransactionType type,  double amount,  double balanceChange,  double balanceAfter,  WalletTransactionStatus status,  String? referenceId,  String? referenceType,  String? description,  String? paymentId,  String? paymentMethod,  DateTime createdAt,  DateTime? completedAt)?  $default,) {final _that = this;
switch (_that) {
case _WalletTransactionEntity() when $default != null:
return $default(_that.id,_that.walletId,_that.userId,_that.type,_that.amount,_that.balanceChange,_that.balanceAfter,_that.status,_that.referenceId,_that.referenceType,_that.description,_that.paymentId,_that.paymentMethod,_that.createdAt,_that.completedAt);case _:
  return null;

}
}

}

/// @nodoc


class _WalletTransactionEntity implements WalletTransactionEntity {
  const _WalletTransactionEntity({required this.id, required this.walletId, required this.userId, required this.type, required this.amount, required this.balanceChange, required this.balanceAfter, this.status = WalletTransactionStatus.pending, this.referenceId, this.referenceType, this.description, this.paymentId, this.paymentMethod, required this.createdAt, this.completedAt});
  

@override final  String id;
@override final  String walletId;
@override final  String userId;
@override final  WalletTransactionType type;
@override final  double amount;
/// Positive for incoming, negative for outgoing
@override final  double balanceChange;
/// Balance after this transaction
@override final  double balanceAfter;
@override@JsonKey() final  WalletTransactionStatus status;
/// Reference ID (donation_id, withdrawal_id, topup_id, etc.)
@override final  String? referenceId;
/// Reference type (donation, withdrawal, topup)
@override final  String? referenceType;
/// Description for display
@override final  String? description;
/// Payment gateway reference for top-ups
@override final  String? paymentId;
@override final  String? paymentMethod;
@override final  DateTime createdAt;
@override final  DateTime? completedAt;

/// Create a copy of WalletTransactionEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletTransactionEntityCopyWith<_WalletTransactionEntity> get copyWith => __$WalletTransactionEntityCopyWithImpl<_WalletTransactionEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletTransactionEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.walletId, walletId) || other.walletId == walletId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.type, type) || other.type == type)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.balanceChange, balanceChange) || other.balanceChange == balanceChange)&&(identical(other.balanceAfter, balanceAfter) || other.balanceAfter == balanceAfter)&&(identical(other.status, status) || other.status == status)&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId)&&(identical(other.referenceType, referenceType) || other.referenceType == referenceType)&&(identical(other.description, description) || other.description == description)&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,walletId,userId,type,amount,balanceChange,balanceAfter,status,referenceId,referenceType,description,paymentId,paymentMethod,createdAt,completedAt);

@override
String toString() {
  return 'WalletTransactionEntity(id: $id, walletId: $walletId, userId: $userId, type: $type, amount: $amount, balanceChange: $balanceChange, balanceAfter: $balanceAfter, status: $status, referenceId: $referenceId, referenceType: $referenceType, description: $description, paymentId: $paymentId, paymentMethod: $paymentMethod, createdAt: $createdAt, completedAt: $completedAt)';
}


}

/// @nodoc
abstract mixin class _$WalletTransactionEntityCopyWith<$Res> implements $WalletTransactionEntityCopyWith<$Res> {
  factory _$WalletTransactionEntityCopyWith(_WalletTransactionEntity value, $Res Function(_WalletTransactionEntity) _then) = __$WalletTransactionEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String walletId, String userId, WalletTransactionType type, double amount, double balanceChange, double balanceAfter, WalletTransactionStatus status, String? referenceId, String? referenceType, String? description, String? paymentId, String? paymentMethod, DateTime createdAt, DateTime? completedAt
});




}
/// @nodoc
class __$WalletTransactionEntityCopyWithImpl<$Res>
    implements _$WalletTransactionEntityCopyWith<$Res> {
  __$WalletTransactionEntityCopyWithImpl(this._self, this._then);

  final _WalletTransactionEntity _self;
  final $Res Function(_WalletTransactionEntity) _then;

/// Create a copy of WalletTransactionEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? walletId = null,Object? userId = null,Object? type = null,Object? amount = null,Object? balanceChange = null,Object? balanceAfter = null,Object? status = null,Object? referenceId = freezed,Object? referenceType = freezed,Object? description = freezed,Object? paymentId = freezed,Object? paymentMethod = freezed,Object? createdAt = null,Object? completedAt = freezed,}) {
  return _then(_WalletTransactionEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,walletId: null == walletId ? _self.walletId : walletId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as WalletTransactionType,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,balanceChange: null == balanceChange ? _self.balanceChange : balanceChange // ignore: cast_nullable_to_non_nullable
as double,balanceAfter: null == balanceAfter ? _self.balanceAfter : balanceAfter // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as WalletTransactionStatus,referenceId: freezed == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as String?,referenceType: freezed == referenceType ? _self.referenceType : referenceType // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,paymentId: freezed == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String?,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
