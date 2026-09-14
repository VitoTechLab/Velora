// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_transaction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WalletTransactionModel {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'wallet_id') String get walletId;@JsonKey(name: 'user_id') String get userId;@JsonKey(name: 'type') String get type;@JsonKey(name: 'amount') double get amount;@JsonKey(name: 'balance_change') double get balanceChange;@JsonKey(name: 'balance_after') double get balanceAfter;@JsonKey(name: 'status') String get status;@JsonKey(name: 'reference_id') String? get referenceId;@JsonKey(name: 'reference_type') String? get referenceType;@JsonKey(name: 'description') String? get description;@JsonKey(name: 'payment_id') String? get paymentId;@JsonKey(name: 'payment_method') String? get paymentMethod;@JsonKey(name: 'created_at') DateTime get createdAt;@JsonKey(name: 'completed_at') DateTime? get completedAt;
/// Create a copy of WalletTransactionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletTransactionModelCopyWith<WalletTransactionModel> get copyWith => _$WalletTransactionModelCopyWithImpl<WalletTransactionModel>(this as WalletTransactionModel, _$identity);

  /// Serializes this WalletTransactionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletTransactionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.walletId, walletId) || other.walletId == walletId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.type, type) || other.type == type)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.balanceChange, balanceChange) || other.balanceChange == balanceChange)&&(identical(other.balanceAfter, balanceAfter) || other.balanceAfter == balanceAfter)&&(identical(other.status, status) || other.status == status)&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId)&&(identical(other.referenceType, referenceType) || other.referenceType == referenceType)&&(identical(other.description, description) || other.description == description)&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,walletId,userId,type,amount,balanceChange,balanceAfter,status,referenceId,referenceType,description,paymentId,paymentMethod,createdAt,completedAt);

@override
String toString() {
  return 'WalletTransactionModel(id: $id, walletId: $walletId, userId: $userId, type: $type, amount: $amount, balanceChange: $balanceChange, balanceAfter: $balanceAfter, status: $status, referenceId: $referenceId, referenceType: $referenceType, description: $description, paymentId: $paymentId, paymentMethod: $paymentMethod, createdAt: $createdAt, completedAt: $completedAt)';
}


}

/// @nodoc
abstract mixin class $WalletTransactionModelCopyWith<$Res>  {
  factory $WalletTransactionModelCopyWith(WalletTransactionModel value, $Res Function(WalletTransactionModel) _then) = _$WalletTransactionModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'wallet_id') String walletId,@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'type') String type,@JsonKey(name: 'amount') double amount,@JsonKey(name: 'balance_change') double balanceChange,@JsonKey(name: 'balance_after') double balanceAfter,@JsonKey(name: 'status') String status,@JsonKey(name: 'reference_id') String? referenceId,@JsonKey(name: 'reference_type') String? referenceType,@JsonKey(name: 'description') String? description,@JsonKey(name: 'payment_id') String? paymentId,@JsonKey(name: 'payment_method') String? paymentMethod,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'completed_at') DateTime? completedAt
});




}
/// @nodoc
class _$WalletTransactionModelCopyWithImpl<$Res>
    implements $WalletTransactionModelCopyWith<$Res> {
  _$WalletTransactionModelCopyWithImpl(this._self, this._then);

  final WalletTransactionModel _self;
  final $Res Function(WalletTransactionModel) _then;

/// Create a copy of WalletTransactionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? walletId = null,Object? userId = null,Object? type = null,Object? amount = null,Object? balanceChange = null,Object? balanceAfter = null,Object? status = null,Object? referenceId = freezed,Object? referenceType = freezed,Object? description = freezed,Object? paymentId = freezed,Object? paymentMethod = freezed,Object? createdAt = null,Object? completedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,walletId: null == walletId ? _self.walletId : walletId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,balanceChange: null == balanceChange ? _self.balanceChange : balanceChange // ignore: cast_nullable_to_non_nullable
as double,balanceAfter: null == balanceAfter ? _self.balanceAfter : balanceAfter // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,referenceId: freezed == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
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


/// Adds pattern-matching-related methods to [WalletTransactionModel].
extension WalletTransactionModelPatterns on WalletTransactionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WalletTransactionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WalletTransactionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WalletTransactionModel value)  $default,){
final _that = this;
switch (_that) {
case _WalletTransactionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WalletTransactionModel value)?  $default,){
final _that = this;
switch (_that) {
case _WalletTransactionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'wallet_id')  String walletId, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'type')  String type, @JsonKey(name: 'amount')  double amount, @JsonKey(name: 'balance_change')  double balanceChange, @JsonKey(name: 'balance_after')  double balanceAfter, @JsonKey(name: 'status')  String status, @JsonKey(name: 'reference_id')  String? referenceId, @JsonKey(name: 'reference_type')  String? referenceType, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'payment_id')  String? paymentId, @JsonKey(name: 'payment_method')  String? paymentMethod, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'completed_at')  DateTime? completedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WalletTransactionModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'wallet_id')  String walletId, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'type')  String type, @JsonKey(name: 'amount')  double amount, @JsonKey(name: 'balance_change')  double balanceChange, @JsonKey(name: 'balance_after')  double balanceAfter, @JsonKey(name: 'status')  String status, @JsonKey(name: 'reference_id')  String? referenceId, @JsonKey(name: 'reference_type')  String? referenceType, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'payment_id')  String? paymentId, @JsonKey(name: 'payment_method')  String? paymentMethod, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'completed_at')  DateTime? completedAt)  $default,) {final _that = this;
switch (_that) {
case _WalletTransactionModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'wallet_id')  String walletId, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'type')  String type, @JsonKey(name: 'amount')  double amount, @JsonKey(name: 'balance_change')  double balanceChange, @JsonKey(name: 'balance_after')  double balanceAfter, @JsonKey(name: 'status')  String status, @JsonKey(name: 'reference_id')  String? referenceId, @JsonKey(name: 'reference_type')  String? referenceType, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'payment_id')  String? paymentId, @JsonKey(name: 'payment_method')  String? paymentMethod, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'completed_at')  DateTime? completedAt)?  $default,) {final _that = this;
switch (_that) {
case _WalletTransactionModel() when $default != null:
return $default(_that.id,_that.walletId,_that.userId,_that.type,_that.amount,_that.balanceChange,_that.balanceAfter,_that.status,_that.referenceId,_that.referenceType,_that.description,_that.paymentId,_that.paymentMethod,_that.createdAt,_that.completedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WalletTransactionModel extends WalletTransactionModel {
  const _WalletTransactionModel({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'wallet_id') required this.walletId, @JsonKey(name: 'user_id') required this.userId, @JsonKey(name: 'type') required this.type, @JsonKey(name: 'amount') required this.amount, @JsonKey(name: 'balance_change') required this.balanceChange, @JsonKey(name: 'balance_after') required this.balanceAfter, @JsonKey(name: 'status') this.status = 'pending', @JsonKey(name: 'reference_id') this.referenceId, @JsonKey(name: 'reference_type') this.referenceType, @JsonKey(name: 'description') this.description, @JsonKey(name: 'payment_id') this.paymentId, @JsonKey(name: 'payment_method') this.paymentMethod, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'completed_at') this.completedAt}): super._();
  factory _WalletTransactionModel.fromJson(Map<String, dynamic> json) => _$WalletTransactionModelFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'wallet_id') final  String walletId;
@override@JsonKey(name: 'user_id') final  String userId;
@override@JsonKey(name: 'type') final  String type;
@override@JsonKey(name: 'amount') final  double amount;
@override@JsonKey(name: 'balance_change') final  double balanceChange;
@override@JsonKey(name: 'balance_after') final  double balanceAfter;
@override@JsonKey(name: 'status') final  String status;
@override@JsonKey(name: 'reference_id') final  String? referenceId;
@override@JsonKey(name: 'reference_type') final  String? referenceType;
@override@JsonKey(name: 'description') final  String? description;
@override@JsonKey(name: 'payment_id') final  String? paymentId;
@override@JsonKey(name: 'payment_method') final  String? paymentMethod;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;
@override@JsonKey(name: 'completed_at') final  DateTime? completedAt;

/// Create a copy of WalletTransactionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletTransactionModelCopyWith<_WalletTransactionModel> get copyWith => __$WalletTransactionModelCopyWithImpl<_WalletTransactionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WalletTransactionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletTransactionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.walletId, walletId) || other.walletId == walletId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.type, type) || other.type == type)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.balanceChange, balanceChange) || other.balanceChange == balanceChange)&&(identical(other.balanceAfter, balanceAfter) || other.balanceAfter == balanceAfter)&&(identical(other.status, status) || other.status == status)&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId)&&(identical(other.referenceType, referenceType) || other.referenceType == referenceType)&&(identical(other.description, description) || other.description == description)&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,walletId,userId,type,amount,balanceChange,balanceAfter,status,referenceId,referenceType,description,paymentId,paymentMethod,createdAt,completedAt);

@override
String toString() {
  return 'WalletTransactionModel(id: $id, walletId: $walletId, userId: $userId, type: $type, amount: $amount, balanceChange: $balanceChange, balanceAfter: $balanceAfter, status: $status, referenceId: $referenceId, referenceType: $referenceType, description: $description, paymentId: $paymentId, paymentMethod: $paymentMethod, createdAt: $createdAt, completedAt: $completedAt)';
}


}

/// @nodoc
abstract mixin class _$WalletTransactionModelCopyWith<$Res> implements $WalletTransactionModelCopyWith<$Res> {
  factory _$WalletTransactionModelCopyWith(_WalletTransactionModel value, $Res Function(_WalletTransactionModel) _then) = __$WalletTransactionModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'wallet_id') String walletId,@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'type') String type,@JsonKey(name: 'amount') double amount,@JsonKey(name: 'balance_change') double balanceChange,@JsonKey(name: 'balance_after') double balanceAfter,@JsonKey(name: 'status') String status,@JsonKey(name: 'reference_id') String? referenceId,@JsonKey(name: 'reference_type') String? referenceType,@JsonKey(name: 'description') String? description,@JsonKey(name: 'payment_id') String? paymentId,@JsonKey(name: 'payment_method') String? paymentMethod,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'completed_at') DateTime? completedAt
});




}
/// @nodoc
class __$WalletTransactionModelCopyWithImpl<$Res>
    implements _$WalletTransactionModelCopyWith<$Res> {
  __$WalletTransactionModelCopyWithImpl(this._self, this._then);

  final _WalletTransactionModel _self;
  final $Res Function(_WalletTransactionModel) _then;

/// Create a copy of WalletTransactionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? walletId = null,Object? userId = null,Object? type = null,Object? amount = null,Object? balanceChange = null,Object? balanceAfter = null,Object? status = null,Object? referenceId = freezed,Object? referenceType = freezed,Object? description = freezed,Object? paymentId = freezed,Object? paymentMethod = freezed,Object? createdAt = null,Object? completedAt = freezed,}) {
  return _then(_WalletTransactionModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,walletId: null == walletId ? _self.walletId : walletId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,balanceChange: null == balanceChange ? _self.balanceChange : balanceChange // ignore: cast_nullable_to_non_nullable
as double,balanceAfter: null == balanceAfter ? _self.balanceAfter : balanceAfter // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,referenceId: freezed == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
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
