import 'package:velora/features/wallet/data/models/wallet_model.dart';
import 'package:velora/features/wallet/data/models/wallet_transaction_model.dart';

/// Remote data source for wallet operations
abstract class WalletRemoteDataSource {
  // ============================================
  // WALLET CRUD
  // ============================================

  /// Get all wallets for a user
  Future<List<WalletModel>> getUserWallets(String userId);

  /// Get user's main wallet
  Future<WalletModel?> getMainWallet(String userId);

  /// Get a specific wallet by ID
  Future<WalletModel?> getWalletById(String walletId);

  /// Get wallet for a specific campaign
  Future<WalletModel?> getCampaignWallet(String campaignId);

  /// Create a new wallet
  Future<WalletModel> createWallet(WalletModel model);

  /// Update wallet bank details
  Future<WalletModel> updateWalletBankDetails({
    required String walletId,
    required String bankName,
    required String bankAccountNumber,
    required String bankAccountHolder,
  });

  /// Update wallet balance
  Future<WalletModel> updateWalletBalance({
    required String walletId,
    required double newBalance,
  });

  // ============================================
  // TRANSACTIONS
  // ============================================

  /// Create a transaction record
  Future<WalletTransactionModel> createTransaction(
    WalletTransactionModel transaction,
  );

  /// Update transaction status
  Future<WalletTransactionModel> updateTransactionStatus({
    required String transactionId,
    required String status,
    String? paymentId,
    DateTime? completedAt,
  });

  /// Get transactions for a wallet
  Future<List<WalletTransactionModel>> getWalletTransactions(
    String walletId, {
    int limit = 50,
    int offset = 0,
  });

  /// Get a specific transaction
  Future<WalletTransactionModel?> getTransactionById(String transactionId);

  /// Get all transactions for a user
  Future<List<WalletTransactionModel>> getUserTransactions(
    String userId, {
    int limit = 50,
    int offset = 0,
  });
}
