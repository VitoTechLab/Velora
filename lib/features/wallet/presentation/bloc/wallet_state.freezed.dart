// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WalletState {

// All wallets for user
 List<WalletEntity> get wallets; bool get isLoadingWallets; String? get errorWallets;// Main wallet (convenience getter from wallets list)
 WalletEntity? get mainWallet;// Selected wallet for detail view
 WalletEntity? get selectedWallet; bool get isLoadingWallet; String? get errorWallet;// Transactions for selected wallet
 List<WalletTransactionEntity> get transactions; bool get isLoadingTransactions; String? get errorTransactions;// Withdrawal history for selected wallet
 List<WalletWithdrawalEntity> get withdrawals; bool get isLoadingWithdrawals; String? get errorWithdrawals;// Operation states
 bool get isCreatingWallet; String? get errorCreateWallet; bool get isUpdatingBankDetails; String? get errorBankDetails; bool get isProcessingTopUp; String? get errorTopUp; bool get isProcessingDonation; String? get errorDonation; bool get isProcessingWithdrawal; String? get errorWithdrawal;// Export state
 bool get isExporting;// Success messages
 String? get message;
/// Create a copy of WalletState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WalletStateCopyWith<WalletState> get copyWith => _$WalletStateCopyWithImpl<WalletState>(this as WalletState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WalletState&&const DeepCollectionEquality().equals(other.wallets, wallets)&&(identical(other.isLoadingWallets, isLoadingWallets) || other.isLoadingWallets == isLoadingWallets)&&(identical(other.errorWallets, errorWallets) || other.errorWallets == errorWallets)&&(identical(other.mainWallet, mainWallet) || other.mainWallet == mainWallet)&&(identical(other.selectedWallet, selectedWallet) || other.selectedWallet == selectedWallet)&&(identical(other.isLoadingWallet, isLoadingWallet) || other.isLoadingWallet == isLoadingWallet)&&(identical(other.errorWallet, errorWallet) || other.errorWallet == errorWallet)&&const DeepCollectionEquality().equals(other.transactions, transactions)&&(identical(other.isLoadingTransactions, isLoadingTransactions) || other.isLoadingTransactions == isLoadingTransactions)&&(identical(other.errorTransactions, errorTransactions) || other.errorTransactions == errorTransactions)&&const DeepCollectionEquality().equals(other.withdrawals, withdrawals)&&(identical(other.isLoadingWithdrawals, isLoadingWithdrawals) || other.isLoadingWithdrawals == isLoadingWithdrawals)&&(identical(other.errorWithdrawals, errorWithdrawals) || other.errorWithdrawals == errorWithdrawals)&&(identical(other.isCreatingWallet, isCreatingWallet) || other.isCreatingWallet == isCreatingWallet)&&(identical(other.errorCreateWallet, errorCreateWallet) || other.errorCreateWallet == errorCreateWallet)&&(identical(other.isUpdatingBankDetails, isUpdatingBankDetails) || other.isUpdatingBankDetails == isUpdatingBankDetails)&&(identical(other.errorBankDetails, errorBankDetails) || other.errorBankDetails == errorBankDetails)&&(identical(other.isProcessingTopUp, isProcessingTopUp) || other.isProcessingTopUp == isProcessingTopUp)&&(identical(other.errorTopUp, errorTopUp) || other.errorTopUp == errorTopUp)&&(identical(other.isProcessingDonation, isProcessingDonation) || other.isProcessingDonation == isProcessingDonation)&&(identical(other.errorDonation, errorDonation) || other.errorDonation == errorDonation)&&(identical(other.isProcessingWithdrawal, isProcessingWithdrawal) || other.isProcessingWithdrawal == isProcessingWithdrawal)&&(identical(other.errorWithdrawal, errorWithdrawal) || other.errorWithdrawal == errorWithdrawal)&&(identical(other.isExporting, isExporting) || other.isExporting == isExporting)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hashAll([runtimeType,const DeepCollectionEquality().hash(wallets),isLoadingWallets,errorWallets,mainWallet,selectedWallet,isLoadingWallet,errorWallet,const DeepCollectionEquality().hash(transactions),isLoadingTransactions,errorTransactions,const DeepCollectionEquality().hash(withdrawals),isLoadingWithdrawals,errorWithdrawals,isCreatingWallet,errorCreateWallet,isUpdatingBankDetails,errorBankDetails,isProcessingTopUp,errorTopUp,isProcessingDonation,errorDonation,isProcessingWithdrawal,errorWithdrawal,isExporting,message]);

@override
String toString() {
  return 'WalletState(wallets: $wallets, isLoadingWallets: $isLoadingWallets, errorWallets: $errorWallets, mainWallet: $mainWallet, selectedWallet: $selectedWallet, isLoadingWallet: $isLoadingWallet, errorWallet: $errorWallet, transactions: $transactions, isLoadingTransactions: $isLoadingTransactions, errorTransactions: $errorTransactions, withdrawals: $withdrawals, isLoadingWithdrawals: $isLoadingWithdrawals, errorWithdrawals: $errorWithdrawals, isCreatingWallet: $isCreatingWallet, errorCreateWallet: $errorCreateWallet, isUpdatingBankDetails: $isUpdatingBankDetails, errorBankDetails: $errorBankDetails, isProcessingTopUp: $isProcessingTopUp, errorTopUp: $errorTopUp, isProcessingDonation: $isProcessingDonation, errorDonation: $errorDonation, isProcessingWithdrawal: $isProcessingWithdrawal, errorWithdrawal: $errorWithdrawal, isExporting: $isExporting, message: $message)';
}


}

/// @nodoc
abstract mixin class $WalletStateCopyWith<$Res>  {
  factory $WalletStateCopyWith(WalletState value, $Res Function(WalletState) _then) = _$WalletStateCopyWithImpl;
@useResult
$Res call({
 List<WalletEntity> wallets, bool isLoadingWallets, String? errorWallets, WalletEntity? mainWallet, WalletEntity? selectedWallet, bool isLoadingWallet, String? errorWallet, List<WalletTransactionEntity> transactions, bool isLoadingTransactions, String? errorTransactions, List<WalletWithdrawalEntity> withdrawals, bool isLoadingWithdrawals, String? errorWithdrawals, bool isCreatingWallet, String? errorCreateWallet, bool isUpdatingBankDetails, String? errorBankDetails, bool isProcessingTopUp, String? errorTopUp, bool isProcessingDonation, String? errorDonation, bool isProcessingWithdrawal, String? errorWithdrawal, bool isExporting, String? message
});


$WalletEntityCopyWith<$Res>? get mainWallet;$WalletEntityCopyWith<$Res>? get selectedWallet;

}
/// @nodoc
class _$WalletStateCopyWithImpl<$Res>
    implements $WalletStateCopyWith<$Res> {
  _$WalletStateCopyWithImpl(this._self, this._then);

  final WalletState _self;
  final $Res Function(WalletState) _then;

/// Create a copy of WalletState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? wallets = null,Object? isLoadingWallets = null,Object? errorWallets = freezed,Object? mainWallet = freezed,Object? selectedWallet = freezed,Object? isLoadingWallet = null,Object? errorWallet = freezed,Object? transactions = null,Object? isLoadingTransactions = null,Object? errorTransactions = freezed,Object? withdrawals = null,Object? isLoadingWithdrawals = null,Object? errorWithdrawals = freezed,Object? isCreatingWallet = null,Object? errorCreateWallet = freezed,Object? isUpdatingBankDetails = null,Object? errorBankDetails = freezed,Object? isProcessingTopUp = null,Object? errorTopUp = freezed,Object? isProcessingDonation = null,Object? errorDonation = freezed,Object? isProcessingWithdrawal = null,Object? errorWithdrawal = freezed,Object? isExporting = null,Object? message = freezed,}) {
  return _then(_self.copyWith(
wallets: null == wallets ? _self.wallets : wallets // ignore: cast_nullable_to_non_nullable
as List<WalletEntity>,isLoadingWallets: null == isLoadingWallets ? _self.isLoadingWallets : isLoadingWallets // ignore: cast_nullable_to_non_nullable
as bool,errorWallets: freezed == errorWallets ? _self.errorWallets : errorWallets // ignore: cast_nullable_to_non_nullable
as String?,mainWallet: freezed == mainWallet ? _self.mainWallet : mainWallet // ignore: cast_nullable_to_non_nullable
as WalletEntity?,selectedWallet: freezed == selectedWallet ? _self.selectedWallet : selectedWallet // ignore: cast_nullable_to_non_nullable
as WalletEntity?,isLoadingWallet: null == isLoadingWallet ? _self.isLoadingWallet : isLoadingWallet // ignore: cast_nullable_to_non_nullable
as bool,errorWallet: freezed == errorWallet ? _self.errorWallet : errorWallet // ignore: cast_nullable_to_non_nullable
as String?,transactions: null == transactions ? _self.transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<WalletTransactionEntity>,isLoadingTransactions: null == isLoadingTransactions ? _self.isLoadingTransactions : isLoadingTransactions // ignore: cast_nullable_to_non_nullable
as bool,errorTransactions: freezed == errorTransactions ? _self.errorTransactions : errorTransactions // ignore: cast_nullable_to_non_nullable
as String?,withdrawals: null == withdrawals ? _self.withdrawals : withdrawals // ignore: cast_nullable_to_non_nullable
as List<WalletWithdrawalEntity>,isLoadingWithdrawals: null == isLoadingWithdrawals ? _self.isLoadingWithdrawals : isLoadingWithdrawals // ignore: cast_nullable_to_non_nullable
as bool,errorWithdrawals: freezed == errorWithdrawals ? _self.errorWithdrawals : errorWithdrawals // ignore: cast_nullable_to_non_nullable
as String?,isCreatingWallet: null == isCreatingWallet ? _self.isCreatingWallet : isCreatingWallet // ignore: cast_nullable_to_non_nullable
as bool,errorCreateWallet: freezed == errorCreateWallet ? _self.errorCreateWallet : errorCreateWallet // ignore: cast_nullable_to_non_nullable
as String?,isUpdatingBankDetails: null == isUpdatingBankDetails ? _self.isUpdatingBankDetails : isUpdatingBankDetails // ignore: cast_nullable_to_non_nullable
as bool,errorBankDetails: freezed == errorBankDetails ? _self.errorBankDetails : errorBankDetails // ignore: cast_nullable_to_non_nullable
as String?,isProcessingTopUp: null == isProcessingTopUp ? _self.isProcessingTopUp : isProcessingTopUp // ignore: cast_nullable_to_non_nullable
as bool,errorTopUp: freezed == errorTopUp ? _self.errorTopUp : errorTopUp // ignore: cast_nullable_to_non_nullable
as String?,isProcessingDonation: null == isProcessingDonation ? _self.isProcessingDonation : isProcessingDonation // ignore: cast_nullable_to_non_nullable
as bool,errorDonation: freezed == errorDonation ? _self.errorDonation : errorDonation // ignore: cast_nullable_to_non_nullable
as String?,isProcessingWithdrawal: null == isProcessingWithdrawal ? _self.isProcessingWithdrawal : isProcessingWithdrawal // ignore: cast_nullable_to_non_nullable
as bool,errorWithdrawal: freezed == errorWithdrawal ? _self.errorWithdrawal : errorWithdrawal // ignore: cast_nullable_to_non_nullable
as String?,isExporting: null == isExporting ? _self.isExporting : isExporting // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of WalletState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WalletEntityCopyWith<$Res>? get mainWallet {
    if (_self.mainWallet == null) {
    return null;
  }

  return $WalletEntityCopyWith<$Res>(_self.mainWallet!, (value) {
    return _then(_self.copyWith(mainWallet: value));
  });
}/// Create a copy of WalletState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WalletEntityCopyWith<$Res>? get selectedWallet {
    if (_self.selectedWallet == null) {
    return null;
  }

  return $WalletEntityCopyWith<$Res>(_self.selectedWallet!, (value) {
    return _then(_self.copyWith(selectedWallet: value));
  });
}
}


/// Adds pattern-matching-related methods to [WalletState].
extension WalletStatePatterns on WalletState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WalletState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WalletState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WalletState value)  $default,){
final _that = this;
switch (_that) {
case _WalletState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WalletState value)?  $default,){
final _that = this;
switch (_that) {
case _WalletState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<WalletEntity> wallets,  bool isLoadingWallets,  String? errorWallets,  WalletEntity? mainWallet,  WalletEntity? selectedWallet,  bool isLoadingWallet,  String? errorWallet,  List<WalletTransactionEntity> transactions,  bool isLoadingTransactions,  String? errorTransactions,  List<WalletWithdrawalEntity> withdrawals,  bool isLoadingWithdrawals,  String? errorWithdrawals,  bool isCreatingWallet,  String? errorCreateWallet,  bool isUpdatingBankDetails,  String? errorBankDetails,  bool isProcessingTopUp,  String? errorTopUp,  bool isProcessingDonation,  String? errorDonation,  bool isProcessingWithdrawal,  String? errorWithdrawal,  bool isExporting,  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WalletState() when $default != null:
return $default(_that.wallets,_that.isLoadingWallets,_that.errorWallets,_that.mainWallet,_that.selectedWallet,_that.isLoadingWallet,_that.errorWallet,_that.transactions,_that.isLoadingTransactions,_that.errorTransactions,_that.withdrawals,_that.isLoadingWithdrawals,_that.errorWithdrawals,_that.isCreatingWallet,_that.errorCreateWallet,_that.isUpdatingBankDetails,_that.errorBankDetails,_that.isProcessingTopUp,_that.errorTopUp,_that.isProcessingDonation,_that.errorDonation,_that.isProcessingWithdrawal,_that.errorWithdrawal,_that.isExporting,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<WalletEntity> wallets,  bool isLoadingWallets,  String? errorWallets,  WalletEntity? mainWallet,  WalletEntity? selectedWallet,  bool isLoadingWallet,  String? errorWallet,  List<WalletTransactionEntity> transactions,  bool isLoadingTransactions,  String? errorTransactions,  List<WalletWithdrawalEntity> withdrawals,  bool isLoadingWithdrawals,  String? errorWithdrawals,  bool isCreatingWallet,  String? errorCreateWallet,  bool isUpdatingBankDetails,  String? errorBankDetails,  bool isProcessingTopUp,  String? errorTopUp,  bool isProcessingDonation,  String? errorDonation,  bool isProcessingWithdrawal,  String? errorWithdrawal,  bool isExporting,  String? message)  $default,) {final _that = this;
switch (_that) {
case _WalletState():
return $default(_that.wallets,_that.isLoadingWallets,_that.errorWallets,_that.mainWallet,_that.selectedWallet,_that.isLoadingWallet,_that.errorWallet,_that.transactions,_that.isLoadingTransactions,_that.errorTransactions,_that.withdrawals,_that.isLoadingWithdrawals,_that.errorWithdrawals,_that.isCreatingWallet,_that.errorCreateWallet,_that.isUpdatingBankDetails,_that.errorBankDetails,_that.isProcessingTopUp,_that.errorTopUp,_that.isProcessingDonation,_that.errorDonation,_that.isProcessingWithdrawal,_that.errorWithdrawal,_that.isExporting,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<WalletEntity> wallets,  bool isLoadingWallets,  String? errorWallets,  WalletEntity? mainWallet,  WalletEntity? selectedWallet,  bool isLoadingWallet,  String? errorWallet,  List<WalletTransactionEntity> transactions,  bool isLoadingTransactions,  String? errorTransactions,  List<WalletWithdrawalEntity> withdrawals,  bool isLoadingWithdrawals,  String? errorWithdrawals,  bool isCreatingWallet,  String? errorCreateWallet,  bool isUpdatingBankDetails,  String? errorBankDetails,  bool isProcessingTopUp,  String? errorTopUp,  bool isProcessingDonation,  String? errorDonation,  bool isProcessingWithdrawal,  String? errorWithdrawal,  bool isExporting,  String? message)?  $default,) {final _that = this;
switch (_that) {
case _WalletState() when $default != null:
return $default(_that.wallets,_that.isLoadingWallets,_that.errorWallets,_that.mainWallet,_that.selectedWallet,_that.isLoadingWallet,_that.errorWallet,_that.transactions,_that.isLoadingTransactions,_that.errorTransactions,_that.withdrawals,_that.isLoadingWithdrawals,_that.errorWithdrawals,_that.isCreatingWallet,_that.errorCreateWallet,_that.isUpdatingBankDetails,_that.errorBankDetails,_that.isProcessingTopUp,_that.errorTopUp,_that.isProcessingDonation,_that.errorDonation,_that.isProcessingWithdrawal,_that.errorWithdrawal,_that.isExporting,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _WalletState extends WalletState {
  const _WalletState({final  List<WalletEntity> wallets = const <WalletEntity>[], this.isLoadingWallets = false, this.errorWallets, this.mainWallet, this.selectedWallet, this.isLoadingWallet = false, this.errorWallet, final  List<WalletTransactionEntity> transactions = const <WalletTransactionEntity>[], this.isLoadingTransactions = false, this.errorTransactions, final  List<WalletWithdrawalEntity> withdrawals = const <WalletWithdrawalEntity>[], this.isLoadingWithdrawals = false, this.errorWithdrawals, this.isCreatingWallet = false, this.errorCreateWallet, this.isUpdatingBankDetails = false, this.errorBankDetails, this.isProcessingTopUp = false, this.errorTopUp, this.isProcessingDonation = false, this.errorDonation, this.isProcessingWithdrawal = false, this.errorWithdrawal, this.isExporting = false, this.message}): _wallets = wallets,_transactions = transactions,_withdrawals = withdrawals,super._();
  

// All wallets for user
 final  List<WalletEntity> _wallets;
// All wallets for user
@override@JsonKey() List<WalletEntity> get wallets {
  if (_wallets is EqualUnmodifiableListView) return _wallets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_wallets);
}

@override@JsonKey() final  bool isLoadingWallets;
@override final  String? errorWallets;
// Main wallet (convenience getter from wallets list)
@override final  WalletEntity? mainWallet;
// Selected wallet for detail view
@override final  WalletEntity? selectedWallet;
@override@JsonKey() final  bool isLoadingWallet;
@override final  String? errorWallet;
// Transactions for selected wallet
 final  List<WalletTransactionEntity> _transactions;
// Transactions for selected wallet
@override@JsonKey() List<WalletTransactionEntity> get transactions {
  if (_transactions is EqualUnmodifiableListView) return _transactions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_transactions);
}

@override@JsonKey() final  bool isLoadingTransactions;
@override final  String? errorTransactions;
// Withdrawal history for selected wallet
 final  List<WalletWithdrawalEntity> _withdrawals;
// Withdrawal history for selected wallet
@override@JsonKey() List<WalletWithdrawalEntity> get withdrawals {
  if (_withdrawals is EqualUnmodifiableListView) return _withdrawals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_withdrawals);
}

@override@JsonKey() final  bool isLoadingWithdrawals;
@override final  String? errorWithdrawals;
// Operation states
@override@JsonKey() final  bool isCreatingWallet;
@override final  String? errorCreateWallet;
@override@JsonKey() final  bool isUpdatingBankDetails;
@override final  String? errorBankDetails;
@override@JsonKey() final  bool isProcessingTopUp;
@override final  String? errorTopUp;
@override@JsonKey() final  bool isProcessingDonation;
@override final  String? errorDonation;
@override@JsonKey() final  bool isProcessingWithdrawal;
@override final  String? errorWithdrawal;
// Export state
@override@JsonKey() final  bool isExporting;
// Success messages
@override final  String? message;

/// Create a copy of WalletState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WalletStateCopyWith<_WalletState> get copyWith => __$WalletStateCopyWithImpl<_WalletState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WalletState&&const DeepCollectionEquality().equals(other._wallets, _wallets)&&(identical(other.isLoadingWallets, isLoadingWallets) || other.isLoadingWallets == isLoadingWallets)&&(identical(other.errorWallets, errorWallets) || other.errorWallets == errorWallets)&&(identical(other.mainWallet, mainWallet) || other.mainWallet == mainWallet)&&(identical(other.selectedWallet, selectedWallet) || other.selectedWallet == selectedWallet)&&(identical(other.isLoadingWallet, isLoadingWallet) || other.isLoadingWallet == isLoadingWallet)&&(identical(other.errorWallet, errorWallet) || other.errorWallet == errorWallet)&&const DeepCollectionEquality().equals(other._transactions, _transactions)&&(identical(other.isLoadingTransactions, isLoadingTransactions) || other.isLoadingTransactions == isLoadingTransactions)&&(identical(other.errorTransactions, errorTransactions) || other.errorTransactions == errorTransactions)&&const DeepCollectionEquality().equals(other._withdrawals, _withdrawals)&&(identical(other.isLoadingWithdrawals, isLoadingWithdrawals) || other.isLoadingWithdrawals == isLoadingWithdrawals)&&(identical(other.errorWithdrawals, errorWithdrawals) || other.errorWithdrawals == errorWithdrawals)&&(identical(other.isCreatingWallet, isCreatingWallet) || other.isCreatingWallet == isCreatingWallet)&&(identical(other.errorCreateWallet, errorCreateWallet) || other.errorCreateWallet == errorCreateWallet)&&(identical(other.isUpdatingBankDetails, isUpdatingBankDetails) || other.isUpdatingBankDetails == isUpdatingBankDetails)&&(identical(other.errorBankDetails, errorBankDetails) || other.errorBankDetails == errorBankDetails)&&(identical(other.isProcessingTopUp, isProcessingTopUp) || other.isProcessingTopUp == isProcessingTopUp)&&(identical(other.errorTopUp, errorTopUp) || other.errorTopUp == errorTopUp)&&(identical(other.isProcessingDonation, isProcessingDonation) || other.isProcessingDonation == isProcessingDonation)&&(identical(other.errorDonation, errorDonation) || other.errorDonation == errorDonation)&&(identical(other.isProcessingWithdrawal, isProcessingWithdrawal) || other.isProcessingWithdrawal == isProcessingWithdrawal)&&(identical(other.errorWithdrawal, errorWithdrawal) || other.errorWithdrawal == errorWithdrawal)&&(identical(other.isExporting, isExporting) || other.isExporting == isExporting)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hashAll([runtimeType,const DeepCollectionEquality().hash(_wallets),isLoadingWallets,errorWallets,mainWallet,selectedWallet,isLoadingWallet,errorWallet,const DeepCollectionEquality().hash(_transactions),isLoadingTransactions,errorTransactions,const DeepCollectionEquality().hash(_withdrawals),isLoadingWithdrawals,errorWithdrawals,isCreatingWallet,errorCreateWallet,isUpdatingBankDetails,errorBankDetails,isProcessingTopUp,errorTopUp,isProcessingDonation,errorDonation,isProcessingWithdrawal,errorWithdrawal,isExporting,message]);

@override
String toString() {
  return 'WalletState(wallets: $wallets, isLoadingWallets: $isLoadingWallets, errorWallets: $errorWallets, mainWallet: $mainWallet, selectedWallet: $selectedWallet, isLoadingWallet: $isLoadingWallet, errorWallet: $errorWallet, transactions: $transactions, isLoadingTransactions: $isLoadingTransactions, errorTransactions: $errorTransactions, withdrawals: $withdrawals, isLoadingWithdrawals: $isLoadingWithdrawals, errorWithdrawals: $errorWithdrawals, isCreatingWallet: $isCreatingWallet, errorCreateWallet: $errorCreateWallet, isUpdatingBankDetails: $isUpdatingBankDetails, errorBankDetails: $errorBankDetails, isProcessingTopUp: $isProcessingTopUp, errorTopUp: $errorTopUp, isProcessingDonation: $isProcessingDonation, errorDonation: $errorDonation, isProcessingWithdrawal: $isProcessingWithdrawal, errorWithdrawal: $errorWithdrawal, isExporting: $isExporting, message: $message)';
}


}

/// @nodoc
abstract mixin class _$WalletStateCopyWith<$Res> implements $WalletStateCopyWith<$Res> {
  factory _$WalletStateCopyWith(_WalletState value, $Res Function(_WalletState) _then) = __$WalletStateCopyWithImpl;
@override @useResult
$Res call({
 List<WalletEntity> wallets, bool isLoadingWallets, String? errorWallets, WalletEntity? mainWallet, WalletEntity? selectedWallet, bool isLoadingWallet, String? errorWallet, List<WalletTransactionEntity> transactions, bool isLoadingTransactions, String? errorTransactions, List<WalletWithdrawalEntity> withdrawals, bool isLoadingWithdrawals, String? errorWithdrawals, bool isCreatingWallet, String? errorCreateWallet, bool isUpdatingBankDetails, String? errorBankDetails, bool isProcessingTopUp, String? errorTopUp, bool isProcessingDonation, String? errorDonation, bool isProcessingWithdrawal, String? errorWithdrawal, bool isExporting, String? message
});


@override $WalletEntityCopyWith<$Res>? get mainWallet;@override $WalletEntityCopyWith<$Res>? get selectedWallet;

}
/// @nodoc
class __$WalletStateCopyWithImpl<$Res>
    implements _$WalletStateCopyWith<$Res> {
  __$WalletStateCopyWithImpl(this._self, this._then);

  final _WalletState _self;
  final $Res Function(_WalletState) _then;

/// Create a copy of WalletState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? wallets = null,Object? isLoadingWallets = null,Object? errorWallets = freezed,Object? mainWallet = freezed,Object? selectedWallet = freezed,Object? isLoadingWallet = null,Object? errorWallet = freezed,Object? transactions = null,Object? isLoadingTransactions = null,Object? errorTransactions = freezed,Object? withdrawals = null,Object? isLoadingWithdrawals = null,Object? errorWithdrawals = freezed,Object? isCreatingWallet = null,Object? errorCreateWallet = freezed,Object? isUpdatingBankDetails = null,Object? errorBankDetails = freezed,Object? isProcessingTopUp = null,Object? errorTopUp = freezed,Object? isProcessingDonation = null,Object? errorDonation = freezed,Object? isProcessingWithdrawal = null,Object? errorWithdrawal = freezed,Object? isExporting = null,Object? message = freezed,}) {
  return _then(_WalletState(
wallets: null == wallets ? _self._wallets : wallets // ignore: cast_nullable_to_non_nullable
as List<WalletEntity>,isLoadingWallets: null == isLoadingWallets ? _self.isLoadingWallets : isLoadingWallets // ignore: cast_nullable_to_non_nullable
as bool,errorWallets: freezed == errorWallets ? _self.errorWallets : errorWallets // ignore: cast_nullable_to_non_nullable
as String?,mainWallet: freezed == mainWallet ? _self.mainWallet : mainWallet // ignore: cast_nullable_to_non_nullable
as WalletEntity?,selectedWallet: freezed == selectedWallet ? _self.selectedWallet : selectedWallet // ignore: cast_nullable_to_non_nullable
as WalletEntity?,isLoadingWallet: null == isLoadingWallet ? _self.isLoadingWallet : isLoadingWallet // ignore: cast_nullable_to_non_nullable
as bool,errorWallet: freezed == errorWallet ? _self.errorWallet : errorWallet // ignore: cast_nullable_to_non_nullable
as String?,transactions: null == transactions ? _self._transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<WalletTransactionEntity>,isLoadingTransactions: null == isLoadingTransactions ? _self.isLoadingTransactions : isLoadingTransactions // ignore: cast_nullable_to_non_nullable
as bool,errorTransactions: freezed == errorTransactions ? _self.errorTransactions : errorTransactions // ignore: cast_nullable_to_non_nullable
as String?,withdrawals: null == withdrawals ? _self._withdrawals : withdrawals // ignore: cast_nullable_to_non_nullable
as List<WalletWithdrawalEntity>,isLoadingWithdrawals: null == isLoadingWithdrawals ? _self.isLoadingWithdrawals : isLoadingWithdrawals // ignore: cast_nullable_to_non_nullable
as bool,errorWithdrawals: freezed == errorWithdrawals ? _self.errorWithdrawals : errorWithdrawals // ignore: cast_nullable_to_non_nullable
as String?,isCreatingWallet: null == isCreatingWallet ? _self.isCreatingWallet : isCreatingWallet // ignore: cast_nullable_to_non_nullable
as bool,errorCreateWallet: freezed == errorCreateWallet ? _self.errorCreateWallet : errorCreateWallet // ignore: cast_nullable_to_non_nullable
as String?,isUpdatingBankDetails: null == isUpdatingBankDetails ? _self.isUpdatingBankDetails : isUpdatingBankDetails // ignore: cast_nullable_to_non_nullable
as bool,errorBankDetails: freezed == errorBankDetails ? _self.errorBankDetails : errorBankDetails // ignore: cast_nullable_to_non_nullable
as String?,isProcessingTopUp: null == isProcessingTopUp ? _self.isProcessingTopUp : isProcessingTopUp // ignore: cast_nullable_to_non_nullable
as bool,errorTopUp: freezed == errorTopUp ? _self.errorTopUp : errorTopUp // ignore: cast_nullable_to_non_nullable
as String?,isProcessingDonation: null == isProcessingDonation ? _self.isProcessingDonation : isProcessingDonation // ignore: cast_nullable_to_non_nullable
as bool,errorDonation: freezed == errorDonation ? _self.errorDonation : errorDonation // ignore: cast_nullable_to_non_nullable
as String?,isProcessingWithdrawal: null == isProcessingWithdrawal ? _self.isProcessingWithdrawal : isProcessingWithdrawal // ignore: cast_nullable_to_non_nullable
as bool,errorWithdrawal: freezed == errorWithdrawal ? _self.errorWithdrawal : errorWithdrawal // ignore: cast_nullable_to_non_nullable
as String?,isExporting: null == isExporting ? _self.isExporting : isExporting // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of WalletState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WalletEntityCopyWith<$Res>? get mainWallet {
    if (_self.mainWallet == null) {
    return null;
  }

  return $WalletEntityCopyWith<$Res>(_self.mainWallet!, (value) {
    return _then(_self.copyWith(mainWallet: value));
  });
}/// Create a copy of WalletState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WalletEntityCopyWith<$Res>? get selectedWallet {
    if (_self.selectedWallet == null) {
    return null;
  }

  return $WalletEntityCopyWith<$Res>(_self.selectedWallet!, (value) {
    return _then(_self.copyWith(selectedWallet: value));
  });
}
}

// dart format on
