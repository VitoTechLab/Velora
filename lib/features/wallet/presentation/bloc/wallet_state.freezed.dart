// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WalletState {
// All wallets for user
  List<WalletEntity> get wallets => throw _privateConstructorUsedError;
  bool get isLoadingWallets => throw _privateConstructorUsedError;
  String? get errorWallets =>
      throw _privateConstructorUsedError; // Main wallet (convenience getter from wallets list)
  WalletEntity? get mainWallet =>
      throw _privateConstructorUsedError; // Selected wallet for detail view
  WalletEntity? get selectedWallet => throw _privateConstructorUsedError;
  bool get isLoadingWallet => throw _privateConstructorUsedError;
  String? get errorWallet =>
      throw _privateConstructorUsedError; // Transactions for selected wallet
  List<WalletTransactionEntity> get transactions =>
      throw _privateConstructorUsedError;
  bool get isLoadingTransactions => throw _privateConstructorUsedError;
  String? get errorTransactions =>
      throw _privateConstructorUsedError; // Withdrawal history for selected wallet
  List<WalletWithdrawalEntity> get withdrawals =>
      throw _privateConstructorUsedError;
  bool get isLoadingWithdrawals => throw _privateConstructorUsedError;
  String? get errorWithdrawals =>
      throw _privateConstructorUsedError; // Operation states
  bool get isCreatingWallet => throw _privateConstructorUsedError;
  String? get errorCreateWallet => throw _privateConstructorUsedError;
  bool get isUpdatingBankDetails => throw _privateConstructorUsedError;
  String? get errorBankDetails => throw _privateConstructorUsedError;
  bool get isProcessingTopUp => throw _privateConstructorUsedError;
  String? get errorTopUp => throw _privateConstructorUsedError;
  bool get isProcessingDonation => throw _privateConstructorUsedError;
  String? get errorDonation => throw _privateConstructorUsedError;
  bool get isProcessingWithdrawal => throw _privateConstructorUsedError;
  String? get errorWithdrawal =>
      throw _privateConstructorUsedError; // Export state
  bool get isExporting =>
      throw _privateConstructorUsedError; // Success messages
  String? get message => throw _privateConstructorUsedError;

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WalletStateCopyWith<WalletState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletStateCopyWith<$Res> {
  factory $WalletStateCopyWith(
          WalletState value, $Res Function(WalletState) then) =
      _$WalletStateCopyWithImpl<$Res, WalletState>;
  @useResult
  $Res call(
      {List<WalletEntity> wallets,
      bool isLoadingWallets,
      String? errorWallets,
      WalletEntity? mainWallet,
      WalletEntity? selectedWallet,
      bool isLoadingWallet,
      String? errorWallet,
      List<WalletTransactionEntity> transactions,
      bool isLoadingTransactions,
      String? errorTransactions,
      List<WalletWithdrawalEntity> withdrawals,
      bool isLoadingWithdrawals,
      String? errorWithdrawals,
      bool isCreatingWallet,
      String? errorCreateWallet,
      bool isUpdatingBankDetails,
      String? errorBankDetails,
      bool isProcessingTopUp,
      String? errorTopUp,
      bool isProcessingDonation,
      String? errorDonation,
      bool isProcessingWithdrawal,
      String? errorWithdrawal,
      bool isExporting,
      String? message});

  $WalletEntityCopyWith<$Res>? get mainWallet;
  $WalletEntityCopyWith<$Res>? get selectedWallet;
}

/// @nodoc
class _$WalletStateCopyWithImpl<$Res, $Val extends WalletState>
    implements $WalletStateCopyWith<$Res> {
  _$WalletStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wallets = null,
    Object? isLoadingWallets = null,
    Object? errorWallets = freezed,
    Object? mainWallet = freezed,
    Object? selectedWallet = freezed,
    Object? isLoadingWallet = null,
    Object? errorWallet = freezed,
    Object? transactions = null,
    Object? isLoadingTransactions = null,
    Object? errorTransactions = freezed,
    Object? withdrawals = null,
    Object? isLoadingWithdrawals = null,
    Object? errorWithdrawals = freezed,
    Object? isCreatingWallet = null,
    Object? errorCreateWallet = freezed,
    Object? isUpdatingBankDetails = null,
    Object? errorBankDetails = freezed,
    Object? isProcessingTopUp = null,
    Object? errorTopUp = freezed,
    Object? isProcessingDonation = null,
    Object? errorDonation = freezed,
    Object? isProcessingWithdrawal = null,
    Object? errorWithdrawal = freezed,
    Object? isExporting = null,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      wallets: null == wallets
          ? _value.wallets
          : wallets // ignore: cast_nullable_to_non_nullable
              as List<WalletEntity>,
      isLoadingWallets: null == isLoadingWallets
          ? _value.isLoadingWallets
          : isLoadingWallets // ignore: cast_nullable_to_non_nullable
              as bool,
      errorWallets: freezed == errorWallets
          ? _value.errorWallets
          : errorWallets // ignore: cast_nullable_to_non_nullable
              as String?,
      mainWallet: freezed == mainWallet
          ? _value.mainWallet
          : mainWallet // ignore: cast_nullable_to_non_nullable
              as WalletEntity?,
      selectedWallet: freezed == selectedWallet
          ? _value.selectedWallet
          : selectedWallet // ignore: cast_nullable_to_non_nullable
              as WalletEntity?,
      isLoadingWallet: null == isLoadingWallet
          ? _value.isLoadingWallet
          : isLoadingWallet // ignore: cast_nullable_to_non_nullable
              as bool,
      errorWallet: freezed == errorWallet
          ? _value.errorWallet
          : errorWallet // ignore: cast_nullable_to_non_nullable
              as String?,
      transactions: null == transactions
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<WalletTransactionEntity>,
      isLoadingTransactions: null == isLoadingTransactions
          ? _value.isLoadingTransactions
          : isLoadingTransactions // ignore: cast_nullable_to_non_nullable
              as bool,
      errorTransactions: freezed == errorTransactions
          ? _value.errorTransactions
          : errorTransactions // ignore: cast_nullable_to_non_nullable
              as String?,
      withdrawals: null == withdrawals
          ? _value.withdrawals
          : withdrawals // ignore: cast_nullable_to_non_nullable
              as List<WalletWithdrawalEntity>,
      isLoadingWithdrawals: null == isLoadingWithdrawals
          ? _value.isLoadingWithdrawals
          : isLoadingWithdrawals // ignore: cast_nullable_to_non_nullable
              as bool,
      errorWithdrawals: freezed == errorWithdrawals
          ? _value.errorWithdrawals
          : errorWithdrawals // ignore: cast_nullable_to_non_nullable
              as String?,
      isCreatingWallet: null == isCreatingWallet
          ? _value.isCreatingWallet
          : isCreatingWallet // ignore: cast_nullable_to_non_nullable
              as bool,
      errorCreateWallet: freezed == errorCreateWallet
          ? _value.errorCreateWallet
          : errorCreateWallet // ignore: cast_nullable_to_non_nullable
              as String?,
      isUpdatingBankDetails: null == isUpdatingBankDetails
          ? _value.isUpdatingBankDetails
          : isUpdatingBankDetails // ignore: cast_nullable_to_non_nullable
              as bool,
      errorBankDetails: freezed == errorBankDetails
          ? _value.errorBankDetails
          : errorBankDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      isProcessingTopUp: null == isProcessingTopUp
          ? _value.isProcessingTopUp
          : isProcessingTopUp // ignore: cast_nullable_to_non_nullable
              as bool,
      errorTopUp: freezed == errorTopUp
          ? _value.errorTopUp
          : errorTopUp // ignore: cast_nullable_to_non_nullable
              as String?,
      isProcessingDonation: null == isProcessingDonation
          ? _value.isProcessingDonation
          : isProcessingDonation // ignore: cast_nullable_to_non_nullable
              as bool,
      errorDonation: freezed == errorDonation
          ? _value.errorDonation
          : errorDonation // ignore: cast_nullable_to_non_nullable
              as String?,
      isProcessingWithdrawal: null == isProcessingWithdrawal
          ? _value.isProcessingWithdrawal
          : isProcessingWithdrawal // ignore: cast_nullable_to_non_nullable
              as bool,
      errorWithdrawal: freezed == errorWithdrawal
          ? _value.errorWithdrawal
          : errorWithdrawal // ignore: cast_nullable_to_non_nullable
              as String?,
      isExporting: null == isExporting
          ? _value.isExporting
          : isExporting // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WalletEntityCopyWith<$Res>? get mainWallet {
    if (_value.mainWallet == null) {
      return null;
    }

    return $WalletEntityCopyWith<$Res>(_value.mainWallet!, (value) {
      return _then(_value.copyWith(mainWallet: value) as $Val);
    });
  }

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WalletEntityCopyWith<$Res>? get selectedWallet {
    if (_value.selectedWallet == null) {
      return null;
    }

    return $WalletEntityCopyWith<$Res>(_value.selectedWallet!, (value) {
      return _then(_value.copyWith(selectedWallet: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WalletStateImplCopyWith<$Res>
    implements $WalletStateCopyWith<$Res> {
  factory _$$WalletStateImplCopyWith(
          _$WalletStateImpl value, $Res Function(_$WalletStateImpl) then) =
      __$$WalletStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<WalletEntity> wallets,
      bool isLoadingWallets,
      String? errorWallets,
      WalletEntity? mainWallet,
      WalletEntity? selectedWallet,
      bool isLoadingWallet,
      String? errorWallet,
      List<WalletTransactionEntity> transactions,
      bool isLoadingTransactions,
      String? errorTransactions,
      List<WalletWithdrawalEntity> withdrawals,
      bool isLoadingWithdrawals,
      String? errorWithdrawals,
      bool isCreatingWallet,
      String? errorCreateWallet,
      bool isUpdatingBankDetails,
      String? errorBankDetails,
      bool isProcessingTopUp,
      String? errorTopUp,
      bool isProcessingDonation,
      String? errorDonation,
      bool isProcessingWithdrawal,
      String? errorWithdrawal,
      bool isExporting,
      String? message});

  @override
  $WalletEntityCopyWith<$Res>? get mainWallet;
  @override
  $WalletEntityCopyWith<$Res>? get selectedWallet;
}

/// @nodoc
class __$$WalletStateImplCopyWithImpl<$Res>
    extends _$WalletStateCopyWithImpl<$Res, _$WalletStateImpl>
    implements _$$WalletStateImplCopyWith<$Res> {
  __$$WalletStateImplCopyWithImpl(
      _$WalletStateImpl _value, $Res Function(_$WalletStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wallets = null,
    Object? isLoadingWallets = null,
    Object? errorWallets = freezed,
    Object? mainWallet = freezed,
    Object? selectedWallet = freezed,
    Object? isLoadingWallet = null,
    Object? errorWallet = freezed,
    Object? transactions = null,
    Object? isLoadingTransactions = null,
    Object? errorTransactions = freezed,
    Object? withdrawals = null,
    Object? isLoadingWithdrawals = null,
    Object? errorWithdrawals = freezed,
    Object? isCreatingWallet = null,
    Object? errorCreateWallet = freezed,
    Object? isUpdatingBankDetails = null,
    Object? errorBankDetails = freezed,
    Object? isProcessingTopUp = null,
    Object? errorTopUp = freezed,
    Object? isProcessingDonation = null,
    Object? errorDonation = freezed,
    Object? isProcessingWithdrawal = null,
    Object? errorWithdrawal = freezed,
    Object? isExporting = null,
    Object? message = freezed,
  }) {
    return _then(_$WalletStateImpl(
      wallets: null == wallets
          ? _value._wallets
          : wallets // ignore: cast_nullable_to_non_nullable
              as List<WalletEntity>,
      isLoadingWallets: null == isLoadingWallets
          ? _value.isLoadingWallets
          : isLoadingWallets // ignore: cast_nullable_to_non_nullable
              as bool,
      errorWallets: freezed == errorWallets
          ? _value.errorWallets
          : errorWallets // ignore: cast_nullable_to_non_nullable
              as String?,
      mainWallet: freezed == mainWallet
          ? _value.mainWallet
          : mainWallet // ignore: cast_nullable_to_non_nullable
              as WalletEntity?,
      selectedWallet: freezed == selectedWallet
          ? _value.selectedWallet
          : selectedWallet // ignore: cast_nullable_to_non_nullable
              as WalletEntity?,
      isLoadingWallet: null == isLoadingWallet
          ? _value.isLoadingWallet
          : isLoadingWallet // ignore: cast_nullable_to_non_nullable
              as bool,
      errorWallet: freezed == errorWallet
          ? _value.errorWallet
          : errorWallet // ignore: cast_nullable_to_non_nullable
              as String?,
      transactions: null == transactions
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<WalletTransactionEntity>,
      isLoadingTransactions: null == isLoadingTransactions
          ? _value.isLoadingTransactions
          : isLoadingTransactions // ignore: cast_nullable_to_non_nullable
              as bool,
      errorTransactions: freezed == errorTransactions
          ? _value.errorTransactions
          : errorTransactions // ignore: cast_nullable_to_non_nullable
              as String?,
      withdrawals: null == withdrawals
          ? _value._withdrawals
          : withdrawals // ignore: cast_nullable_to_non_nullable
              as List<WalletWithdrawalEntity>,
      isLoadingWithdrawals: null == isLoadingWithdrawals
          ? _value.isLoadingWithdrawals
          : isLoadingWithdrawals // ignore: cast_nullable_to_non_nullable
              as bool,
      errorWithdrawals: freezed == errorWithdrawals
          ? _value.errorWithdrawals
          : errorWithdrawals // ignore: cast_nullable_to_non_nullable
              as String?,
      isCreatingWallet: null == isCreatingWallet
          ? _value.isCreatingWallet
          : isCreatingWallet // ignore: cast_nullable_to_non_nullable
              as bool,
      errorCreateWallet: freezed == errorCreateWallet
          ? _value.errorCreateWallet
          : errorCreateWallet // ignore: cast_nullable_to_non_nullable
              as String?,
      isUpdatingBankDetails: null == isUpdatingBankDetails
          ? _value.isUpdatingBankDetails
          : isUpdatingBankDetails // ignore: cast_nullable_to_non_nullable
              as bool,
      errorBankDetails: freezed == errorBankDetails
          ? _value.errorBankDetails
          : errorBankDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      isProcessingTopUp: null == isProcessingTopUp
          ? _value.isProcessingTopUp
          : isProcessingTopUp // ignore: cast_nullable_to_non_nullable
              as bool,
      errorTopUp: freezed == errorTopUp
          ? _value.errorTopUp
          : errorTopUp // ignore: cast_nullable_to_non_nullable
              as String?,
      isProcessingDonation: null == isProcessingDonation
          ? _value.isProcessingDonation
          : isProcessingDonation // ignore: cast_nullable_to_non_nullable
              as bool,
      errorDonation: freezed == errorDonation
          ? _value.errorDonation
          : errorDonation // ignore: cast_nullable_to_non_nullable
              as String?,
      isProcessingWithdrawal: null == isProcessingWithdrawal
          ? _value.isProcessingWithdrawal
          : isProcessingWithdrawal // ignore: cast_nullable_to_non_nullable
              as bool,
      errorWithdrawal: freezed == errorWithdrawal
          ? _value.errorWithdrawal
          : errorWithdrawal // ignore: cast_nullable_to_non_nullable
              as String?,
      isExporting: null == isExporting
          ? _value.isExporting
          : isExporting // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$WalletStateImpl extends _WalletState {
  const _$WalletStateImpl(
      {final List<WalletEntity> wallets = const <WalletEntity>[],
      this.isLoadingWallets = false,
      this.errorWallets,
      this.mainWallet,
      this.selectedWallet,
      this.isLoadingWallet = false,
      this.errorWallet,
      final List<WalletTransactionEntity> transactions =
          const <WalletTransactionEntity>[],
      this.isLoadingTransactions = false,
      this.errorTransactions,
      final List<WalletWithdrawalEntity> withdrawals =
          const <WalletWithdrawalEntity>[],
      this.isLoadingWithdrawals = false,
      this.errorWithdrawals,
      this.isCreatingWallet = false,
      this.errorCreateWallet,
      this.isUpdatingBankDetails = false,
      this.errorBankDetails,
      this.isProcessingTopUp = false,
      this.errorTopUp,
      this.isProcessingDonation = false,
      this.errorDonation,
      this.isProcessingWithdrawal = false,
      this.errorWithdrawal,
      this.isExporting = false,
      this.message})
      : _wallets = wallets,
        _transactions = transactions,
        _withdrawals = withdrawals,
        super._();

// All wallets for user
  final List<WalletEntity> _wallets;
// All wallets for user
  @override
  @JsonKey()
  List<WalletEntity> get wallets {
    if (_wallets is EqualUnmodifiableListView) return _wallets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wallets);
  }

  @override
  @JsonKey()
  final bool isLoadingWallets;
  @override
  final String? errorWallets;
// Main wallet (convenience getter from wallets list)
  @override
  final WalletEntity? mainWallet;
// Selected wallet for detail view
  @override
  final WalletEntity? selectedWallet;
  @override
  @JsonKey()
  final bool isLoadingWallet;
  @override
  final String? errorWallet;
// Transactions for selected wallet
  final List<WalletTransactionEntity> _transactions;
// Transactions for selected wallet
  @override
  @JsonKey()
  List<WalletTransactionEntity> get transactions {
    if (_transactions is EqualUnmodifiableListView) return _transactions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  @JsonKey()
  final bool isLoadingTransactions;
  @override
  final String? errorTransactions;
// Withdrawal history for selected wallet
  final List<WalletWithdrawalEntity> _withdrawals;
// Withdrawal history for selected wallet
  @override
  @JsonKey()
  List<WalletWithdrawalEntity> get withdrawals {
    if (_withdrawals is EqualUnmodifiableListView) return _withdrawals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_withdrawals);
  }

  @override
  @JsonKey()
  final bool isLoadingWithdrawals;
  @override
  final String? errorWithdrawals;
// Operation states
  @override
  @JsonKey()
  final bool isCreatingWallet;
  @override
  final String? errorCreateWallet;
  @override
  @JsonKey()
  final bool isUpdatingBankDetails;
  @override
  final String? errorBankDetails;
  @override
  @JsonKey()
  final bool isProcessingTopUp;
  @override
  final String? errorTopUp;
  @override
  @JsonKey()
  final bool isProcessingDonation;
  @override
  final String? errorDonation;
  @override
  @JsonKey()
  final bool isProcessingWithdrawal;
  @override
  final String? errorWithdrawal;
// Export state
  @override
  @JsonKey()
  final bool isExporting;
// Success messages
  @override
  final String? message;

  @override
  String toString() {
    return 'WalletState(wallets: $wallets, isLoadingWallets: $isLoadingWallets, errorWallets: $errorWallets, mainWallet: $mainWallet, selectedWallet: $selectedWallet, isLoadingWallet: $isLoadingWallet, errorWallet: $errorWallet, transactions: $transactions, isLoadingTransactions: $isLoadingTransactions, errorTransactions: $errorTransactions, withdrawals: $withdrawals, isLoadingWithdrawals: $isLoadingWithdrawals, errorWithdrawals: $errorWithdrawals, isCreatingWallet: $isCreatingWallet, errorCreateWallet: $errorCreateWallet, isUpdatingBankDetails: $isUpdatingBankDetails, errorBankDetails: $errorBankDetails, isProcessingTopUp: $isProcessingTopUp, errorTopUp: $errorTopUp, isProcessingDonation: $isProcessingDonation, errorDonation: $errorDonation, isProcessingWithdrawal: $isProcessingWithdrawal, errorWithdrawal: $errorWithdrawal, isExporting: $isExporting, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletStateImpl &&
            const DeepCollectionEquality().equals(other._wallets, _wallets) &&
            (identical(other.isLoadingWallets, isLoadingWallets) ||
                other.isLoadingWallets == isLoadingWallets) &&
            (identical(other.errorWallets, errorWallets) ||
                other.errorWallets == errorWallets) &&
            (identical(other.mainWallet, mainWallet) ||
                other.mainWallet == mainWallet) &&
            (identical(other.selectedWallet, selectedWallet) ||
                other.selectedWallet == selectedWallet) &&
            (identical(other.isLoadingWallet, isLoadingWallet) ||
                other.isLoadingWallet == isLoadingWallet) &&
            (identical(other.errorWallet, errorWallet) ||
                other.errorWallet == errorWallet) &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions) &&
            (identical(other.isLoadingTransactions, isLoadingTransactions) ||
                other.isLoadingTransactions == isLoadingTransactions) &&
            (identical(other.errorTransactions, errorTransactions) ||
                other.errorTransactions == errorTransactions) &&
            const DeepCollectionEquality()
                .equals(other._withdrawals, _withdrawals) &&
            (identical(other.isLoadingWithdrawals, isLoadingWithdrawals) ||
                other.isLoadingWithdrawals == isLoadingWithdrawals) &&
            (identical(other.errorWithdrawals, errorWithdrawals) ||
                other.errorWithdrawals == errorWithdrawals) &&
            (identical(other.isCreatingWallet, isCreatingWallet) ||
                other.isCreatingWallet == isCreatingWallet) &&
            (identical(other.errorCreateWallet, errorCreateWallet) ||
                other.errorCreateWallet == errorCreateWallet) &&
            (identical(other.isUpdatingBankDetails, isUpdatingBankDetails) ||
                other.isUpdatingBankDetails == isUpdatingBankDetails) &&
            (identical(other.errorBankDetails, errorBankDetails) ||
                other.errorBankDetails == errorBankDetails) &&
            (identical(other.isProcessingTopUp, isProcessingTopUp) ||
                other.isProcessingTopUp == isProcessingTopUp) &&
            (identical(other.errorTopUp, errorTopUp) ||
                other.errorTopUp == errorTopUp) &&
            (identical(other.isProcessingDonation, isProcessingDonation) ||
                other.isProcessingDonation == isProcessingDonation) &&
            (identical(other.errorDonation, errorDonation) ||
                other.errorDonation == errorDonation) &&
            (identical(other.isProcessingWithdrawal, isProcessingWithdrawal) ||
                other.isProcessingWithdrawal == isProcessingWithdrawal) &&
            (identical(other.errorWithdrawal, errorWithdrawal) ||
                other.errorWithdrawal == errorWithdrawal) &&
            (identical(other.isExporting, isExporting) ||
                other.isExporting == isExporting) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(_wallets),
        isLoadingWallets,
        errorWallets,
        mainWallet,
        selectedWallet,
        isLoadingWallet,
        errorWallet,
        const DeepCollectionEquality().hash(_transactions),
        isLoadingTransactions,
        errorTransactions,
        const DeepCollectionEquality().hash(_withdrawals),
        isLoadingWithdrawals,
        errorWithdrawals,
        isCreatingWallet,
        errorCreateWallet,
        isUpdatingBankDetails,
        errorBankDetails,
        isProcessingTopUp,
        errorTopUp,
        isProcessingDonation,
        errorDonation,
        isProcessingWithdrawal,
        errorWithdrawal,
        isExporting,
        message
      ]);

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletStateImplCopyWith<_$WalletStateImpl> get copyWith =>
      __$$WalletStateImplCopyWithImpl<_$WalletStateImpl>(this, _$identity);
}

abstract class _WalletState extends WalletState {
  const factory _WalletState(
      {final List<WalletEntity> wallets,
      final bool isLoadingWallets,
      final String? errorWallets,
      final WalletEntity? mainWallet,
      final WalletEntity? selectedWallet,
      final bool isLoadingWallet,
      final String? errorWallet,
      final List<WalletTransactionEntity> transactions,
      final bool isLoadingTransactions,
      final String? errorTransactions,
      final List<WalletWithdrawalEntity> withdrawals,
      final bool isLoadingWithdrawals,
      final String? errorWithdrawals,
      final bool isCreatingWallet,
      final String? errorCreateWallet,
      final bool isUpdatingBankDetails,
      final String? errorBankDetails,
      final bool isProcessingTopUp,
      final String? errorTopUp,
      final bool isProcessingDonation,
      final String? errorDonation,
      final bool isProcessingWithdrawal,
      final String? errorWithdrawal,
      final bool isExporting,
      final String? message}) = _$WalletStateImpl;
  const _WalletState._() : super._();

// All wallets for user
  @override
  List<WalletEntity> get wallets;
  @override
  bool get isLoadingWallets;
  @override
  String?
      get errorWallets; // Main wallet (convenience getter from wallets list)
  @override
  WalletEntity? get mainWallet; // Selected wallet for detail view
  @override
  WalletEntity? get selectedWallet;
  @override
  bool get isLoadingWallet;
  @override
  String? get errorWallet; // Transactions for selected wallet
  @override
  List<WalletTransactionEntity> get transactions;
  @override
  bool get isLoadingTransactions;
  @override
  String? get errorTransactions; // Withdrawal history for selected wallet
  @override
  List<WalletWithdrawalEntity> get withdrawals;
  @override
  bool get isLoadingWithdrawals;
  @override
  String? get errorWithdrawals; // Operation states
  @override
  bool get isCreatingWallet;
  @override
  String? get errorCreateWallet;
  @override
  bool get isUpdatingBankDetails;
  @override
  String? get errorBankDetails;
  @override
  bool get isProcessingTopUp;
  @override
  String? get errorTopUp;
  @override
  bool get isProcessingDonation;
  @override
  String? get errorDonation;
  @override
  bool get isProcessingWithdrawal;
  @override
  String? get errorWithdrawal; // Export state
  @override
  bool get isExporting; // Success messages
  @override
  String? get message;

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalletStateImplCopyWith<_$WalletStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
