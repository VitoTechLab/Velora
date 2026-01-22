import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/wallet/domain/entities/wallet_entity.dart';
import 'package:velora/features/wallet/domain/entities/wallet_transaction_entity.dart';
import 'package:velora/features/wallet/domain/entities/wallet_withdrawal_entity.dart';

/// Repository interface for wallet operations
abstract class WalletRepository {
  // ============================================
  // WALLET CRUD
  // ============================================

  /// Get all wallets for a user (main + campaign wallets)
  Future<Either<Failure, List<WalletEntity>>> getUserWallets(String userId);

  /// Get user's main wallet
  Future<Either<Failure, WalletEntity?>> getMainWallet(String userId);

  /// Get a specific wallet by ID
  Future<Either<Failure, WalletEntity?>> getWalletById(String walletId);

  /// Get wallet for a specific campaign
  Future<Either<Failure, WalletEntity?>> getCampaignWallet(String campaignId);

  /// Create a new wallet (main or campaign)
  Future<Either<Failure, WalletEntity>> createWallet(WalletEntity wallet);

  /// Update wallet bank details
  Future<Either<Failure, WalletEntity>> updateWalletBankDetails({
    required String walletId,
    required String bankName,
    required String bankAccountNumber,
    required String bankAccountHolder,
  });

  // ============================================
  // BALANCE OPERATIONS
  // ============================================

  /// Top up main wallet (creates pending transaction)
  Future<Either<Failure, WalletTransactionEntity>> initiateTopUp({
    required String walletId,
    required double amount,
    String? paymentMethod,
  });

  /// Confirm top-up after payment verified
  Future<Either<Failure, WalletTransactionEntity>> confirmTopUp({
    required String transactionId,
    required String paymentId,
  });

  /// Process donation from main wallet to campaign wallet
  /// Deducts from main wallet, adds to campaign wallet (minus platform fee)
  Future<Either<Failure, WalletTransactionEntity>> processDonation({
    required String fromWalletId,
    required String toCampaignId,
    required double amount,
    required double platformFeePercent,
    String? donationId,
  });

  /// Request withdrawal from wallet
  ///
  /// MOCK IMPLEMENTATION: This simulates a bank transfer that processes instantly.
  /// In production, this would:
  /// 1. Create a pending withdrawal request
  /// 2. Submit to payment gateway
  /// 3. Wait for webhook confirmation
  /// 4. Update status to completed/failed
  Future<Either<Failure, WalletTransactionEntity>> requestWithdrawal({
    required String walletId,
    required double amount,
  });

  // ============================================
  // TRANSACTIONS
  // ============================================

  /// Get transactions for a wallet
  Future<Either<Failure, List<WalletTransactionEntity>>> getWalletTransactions(
    String walletId, {
    int limit = 50,
    int offset = 0,
  });

  /// Get a specific transaction
  Future<Either<Failure, WalletTransactionEntity?>> getTransactionById(
    String transactionId,
  );

  /// Get all transactions for a user across all wallets
  Future<Either<Failure, List<WalletTransactionEntity>>> getUserTransactions(
    String userId, {
    int limit = 50,
    int offset = 0,
  });

  // ============================================
  // WITHDRAWALS
  // ============================================

  /// Get withdrawal history for a wallet
  Future<Either<Failure, List<WalletWithdrawalEntity>>> getWalletWithdrawals(
    String walletId,
  );

  /// Get a specific withdrawal by ID
  Future<Either<Failure, WalletWithdrawalEntity?>> getWithdrawalById(
    String withdrawalId,
  );
}
