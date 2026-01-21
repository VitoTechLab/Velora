// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WalletEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loadWallets,
    required TResult Function(String userId) loadMainWallet,
    required TResult Function(String walletId) loadWallet,
    required TResult Function(String userId) createMainWallet,
    required TResult Function(String walletId, String bankName,
            String bankAccountNumber, String bankAccountHolder)
        updateBankDetails,
    required TResult Function(
            String walletId, double amount, String? paymentMethod)
        initiateTopUp,
    required TResult Function(String transactionId, String paymentId)
        confirmTopUp,
    required TResult Function(String fromWalletId, String toCampaignId,
            double amount, String? donationId)
        processDonation,
    required TResult Function(String walletId, double amount) requestWithdrawal,
    required TResult Function(String walletId, int limit, int offset)
        loadTransactions,
    required TResult Function() clearTransient,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? loadWallets,
    TResult? Function(String userId)? loadMainWallet,
    TResult? Function(String walletId)? loadWallet,
    TResult? Function(String userId)? createMainWallet,
    TResult? Function(String walletId, String bankName,
            String bankAccountNumber, String bankAccountHolder)?
        updateBankDetails,
    TResult? Function(String walletId, double amount, String? paymentMethod)?
        initiateTopUp,
    TResult? Function(String transactionId, String paymentId)? confirmTopUp,
    TResult? Function(String fromWalletId, String toCampaignId, double amount,
            String? donationId)?
        processDonation,
    TResult? Function(String walletId, double amount)? requestWithdrawal,
    TResult? Function(String walletId, int limit, int offset)? loadTransactions,
    TResult? Function()? clearTransient,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadWallets,
    TResult Function(String userId)? loadMainWallet,
    TResult Function(String walletId)? loadWallet,
    TResult Function(String userId)? createMainWallet,
    TResult Function(String walletId, String bankName, String bankAccountNumber,
            String bankAccountHolder)?
        updateBankDetails,
    TResult Function(String walletId, double amount, String? paymentMethod)?
        initiateTopUp,
    TResult Function(String transactionId, String paymentId)? confirmTopUp,
    TResult Function(String fromWalletId, String toCampaignId, double amount,
            String? donationId)?
        processDonation,
    TResult Function(String walletId, double amount)? requestWithdrawal,
    TResult Function(String walletId, int limit, int offset)? loadTransactions,
    TResult Function()? clearTransient,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadWalletsEvent value) loadWallets,
    required TResult Function(LoadMainWalletEvent value) loadMainWallet,
    required TResult Function(LoadWalletEvent value) loadWallet,
    required TResult Function(CreateMainWalletEvent value) createMainWallet,
    required TResult Function(UpdateBankDetailsEvent value) updateBankDetails,
    required TResult Function(InitiateTopUpEvent value) initiateTopUp,
    required TResult Function(ConfirmTopUpEvent value) confirmTopUp,
    required TResult Function(ProcessDonationEvent value) processDonation,
    required TResult Function(RequestWalletWithdrawalEvent value)
        requestWithdrawal,
    required TResult Function(LoadTransactionsEvent value) loadTransactions,
    required TResult Function(ClearWalletTransientEvent value) clearTransient,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadWalletsEvent value)? loadWallets,
    TResult? Function(LoadMainWalletEvent value)? loadMainWallet,
    TResult? Function(LoadWalletEvent value)? loadWallet,
    TResult? Function(CreateMainWalletEvent value)? createMainWallet,
    TResult? Function(UpdateBankDetailsEvent value)? updateBankDetails,
    TResult? Function(InitiateTopUpEvent value)? initiateTopUp,
    TResult? Function(ConfirmTopUpEvent value)? confirmTopUp,
    TResult? Function(ProcessDonationEvent value)? processDonation,
    TResult? Function(RequestWalletWithdrawalEvent value)? requestWithdrawal,
    TResult? Function(LoadTransactionsEvent value)? loadTransactions,
    TResult? Function(ClearWalletTransientEvent value)? clearTransient,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadWalletsEvent value)? loadWallets,
    TResult Function(LoadMainWalletEvent value)? loadMainWallet,
    TResult Function(LoadWalletEvent value)? loadWallet,
    TResult Function(CreateMainWalletEvent value)? createMainWallet,
    TResult Function(UpdateBankDetailsEvent value)? updateBankDetails,
    TResult Function(InitiateTopUpEvent value)? initiateTopUp,
    TResult Function(ConfirmTopUpEvent value)? confirmTopUp,
    TResult Function(ProcessDonationEvent value)? processDonation,
    TResult Function(RequestWalletWithdrawalEvent value)? requestWithdrawal,
    TResult Function(LoadTransactionsEvent value)? loadTransactions,
    TResult Function(ClearWalletTransientEvent value)? clearTransient,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletEventCopyWith<$Res> {
  factory $WalletEventCopyWith(
          WalletEvent value, $Res Function(WalletEvent) then) =
      _$WalletEventCopyWithImpl<$Res, WalletEvent>;
}

/// @nodoc
class _$WalletEventCopyWithImpl<$Res, $Val extends WalletEvent>
    implements $WalletEventCopyWith<$Res> {
  _$WalletEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadWalletsEventImplCopyWith<$Res> {
  factory _$$LoadWalletsEventImplCopyWith(_$LoadWalletsEventImpl value,
          $Res Function(_$LoadWalletsEventImpl) then) =
      __$$LoadWalletsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$LoadWalletsEventImplCopyWithImpl<$Res>
    extends _$WalletEventCopyWithImpl<$Res, _$LoadWalletsEventImpl>
    implements _$$LoadWalletsEventImplCopyWith<$Res> {
  __$$LoadWalletsEventImplCopyWithImpl(_$LoadWalletsEventImpl _value,
      $Res Function(_$LoadWalletsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$LoadWalletsEventImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadWalletsEventImpl implements LoadWalletsEvent {
  const _$LoadWalletsEventImpl({required this.userId});

  @override
  final String userId;

  @override
  String toString() {
    return 'WalletEvent.loadWallets(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadWalletsEventImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadWalletsEventImplCopyWith<_$LoadWalletsEventImpl> get copyWith =>
      __$$LoadWalletsEventImplCopyWithImpl<_$LoadWalletsEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loadWallets,
    required TResult Function(String userId) loadMainWallet,
    required TResult Function(String walletId) loadWallet,
    required TResult Function(String userId) createMainWallet,
    required TResult Function(String walletId, String bankName,
            String bankAccountNumber, String bankAccountHolder)
        updateBankDetails,
    required TResult Function(
            String walletId, double amount, String? paymentMethod)
        initiateTopUp,
    required TResult Function(String transactionId, String paymentId)
        confirmTopUp,
    required TResult Function(String fromWalletId, String toCampaignId,
            double amount, String? donationId)
        processDonation,
    required TResult Function(String walletId, double amount) requestWithdrawal,
    required TResult Function(String walletId, int limit, int offset)
        loadTransactions,
    required TResult Function() clearTransient,
  }) {
    return loadWallets(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? loadWallets,
    TResult? Function(String userId)? loadMainWallet,
    TResult? Function(String walletId)? loadWallet,
    TResult? Function(String userId)? createMainWallet,
    TResult? Function(String walletId, String bankName,
            String bankAccountNumber, String bankAccountHolder)?
        updateBankDetails,
    TResult? Function(String walletId, double amount, String? paymentMethod)?
        initiateTopUp,
    TResult? Function(String transactionId, String paymentId)? confirmTopUp,
    TResult? Function(String fromWalletId, String toCampaignId, double amount,
            String? donationId)?
        processDonation,
    TResult? Function(String walletId, double amount)? requestWithdrawal,
    TResult? Function(String walletId, int limit, int offset)? loadTransactions,
    TResult? Function()? clearTransient,
  }) {
    return loadWallets?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadWallets,
    TResult Function(String userId)? loadMainWallet,
    TResult Function(String walletId)? loadWallet,
    TResult Function(String userId)? createMainWallet,
    TResult Function(String walletId, String bankName, String bankAccountNumber,
            String bankAccountHolder)?
        updateBankDetails,
    TResult Function(String walletId, double amount, String? paymentMethod)?
        initiateTopUp,
    TResult Function(String transactionId, String paymentId)? confirmTopUp,
    TResult Function(String fromWalletId, String toCampaignId, double amount,
            String? donationId)?
        processDonation,
    TResult Function(String walletId, double amount)? requestWithdrawal,
    TResult Function(String walletId, int limit, int offset)? loadTransactions,
    TResult Function()? clearTransient,
    required TResult orElse(),
  }) {
    if (loadWallets != null) {
      return loadWallets(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadWalletsEvent value) loadWallets,
    required TResult Function(LoadMainWalletEvent value) loadMainWallet,
    required TResult Function(LoadWalletEvent value) loadWallet,
    required TResult Function(CreateMainWalletEvent value) createMainWallet,
    required TResult Function(UpdateBankDetailsEvent value) updateBankDetails,
    required TResult Function(InitiateTopUpEvent value) initiateTopUp,
    required TResult Function(ConfirmTopUpEvent value) confirmTopUp,
    required TResult Function(ProcessDonationEvent value) processDonation,
    required TResult Function(RequestWalletWithdrawalEvent value)
        requestWithdrawal,
    required TResult Function(LoadTransactionsEvent value) loadTransactions,
    required TResult Function(ClearWalletTransientEvent value) clearTransient,
  }) {
    return loadWallets(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadWalletsEvent value)? loadWallets,
    TResult? Function(LoadMainWalletEvent value)? loadMainWallet,
    TResult? Function(LoadWalletEvent value)? loadWallet,
    TResult? Function(CreateMainWalletEvent value)? createMainWallet,
    TResult? Function(UpdateBankDetailsEvent value)? updateBankDetails,
    TResult? Function(InitiateTopUpEvent value)? initiateTopUp,
    TResult? Function(ConfirmTopUpEvent value)? confirmTopUp,
    TResult? Function(ProcessDonationEvent value)? processDonation,
    TResult? Function(RequestWalletWithdrawalEvent value)? requestWithdrawal,
    TResult? Function(LoadTransactionsEvent value)? loadTransactions,
    TResult? Function(ClearWalletTransientEvent value)? clearTransient,
  }) {
    return loadWallets?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadWalletsEvent value)? loadWallets,
    TResult Function(LoadMainWalletEvent value)? loadMainWallet,
    TResult Function(LoadWalletEvent value)? loadWallet,
    TResult Function(CreateMainWalletEvent value)? createMainWallet,
    TResult Function(UpdateBankDetailsEvent value)? updateBankDetails,
    TResult Function(InitiateTopUpEvent value)? initiateTopUp,
    TResult Function(ConfirmTopUpEvent value)? confirmTopUp,
    TResult Function(ProcessDonationEvent value)? processDonation,
    TResult Function(RequestWalletWithdrawalEvent value)? requestWithdrawal,
    TResult Function(LoadTransactionsEvent value)? loadTransactions,
    TResult Function(ClearWalletTransientEvent value)? clearTransient,
    required TResult orElse(),
  }) {
    if (loadWallets != null) {
      return loadWallets(this);
    }
    return orElse();
  }
}

abstract class LoadWalletsEvent implements WalletEvent {
  const factory LoadWalletsEvent({required final String userId}) =
      _$LoadWalletsEventImpl;

  String get userId;

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadWalletsEventImplCopyWith<_$LoadWalletsEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadMainWalletEventImplCopyWith<$Res> {
  factory _$$LoadMainWalletEventImplCopyWith(_$LoadMainWalletEventImpl value,
          $Res Function(_$LoadMainWalletEventImpl) then) =
      __$$LoadMainWalletEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$LoadMainWalletEventImplCopyWithImpl<$Res>
    extends _$WalletEventCopyWithImpl<$Res, _$LoadMainWalletEventImpl>
    implements _$$LoadMainWalletEventImplCopyWith<$Res> {
  __$$LoadMainWalletEventImplCopyWithImpl(_$LoadMainWalletEventImpl _value,
      $Res Function(_$LoadMainWalletEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$LoadMainWalletEventImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadMainWalletEventImpl implements LoadMainWalletEvent {
  const _$LoadMainWalletEventImpl({required this.userId});

  @override
  final String userId;

  @override
  String toString() {
    return 'WalletEvent.loadMainWallet(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadMainWalletEventImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadMainWalletEventImplCopyWith<_$LoadMainWalletEventImpl> get copyWith =>
      __$$LoadMainWalletEventImplCopyWithImpl<_$LoadMainWalletEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loadWallets,
    required TResult Function(String userId) loadMainWallet,
    required TResult Function(String walletId) loadWallet,
    required TResult Function(String userId) createMainWallet,
    required TResult Function(String walletId, String bankName,
            String bankAccountNumber, String bankAccountHolder)
        updateBankDetails,
    required TResult Function(
            String walletId, double amount, String? paymentMethod)
        initiateTopUp,
    required TResult Function(String transactionId, String paymentId)
        confirmTopUp,
    required TResult Function(String fromWalletId, String toCampaignId,
            double amount, String? donationId)
        processDonation,
    required TResult Function(String walletId, double amount) requestWithdrawal,
    required TResult Function(String walletId, int limit, int offset)
        loadTransactions,
    required TResult Function() clearTransient,
  }) {
    return loadMainWallet(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? loadWallets,
    TResult? Function(String userId)? loadMainWallet,
    TResult? Function(String walletId)? loadWallet,
    TResult? Function(String userId)? createMainWallet,
    TResult? Function(String walletId, String bankName,
            String bankAccountNumber, String bankAccountHolder)?
        updateBankDetails,
    TResult? Function(String walletId, double amount, String? paymentMethod)?
        initiateTopUp,
    TResult? Function(String transactionId, String paymentId)? confirmTopUp,
    TResult? Function(String fromWalletId, String toCampaignId, double amount,
            String? donationId)?
        processDonation,
    TResult? Function(String walletId, double amount)? requestWithdrawal,
    TResult? Function(String walletId, int limit, int offset)? loadTransactions,
    TResult? Function()? clearTransient,
  }) {
    return loadMainWallet?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadWallets,
    TResult Function(String userId)? loadMainWallet,
    TResult Function(String walletId)? loadWallet,
    TResult Function(String userId)? createMainWallet,
    TResult Function(String walletId, String bankName, String bankAccountNumber,
            String bankAccountHolder)?
        updateBankDetails,
    TResult Function(String walletId, double amount, String? paymentMethod)?
        initiateTopUp,
    TResult Function(String transactionId, String paymentId)? confirmTopUp,
    TResult Function(String fromWalletId, String toCampaignId, double amount,
            String? donationId)?
        processDonation,
    TResult Function(String walletId, double amount)? requestWithdrawal,
    TResult Function(String walletId, int limit, int offset)? loadTransactions,
    TResult Function()? clearTransient,
    required TResult orElse(),
  }) {
    if (loadMainWallet != null) {
      return loadMainWallet(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadWalletsEvent value) loadWallets,
    required TResult Function(LoadMainWalletEvent value) loadMainWallet,
    required TResult Function(LoadWalletEvent value) loadWallet,
    required TResult Function(CreateMainWalletEvent value) createMainWallet,
    required TResult Function(UpdateBankDetailsEvent value) updateBankDetails,
    required TResult Function(InitiateTopUpEvent value) initiateTopUp,
    required TResult Function(ConfirmTopUpEvent value) confirmTopUp,
    required TResult Function(ProcessDonationEvent value) processDonation,
    required TResult Function(RequestWalletWithdrawalEvent value)
        requestWithdrawal,
    required TResult Function(LoadTransactionsEvent value) loadTransactions,
    required TResult Function(ClearWalletTransientEvent value) clearTransient,
  }) {
    return loadMainWallet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadWalletsEvent value)? loadWallets,
    TResult? Function(LoadMainWalletEvent value)? loadMainWallet,
    TResult? Function(LoadWalletEvent value)? loadWallet,
    TResult? Function(CreateMainWalletEvent value)? createMainWallet,
    TResult? Function(UpdateBankDetailsEvent value)? updateBankDetails,
    TResult? Function(InitiateTopUpEvent value)? initiateTopUp,
    TResult? Function(ConfirmTopUpEvent value)? confirmTopUp,
    TResult? Function(ProcessDonationEvent value)? processDonation,
    TResult? Function(RequestWalletWithdrawalEvent value)? requestWithdrawal,
    TResult? Function(LoadTransactionsEvent value)? loadTransactions,
    TResult? Function(ClearWalletTransientEvent value)? clearTransient,
  }) {
    return loadMainWallet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadWalletsEvent value)? loadWallets,
    TResult Function(LoadMainWalletEvent value)? loadMainWallet,
    TResult Function(LoadWalletEvent value)? loadWallet,
    TResult Function(CreateMainWalletEvent value)? createMainWallet,
    TResult Function(UpdateBankDetailsEvent value)? updateBankDetails,
    TResult Function(InitiateTopUpEvent value)? initiateTopUp,
    TResult Function(ConfirmTopUpEvent value)? confirmTopUp,
    TResult Function(ProcessDonationEvent value)? processDonation,
    TResult Function(RequestWalletWithdrawalEvent value)? requestWithdrawal,
    TResult Function(LoadTransactionsEvent value)? loadTransactions,
    TResult Function(ClearWalletTransientEvent value)? clearTransient,
    required TResult orElse(),
  }) {
    if (loadMainWallet != null) {
      return loadMainWallet(this);
    }
    return orElse();
  }
}

abstract class LoadMainWalletEvent implements WalletEvent {
  const factory LoadMainWalletEvent({required final String userId}) =
      _$LoadMainWalletEventImpl;

  String get userId;

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadMainWalletEventImplCopyWith<_$LoadMainWalletEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadWalletEventImplCopyWith<$Res> {
  factory _$$LoadWalletEventImplCopyWith(_$LoadWalletEventImpl value,
          $Res Function(_$LoadWalletEventImpl) then) =
      __$$LoadWalletEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String walletId});
}

/// @nodoc
class __$$LoadWalletEventImplCopyWithImpl<$Res>
    extends _$WalletEventCopyWithImpl<$Res, _$LoadWalletEventImpl>
    implements _$$LoadWalletEventImplCopyWith<$Res> {
  __$$LoadWalletEventImplCopyWithImpl(
      _$LoadWalletEventImpl _value, $Res Function(_$LoadWalletEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletId = null,
  }) {
    return _then(_$LoadWalletEventImpl(
      walletId: null == walletId
          ? _value.walletId
          : walletId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadWalletEventImpl implements LoadWalletEvent {
  const _$LoadWalletEventImpl({required this.walletId});

  @override
  final String walletId;

  @override
  String toString() {
    return 'WalletEvent.loadWallet(walletId: $walletId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadWalletEventImpl &&
            (identical(other.walletId, walletId) ||
                other.walletId == walletId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, walletId);

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadWalletEventImplCopyWith<_$LoadWalletEventImpl> get copyWith =>
      __$$LoadWalletEventImplCopyWithImpl<_$LoadWalletEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loadWallets,
    required TResult Function(String userId) loadMainWallet,
    required TResult Function(String walletId) loadWallet,
    required TResult Function(String userId) createMainWallet,
    required TResult Function(String walletId, String bankName,
            String bankAccountNumber, String bankAccountHolder)
        updateBankDetails,
    required TResult Function(
            String walletId, double amount, String? paymentMethod)
        initiateTopUp,
    required TResult Function(String transactionId, String paymentId)
        confirmTopUp,
    required TResult Function(String fromWalletId, String toCampaignId,
            double amount, String? donationId)
        processDonation,
    required TResult Function(String walletId, double amount) requestWithdrawal,
    required TResult Function(String walletId, int limit, int offset)
        loadTransactions,
    required TResult Function() clearTransient,
  }) {
    return loadWallet(walletId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? loadWallets,
    TResult? Function(String userId)? loadMainWallet,
    TResult? Function(String walletId)? loadWallet,
    TResult? Function(String userId)? createMainWallet,
    TResult? Function(String walletId, String bankName,
            String bankAccountNumber, String bankAccountHolder)?
        updateBankDetails,
    TResult? Function(String walletId, double amount, String? paymentMethod)?
        initiateTopUp,
    TResult? Function(String transactionId, String paymentId)? confirmTopUp,
    TResult? Function(String fromWalletId, String toCampaignId, double amount,
            String? donationId)?
        processDonation,
    TResult? Function(String walletId, double amount)? requestWithdrawal,
    TResult? Function(String walletId, int limit, int offset)? loadTransactions,
    TResult? Function()? clearTransient,
  }) {
    return loadWallet?.call(walletId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadWallets,
    TResult Function(String userId)? loadMainWallet,
    TResult Function(String walletId)? loadWallet,
    TResult Function(String userId)? createMainWallet,
    TResult Function(String walletId, String bankName, String bankAccountNumber,
            String bankAccountHolder)?
        updateBankDetails,
    TResult Function(String walletId, double amount, String? paymentMethod)?
        initiateTopUp,
    TResult Function(String transactionId, String paymentId)? confirmTopUp,
    TResult Function(String fromWalletId, String toCampaignId, double amount,
            String? donationId)?
        processDonation,
    TResult Function(String walletId, double amount)? requestWithdrawal,
    TResult Function(String walletId, int limit, int offset)? loadTransactions,
    TResult Function()? clearTransient,
    required TResult orElse(),
  }) {
    if (loadWallet != null) {
      return loadWallet(walletId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadWalletsEvent value) loadWallets,
    required TResult Function(LoadMainWalletEvent value) loadMainWallet,
    required TResult Function(LoadWalletEvent value) loadWallet,
    required TResult Function(CreateMainWalletEvent value) createMainWallet,
    required TResult Function(UpdateBankDetailsEvent value) updateBankDetails,
    required TResult Function(InitiateTopUpEvent value) initiateTopUp,
    required TResult Function(ConfirmTopUpEvent value) confirmTopUp,
    required TResult Function(ProcessDonationEvent value) processDonation,
    required TResult Function(RequestWalletWithdrawalEvent value)
        requestWithdrawal,
    required TResult Function(LoadTransactionsEvent value) loadTransactions,
    required TResult Function(ClearWalletTransientEvent value) clearTransient,
  }) {
    return loadWallet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadWalletsEvent value)? loadWallets,
    TResult? Function(LoadMainWalletEvent value)? loadMainWallet,
    TResult? Function(LoadWalletEvent value)? loadWallet,
    TResult? Function(CreateMainWalletEvent value)? createMainWallet,
    TResult? Function(UpdateBankDetailsEvent value)? updateBankDetails,
    TResult? Function(InitiateTopUpEvent value)? initiateTopUp,
    TResult? Function(ConfirmTopUpEvent value)? confirmTopUp,
    TResult? Function(ProcessDonationEvent value)? processDonation,
    TResult? Function(RequestWalletWithdrawalEvent value)? requestWithdrawal,
    TResult? Function(LoadTransactionsEvent value)? loadTransactions,
    TResult? Function(ClearWalletTransientEvent value)? clearTransient,
  }) {
    return loadWallet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadWalletsEvent value)? loadWallets,
    TResult Function(LoadMainWalletEvent value)? loadMainWallet,
    TResult Function(LoadWalletEvent value)? loadWallet,
    TResult Function(CreateMainWalletEvent value)? createMainWallet,
    TResult Function(UpdateBankDetailsEvent value)? updateBankDetails,
    TResult Function(InitiateTopUpEvent value)? initiateTopUp,
    TResult Function(ConfirmTopUpEvent value)? confirmTopUp,
    TResult Function(ProcessDonationEvent value)? processDonation,
    TResult Function(RequestWalletWithdrawalEvent value)? requestWithdrawal,
    TResult Function(LoadTransactionsEvent value)? loadTransactions,
    TResult Function(ClearWalletTransientEvent value)? clearTransient,
    required TResult orElse(),
  }) {
    if (loadWallet != null) {
      return loadWallet(this);
    }
    return orElse();
  }
}

abstract class LoadWalletEvent implements WalletEvent {
  const factory LoadWalletEvent({required final String walletId}) =
      _$LoadWalletEventImpl;

  String get walletId;

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadWalletEventImplCopyWith<_$LoadWalletEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateMainWalletEventImplCopyWith<$Res> {
  factory _$$CreateMainWalletEventImplCopyWith(
          _$CreateMainWalletEventImpl value,
          $Res Function(_$CreateMainWalletEventImpl) then) =
      __$$CreateMainWalletEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$CreateMainWalletEventImplCopyWithImpl<$Res>
    extends _$WalletEventCopyWithImpl<$Res, _$CreateMainWalletEventImpl>
    implements _$$CreateMainWalletEventImplCopyWith<$Res> {
  __$$CreateMainWalletEventImplCopyWithImpl(_$CreateMainWalletEventImpl _value,
      $Res Function(_$CreateMainWalletEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$CreateMainWalletEventImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateMainWalletEventImpl implements CreateMainWalletEvent {
  const _$CreateMainWalletEventImpl({required this.userId});

  @override
  final String userId;

  @override
  String toString() {
    return 'WalletEvent.createMainWallet(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateMainWalletEventImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateMainWalletEventImplCopyWith<_$CreateMainWalletEventImpl>
      get copyWith => __$$CreateMainWalletEventImplCopyWithImpl<
          _$CreateMainWalletEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loadWallets,
    required TResult Function(String userId) loadMainWallet,
    required TResult Function(String walletId) loadWallet,
    required TResult Function(String userId) createMainWallet,
    required TResult Function(String walletId, String bankName,
            String bankAccountNumber, String bankAccountHolder)
        updateBankDetails,
    required TResult Function(
            String walletId, double amount, String? paymentMethod)
        initiateTopUp,
    required TResult Function(String transactionId, String paymentId)
        confirmTopUp,
    required TResult Function(String fromWalletId, String toCampaignId,
            double amount, String? donationId)
        processDonation,
    required TResult Function(String walletId, double amount) requestWithdrawal,
    required TResult Function(String walletId, int limit, int offset)
        loadTransactions,
    required TResult Function() clearTransient,
  }) {
    return createMainWallet(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? loadWallets,
    TResult? Function(String userId)? loadMainWallet,
    TResult? Function(String walletId)? loadWallet,
    TResult? Function(String userId)? createMainWallet,
    TResult? Function(String walletId, String bankName,
            String bankAccountNumber, String bankAccountHolder)?
        updateBankDetails,
    TResult? Function(String walletId, double amount, String? paymentMethod)?
        initiateTopUp,
    TResult? Function(String transactionId, String paymentId)? confirmTopUp,
    TResult? Function(String fromWalletId, String toCampaignId, double amount,
            String? donationId)?
        processDonation,
    TResult? Function(String walletId, double amount)? requestWithdrawal,
    TResult? Function(String walletId, int limit, int offset)? loadTransactions,
    TResult? Function()? clearTransient,
  }) {
    return createMainWallet?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadWallets,
    TResult Function(String userId)? loadMainWallet,
    TResult Function(String walletId)? loadWallet,
    TResult Function(String userId)? createMainWallet,
    TResult Function(String walletId, String bankName, String bankAccountNumber,
            String bankAccountHolder)?
        updateBankDetails,
    TResult Function(String walletId, double amount, String? paymentMethod)?
        initiateTopUp,
    TResult Function(String transactionId, String paymentId)? confirmTopUp,
    TResult Function(String fromWalletId, String toCampaignId, double amount,
            String? donationId)?
        processDonation,
    TResult Function(String walletId, double amount)? requestWithdrawal,
    TResult Function(String walletId, int limit, int offset)? loadTransactions,
    TResult Function()? clearTransient,
    required TResult orElse(),
  }) {
    if (createMainWallet != null) {
      return createMainWallet(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadWalletsEvent value) loadWallets,
    required TResult Function(LoadMainWalletEvent value) loadMainWallet,
    required TResult Function(LoadWalletEvent value) loadWallet,
    required TResult Function(CreateMainWalletEvent value) createMainWallet,
    required TResult Function(UpdateBankDetailsEvent value) updateBankDetails,
    required TResult Function(InitiateTopUpEvent value) initiateTopUp,
    required TResult Function(ConfirmTopUpEvent value) confirmTopUp,
    required TResult Function(ProcessDonationEvent value) processDonation,
    required TResult Function(RequestWalletWithdrawalEvent value)
        requestWithdrawal,
    required TResult Function(LoadTransactionsEvent value) loadTransactions,
    required TResult Function(ClearWalletTransientEvent value) clearTransient,
  }) {
    return createMainWallet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadWalletsEvent value)? loadWallets,
    TResult? Function(LoadMainWalletEvent value)? loadMainWallet,
    TResult? Function(LoadWalletEvent value)? loadWallet,
    TResult? Function(CreateMainWalletEvent value)? createMainWallet,
    TResult? Function(UpdateBankDetailsEvent value)? updateBankDetails,
    TResult? Function(InitiateTopUpEvent value)? initiateTopUp,
    TResult? Function(ConfirmTopUpEvent value)? confirmTopUp,
    TResult? Function(ProcessDonationEvent value)? processDonation,
    TResult? Function(RequestWalletWithdrawalEvent value)? requestWithdrawal,
    TResult? Function(LoadTransactionsEvent value)? loadTransactions,
    TResult? Function(ClearWalletTransientEvent value)? clearTransient,
  }) {
    return createMainWallet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadWalletsEvent value)? loadWallets,
    TResult Function(LoadMainWalletEvent value)? loadMainWallet,
    TResult Function(LoadWalletEvent value)? loadWallet,
    TResult Function(CreateMainWalletEvent value)? createMainWallet,
    TResult Function(UpdateBankDetailsEvent value)? updateBankDetails,
    TResult Function(InitiateTopUpEvent value)? initiateTopUp,
    TResult Function(ConfirmTopUpEvent value)? confirmTopUp,
    TResult Function(ProcessDonationEvent value)? processDonation,
    TResult Function(RequestWalletWithdrawalEvent value)? requestWithdrawal,
    TResult Function(LoadTransactionsEvent value)? loadTransactions,
    TResult Function(ClearWalletTransientEvent value)? clearTransient,
    required TResult orElse(),
  }) {
    if (createMainWallet != null) {
      return createMainWallet(this);
    }
    return orElse();
  }
}

abstract class CreateMainWalletEvent implements WalletEvent {
  const factory CreateMainWalletEvent({required final String userId}) =
      _$CreateMainWalletEventImpl;

  String get userId;

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateMainWalletEventImplCopyWith<_$CreateMainWalletEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateBankDetailsEventImplCopyWith<$Res> {
  factory _$$UpdateBankDetailsEventImplCopyWith(
          _$UpdateBankDetailsEventImpl value,
          $Res Function(_$UpdateBankDetailsEventImpl) then) =
      __$$UpdateBankDetailsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String walletId,
      String bankName,
      String bankAccountNumber,
      String bankAccountHolder});
}

/// @nodoc
class __$$UpdateBankDetailsEventImplCopyWithImpl<$Res>
    extends _$WalletEventCopyWithImpl<$Res, _$UpdateBankDetailsEventImpl>
    implements _$$UpdateBankDetailsEventImplCopyWith<$Res> {
  __$$UpdateBankDetailsEventImplCopyWithImpl(
      _$UpdateBankDetailsEventImpl _value,
      $Res Function(_$UpdateBankDetailsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletId = null,
    Object? bankName = null,
    Object? bankAccountNumber = null,
    Object? bankAccountHolder = null,
  }) {
    return _then(_$UpdateBankDetailsEventImpl(
      walletId: null == walletId
          ? _value.walletId
          : walletId // ignore: cast_nullable_to_non_nullable
              as String,
      bankName: null == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
      bankAccountNumber: null == bankAccountNumber
          ? _value.bankAccountNumber
          : bankAccountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      bankAccountHolder: null == bankAccountHolder
          ? _value.bankAccountHolder
          : bankAccountHolder // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateBankDetailsEventImpl implements UpdateBankDetailsEvent {
  const _$UpdateBankDetailsEventImpl(
      {required this.walletId,
      required this.bankName,
      required this.bankAccountNumber,
      required this.bankAccountHolder});

  @override
  final String walletId;
  @override
  final String bankName;
  @override
  final String bankAccountNumber;
  @override
  final String bankAccountHolder;

  @override
  String toString() {
    return 'WalletEvent.updateBankDetails(walletId: $walletId, bankName: $bankName, bankAccountNumber: $bankAccountNumber, bankAccountHolder: $bankAccountHolder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateBankDetailsEventImpl &&
            (identical(other.walletId, walletId) ||
                other.walletId == walletId) &&
            (identical(other.bankName, bankName) ||
                other.bankName == bankName) &&
            (identical(other.bankAccountNumber, bankAccountNumber) ||
                other.bankAccountNumber == bankAccountNumber) &&
            (identical(other.bankAccountHolder, bankAccountHolder) ||
                other.bankAccountHolder == bankAccountHolder));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, walletId, bankName, bankAccountNumber, bankAccountHolder);

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateBankDetailsEventImplCopyWith<_$UpdateBankDetailsEventImpl>
      get copyWith => __$$UpdateBankDetailsEventImplCopyWithImpl<
          _$UpdateBankDetailsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loadWallets,
    required TResult Function(String userId) loadMainWallet,
    required TResult Function(String walletId) loadWallet,
    required TResult Function(String userId) createMainWallet,
    required TResult Function(String walletId, String bankName,
            String bankAccountNumber, String bankAccountHolder)
        updateBankDetails,
    required TResult Function(
            String walletId, double amount, String? paymentMethod)
        initiateTopUp,
    required TResult Function(String transactionId, String paymentId)
        confirmTopUp,
    required TResult Function(String fromWalletId, String toCampaignId,
            double amount, String? donationId)
        processDonation,
    required TResult Function(String walletId, double amount) requestWithdrawal,
    required TResult Function(String walletId, int limit, int offset)
        loadTransactions,
    required TResult Function() clearTransient,
  }) {
    return updateBankDetails(
        walletId, bankName, bankAccountNumber, bankAccountHolder);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? loadWallets,
    TResult? Function(String userId)? loadMainWallet,
    TResult? Function(String walletId)? loadWallet,
    TResult? Function(String userId)? createMainWallet,
    TResult? Function(String walletId, String bankName,
            String bankAccountNumber, String bankAccountHolder)?
        updateBankDetails,
    TResult? Function(String walletId, double amount, String? paymentMethod)?
        initiateTopUp,
    TResult? Function(String transactionId, String paymentId)? confirmTopUp,
    TResult? Function(String fromWalletId, String toCampaignId, double amount,
            String? donationId)?
        processDonation,
    TResult? Function(String walletId, double amount)? requestWithdrawal,
    TResult? Function(String walletId, int limit, int offset)? loadTransactions,
    TResult? Function()? clearTransient,
  }) {
    return updateBankDetails?.call(
        walletId, bankName, bankAccountNumber, bankAccountHolder);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadWallets,
    TResult Function(String userId)? loadMainWallet,
    TResult Function(String walletId)? loadWallet,
    TResult Function(String userId)? createMainWallet,
    TResult Function(String walletId, String bankName, String bankAccountNumber,
            String bankAccountHolder)?
        updateBankDetails,
    TResult Function(String walletId, double amount, String? paymentMethod)?
        initiateTopUp,
    TResult Function(String transactionId, String paymentId)? confirmTopUp,
    TResult Function(String fromWalletId, String toCampaignId, double amount,
            String? donationId)?
        processDonation,
    TResult Function(String walletId, double amount)? requestWithdrawal,
    TResult Function(String walletId, int limit, int offset)? loadTransactions,
    TResult Function()? clearTransient,
    required TResult orElse(),
  }) {
    if (updateBankDetails != null) {
      return updateBankDetails(
          walletId, bankName, bankAccountNumber, bankAccountHolder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadWalletsEvent value) loadWallets,
    required TResult Function(LoadMainWalletEvent value) loadMainWallet,
    required TResult Function(LoadWalletEvent value) loadWallet,
    required TResult Function(CreateMainWalletEvent value) createMainWallet,
    required TResult Function(UpdateBankDetailsEvent value) updateBankDetails,
    required TResult Function(InitiateTopUpEvent value) initiateTopUp,
    required TResult Function(ConfirmTopUpEvent value) confirmTopUp,
    required TResult Function(ProcessDonationEvent value) processDonation,
    required TResult Function(RequestWalletWithdrawalEvent value)
        requestWithdrawal,
    required TResult Function(LoadTransactionsEvent value) loadTransactions,
    required TResult Function(ClearWalletTransientEvent value) clearTransient,
  }) {
    return updateBankDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadWalletsEvent value)? loadWallets,
    TResult? Function(LoadMainWalletEvent value)? loadMainWallet,
    TResult? Function(LoadWalletEvent value)? loadWallet,
    TResult? Function(CreateMainWalletEvent value)? createMainWallet,
    TResult? Function(UpdateBankDetailsEvent value)? updateBankDetails,
    TResult? Function(InitiateTopUpEvent value)? initiateTopUp,
    TResult? Function(ConfirmTopUpEvent value)? confirmTopUp,
    TResult? Function(ProcessDonationEvent value)? processDonation,
    TResult? Function(RequestWalletWithdrawalEvent value)? requestWithdrawal,
    TResult? Function(LoadTransactionsEvent value)? loadTransactions,
    TResult? Function(ClearWalletTransientEvent value)? clearTransient,
  }) {
    return updateBankDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadWalletsEvent value)? loadWallets,
    TResult Function(LoadMainWalletEvent value)? loadMainWallet,
    TResult Function(LoadWalletEvent value)? loadWallet,
    TResult Function(CreateMainWalletEvent value)? createMainWallet,
    TResult Function(UpdateBankDetailsEvent value)? updateBankDetails,
    TResult Function(InitiateTopUpEvent value)? initiateTopUp,
    TResult Function(ConfirmTopUpEvent value)? confirmTopUp,
    TResult Function(ProcessDonationEvent value)? processDonation,
    TResult Function(RequestWalletWithdrawalEvent value)? requestWithdrawal,
    TResult Function(LoadTransactionsEvent value)? loadTransactions,
    TResult Function(ClearWalletTransientEvent value)? clearTransient,
    required TResult orElse(),
  }) {
    if (updateBankDetails != null) {
      return updateBankDetails(this);
    }
    return orElse();
  }
}

abstract class UpdateBankDetailsEvent implements WalletEvent {
  const factory UpdateBankDetailsEvent(
      {required final String walletId,
      required final String bankName,
      required final String bankAccountNumber,
      required final String bankAccountHolder}) = _$UpdateBankDetailsEventImpl;

  String get walletId;
  String get bankName;
  String get bankAccountNumber;
  String get bankAccountHolder;

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateBankDetailsEventImplCopyWith<_$UpdateBankDetailsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitiateTopUpEventImplCopyWith<$Res> {
  factory _$$InitiateTopUpEventImplCopyWith(_$InitiateTopUpEventImpl value,
          $Res Function(_$InitiateTopUpEventImpl) then) =
      __$$InitiateTopUpEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String walletId, double amount, String? paymentMethod});
}

/// @nodoc
class __$$InitiateTopUpEventImplCopyWithImpl<$Res>
    extends _$WalletEventCopyWithImpl<$Res, _$InitiateTopUpEventImpl>
    implements _$$InitiateTopUpEventImplCopyWith<$Res> {
  __$$InitiateTopUpEventImplCopyWithImpl(_$InitiateTopUpEventImpl _value,
      $Res Function(_$InitiateTopUpEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletId = null,
    Object? amount = null,
    Object? paymentMethod = freezed,
  }) {
    return _then(_$InitiateTopUpEventImpl(
      walletId: null == walletId
          ? _value.walletId
          : walletId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InitiateTopUpEventImpl implements InitiateTopUpEvent {
  const _$InitiateTopUpEventImpl(
      {required this.walletId, required this.amount, this.paymentMethod});

  @override
  final String walletId;
  @override
  final double amount;
  @override
  final String? paymentMethod;

  @override
  String toString() {
    return 'WalletEvent.initiateTopUp(walletId: $walletId, amount: $amount, paymentMethod: $paymentMethod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitiateTopUpEventImpl &&
            (identical(other.walletId, walletId) ||
                other.walletId == walletId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod));
  }

  @override
  int get hashCode => Object.hash(runtimeType, walletId, amount, paymentMethod);

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitiateTopUpEventImplCopyWith<_$InitiateTopUpEventImpl> get copyWith =>
      __$$InitiateTopUpEventImplCopyWithImpl<_$InitiateTopUpEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loadWallets,
    required TResult Function(String userId) loadMainWallet,
    required TResult Function(String walletId) loadWallet,
    required TResult Function(String userId) createMainWallet,
    required TResult Function(String walletId, String bankName,
            String bankAccountNumber, String bankAccountHolder)
        updateBankDetails,
    required TResult Function(
            String walletId, double amount, String? paymentMethod)
        initiateTopUp,
    required TResult Function(String transactionId, String paymentId)
        confirmTopUp,
    required TResult Function(String fromWalletId, String toCampaignId,
            double amount, String? donationId)
        processDonation,
    required TResult Function(String walletId, double amount) requestWithdrawal,
    required TResult Function(String walletId, int limit, int offset)
        loadTransactions,
    required TResult Function() clearTransient,
  }) {
    return initiateTopUp(walletId, amount, paymentMethod);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? loadWallets,
    TResult? Function(String userId)? loadMainWallet,
    TResult? Function(String walletId)? loadWallet,
    TResult? Function(String userId)? createMainWallet,
    TResult? Function(String walletId, String bankName,
            String bankAccountNumber, String bankAccountHolder)?
        updateBankDetails,
    TResult? Function(String walletId, double amount, String? paymentMethod)?
        initiateTopUp,
    TResult? Function(String transactionId, String paymentId)? confirmTopUp,
    TResult? Function(String fromWalletId, String toCampaignId, double amount,
            String? donationId)?
        processDonation,
    TResult? Function(String walletId, double amount)? requestWithdrawal,
    TResult? Function(String walletId, int limit, int offset)? loadTransactions,
    TResult? Function()? clearTransient,
  }) {
    return initiateTopUp?.call(walletId, amount, paymentMethod);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadWallets,
    TResult Function(String userId)? loadMainWallet,
    TResult Function(String walletId)? loadWallet,
    TResult Function(String userId)? createMainWallet,
    TResult Function(String walletId, String bankName, String bankAccountNumber,
            String bankAccountHolder)?
        updateBankDetails,
    TResult Function(String walletId, double amount, String? paymentMethod)?
        initiateTopUp,
    TResult Function(String transactionId, String paymentId)? confirmTopUp,
    TResult Function(String fromWalletId, String toCampaignId, double amount,
            String? donationId)?
        processDonation,
    TResult Function(String walletId, double amount)? requestWithdrawal,
    TResult Function(String walletId, int limit, int offset)? loadTransactions,
    TResult Function()? clearTransient,
    required TResult orElse(),
  }) {
    if (initiateTopUp != null) {
      return initiateTopUp(walletId, amount, paymentMethod);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadWalletsEvent value) loadWallets,
    required TResult Function(LoadMainWalletEvent value) loadMainWallet,
    required TResult Function(LoadWalletEvent value) loadWallet,
    required TResult Function(CreateMainWalletEvent value) createMainWallet,
    required TResult Function(UpdateBankDetailsEvent value) updateBankDetails,
    required TResult Function(InitiateTopUpEvent value) initiateTopUp,
    required TResult Function(ConfirmTopUpEvent value) confirmTopUp,
    required TResult Function(ProcessDonationEvent value) processDonation,
    required TResult Function(RequestWalletWithdrawalEvent value)
        requestWithdrawal,
    required TResult Function(LoadTransactionsEvent value) loadTransactions,
    required TResult Function(ClearWalletTransientEvent value) clearTransient,
  }) {
    return initiateTopUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadWalletsEvent value)? loadWallets,
    TResult? Function(LoadMainWalletEvent value)? loadMainWallet,
    TResult? Function(LoadWalletEvent value)? loadWallet,
    TResult? Function(CreateMainWalletEvent value)? createMainWallet,
    TResult? Function(UpdateBankDetailsEvent value)? updateBankDetails,
    TResult? Function(InitiateTopUpEvent value)? initiateTopUp,
    TResult? Function(ConfirmTopUpEvent value)? confirmTopUp,
    TResult? Function(ProcessDonationEvent value)? processDonation,
    TResult? Function(RequestWalletWithdrawalEvent value)? requestWithdrawal,
    TResult? Function(LoadTransactionsEvent value)? loadTransactions,
    TResult? Function(ClearWalletTransientEvent value)? clearTransient,
  }) {
    return initiateTopUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadWalletsEvent value)? loadWallets,
    TResult Function(LoadMainWalletEvent value)? loadMainWallet,
    TResult Function(LoadWalletEvent value)? loadWallet,
    TResult Function(CreateMainWalletEvent value)? createMainWallet,
    TResult Function(UpdateBankDetailsEvent value)? updateBankDetails,
    TResult Function(InitiateTopUpEvent value)? initiateTopUp,
    TResult Function(ConfirmTopUpEvent value)? confirmTopUp,
    TResult Function(ProcessDonationEvent value)? processDonation,
    TResult Function(RequestWalletWithdrawalEvent value)? requestWithdrawal,
    TResult Function(LoadTransactionsEvent value)? loadTransactions,
    TResult Function(ClearWalletTransientEvent value)? clearTransient,
    required TResult orElse(),
  }) {
    if (initiateTopUp != null) {
      return initiateTopUp(this);
    }
    return orElse();
  }
}

abstract class InitiateTopUpEvent implements WalletEvent {
  const factory InitiateTopUpEvent(
      {required final String walletId,
      required final double amount,
      final String? paymentMethod}) = _$InitiateTopUpEventImpl;

  String get walletId;
  double get amount;
  String? get paymentMethod;

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitiateTopUpEventImplCopyWith<_$InitiateTopUpEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConfirmTopUpEventImplCopyWith<$Res> {
  factory _$$ConfirmTopUpEventImplCopyWith(_$ConfirmTopUpEventImpl value,
          $Res Function(_$ConfirmTopUpEventImpl) then) =
      __$$ConfirmTopUpEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String transactionId, String paymentId});
}

/// @nodoc
class __$$ConfirmTopUpEventImplCopyWithImpl<$Res>
    extends _$WalletEventCopyWithImpl<$Res, _$ConfirmTopUpEventImpl>
    implements _$$ConfirmTopUpEventImplCopyWith<$Res> {
  __$$ConfirmTopUpEventImplCopyWithImpl(_$ConfirmTopUpEventImpl _value,
      $Res Function(_$ConfirmTopUpEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transactionId = null,
    Object? paymentId = null,
  }) {
    return _then(_$ConfirmTopUpEventImpl(
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentId: null == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConfirmTopUpEventImpl implements ConfirmTopUpEvent {
  const _$ConfirmTopUpEventImpl(
      {required this.transactionId, required this.paymentId});

  @override
  final String transactionId;
  @override
  final String paymentId;

  @override
  String toString() {
    return 'WalletEvent.confirmTopUp(transactionId: $transactionId, paymentId: $paymentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmTopUpEventImpl &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transactionId, paymentId);

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmTopUpEventImplCopyWith<_$ConfirmTopUpEventImpl> get copyWith =>
      __$$ConfirmTopUpEventImplCopyWithImpl<_$ConfirmTopUpEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loadWallets,
    required TResult Function(String userId) loadMainWallet,
    required TResult Function(String walletId) loadWallet,
    required TResult Function(String userId) createMainWallet,
    required TResult Function(String walletId, String bankName,
            String bankAccountNumber, String bankAccountHolder)
        updateBankDetails,
    required TResult Function(
            String walletId, double amount, String? paymentMethod)
        initiateTopUp,
    required TResult Function(String transactionId, String paymentId)
        confirmTopUp,
    required TResult Function(String fromWalletId, String toCampaignId,
            double amount, String? donationId)
        processDonation,
    required TResult Function(String walletId, double amount) requestWithdrawal,
    required TResult Function(String walletId, int limit, int offset)
        loadTransactions,
    required TResult Function() clearTransient,
  }) {
    return confirmTopUp(transactionId, paymentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? loadWallets,
    TResult? Function(String userId)? loadMainWallet,
    TResult? Function(String walletId)? loadWallet,
    TResult? Function(String userId)? createMainWallet,
    TResult? Function(String walletId, String bankName,
            String bankAccountNumber, String bankAccountHolder)?
        updateBankDetails,
    TResult? Function(String walletId, double amount, String? paymentMethod)?
        initiateTopUp,
    TResult? Function(String transactionId, String paymentId)? confirmTopUp,
    TResult? Function(String fromWalletId, String toCampaignId, double amount,
            String? donationId)?
        processDonation,
    TResult? Function(String walletId, double amount)? requestWithdrawal,
    TResult? Function(String walletId, int limit, int offset)? loadTransactions,
    TResult? Function()? clearTransient,
  }) {
    return confirmTopUp?.call(transactionId, paymentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadWallets,
    TResult Function(String userId)? loadMainWallet,
    TResult Function(String walletId)? loadWallet,
    TResult Function(String userId)? createMainWallet,
    TResult Function(String walletId, String bankName, String bankAccountNumber,
            String bankAccountHolder)?
        updateBankDetails,
    TResult Function(String walletId, double amount, String? paymentMethod)?
        initiateTopUp,
    TResult Function(String transactionId, String paymentId)? confirmTopUp,
    TResult Function(String fromWalletId, String toCampaignId, double amount,
            String? donationId)?
        processDonation,
    TResult Function(String walletId, double amount)? requestWithdrawal,
    TResult Function(String walletId, int limit, int offset)? loadTransactions,
    TResult Function()? clearTransient,
    required TResult orElse(),
  }) {
    if (confirmTopUp != null) {
      return confirmTopUp(transactionId, paymentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadWalletsEvent value) loadWallets,
    required TResult Function(LoadMainWalletEvent value) loadMainWallet,
    required TResult Function(LoadWalletEvent value) loadWallet,
    required TResult Function(CreateMainWalletEvent value) createMainWallet,
    required TResult Function(UpdateBankDetailsEvent value) updateBankDetails,
    required TResult Function(InitiateTopUpEvent value) initiateTopUp,
    required TResult Function(ConfirmTopUpEvent value) confirmTopUp,
    required TResult Function(ProcessDonationEvent value) processDonation,
    required TResult Function(RequestWalletWithdrawalEvent value)
        requestWithdrawal,
    required TResult Function(LoadTransactionsEvent value) loadTransactions,
    required TResult Function(ClearWalletTransientEvent value) clearTransient,
  }) {
    return confirmTopUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadWalletsEvent value)? loadWallets,
    TResult? Function(LoadMainWalletEvent value)? loadMainWallet,
    TResult? Function(LoadWalletEvent value)? loadWallet,
    TResult? Function(CreateMainWalletEvent value)? createMainWallet,
    TResult? Function(UpdateBankDetailsEvent value)? updateBankDetails,
    TResult? Function(InitiateTopUpEvent value)? initiateTopUp,
    TResult? Function(ConfirmTopUpEvent value)? confirmTopUp,
    TResult? Function(ProcessDonationEvent value)? processDonation,
    TResult? Function(RequestWalletWithdrawalEvent value)? requestWithdrawal,
    TResult? Function(LoadTransactionsEvent value)? loadTransactions,
    TResult? Function(ClearWalletTransientEvent value)? clearTransient,
  }) {
    return confirmTopUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadWalletsEvent value)? loadWallets,
    TResult Function(LoadMainWalletEvent value)? loadMainWallet,
    TResult Function(LoadWalletEvent value)? loadWallet,
    TResult Function(CreateMainWalletEvent value)? createMainWallet,
    TResult Function(UpdateBankDetailsEvent value)? updateBankDetails,
    TResult Function(InitiateTopUpEvent value)? initiateTopUp,
    TResult Function(ConfirmTopUpEvent value)? confirmTopUp,
    TResult Function(ProcessDonationEvent value)? processDonation,
    TResult Function(RequestWalletWithdrawalEvent value)? requestWithdrawal,
    TResult Function(LoadTransactionsEvent value)? loadTransactions,
    TResult Function(ClearWalletTransientEvent value)? clearTransient,
    required TResult orElse(),
  }) {
    if (confirmTopUp != null) {
      return confirmTopUp(this);
    }
    return orElse();
  }
}

abstract class ConfirmTopUpEvent implements WalletEvent {
  const factory ConfirmTopUpEvent(
      {required final String transactionId,
      required final String paymentId}) = _$ConfirmTopUpEventImpl;

  String get transactionId;
  String get paymentId;

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConfirmTopUpEventImplCopyWith<_$ConfirmTopUpEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProcessDonationEventImplCopyWith<$Res> {
  factory _$$ProcessDonationEventImplCopyWith(_$ProcessDonationEventImpl value,
          $Res Function(_$ProcessDonationEventImpl) then) =
      __$$ProcessDonationEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String fromWalletId,
      String toCampaignId,
      double amount,
      String? donationId});
}

/// @nodoc
class __$$ProcessDonationEventImplCopyWithImpl<$Res>
    extends _$WalletEventCopyWithImpl<$Res, _$ProcessDonationEventImpl>
    implements _$$ProcessDonationEventImplCopyWith<$Res> {
  __$$ProcessDonationEventImplCopyWithImpl(_$ProcessDonationEventImpl _value,
      $Res Function(_$ProcessDonationEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromWalletId = null,
    Object? toCampaignId = null,
    Object? amount = null,
    Object? donationId = freezed,
  }) {
    return _then(_$ProcessDonationEventImpl(
      fromWalletId: null == fromWalletId
          ? _value.fromWalletId
          : fromWalletId // ignore: cast_nullable_to_non_nullable
              as String,
      toCampaignId: null == toCampaignId
          ? _value.toCampaignId
          : toCampaignId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      donationId: freezed == donationId
          ? _value.donationId
          : donationId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ProcessDonationEventImpl implements ProcessDonationEvent {
  const _$ProcessDonationEventImpl(
      {required this.fromWalletId,
      required this.toCampaignId,
      required this.amount,
      this.donationId});

  @override
  final String fromWalletId;
  @override
  final String toCampaignId;
  @override
  final double amount;
  @override
  final String? donationId;

  @override
  String toString() {
    return 'WalletEvent.processDonation(fromWalletId: $fromWalletId, toCampaignId: $toCampaignId, amount: $amount, donationId: $donationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProcessDonationEventImpl &&
            (identical(other.fromWalletId, fromWalletId) ||
                other.fromWalletId == fromWalletId) &&
            (identical(other.toCampaignId, toCampaignId) ||
                other.toCampaignId == toCampaignId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.donationId, donationId) ||
                other.donationId == donationId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, fromWalletId, toCampaignId, amount, donationId);

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProcessDonationEventImplCopyWith<_$ProcessDonationEventImpl>
      get copyWith =>
          __$$ProcessDonationEventImplCopyWithImpl<_$ProcessDonationEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loadWallets,
    required TResult Function(String userId) loadMainWallet,
    required TResult Function(String walletId) loadWallet,
    required TResult Function(String userId) createMainWallet,
    required TResult Function(String walletId, String bankName,
            String bankAccountNumber, String bankAccountHolder)
        updateBankDetails,
    required TResult Function(
            String walletId, double amount, String? paymentMethod)
        initiateTopUp,
    required TResult Function(String transactionId, String paymentId)
        confirmTopUp,
    required TResult Function(String fromWalletId, String toCampaignId,
            double amount, String? donationId)
        processDonation,
    required TResult Function(String walletId, double amount) requestWithdrawal,
    required TResult Function(String walletId, int limit, int offset)
        loadTransactions,
    required TResult Function() clearTransient,
  }) {
    return processDonation(fromWalletId, toCampaignId, amount, donationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? loadWallets,
    TResult? Function(String userId)? loadMainWallet,
    TResult? Function(String walletId)? loadWallet,
    TResult? Function(String userId)? createMainWallet,
    TResult? Function(String walletId, String bankName,
            String bankAccountNumber, String bankAccountHolder)?
        updateBankDetails,
    TResult? Function(String walletId, double amount, String? paymentMethod)?
        initiateTopUp,
    TResult? Function(String transactionId, String paymentId)? confirmTopUp,
    TResult? Function(String fromWalletId, String toCampaignId, double amount,
            String? donationId)?
        processDonation,
    TResult? Function(String walletId, double amount)? requestWithdrawal,
    TResult? Function(String walletId, int limit, int offset)? loadTransactions,
    TResult? Function()? clearTransient,
  }) {
    return processDonation?.call(
        fromWalletId, toCampaignId, amount, donationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadWallets,
    TResult Function(String userId)? loadMainWallet,
    TResult Function(String walletId)? loadWallet,
    TResult Function(String userId)? createMainWallet,
    TResult Function(String walletId, String bankName, String bankAccountNumber,
            String bankAccountHolder)?
        updateBankDetails,
    TResult Function(String walletId, double amount, String? paymentMethod)?
        initiateTopUp,
    TResult Function(String transactionId, String paymentId)? confirmTopUp,
    TResult Function(String fromWalletId, String toCampaignId, double amount,
            String? donationId)?
        processDonation,
    TResult Function(String walletId, double amount)? requestWithdrawal,
    TResult Function(String walletId, int limit, int offset)? loadTransactions,
    TResult Function()? clearTransient,
    required TResult orElse(),
  }) {
    if (processDonation != null) {
      return processDonation(fromWalletId, toCampaignId, amount, donationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadWalletsEvent value) loadWallets,
    required TResult Function(LoadMainWalletEvent value) loadMainWallet,
    required TResult Function(LoadWalletEvent value) loadWallet,
    required TResult Function(CreateMainWalletEvent value) createMainWallet,
    required TResult Function(UpdateBankDetailsEvent value) updateBankDetails,
    required TResult Function(InitiateTopUpEvent value) initiateTopUp,
    required TResult Function(ConfirmTopUpEvent value) confirmTopUp,
    required TResult Function(ProcessDonationEvent value) processDonation,
    required TResult Function(RequestWalletWithdrawalEvent value)
        requestWithdrawal,
    required TResult Function(LoadTransactionsEvent value) loadTransactions,
    required TResult Function(ClearWalletTransientEvent value) clearTransient,
  }) {
    return processDonation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadWalletsEvent value)? loadWallets,
    TResult? Function(LoadMainWalletEvent value)? loadMainWallet,
    TResult? Function(LoadWalletEvent value)? loadWallet,
    TResult? Function(CreateMainWalletEvent value)? createMainWallet,
    TResult? Function(UpdateBankDetailsEvent value)? updateBankDetails,
    TResult? Function(InitiateTopUpEvent value)? initiateTopUp,
    TResult? Function(ConfirmTopUpEvent value)? confirmTopUp,
    TResult? Function(ProcessDonationEvent value)? processDonation,
    TResult? Function(RequestWalletWithdrawalEvent value)? requestWithdrawal,
    TResult? Function(LoadTransactionsEvent value)? loadTransactions,
    TResult? Function(ClearWalletTransientEvent value)? clearTransient,
  }) {
    return processDonation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadWalletsEvent value)? loadWallets,
    TResult Function(LoadMainWalletEvent value)? loadMainWallet,
    TResult Function(LoadWalletEvent value)? loadWallet,
    TResult Function(CreateMainWalletEvent value)? createMainWallet,
    TResult Function(UpdateBankDetailsEvent value)? updateBankDetails,
    TResult Function(InitiateTopUpEvent value)? initiateTopUp,
    TResult Function(ConfirmTopUpEvent value)? confirmTopUp,
    TResult Function(ProcessDonationEvent value)? processDonation,
    TResult Function(RequestWalletWithdrawalEvent value)? requestWithdrawal,
    TResult Function(LoadTransactionsEvent value)? loadTransactions,
    TResult Function(ClearWalletTransientEvent value)? clearTransient,
    required TResult orElse(),
  }) {
    if (processDonation != null) {
      return processDonation(this);
    }
    return orElse();
  }
}

abstract class ProcessDonationEvent implements WalletEvent {
  const factory ProcessDonationEvent(
      {required final String fromWalletId,
      required final String toCampaignId,
      required final double amount,
      final String? donationId}) = _$ProcessDonationEventImpl;

  String get fromWalletId;
  String get toCampaignId;
  double get amount;
  String? get donationId;

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProcessDonationEventImplCopyWith<_$ProcessDonationEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RequestWalletWithdrawalEventImplCopyWith<$Res> {
  factory _$$RequestWalletWithdrawalEventImplCopyWith(
          _$RequestWalletWithdrawalEventImpl value,
          $Res Function(_$RequestWalletWithdrawalEventImpl) then) =
      __$$RequestWalletWithdrawalEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String walletId, double amount});
}

/// @nodoc
class __$$RequestWalletWithdrawalEventImplCopyWithImpl<$Res>
    extends _$WalletEventCopyWithImpl<$Res, _$RequestWalletWithdrawalEventImpl>
    implements _$$RequestWalletWithdrawalEventImplCopyWith<$Res> {
  __$$RequestWalletWithdrawalEventImplCopyWithImpl(
      _$RequestWalletWithdrawalEventImpl _value,
      $Res Function(_$RequestWalletWithdrawalEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletId = null,
    Object? amount = null,
  }) {
    return _then(_$RequestWalletWithdrawalEventImpl(
      walletId: null == walletId
          ? _value.walletId
          : walletId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$RequestWalletWithdrawalEventImpl
    implements RequestWalletWithdrawalEvent {
  const _$RequestWalletWithdrawalEventImpl(
      {required this.walletId, required this.amount});

  @override
  final String walletId;
  @override
  final double amount;

  @override
  String toString() {
    return 'WalletEvent.requestWithdrawal(walletId: $walletId, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestWalletWithdrawalEventImpl &&
            (identical(other.walletId, walletId) ||
                other.walletId == walletId) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, walletId, amount);

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestWalletWithdrawalEventImplCopyWith<
          _$RequestWalletWithdrawalEventImpl>
      get copyWith => __$$RequestWalletWithdrawalEventImplCopyWithImpl<
          _$RequestWalletWithdrawalEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loadWallets,
    required TResult Function(String userId) loadMainWallet,
    required TResult Function(String walletId) loadWallet,
    required TResult Function(String userId) createMainWallet,
    required TResult Function(String walletId, String bankName,
            String bankAccountNumber, String bankAccountHolder)
        updateBankDetails,
    required TResult Function(
            String walletId, double amount, String? paymentMethod)
        initiateTopUp,
    required TResult Function(String transactionId, String paymentId)
        confirmTopUp,
    required TResult Function(String fromWalletId, String toCampaignId,
            double amount, String? donationId)
        processDonation,
    required TResult Function(String walletId, double amount) requestWithdrawal,
    required TResult Function(String walletId, int limit, int offset)
        loadTransactions,
    required TResult Function() clearTransient,
  }) {
    return requestWithdrawal(walletId, amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? loadWallets,
    TResult? Function(String userId)? loadMainWallet,
    TResult? Function(String walletId)? loadWallet,
    TResult? Function(String userId)? createMainWallet,
    TResult? Function(String walletId, String bankName,
            String bankAccountNumber, String bankAccountHolder)?
        updateBankDetails,
    TResult? Function(String walletId, double amount, String? paymentMethod)?
        initiateTopUp,
    TResult? Function(String transactionId, String paymentId)? confirmTopUp,
    TResult? Function(String fromWalletId, String toCampaignId, double amount,
            String? donationId)?
        processDonation,
    TResult? Function(String walletId, double amount)? requestWithdrawal,
    TResult? Function(String walletId, int limit, int offset)? loadTransactions,
    TResult? Function()? clearTransient,
  }) {
    return requestWithdrawal?.call(walletId, amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadWallets,
    TResult Function(String userId)? loadMainWallet,
    TResult Function(String walletId)? loadWallet,
    TResult Function(String userId)? createMainWallet,
    TResult Function(String walletId, String bankName, String bankAccountNumber,
            String bankAccountHolder)?
        updateBankDetails,
    TResult Function(String walletId, double amount, String? paymentMethod)?
        initiateTopUp,
    TResult Function(String transactionId, String paymentId)? confirmTopUp,
    TResult Function(String fromWalletId, String toCampaignId, double amount,
            String? donationId)?
        processDonation,
    TResult Function(String walletId, double amount)? requestWithdrawal,
    TResult Function(String walletId, int limit, int offset)? loadTransactions,
    TResult Function()? clearTransient,
    required TResult orElse(),
  }) {
    if (requestWithdrawal != null) {
      return requestWithdrawal(walletId, amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadWalletsEvent value) loadWallets,
    required TResult Function(LoadMainWalletEvent value) loadMainWallet,
    required TResult Function(LoadWalletEvent value) loadWallet,
    required TResult Function(CreateMainWalletEvent value) createMainWallet,
    required TResult Function(UpdateBankDetailsEvent value) updateBankDetails,
    required TResult Function(InitiateTopUpEvent value) initiateTopUp,
    required TResult Function(ConfirmTopUpEvent value) confirmTopUp,
    required TResult Function(ProcessDonationEvent value) processDonation,
    required TResult Function(RequestWalletWithdrawalEvent value)
        requestWithdrawal,
    required TResult Function(LoadTransactionsEvent value) loadTransactions,
    required TResult Function(ClearWalletTransientEvent value) clearTransient,
  }) {
    return requestWithdrawal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadWalletsEvent value)? loadWallets,
    TResult? Function(LoadMainWalletEvent value)? loadMainWallet,
    TResult? Function(LoadWalletEvent value)? loadWallet,
    TResult? Function(CreateMainWalletEvent value)? createMainWallet,
    TResult? Function(UpdateBankDetailsEvent value)? updateBankDetails,
    TResult? Function(InitiateTopUpEvent value)? initiateTopUp,
    TResult? Function(ConfirmTopUpEvent value)? confirmTopUp,
    TResult? Function(ProcessDonationEvent value)? processDonation,
    TResult? Function(RequestWalletWithdrawalEvent value)? requestWithdrawal,
    TResult? Function(LoadTransactionsEvent value)? loadTransactions,
    TResult? Function(ClearWalletTransientEvent value)? clearTransient,
  }) {
    return requestWithdrawal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadWalletsEvent value)? loadWallets,
    TResult Function(LoadMainWalletEvent value)? loadMainWallet,
    TResult Function(LoadWalletEvent value)? loadWallet,
    TResult Function(CreateMainWalletEvent value)? createMainWallet,
    TResult Function(UpdateBankDetailsEvent value)? updateBankDetails,
    TResult Function(InitiateTopUpEvent value)? initiateTopUp,
    TResult Function(ConfirmTopUpEvent value)? confirmTopUp,
    TResult Function(ProcessDonationEvent value)? processDonation,
    TResult Function(RequestWalletWithdrawalEvent value)? requestWithdrawal,
    TResult Function(LoadTransactionsEvent value)? loadTransactions,
    TResult Function(ClearWalletTransientEvent value)? clearTransient,
    required TResult orElse(),
  }) {
    if (requestWithdrawal != null) {
      return requestWithdrawal(this);
    }
    return orElse();
  }
}

abstract class RequestWalletWithdrawalEvent implements WalletEvent {
  const factory RequestWalletWithdrawalEvent(
      {required final String walletId,
      required final double amount}) = _$RequestWalletWithdrawalEventImpl;

  String get walletId;
  double get amount;

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestWalletWithdrawalEventImplCopyWith<
          _$RequestWalletWithdrawalEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadTransactionsEventImplCopyWith<$Res> {
  factory _$$LoadTransactionsEventImplCopyWith(
          _$LoadTransactionsEventImpl value,
          $Res Function(_$LoadTransactionsEventImpl) then) =
      __$$LoadTransactionsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String walletId, int limit, int offset});
}

/// @nodoc
class __$$LoadTransactionsEventImplCopyWithImpl<$Res>
    extends _$WalletEventCopyWithImpl<$Res, _$LoadTransactionsEventImpl>
    implements _$$LoadTransactionsEventImplCopyWith<$Res> {
  __$$LoadTransactionsEventImplCopyWithImpl(_$LoadTransactionsEventImpl _value,
      $Res Function(_$LoadTransactionsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletId = null,
    Object? limit = null,
    Object? offset = null,
  }) {
    return _then(_$LoadTransactionsEventImpl(
      walletId: null == walletId
          ? _value.walletId
          : walletId // ignore: cast_nullable_to_non_nullable
              as String,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadTransactionsEventImpl implements LoadTransactionsEvent {
  const _$LoadTransactionsEventImpl(
      {required this.walletId, this.limit = 50, this.offset = 0});

  @override
  final String walletId;
  @override
  @JsonKey()
  final int limit;
  @override
  @JsonKey()
  final int offset;

  @override
  String toString() {
    return 'WalletEvent.loadTransactions(walletId: $walletId, limit: $limit, offset: $offset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadTransactionsEventImpl &&
            (identical(other.walletId, walletId) ||
                other.walletId == walletId) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, walletId, limit, offset);

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadTransactionsEventImplCopyWith<_$LoadTransactionsEventImpl>
      get copyWith => __$$LoadTransactionsEventImplCopyWithImpl<
          _$LoadTransactionsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loadWallets,
    required TResult Function(String userId) loadMainWallet,
    required TResult Function(String walletId) loadWallet,
    required TResult Function(String userId) createMainWallet,
    required TResult Function(String walletId, String bankName,
            String bankAccountNumber, String bankAccountHolder)
        updateBankDetails,
    required TResult Function(
            String walletId, double amount, String? paymentMethod)
        initiateTopUp,
    required TResult Function(String transactionId, String paymentId)
        confirmTopUp,
    required TResult Function(String fromWalletId, String toCampaignId,
            double amount, String? donationId)
        processDonation,
    required TResult Function(String walletId, double amount) requestWithdrawal,
    required TResult Function(String walletId, int limit, int offset)
        loadTransactions,
    required TResult Function() clearTransient,
  }) {
    return loadTransactions(walletId, limit, offset);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? loadWallets,
    TResult? Function(String userId)? loadMainWallet,
    TResult? Function(String walletId)? loadWallet,
    TResult? Function(String userId)? createMainWallet,
    TResult? Function(String walletId, String bankName,
            String bankAccountNumber, String bankAccountHolder)?
        updateBankDetails,
    TResult? Function(String walletId, double amount, String? paymentMethod)?
        initiateTopUp,
    TResult? Function(String transactionId, String paymentId)? confirmTopUp,
    TResult? Function(String fromWalletId, String toCampaignId, double amount,
            String? donationId)?
        processDonation,
    TResult? Function(String walletId, double amount)? requestWithdrawal,
    TResult? Function(String walletId, int limit, int offset)? loadTransactions,
    TResult? Function()? clearTransient,
  }) {
    return loadTransactions?.call(walletId, limit, offset);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadWallets,
    TResult Function(String userId)? loadMainWallet,
    TResult Function(String walletId)? loadWallet,
    TResult Function(String userId)? createMainWallet,
    TResult Function(String walletId, String bankName, String bankAccountNumber,
            String bankAccountHolder)?
        updateBankDetails,
    TResult Function(String walletId, double amount, String? paymentMethod)?
        initiateTopUp,
    TResult Function(String transactionId, String paymentId)? confirmTopUp,
    TResult Function(String fromWalletId, String toCampaignId, double amount,
            String? donationId)?
        processDonation,
    TResult Function(String walletId, double amount)? requestWithdrawal,
    TResult Function(String walletId, int limit, int offset)? loadTransactions,
    TResult Function()? clearTransient,
    required TResult orElse(),
  }) {
    if (loadTransactions != null) {
      return loadTransactions(walletId, limit, offset);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadWalletsEvent value) loadWallets,
    required TResult Function(LoadMainWalletEvent value) loadMainWallet,
    required TResult Function(LoadWalletEvent value) loadWallet,
    required TResult Function(CreateMainWalletEvent value) createMainWallet,
    required TResult Function(UpdateBankDetailsEvent value) updateBankDetails,
    required TResult Function(InitiateTopUpEvent value) initiateTopUp,
    required TResult Function(ConfirmTopUpEvent value) confirmTopUp,
    required TResult Function(ProcessDonationEvent value) processDonation,
    required TResult Function(RequestWalletWithdrawalEvent value)
        requestWithdrawal,
    required TResult Function(LoadTransactionsEvent value) loadTransactions,
    required TResult Function(ClearWalletTransientEvent value) clearTransient,
  }) {
    return loadTransactions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadWalletsEvent value)? loadWallets,
    TResult? Function(LoadMainWalletEvent value)? loadMainWallet,
    TResult? Function(LoadWalletEvent value)? loadWallet,
    TResult? Function(CreateMainWalletEvent value)? createMainWallet,
    TResult? Function(UpdateBankDetailsEvent value)? updateBankDetails,
    TResult? Function(InitiateTopUpEvent value)? initiateTopUp,
    TResult? Function(ConfirmTopUpEvent value)? confirmTopUp,
    TResult? Function(ProcessDonationEvent value)? processDonation,
    TResult? Function(RequestWalletWithdrawalEvent value)? requestWithdrawal,
    TResult? Function(LoadTransactionsEvent value)? loadTransactions,
    TResult? Function(ClearWalletTransientEvent value)? clearTransient,
  }) {
    return loadTransactions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadWalletsEvent value)? loadWallets,
    TResult Function(LoadMainWalletEvent value)? loadMainWallet,
    TResult Function(LoadWalletEvent value)? loadWallet,
    TResult Function(CreateMainWalletEvent value)? createMainWallet,
    TResult Function(UpdateBankDetailsEvent value)? updateBankDetails,
    TResult Function(InitiateTopUpEvent value)? initiateTopUp,
    TResult Function(ConfirmTopUpEvent value)? confirmTopUp,
    TResult Function(ProcessDonationEvent value)? processDonation,
    TResult Function(RequestWalletWithdrawalEvent value)? requestWithdrawal,
    TResult Function(LoadTransactionsEvent value)? loadTransactions,
    TResult Function(ClearWalletTransientEvent value)? clearTransient,
    required TResult orElse(),
  }) {
    if (loadTransactions != null) {
      return loadTransactions(this);
    }
    return orElse();
  }
}

abstract class LoadTransactionsEvent implements WalletEvent {
  const factory LoadTransactionsEvent(
      {required final String walletId,
      final int limit,
      final int offset}) = _$LoadTransactionsEventImpl;

  String get walletId;
  int get limit;
  int get offset;

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadTransactionsEventImplCopyWith<_$LoadTransactionsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearWalletTransientEventImplCopyWith<$Res> {
  factory _$$ClearWalletTransientEventImplCopyWith(
          _$ClearWalletTransientEventImpl value,
          $Res Function(_$ClearWalletTransientEventImpl) then) =
      __$$ClearWalletTransientEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearWalletTransientEventImplCopyWithImpl<$Res>
    extends _$WalletEventCopyWithImpl<$Res, _$ClearWalletTransientEventImpl>
    implements _$$ClearWalletTransientEventImplCopyWith<$Res> {
  __$$ClearWalletTransientEventImplCopyWithImpl(
      _$ClearWalletTransientEventImpl _value,
      $Res Function(_$ClearWalletTransientEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearWalletTransientEventImpl implements ClearWalletTransientEvent {
  const _$ClearWalletTransientEventImpl();

  @override
  String toString() {
    return 'WalletEvent.clearTransient()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearWalletTransientEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loadWallets,
    required TResult Function(String userId) loadMainWallet,
    required TResult Function(String walletId) loadWallet,
    required TResult Function(String userId) createMainWallet,
    required TResult Function(String walletId, String bankName,
            String bankAccountNumber, String bankAccountHolder)
        updateBankDetails,
    required TResult Function(
            String walletId, double amount, String? paymentMethod)
        initiateTopUp,
    required TResult Function(String transactionId, String paymentId)
        confirmTopUp,
    required TResult Function(String fromWalletId, String toCampaignId,
            double amount, String? donationId)
        processDonation,
    required TResult Function(String walletId, double amount) requestWithdrawal,
    required TResult Function(String walletId, int limit, int offset)
        loadTransactions,
    required TResult Function() clearTransient,
  }) {
    return clearTransient();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? loadWallets,
    TResult? Function(String userId)? loadMainWallet,
    TResult? Function(String walletId)? loadWallet,
    TResult? Function(String userId)? createMainWallet,
    TResult? Function(String walletId, String bankName,
            String bankAccountNumber, String bankAccountHolder)?
        updateBankDetails,
    TResult? Function(String walletId, double amount, String? paymentMethod)?
        initiateTopUp,
    TResult? Function(String transactionId, String paymentId)? confirmTopUp,
    TResult? Function(String fromWalletId, String toCampaignId, double amount,
            String? donationId)?
        processDonation,
    TResult? Function(String walletId, double amount)? requestWithdrawal,
    TResult? Function(String walletId, int limit, int offset)? loadTransactions,
    TResult? Function()? clearTransient,
  }) {
    return clearTransient?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadWallets,
    TResult Function(String userId)? loadMainWallet,
    TResult Function(String walletId)? loadWallet,
    TResult Function(String userId)? createMainWallet,
    TResult Function(String walletId, String bankName, String bankAccountNumber,
            String bankAccountHolder)?
        updateBankDetails,
    TResult Function(String walletId, double amount, String? paymentMethod)?
        initiateTopUp,
    TResult Function(String transactionId, String paymentId)? confirmTopUp,
    TResult Function(String fromWalletId, String toCampaignId, double amount,
            String? donationId)?
        processDonation,
    TResult Function(String walletId, double amount)? requestWithdrawal,
    TResult Function(String walletId, int limit, int offset)? loadTransactions,
    TResult Function()? clearTransient,
    required TResult orElse(),
  }) {
    if (clearTransient != null) {
      return clearTransient();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadWalletsEvent value) loadWallets,
    required TResult Function(LoadMainWalletEvent value) loadMainWallet,
    required TResult Function(LoadWalletEvent value) loadWallet,
    required TResult Function(CreateMainWalletEvent value) createMainWallet,
    required TResult Function(UpdateBankDetailsEvent value) updateBankDetails,
    required TResult Function(InitiateTopUpEvent value) initiateTopUp,
    required TResult Function(ConfirmTopUpEvent value) confirmTopUp,
    required TResult Function(ProcessDonationEvent value) processDonation,
    required TResult Function(RequestWalletWithdrawalEvent value)
        requestWithdrawal,
    required TResult Function(LoadTransactionsEvent value) loadTransactions,
    required TResult Function(ClearWalletTransientEvent value) clearTransient,
  }) {
    return clearTransient(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadWalletsEvent value)? loadWallets,
    TResult? Function(LoadMainWalletEvent value)? loadMainWallet,
    TResult? Function(LoadWalletEvent value)? loadWallet,
    TResult? Function(CreateMainWalletEvent value)? createMainWallet,
    TResult? Function(UpdateBankDetailsEvent value)? updateBankDetails,
    TResult? Function(InitiateTopUpEvent value)? initiateTopUp,
    TResult? Function(ConfirmTopUpEvent value)? confirmTopUp,
    TResult? Function(ProcessDonationEvent value)? processDonation,
    TResult? Function(RequestWalletWithdrawalEvent value)? requestWithdrawal,
    TResult? Function(LoadTransactionsEvent value)? loadTransactions,
    TResult? Function(ClearWalletTransientEvent value)? clearTransient,
  }) {
    return clearTransient?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadWalletsEvent value)? loadWallets,
    TResult Function(LoadMainWalletEvent value)? loadMainWallet,
    TResult Function(LoadWalletEvent value)? loadWallet,
    TResult Function(CreateMainWalletEvent value)? createMainWallet,
    TResult Function(UpdateBankDetailsEvent value)? updateBankDetails,
    TResult Function(InitiateTopUpEvent value)? initiateTopUp,
    TResult Function(ConfirmTopUpEvent value)? confirmTopUp,
    TResult Function(ProcessDonationEvent value)? processDonation,
    TResult Function(RequestWalletWithdrawalEvent value)? requestWithdrawal,
    TResult Function(LoadTransactionsEvent value)? loadTransactions,
    TResult Function(ClearWalletTransientEvent value)? clearTransient,
    required TResult orElse(),
  }) {
    if (clearTransient != null) {
      return clearTransient(this);
    }
    return orElse();
  }
}

abstract class ClearWalletTransientEvent implements WalletEvent {
  const factory ClearWalletTransientEvent() = _$ClearWalletTransientEventImpl;
}
