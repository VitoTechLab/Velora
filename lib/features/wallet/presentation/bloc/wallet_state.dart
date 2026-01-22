import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/wallet/domain/entities/wallet_entity.dart';
import 'package:velora/features/wallet/domain/entities/wallet_transaction_entity.dart';
import 'package:velora/features/wallet/domain/entities/wallet_withdrawal_entity.dart';

part 'wallet_state.freezed.dart';

@freezed
abstract class WalletState with _$WalletState {
  const factory WalletState({
    // All wallets for user
    @Default(<WalletEntity>[]) List<WalletEntity> wallets,
    @Default(false) bool isLoadingWallets,
    String? errorWallets,

    // Main wallet (convenience getter from wallets list)
    WalletEntity? mainWallet,

    // Selected wallet for detail view
    WalletEntity? selectedWallet,
    @Default(false) bool isLoadingWallet,
    String? errorWallet,

    // Transactions for selected wallet
    @Default(<WalletTransactionEntity>[])
    List<WalletTransactionEntity> transactions,
    @Default(false) bool isLoadingTransactions,
    String? errorTransactions,

    // Withdrawal history for selected wallet
    @Default(<WalletWithdrawalEntity>[])
    List<WalletWithdrawalEntity> withdrawals,
    @Default(false) bool isLoadingWithdrawals,
    String? errorWithdrawals,

    // Operation states
    @Default(false) bool isCreatingWallet,
    String? errorCreateWallet,
    @Default(false) bool isUpdatingBankDetails,
    String? errorBankDetails,
    @Default(false) bool isProcessingTopUp,
    String? errorTopUp,
    @Default(false) bool isProcessingDonation,
    String? errorDonation,
    @Default(false) bool isProcessingWithdrawal,
    String? errorWithdrawal,

    // Export state
    @Default(false) bool isExporting,

    // Success messages
    String? message,
  }) = _WalletState;

  const WalletState._();

  /// Get campaign wallets only
  List<WalletEntity> get campaignWallets =>
      wallets.where((w) => w.type == WalletType.campaign).toList();

  /// Get total balance across all wallets
  double get totalBalance => wallets.fold(0.0, (sum, w) => sum + w.balance);

  /// Get main wallet balance
  double get mainWalletBalance => mainWallet?.balance ?? 0.0;

  /// Get pending withdrawals count
  int get pendingWithdrawalsCount =>
      withdrawals.where((w) => w.isPending).length;
}
