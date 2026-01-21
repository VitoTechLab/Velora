import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_event.freezed.dart';

@freezed
sealed class WalletEvent with _$WalletEvent {
  /// Load all wallets for user
  const factory WalletEvent.loadWallets({required String userId}) =
      LoadWalletsEvent;

  /// Load main wallet only
  const factory WalletEvent.loadMainWallet({required String userId}) =
      LoadMainWalletEvent;

  /// Load a specific wallet by ID
  const factory WalletEvent.loadWallet({required String walletId}) =
      LoadWalletEvent;

  /// Create main wallet for user (if doesn't exist)
  const factory WalletEvent.createMainWallet({required String userId}) =
      CreateMainWalletEvent;

  /// Update wallet bank details
  const factory WalletEvent.updateBankDetails({
    required String walletId,
    required String bankName,
    required String bankAccountNumber,
    required String bankAccountHolder,
  }) = UpdateBankDetailsEvent;

  /// Initiate top-up to main wallet
  const factory WalletEvent.initiateTopUp({
    required String walletId,
    required double amount,
    String? paymentMethod,
  }) = InitiateTopUpEvent;

  /// Confirm top-up after payment
  const factory WalletEvent.confirmTopUp({
    required String transactionId,
    required String paymentId,
  }) = ConfirmTopUpEvent;

  /// Process donation from main wallet
  const factory WalletEvent.processDonation({
    required String fromWalletId,
    required String toCampaignId,
    required double amount,
    String? donationId,
  }) = ProcessDonationEvent;

  /// Request withdrawal
  const factory WalletEvent.requestWithdrawal({
    required String walletId,
    required double amount,
  }) = RequestWalletWithdrawalEvent;

  /// Load transactions for a wallet
  const factory WalletEvent.loadTransactions({
    required String walletId,
    @Default(50) int limit,
    @Default(0) int offset,
  }) = LoadTransactionsEvent;

  /// Clear transient messages/errors
  const factory WalletEvent.clearTransient() = ClearWalletTransientEvent;
}
