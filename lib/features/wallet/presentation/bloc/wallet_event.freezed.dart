// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WalletEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WalletEvent()';
}


}

/// @nodoc
class $WalletEventCopyWith<$Res>  {
$WalletEventCopyWith(WalletEvent _, $Res Function(WalletEvent) __);
}


/// Adds pattern-matching-related methods to [WalletEvent].
extension WalletEventPatterns on WalletEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadWalletsEvent value)?  loadWallets,TResult Function( LoadMainWalletEvent value)?  loadMainWallet,TResult Function( LoadWalletEvent value)?  loadWallet,TResult Function( CreateMainWalletEvent value)?  createMainWallet,TResult Function( UpdateBankDetailsEvent value)?  updateBankDetails,TResult Function( InitiateTopUpEvent value)?  initiateTopUp,TResult Function( ConfirmTopUpEvent value)?  confirmTopUp,TResult Function( ProcessDonationEvent value)?  processDonation,TResult Function( RequestWalletWithdrawalEvent value)?  requestWithdrawal,TResult Function( LoadTransactionsEvent value)?  loadTransactions,TResult Function( LoadWithdrawalsEvent value)?  loadWithdrawals,TResult Function( ExportTransactionsEvent value)?  exportTransactions,TResult Function( ClearWalletTransientEvent value)?  clearTransient,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadWalletsEvent() when loadWallets != null:
return loadWallets(_that);case LoadMainWalletEvent() when loadMainWallet != null:
return loadMainWallet(_that);case LoadWalletEvent() when loadWallet != null:
return loadWallet(_that);case CreateMainWalletEvent() when createMainWallet != null:
return createMainWallet(_that);case UpdateBankDetailsEvent() when updateBankDetails != null:
return updateBankDetails(_that);case InitiateTopUpEvent() when initiateTopUp != null:
return initiateTopUp(_that);case ConfirmTopUpEvent() when confirmTopUp != null:
return confirmTopUp(_that);case ProcessDonationEvent() when processDonation != null:
return processDonation(_that);case RequestWalletWithdrawalEvent() when requestWithdrawal != null:
return requestWithdrawal(_that);case LoadTransactionsEvent() when loadTransactions != null:
return loadTransactions(_that);case LoadWithdrawalsEvent() when loadWithdrawals != null:
return loadWithdrawals(_that);case ExportTransactionsEvent() when exportTransactions != null:
return exportTransactions(_that);case ClearWalletTransientEvent() when clearTransient != null:
return clearTransient(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadWalletsEvent value)  loadWallets,required TResult Function( LoadMainWalletEvent value)  loadMainWallet,required TResult Function( LoadWalletEvent value)  loadWallet,required TResult Function( CreateMainWalletEvent value)  createMainWallet,required TResult Function( UpdateBankDetailsEvent value)  updateBankDetails,required TResult Function( InitiateTopUpEvent value)  initiateTopUp,required TResult Function( ConfirmTopUpEvent value)  confirmTopUp,required TResult Function( ProcessDonationEvent value)  processDonation,required TResult Function( RequestWalletWithdrawalEvent value)  requestWithdrawal,required TResult Function( LoadTransactionsEvent value)  loadTransactions,required TResult Function( LoadWithdrawalsEvent value)  loadWithdrawals,required TResult Function( ExportTransactionsEvent value)  exportTransactions,required TResult Function( ClearWalletTransientEvent value)  clearTransient,}){
final _that = this;
switch (_that) {
case LoadWalletsEvent():
return loadWallets(_that);case LoadMainWalletEvent():
return loadMainWallet(_that);case LoadWalletEvent():
return loadWallet(_that);case CreateMainWalletEvent():
return createMainWallet(_that);case UpdateBankDetailsEvent():
return updateBankDetails(_that);case InitiateTopUpEvent():
return initiateTopUp(_that);case ConfirmTopUpEvent():
return confirmTopUp(_that);case ProcessDonationEvent():
return processDonation(_that);case RequestWalletWithdrawalEvent():
return requestWithdrawal(_that);case LoadTransactionsEvent():
return loadTransactions(_that);case LoadWithdrawalsEvent():
return loadWithdrawals(_that);case ExportTransactionsEvent():
return exportTransactions(_that);case ClearWalletTransientEvent():
return clearTransient(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadWalletsEvent value)?  loadWallets,TResult? Function( LoadMainWalletEvent value)?  loadMainWallet,TResult? Function( LoadWalletEvent value)?  loadWallet,TResult? Function( CreateMainWalletEvent value)?  createMainWallet,TResult? Function( UpdateBankDetailsEvent value)?  updateBankDetails,TResult? Function( InitiateTopUpEvent value)?  initiateTopUp,TResult? Function( ConfirmTopUpEvent value)?  confirmTopUp,TResult? Function( ProcessDonationEvent value)?  processDonation,TResult? Function( RequestWalletWithdrawalEvent value)?  requestWithdrawal,TResult? Function( LoadTransactionsEvent value)?  loadTransactions,TResult? Function( LoadWithdrawalsEvent value)?  loadWithdrawals,TResult? Function( ExportTransactionsEvent value)?  exportTransactions,TResult? Function( ClearWalletTransientEvent value)?  clearTransient,}){
final _that = this;
switch (_that) {
case LoadWalletsEvent() when loadWallets != null:
return loadWallets(_that);case LoadMainWalletEvent() when loadMainWallet != null:
return loadMainWallet(_that);case LoadWalletEvent() when loadWallet != null:
return loadWallet(_that);case CreateMainWalletEvent() when createMainWallet != null:
return createMainWallet(_that);case UpdateBankDetailsEvent() when updateBankDetails != null:
return updateBankDetails(_that);case InitiateTopUpEvent() when initiateTopUp != null:
return initiateTopUp(_that);case ConfirmTopUpEvent() when confirmTopUp != null:
return confirmTopUp(_that);case ProcessDonationEvent() when processDonation != null:
return processDonation(_that);case RequestWalletWithdrawalEvent() when requestWithdrawal != null:
return requestWithdrawal(_that);case LoadTransactionsEvent() when loadTransactions != null:
return loadTransactions(_that);case LoadWithdrawalsEvent() when loadWithdrawals != null:
return loadWithdrawals(_that);case ExportTransactionsEvent() when exportTransactions != null:
return exportTransactions(_that);case ClearWalletTransientEvent() when clearTransient != null:
return clearTransient(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String userId)?  loadWallets,TResult Function( String userId)?  loadMainWallet,TResult Function( String walletId)?  loadWallet,TResult Function( String userId)?  createMainWallet,TResult Function( String walletId,  String bankName,  String bankAccountNumber,  String bankAccountHolder)?  updateBankDetails,TResult Function( String walletId,  double amount,  String? paymentMethod)?  initiateTopUp,TResult Function( String transactionId,  String paymentId)?  confirmTopUp,TResult Function( String fromWalletId,  String toCampaignId,  double amount,  String? donationId)?  processDonation,TResult Function( String walletId,  double amount)?  requestWithdrawal,TResult Function( String walletId,  int limit,  int offset)?  loadTransactions,TResult Function( String walletId)?  loadWithdrawals,TResult Function( String walletId,  DateTime? startDate,  DateTime? endDate)?  exportTransactions,TResult Function()?  clearTransient,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadWalletsEvent() when loadWallets != null:
return loadWallets(_that.userId);case LoadMainWalletEvent() when loadMainWallet != null:
return loadMainWallet(_that.userId);case LoadWalletEvent() when loadWallet != null:
return loadWallet(_that.walletId);case CreateMainWalletEvent() when createMainWallet != null:
return createMainWallet(_that.userId);case UpdateBankDetailsEvent() when updateBankDetails != null:
return updateBankDetails(_that.walletId,_that.bankName,_that.bankAccountNumber,_that.bankAccountHolder);case InitiateTopUpEvent() when initiateTopUp != null:
return initiateTopUp(_that.walletId,_that.amount,_that.paymentMethod);case ConfirmTopUpEvent() when confirmTopUp != null:
return confirmTopUp(_that.transactionId,_that.paymentId);case ProcessDonationEvent() when processDonation != null:
return processDonation(_that.fromWalletId,_that.toCampaignId,_that.amount,_that.donationId);case RequestWalletWithdrawalEvent() when requestWithdrawal != null:
return requestWithdrawal(_that.walletId,_that.amount);case LoadTransactionsEvent() when loadTransactions != null:
return loadTransactions(_that.walletId,_that.limit,_that.offset);case LoadWithdrawalsEvent() when loadWithdrawals != null:
return loadWithdrawals(_that.walletId);case ExportTransactionsEvent() when exportTransactions != null:
return exportTransactions(_that.walletId,_that.startDate,_that.endDate);case ClearWalletTransientEvent() when clearTransient != null:
return clearTransient();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String userId)  loadWallets,required TResult Function( String userId)  loadMainWallet,required TResult Function( String walletId)  loadWallet,required TResult Function( String userId)  createMainWallet,required TResult Function( String walletId,  String bankName,  String bankAccountNumber,  String bankAccountHolder)  updateBankDetails,required TResult Function( String walletId,  double amount,  String? paymentMethod)  initiateTopUp,required TResult Function( String transactionId,  String paymentId)  confirmTopUp,required TResult Function( String fromWalletId,  String toCampaignId,  double amount,  String? donationId)  processDonation,required TResult Function( String walletId,  double amount)  requestWithdrawal,required TResult Function( String walletId,  int limit,  int offset)  loadTransactions,required TResult Function( String walletId)  loadWithdrawals,required TResult Function( String walletId,  DateTime? startDate,  DateTime? endDate)  exportTransactions,required TResult Function()  clearTransient,}) {final _that = this;
switch (_that) {
case LoadWalletsEvent():
return loadWallets(_that.userId);case LoadMainWalletEvent():
return loadMainWallet(_that.userId);case LoadWalletEvent():
return loadWallet(_that.walletId);case CreateMainWalletEvent():
return createMainWallet(_that.userId);case UpdateBankDetailsEvent():
return updateBankDetails(_that.walletId,_that.bankName,_that.bankAccountNumber,_that.bankAccountHolder);case InitiateTopUpEvent():
return initiateTopUp(_that.walletId,_that.amount,_that.paymentMethod);case ConfirmTopUpEvent():
return confirmTopUp(_that.transactionId,_that.paymentId);case ProcessDonationEvent():
return processDonation(_that.fromWalletId,_that.toCampaignId,_that.amount,_that.donationId);case RequestWalletWithdrawalEvent():
return requestWithdrawal(_that.walletId,_that.amount);case LoadTransactionsEvent():
return loadTransactions(_that.walletId,_that.limit,_that.offset);case LoadWithdrawalsEvent():
return loadWithdrawals(_that.walletId);case ExportTransactionsEvent():
return exportTransactions(_that.walletId,_that.startDate,_that.endDate);case ClearWalletTransientEvent():
return clearTransient();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String userId)?  loadWallets,TResult? Function( String userId)?  loadMainWallet,TResult? Function( String walletId)?  loadWallet,TResult? Function( String userId)?  createMainWallet,TResult? Function( String walletId,  String bankName,  String bankAccountNumber,  String bankAccountHolder)?  updateBankDetails,TResult? Function( String walletId,  double amount,  String? paymentMethod)?  initiateTopUp,TResult? Function( String transactionId,  String paymentId)?  confirmTopUp,TResult? Function( String fromWalletId,  String toCampaignId,  double amount,  String? donationId)?  processDonation,TResult? Function( String walletId,  double amount)?  requestWithdrawal,TResult? Function( String walletId,  int limit,  int offset)?  loadTransactions,TResult? Function( String walletId)?  loadWithdrawals,TResult? Function( String walletId,  DateTime? startDate,  DateTime? endDate)?  exportTransactions,TResult? Function()?  clearTransient,}) {final _that = this;
switch (_that) {
case LoadWalletsEvent() when loadWallets != null:
return loadWallets(_that.userId);case LoadMainWalletEvent() when loadMainWallet != null:
return loadMainWallet(_that.userId);case LoadWalletEvent() when loadWallet != null:
return loadWallet(_that.walletId);case CreateMainWalletEvent() when createMainWallet != null:
return createMainWallet(_that.userId);case UpdateBankDetailsEvent() when updateBankDetails != null:
return updateBankDetails(_that.walletId,_that.bankName,_that.bankAccountNumber,_that.bankAccountHolder);case InitiateTopUpEvent() when initiateTopUp != null:
return initiateTopUp(_that.walletId,_that.amount,_that.paymentMethod);case ConfirmTopUpEvent() when confirmTopUp != null:
return confirmTopUp(_that.transactionId,_that.paymentId);case ProcessDonationEvent() when processDonation != null:
return processDonation(_that.fromWalletId,_that.toCampaignId,_that.amount,_that.donationId);case RequestWalletWithdrawalEvent() when requestWithdrawal != null:
return requestWithdrawal(_that.walletId,_that.amount);case LoadTransactionsEvent() when loadTransactions != null:
return loadTransactions(_that.walletId,_that.limit,_that.offset);case LoadWithdrawalsEvent() when loadWithdrawals != null:
return loadWithdrawals(_that.walletId);case ExportTransactionsEvent() when exportTransactions != null:
return exportTransactions(_that.walletId,_that.startDate,_that.endDate);case ClearWalletTransientEvent() when clearTransient != null:
return clearTransient();case _:
  return null;

}
}

}

/// @nodoc


class LoadWalletsEvent implements WalletEvent {
  const LoadWalletsEvent({required this.userId});
  

 final  String userId;

/// Create a copy of WalletEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadWalletsEventCopyWith<LoadWalletsEvent> get copyWith => _$LoadWalletsEventCopyWithImpl<LoadWalletsEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadWalletsEvent&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'WalletEvent.loadWallets(userId: $userId)';
}


}

/// @nodoc
abstract mixin class $LoadWalletsEventCopyWith<$Res> implements $WalletEventCopyWith<$Res> {
  factory $LoadWalletsEventCopyWith(LoadWalletsEvent value, $Res Function(LoadWalletsEvent) _then) = _$LoadWalletsEventCopyWithImpl;
@useResult
$Res call({
 String userId
});




}
/// @nodoc
class _$LoadWalletsEventCopyWithImpl<$Res>
    implements $LoadWalletsEventCopyWith<$Res> {
  _$LoadWalletsEventCopyWithImpl(this._self, this._then);

  final LoadWalletsEvent _self;
  final $Res Function(LoadWalletsEvent) _then;

/// Create a copy of WalletEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(LoadWalletsEvent(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoadMainWalletEvent implements WalletEvent {
  const LoadMainWalletEvent({required this.userId});
  

 final  String userId;

/// Create a copy of WalletEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadMainWalletEventCopyWith<LoadMainWalletEvent> get copyWith => _$LoadMainWalletEventCopyWithImpl<LoadMainWalletEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadMainWalletEvent&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'WalletEvent.loadMainWallet(userId: $userId)';
}


}

/// @nodoc
abstract mixin class $LoadMainWalletEventCopyWith<$Res> implements $WalletEventCopyWith<$Res> {
  factory $LoadMainWalletEventCopyWith(LoadMainWalletEvent value, $Res Function(LoadMainWalletEvent) _then) = _$LoadMainWalletEventCopyWithImpl;
@useResult
$Res call({
 String userId
});




}
/// @nodoc
class _$LoadMainWalletEventCopyWithImpl<$Res>
    implements $LoadMainWalletEventCopyWith<$Res> {
  _$LoadMainWalletEventCopyWithImpl(this._self, this._then);

  final LoadMainWalletEvent _self;
  final $Res Function(LoadMainWalletEvent) _then;

/// Create a copy of WalletEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(LoadMainWalletEvent(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoadWalletEvent implements WalletEvent {
  const LoadWalletEvent({required this.walletId});
  

 final  String walletId;

/// Create a copy of WalletEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadWalletEventCopyWith<LoadWalletEvent> get copyWith => _$LoadWalletEventCopyWithImpl<LoadWalletEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadWalletEvent&&(identical(other.walletId, walletId) || other.walletId == walletId));
}


@override
int get hashCode => Object.hash(runtimeType,walletId);

@override
String toString() {
  return 'WalletEvent.loadWallet(walletId: $walletId)';
}


}

/// @nodoc
abstract mixin class $LoadWalletEventCopyWith<$Res> implements $WalletEventCopyWith<$Res> {
  factory $LoadWalletEventCopyWith(LoadWalletEvent value, $Res Function(LoadWalletEvent) _then) = _$LoadWalletEventCopyWithImpl;
@useResult
$Res call({
 String walletId
});




}
/// @nodoc
class _$LoadWalletEventCopyWithImpl<$Res>
    implements $LoadWalletEventCopyWith<$Res> {
  _$LoadWalletEventCopyWithImpl(this._self, this._then);

  final LoadWalletEvent _self;
  final $Res Function(LoadWalletEvent) _then;

/// Create a copy of WalletEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? walletId = null,}) {
  return _then(LoadWalletEvent(
walletId: null == walletId ? _self.walletId : walletId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CreateMainWalletEvent implements WalletEvent {
  const CreateMainWalletEvent({required this.userId});
  

 final  String userId;

/// Create a copy of WalletEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateMainWalletEventCopyWith<CreateMainWalletEvent> get copyWith => _$CreateMainWalletEventCopyWithImpl<CreateMainWalletEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateMainWalletEvent&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'WalletEvent.createMainWallet(userId: $userId)';
}


}

/// @nodoc
abstract mixin class $CreateMainWalletEventCopyWith<$Res> implements $WalletEventCopyWith<$Res> {
  factory $CreateMainWalletEventCopyWith(CreateMainWalletEvent value, $Res Function(CreateMainWalletEvent) _then) = _$CreateMainWalletEventCopyWithImpl;
@useResult
$Res call({
 String userId
});




}
/// @nodoc
class _$CreateMainWalletEventCopyWithImpl<$Res>
    implements $CreateMainWalletEventCopyWith<$Res> {
  _$CreateMainWalletEventCopyWithImpl(this._self, this._then);

  final CreateMainWalletEvent _self;
  final $Res Function(CreateMainWalletEvent) _then;

/// Create a copy of WalletEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(CreateMainWalletEvent(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UpdateBankDetailsEvent implements WalletEvent {
  const UpdateBankDetailsEvent({required this.walletId, required this.bankName, required this.bankAccountNumber, required this.bankAccountHolder});
  

 final  String walletId;
 final  String bankName;
 final  String bankAccountNumber;
 final  String bankAccountHolder;

/// Create a copy of WalletEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateBankDetailsEventCopyWith<UpdateBankDetailsEvent> get copyWith => _$UpdateBankDetailsEventCopyWithImpl<UpdateBankDetailsEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateBankDetailsEvent&&(identical(other.walletId, walletId) || other.walletId == walletId)&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.bankAccountNumber, bankAccountNumber) || other.bankAccountNumber == bankAccountNumber)&&(identical(other.bankAccountHolder, bankAccountHolder) || other.bankAccountHolder == bankAccountHolder));
}


@override
int get hashCode => Object.hash(runtimeType,walletId,bankName,bankAccountNumber,bankAccountHolder);

@override
String toString() {
  return 'WalletEvent.updateBankDetails(walletId: $walletId, bankName: $bankName, bankAccountNumber: $bankAccountNumber, bankAccountHolder: $bankAccountHolder)';
}


}

/// @nodoc
abstract mixin class $UpdateBankDetailsEventCopyWith<$Res> implements $WalletEventCopyWith<$Res> {
  factory $UpdateBankDetailsEventCopyWith(UpdateBankDetailsEvent value, $Res Function(UpdateBankDetailsEvent) _then) = _$UpdateBankDetailsEventCopyWithImpl;
@useResult
$Res call({
 String walletId, String bankName, String bankAccountNumber, String bankAccountHolder
});




}
/// @nodoc
class _$UpdateBankDetailsEventCopyWithImpl<$Res>
    implements $UpdateBankDetailsEventCopyWith<$Res> {
  _$UpdateBankDetailsEventCopyWithImpl(this._self, this._then);

  final UpdateBankDetailsEvent _self;
  final $Res Function(UpdateBankDetailsEvent) _then;

/// Create a copy of WalletEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? walletId = null,Object? bankName = null,Object? bankAccountNumber = null,Object? bankAccountHolder = null,}) {
  return _then(UpdateBankDetailsEvent(
walletId: null == walletId ? _self.walletId : walletId // ignore: cast_nullable_to_non_nullable
as String,bankName: null == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String,bankAccountNumber: null == bankAccountNumber ? _self.bankAccountNumber : bankAccountNumber // ignore: cast_nullable_to_non_nullable
as String,bankAccountHolder: null == bankAccountHolder ? _self.bankAccountHolder : bankAccountHolder // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class InitiateTopUpEvent implements WalletEvent {
  const InitiateTopUpEvent({required this.walletId, required this.amount, this.paymentMethod});
  

 final  String walletId;
 final  double amount;
 final  String? paymentMethod;

/// Create a copy of WalletEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InitiateTopUpEventCopyWith<InitiateTopUpEvent> get copyWith => _$InitiateTopUpEventCopyWithImpl<InitiateTopUpEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InitiateTopUpEvent&&(identical(other.walletId, walletId) || other.walletId == walletId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod));
}


@override
int get hashCode => Object.hash(runtimeType,walletId,amount,paymentMethod);

@override
String toString() {
  return 'WalletEvent.initiateTopUp(walletId: $walletId, amount: $amount, paymentMethod: $paymentMethod)';
}


}

/// @nodoc
abstract mixin class $InitiateTopUpEventCopyWith<$Res> implements $WalletEventCopyWith<$Res> {
  factory $InitiateTopUpEventCopyWith(InitiateTopUpEvent value, $Res Function(InitiateTopUpEvent) _then) = _$InitiateTopUpEventCopyWithImpl;
@useResult
$Res call({
 String walletId, double amount, String? paymentMethod
});




}
/// @nodoc
class _$InitiateTopUpEventCopyWithImpl<$Res>
    implements $InitiateTopUpEventCopyWith<$Res> {
  _$InitiateTopUpEventCopyWithImpl(this._self, this._then);

  final InitiateTopUpEvent _self;
  final $Res Function(InitiateTopUpEvent) _then;

/// Create a copy of WalletEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? walletId = null,Object? amount = null,Object? paymentMethod = freezed,}) {
  return _then(InitiateTopUpEvent(
walletId: null == walletId ? _self.walletId : walletId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,paymentMethod: freezed == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class ConfirmTopUpEvent implements WalletEvent {
  const ConfirmTopUpEvent({required this.transactionId, required this.paymentId});
  

 final  String transactionId;
 final  String paymentId;

/// Create a copy of WalletEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConfirmTopUpEventCopyWith<ConfirmTopUpEvent> get copyWith => _$ConfirmTopUpEventCopyWithImpl<ConfirmTopUpEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConfirmTopUpEvent&&(identical(other.transactionId, transactionId) || other.transactionId == transactionId)&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId));
}


@override
int get hashCode => Object.hash(runtimeType,transactionId,paymentId);

@override
String toString() {
  return 'WalletEvent.confirmTopUp(transactionId: $transactionId, paymentId: $paymentId)';
}


}

/// @nodoc
abstract mixin class $ConfirmTopUpEventCopyWith<$Res> implements $WalletEventCopyWith<$Res> {
  factory $ConfirmTopUpEventCopyWith(ConfirmTopUpEvent value, $Res Function(ConfirmTopUpEvent) _then) = _$ConfirmTopUpEventCopyWithImpl;
@useResult
$Res call({
 String transactionId, String paymentId
});




}
/// @nodoc
class _$ConfirmTopUpEventCopyWithImpl<$Res>
    implements $ConfirmTopUpEventCopyWith<$Res> {
  _$ConfirmTopUpEventCopyWithImpl(this._self, this._then);

  final ConfirmTopUpEvent _self;
  final $Res Function(ConfirmTopUpEvent) _then;

/// Create a copy of WalletEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? transactionId = null,Object? paymentId = null,}) {
  return _then(ConfirmTopUpEvent(
transactionId: null == transactionId ? _self.transactionId : transactionId // ignore: cast_nullable_to_non_nullable
as String,paymentId: null == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ProcessDonationEvent implements WalletEvent {
  const ProcessDonationEvent({required this.fromWalletId, required this.toCampaignId, required this.amount, this.donationId});
  

 final  String fromWalletId;
 final  String toCampaignId;
 final  double amount;
 final  String? donationId;

/// Create a copy of WalletEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProcessDonationEventCopyWith<ProcessDonationEvent> get copyWith => _$ProcessDonationEventCopyWithImpl<ProcessDonationEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProcessDonationEvent&&(identical(other.fromWalletId, fromWalletId) || other.fromWalletId == fromWalletId)&&(identical(other.toCampaignId, toCampaignId) || other.toCampaignId == toCampaignId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.donationId, donationId) || other.donationId == donationId));
}


@override
int get hashCode => Object.hash(runtimeType,fromWalletId,toCampaignId,amount,donationId);

@override
String toString() {
  return 'WalletEvent.processDonation(fromWalletId: $fromWalletId, toCampaignId: $toCampaignId, amount: $amount, donationId: $donationId)';
}


}

/// @nodoc
abstract mixin class $ProcessDonationEventCopyWith<$Res> implements $WalletEventCopyWith<$Res> {
  factory $ProcessDonationEventCopyWith(ProcessDonationEvent value, $Res Function(ProcessDonationEvent) _then) = _$ProcessDonationEventCopyWithImpl;
@useResult
$Res call({
 String fromWalletId, String toCampaignId, double amount, String? donationId
});




}
/// @nodoc
class _$ProcessDonationEventCopyWithImpl<$Res>
    implements $ProcessDonationEventCopyWith<$Res> {
  _$ProcessDonationEventCopyWithImpl(this._self, this._then);

  final ProcessDonationEvent _self;
  final $Res Function(ProcessDonationEvent) _then;

/// Create a copy of WalletEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? fromWalletId = null,Object? toCampaignId = null,Object? amount = null,Object? donationId = freezed,}) {
  return _then(ProcessDonationEvent(
fromWalletId: null == fromWalletId ? _self.fromWalletId : fromWalletId // ignore: cast_nullable_to_non_nullable
as String,toCampaignId: null == toCampaignId ? _self.toCampaignId : toCampaignId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,donationId: freezed == donationId ? _self.donationId : donationId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class RequestWalletWithdrawalEvent implements WalletEvent {
  const RequestWalletWithdrawalEvent({required this.walletId, required this.amount});
  

 final  String walletId;
 final  double amount;

/// Create a copy of WalletEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestWalletWithdrawalEventCopyWith<RequestWalletWithdrawalEvent> get copyWith => _$RequestWalletWithdrawalEventCopyWithImpl<RequestWalletWithdrawalEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestWalletWithdrawalEvent&&(identical(other.walletId, walletId) || other.walletId == walletId)&&(identical(other.amount, amount) || other.amount == amount));
}


@override
int get hashCode => Object.hash(runtimeType,walletId,amount);

@override
String toString() {
  return 'WalletEvent.requestWithdrawal(walletId: $walletId, amount: $amount)';
}


}

/// @nodoc
abstract mixin class $RequestWalletWithdrawalEventCopyWith<$Res> implements $WalletEventCopyWith<$Res> {
  factory $RequestWalletWithdrawalEventCopyWith(RequestWalletWithdrawalEvent value, $Res Function(RequestWalletWithdrawalEvent) _then) = _$RequestWalletWithdrawalEventCopyWithImpl;
@useResult
$Res call({
 String walletId, double amount
});




}
/// @nodoc
class _$RequestWalletWithdrawalEventCopyWithImpl<$Res>
    implements $RequestWalletWithdrawalEventCopyWith<$Res> {
  _$RequestWalletWithdrawalEventCopyWithImpl(this._self, this._then);

  final RequestWalletWithdrawalEvent _self;
  final $Res Function(RequestWalletWithdrawalEvent) _then;

/// Create a copy of WalletEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? walletId = null,Object? amount = null,}) {
  return _then(RequestWalletWithdrawalEvent(
walletId: null == walletId ? _self.walletId : walletId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc


class LoadTransactionsEvent implements WalletEvent {
  const LoadTransactionsEvent({required this.walletId, this.limit = 50, this.offset = 0});
  

 final  String walletId;
@JsonKey() final  int limit;
@JsonKey() final  int offset;

/// Create a copy of WalletEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadTransactionsEventCopyWith<LoadTransactionsEvent> get copyWith => _$LoadTransactionsEventCopyWithImpl<LoadTransactionsEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadTransactionsEvent&&(identical(other.walletId, walletId) || other.walletId == walletId)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.offset, offset) || other.offset == offset));
}


@override
int get hashCode => Object.hash(runtimeType,walletId,limit,offset);

@override
String toString() {
  return 'WalletEvent.loadTransactions(walletId: $walletId, limit: $limit, offset: $offset)';
}


}

/// @nodoc
abstract mixin class $LoadTransactionsEventCopyWith<$Res> implements $WalletEventCopyWith<$Res> {
  factory $LoadTransactionsEventCopyWith(LoadTransactionsEvent value, $Res Function(LoadTransactionsEvent) _then) = _$LoadTransactionsEventCopyWithImpl;
@useResult
$Res call({
 String walletId, int limit, int offset
});




}
/// @nodoc
class _$LoadTransactionsEventCopyWithImpl<$Res>
    implements $LoadTransactionsEventCopyWith<$Res> {
  _$LoadTransactionsEventCopyWithImpl(this._self, this._then);

  final LoadTransactionsEvent _self;
  final $Res Function(LoadTransactionsEvent) _then;

/// Create a copy of WalletEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? walletId = null,Object? limit = null,Object? offset = null,}) {
  return _then(LoadTransactionsEvent(
walletId: null == walletId ? _self.walletId : walletId // ignore: cast_nullable_to_non_nullable
as String,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class LoadWithdrawalsEvent implements WalletEvent {
  const LoadWithdrawalsEvent({required this.walletId});
  

 final  String walletId;

/// Create a copy of WalletEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadWithdrawalsEventCopyWith<LoadWithdrawalsEvent> get copyWith => _$LoadWithdrawalsEventCopyWithImpl<LoadWithdrawalsEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadWithdrawalsEvent&&(identical(other.walletId, walletId) || other.walletId == walletId));
}


@override
int get hashCode => Object.hash(runtimeType,walletId);

@override
String toString() {
  return 'WalletEvent.loadWithdrawals(walletId: $walletId)';
}


}

/// @nodoc
abstract mixin class $LoadWithdrawalsEventCopyWith<$Res> implements $WalletEventCopyWith<$Res> {
  factory $LoadWithdrawalsEventCopyWith(LoadWithdrawalsEvent value, $Res Function(LoadWithdrawalsEvent) _then) = _$LoadWithdrawalsEventCopyWithImpl;
@useResult
$Res call({
 String walletId
});




}
/// @nodoc
class _$LoadWithdrawalsEventCopyWithImpl<$Res>
    implements $LoadWithdrawalsEventCopyWith<$Res> {
  _$LoadWithdrawalsEventCopyWithImpl(this._self, this._then);

  final LoadWithdrawalsEvent _self;
  final $Res Function(LoadWithdrawalsEvent) _then;

/// Create a copy of WalletEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? walletId = null,}) {
  return _then(LoadWithdrawalsEvent(
walletId: null == walletId ? _self.walletId : walletId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ExportTransactionsEvent implements WalletEvent {
  const ExportTransactionsEvent({required this.walletId, this.startDate, this.endDate});
  

 final  String walletId;
 final  DateTime? startDate;
 final  DateTime? endDate;

/// Create a copy of WalletEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExportTransactionsEventCopyWith<ExportTransactionsEvent> get copyWith => _$ExportTransactionsEventCopyWithImpl<ExportTransactionsEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExportTransactionsEvent&&(identical(other.walletId, walletId) || other.walletId == walletId)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate));
}


@override
int get hashCode => Object.hash(runtimeType,walletId,startDate,endDate);

@override
String toString() {
  return 'WalletEvent.exportTransactions(walletId: $walletId, startDate: $startDate, endDate: $endDate)';
}


}

/// @nodoc
abstract mixin class $ExportTransactionsEventCopyWith<$Res> implements $WalletEventCopyWith<$Res> {
  factory $ExportTransactionsEventCopyWith(ExportTransactionsEvent value, $Res Function(ExportTransactionsEvent) _then) = _$ExportTransactionsEventCopyWithImpl;
@useResult
$Res call({
 String walletId, DateTime? startDate, DateTime? endDate
});




}
/// @nodoc
class _$ExportTransactionsEventCopyWithImpl<$Res>
    implements $ExportTransactionsEventCopyWith<$Res> {
  _$ExportTransactionsEventCopyWithImpl(this._self, this._then);

  final ExportTransactionsEvent _self;
  final $Res Function(ExportTransactionsEvent) _then;

/// Create a copy of WalletEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? walletId = null,Object? startDate = freezed,Object? endDate = freezed,}) {
  return _then(ExportTransactionsEvent(
walletId: null == walletId ? _self.walletId : walletId // ignore: cast_nullable_to_non_nullable
as String,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

/// @nodoc


class ClearWalletTransientEvent implements WalletEvent {
  const ClearWalletTransientEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClearWalletTransientEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'WalletEvent.clearTransient()';
}


}




// dart format on
