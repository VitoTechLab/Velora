// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'withdrawal_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WithdrawalEntity {

 String get id; String get campaignId; String get userId; double get amount; WithdrawalStatus get status; String get targetBankName; String get targetAccountNumber; String get targetAccountHolder; String? get proofFileUrl; String? get adminNotes; DateTime get createdAt; DateTime? get processedAt;
/// Create a copy of WithdrawalEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WithdrawalEntityCopyWith<WithdrawalEntity> get copyWith => _$WithdrawalEntityCopyWithImpl<WithdrawalEntity>(this as WithdrawalEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WithdrawalEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.status, status) || other.status == status)&&(identical(other.targetBankName, targetBankName) || other.targetBankName == targetBankName)&&(identical(other.targetAccountNumber, targetAccountNumber) || other.targetAccountNumber == targetAccountNumber)&&(identical(other.targetAccountHolder, targetAccountHolder) || other.targetAccountHolder == targetAccountHolder)&&(identical(other.proofFileUrl, proofFileUrl) || other.proofFileUrl == proofFileUrl)&&(identical(other.adminNotes, adminNotes) || other.adminNotes == adminNotes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.processedAt, processedAt) || other.processedAt == processedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,campaignId,userId,amount,status,targetBankName,targetAccountNumber,targetAccountHolder,proofFileUrl,adminNotes,createdAt,processedAt);

@override
String toString() {
  return 'WithdrawalEntity(id: $id, campaignId: $campaignId, userId: $userId, amount: $amount, status: $status, targetBankName: $targetBankName, targetAccountNumber: $targetAccountNumber, targetAccountHolder: $targetAccountHolder, proofFileUrl: $proofFileUrl, adminNotes: $adminNotes, createdAt: $createdAt, processedAt: $processedAt)';
}


}

/// @nodoc
abstract mixin class $WithdrawalEntityCopyWith<$Res>  {
  factory $WithdrawalEntityCopyWith(WithdrawalEntity value, $Res Function(WithdrawalEntity) _then) = _$WithdrawalEntityCopyWithImpl;
@useResult
$Res call({
 String id, String campaignId, String userId, double amount, WithdrawalStatus status, String targetBankName, String targetAccountNumber, String targetAccountHolder, String? proofFileUrl, String? adminNotes, DateTime createdAt, DateTime? processedAt
});




}
/// @nodoc
class _$WithdrawalEntityCopyWithImpl<$Res>
    implements $WithdrawalEntityCopyWith<$Res> {
  _$WithdrawalEntityCopyWithImpl(this._self, this._then);

  final WithdrawalEntity _self;
  final $Res Function(WithdrawalEntity) _then;

/// Create a copy of WithdrawalEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? campaignId = null,Object? userId = null,Object? amount = null,Object? status = null,Object? targetBankName = null,Object? targetAccountNumber = null,Object? targetAccountHolder = null,Object? proofFileUrl = freezed,Object? adminNotes = freezed,Object? createdAt = null,Object? processedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,campaignId: null == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as WithdrawalStatus,targetBankName: null == targetBankName ? _self.targetBankName : targetBankName // ignore: cast_nullable_to_non_nullable
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


/// Adds pattern-matching-related methods to [WithdrawalEntity].
extension WithdrawalEntityPatterns on WithdrawalEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WithdrawalEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WithdrawalEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WithdrawalEntity value)  $default,){
final _that = this;
switch (_that) {
case _WithdrawalEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WithdrawalEntity value)?  $default,){
final _that = this;
switch (_that) {
case _WithdrawalEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String campaignId,  String userId,  double amount,  WithdrawalStatus status,  String targetBankName,  String targetAccountNumber,  String targetAccountHolder,  String? proofFileUrl,  String? adminNotes,  DateTime createdAt,  DateTime? processedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WithdrawalEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String campaignId,  String userId,  double amount,  WithdrawalStatus status,  String targetBankName,  String targetAccountNumber,  String targetAccountHolder,  String? proofFileUrl,  String? adminNotes,  DateTime createdAt,  DateTime? processedAt)  $default,) {final _that = this;
switch (_that) {
case _WithdrawalEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String campaignId,  String userId,  double amount,  WithdrawalStatus status,  String targetBankName,  String targetAccountNumber,  String targetAccountHolder,  String? proofFileUrl,  String? adminNotes,  DateTime createdAt,  DateTime? processedAt)?  $default,) {final _that = this;
switch (_that) {
case _WithdrawalEntity() when $default != null:
return $default(_that.id,_that.campaignId,_that.userId,_that.amount,_that.status,_that.targetBankName,_that.targetAccountNumber,_that.targetAccountHolder,_that.proofFileUrl,_that.adminNotes,_that.createdAt,_that.processedAt);case _:
  return null;

}
}

}

/// @nodoc


class _WithdrawalEntity implements WithdrawalEntity {
  const _WithdrawalEntity({required this.id, required this.campaignId, required this.userId, required this.amount, this.status = WithdrawalStatus.pending, required this.targetBankName, required this.targetAccountNumber, required this.targetAccountHolder, this.proofFileUrl, this.adminNotes, required this.createdAt, this.processedAt});
  

@override final  String id;
@override final  String campaignId;
@override final  String userId;
@override final  double amount;
@override@JsonKey() final  WithdrawalStatus status;
@override final  String targetBankName;
@override final  String targetAccountNumber;
@override final  String targetAccountHolder;
@override final  String? proofFileUrl;
@override final  String? adminNotes;
@override final  DateTime createdAt;
@override final  DateTime? processedAt;

/// Create a copy of WithdrawalEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WithdrawalEntityCopyWith<_WithdrawalEntity> get copyWith => __$WithdrawalEntityCopyWithImpl<_WithdrawalEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WithdrawalEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.status, status) || other.status == status)&&(identical(other.targetBankName, targetBankName) || other.targetBankName == targetBankName)&&(identical(other.targetAccountNumber, targetAccountNumber) || other.targetAccountNumber == targetAccountNumber)&&(identical(other.targetAccountHolder, targetAccountHolder) || other.targetAccountHolder == targetAccountHolder)&&(identical(other.proofFileUrl, proofFileUrl) || other.proofFileUrl == proofFileUrl)&&(identical(other.adminNotes, adminNotes) || other.adminNotes == adminNotes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.processedAt, processedAt) || other.processedAt == processedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,campaignId,userId,amount,status,targetBankName,targetAccountNumber,targetAccountHolder,proofFileUrl,adminNotes,createdAt,processedAt);

@override
String toString() {
  return 'WithdrawalEntity(id: $id, campaignId: $campaignId, userId: $userId, amount: $amount, status: $status, targetBankName: $targetBankName, targetAccountNumber: $targetAccountNumber, targetAccountHolder: $targetAccountHolder, proofFileUrl: $proofFileUrl, adminNotes: $adminNotes, createdAt: $createdAt, processedAt: $processedAt)';
}


}

/// @nodoc
abstract mixin class _$WithdrawalEntityCopyWith<$Res> implements $WithdrawalEntityCopyWith<$Res> {
  factory _$WithdrawalEntityCopyWith(_WithdrawalEntity value, $Res Function(_WithdrawalEntity) _then) = __$WithdrawalEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String campaignId, String userId, double amount, WithdrawalStatus status, String targetBankName, String targetAccountNumber, String targetAccountHolder, String? proofFileUrl, String? adminNotes, DateTime createdAt, DateTime? processedAt
});




}
/// @nodoc
class __$WithdrawalEntityCopyWithImpl<$Res>
    implements _$WithdrawalEntityCopyWith<$Res> {
  __$WithdrawalEntityCopyWithImpl(this._self, this._then);

  final _WithdrawalEntity _self;
  final $Res Function(_WithdrawalEntity) _then;

/// Create a copy of WithdrawalEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? campaignId = null,Object? userId = null,Object? amount = null,Object? status = null,Object? targetBankName = null,Object? targetAccountNumber = null,Object? targetAccountHolder = null,Object? proofFileUrl = freezed,Object? adminNotes = freezed,Object? createdAt = null,Object? processedAt = freezed,}) {
  return _then(_WithdrawalEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,campaignId: null == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as WithdrawalStatus,targetBankName: null == targetBankName ? _self.targetBankName : targetBankName // ignore: cast_nullable_to_non_nullable
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
