import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/core/errors/wallet_failure.dart';
import 'package:velora/core/utils/log_alias.dart';
import 'package:velora/features/wallet/data/datasources/wallet_remote_datasource.dart';
import 'package:velora/features/wallet/data/models/wallet_model.dart';
import 'package:velora/features/wallet/data/models/wallet_transaction_model.dart';
import 'package:velora/features/wallet/domain/entities/wallet_entity.dart';
import 'package:velora/features/wallet/domain/entities/wallet_transaction_entity.dart';
import 'package:velora/features/wallet/domain/entities/wallet_withdrawal_entity.dart';
import 'package:velora/features/wallet/domain/repositories/wallet_repository.dart';

class WalletRepositoryImpl implements WalletRepository {
  WalletRepositoryImpl({required WalletRemoteDataSource dataSource})
      : _dataSource = dataSource;

  final WalletRemoteDataSource _dataSource;
  static const _logTag = 'WalletRepository';

  // ============================================
  // WALLET CRUD
  // ============================================
  @override
  Future<Either<Failure, List<WalletEntity>>> getUserWallets(
      String userId) async {
    try {
      logi('getUserWallets: $userId', tag: _logTag);
      final models = await _dataSource.getUserWallets(userId);
      return Right(models.map((m) => m.toEntity()).toList());
    } catch (e) {
      loge('getUserWallets error', tag: _logTag, error: e);
      return Left(WalletFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, WalletEntity?>> getMainWallet(String userId) async {
    try {
      logi('getMainWallet: $userId', tag: _logTag);
      final model = await _dataSource.getMainWallet(userId);
      return Right(model?.toEntity());
    } catch (e) {
      loge('getMainWallet error', tag: _logTag, error: e);
      return Left(WalletFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, WalletEntity?>> getWalletById(String walletId) async {
    try {
      logi('getWalletById: $walletId', tag: _logTag);
      final model = await _dataSource.getWalletById(walletId);
      return Right(model?.toEntity());
    } catch (e) {
      loge('getWalletById error', tag: _logTag, error: e);
      return Left(WalletFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, WalletEntity?>> getCampaignWallet(
      String campaignId) async {
    try {
      logi('getCampaignWallet: $campaignId', tag: _logTag);
      final model = await _dataSource.getCampaignWallet(campaignId);
      return Right(model?.toEntity());
    } catch (e) {
      loge('getCampaignWallet error', tag: _logTag, error: e);
      return Left(WalletFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, WalletEntity>> createWallet(
      WalletEntity wallet) async {
    try {
      logi('createWallet: ${wallet.type}', tag: _logTag);
      final model = WalletModel.fromEntity(wallet);
      final created = await _dataSource.createWallet(model);
      return Right(created.toEntity());
    } catch (e) {
      loge('createWallet error', tag: _logTag, error: e);
      return Left(WalletFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, WalletEntity>> updateWalletBankDetails({
    required String walletId,
    required String bankName,
    required String bankAccountNumber,
    required String bankAccountHolder,
  }) async {
    try {
      logi('updateWalletBankDetails: $walletId', tag: _logTag);
      final updated = await _dataSource.updateWalletBankDetails(
        walletId: walletId,
        bankName: bankName,
        bankAccountNumber: bankAccountNumber,
        bankAccountHolder: bankAccountHolder,
      );
      return Right(updated.toEntity());
    } catch (e) {
      loge('updateWalletBankDetails error', tag: _logTag, error: e);
      return Left(WalletFailure.fromException(e));
    }
  }

  // ============================================
  // BALANCE OPERATIONS
  // ============================================
  @override
  Future<Either<Failure, WalletTransactionEntity>> initiateTopUp({
    required String walletId,
    required double amount,
    String? paymentMethod,
  }) async {
    try {
      logi('initiateTopUp: $walletId, amount: $amount', tag: _logTag);

      // Get current wallet balance
      final wallet = await _dataSource.getWalletById(walletId);
      if (wallet == null) {
        return const Left(WalletFailure.notFound);
      }

      // Create pending transaction
      final transaction = WalletTransactionModel(
        id: '',
        walletId: walletId,
        userId: wallet.userId,
        type: 'topup',
        amount: amount,
        balanceChange: amount,
        balanceAfter: wallet.balance + amount,
        status: 'pending',
        paymentMethod: paymentMethod,
        createdAt: DateTime.now(),
      );

      final created = await _dataSource.createTransaction(transaction);
      return Right(created.toEntity());
    } catch (e) {
      loge('initiateTopUp error', tag: _logTag, error: e);
      return Left(WalletFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, WalletTransactionEntity>> confirmTopUp({
    required String transactionId,
    required String paymentId,
  }) async {
    try {
      logi('confirmTopUp: $transactionId', tag: _logTag);

      // Get transaction
      final transaction = await _dataSource.getTransactionById(transactionId);
      if (transaction == null) {
        return const Left(
            WalletFailure(message: 'Transaction not found', code: 'NOT_FOUND'));
      }

      // Update wallet balance
      await _dataSource.updateWalletBalance(
        walletId: transaction.walletId,
        newBalance: transaction.balanceAfter,
      );

      // Update transaction status
      final updated = await _dataSource.updateTransactionStatus(
        transactionId: transactionId,
        status: 'success',
        paymentId: paymentId,
        completedAt: DateTime.now(),
      );

      return Right(updated.toEntity());
    } catch (e) {
      loge('confirmTopUp error', tag: _logTag, error: e);
      return Left(WalletFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, WalletTransactionEntity>> processDonation({
    required String fromWalletId,
    required String toCampaignId,
    required double amount,
    required double platformFeePercent,
    String? donationId,
  }) async {
    try {
      logi('processDonation from $fromWalletId to campaign $toCampaignId',
          tag: _logTag);

      // Get source wallet
      final sourceWallet = await _dataSource.getWalletById(fromWalletId);
      if (sourceWallet == null) {
        return const Left(WalletFailure.notFound);
      }

      // Check balance
      if (sourceWallet.balance < amount) {
        return const Left(WalletFailure.insufficientBalance);
      }

      // Get destination campaign wallet
      final destWallet = await _dataSource.getCampaignWallet(toCampaignId);
      if (destWallet == null) {
        return const Left(WalletFailure(
            message: 'Campaign wallet not found',
            code: 'CAMPAIGN_WALLET_NOT_FOUND'));
      }

      // Calculate amounts
      final platformFee = amount * (platformFeePercent / 100);
      final netAmount = amount - platformFee;

      // Deduct from source wallet
      final newSourceBalance = sourceWallet.balance - amount;
      await _dataSource.updateWalletBalance(
        walletId: fromWalletId,
        newBalance: newSourceBalance,
      );

      // Create debit transaction for source wallet
      final debitTransaction = WalletTransactionModel(
        id: '',
        walletId: fromWalletId,
        userId: sourceWallet.userId,
        type: 'donationSent',
        amount: amount,
        balanceChange: -amount,
        balanceAfter: newSourceBalance,
        status: 'success',
        referenceId: donationId,
        referenceType: 'donation',
        description: 'Donation to ${destWallet.campaignTitle ?? 'campaign'}',
        createdAt: DateTime.now(),
        completedAt: DateTime.now(),
      );
      final createdDebit =
          await _dataSource.createTransaction(debitTransaction);

      // Add to destination wallet (minus platform fee)
      final newDestBalance = destWallet.balance + netAmount;
      await _dataSource.updateWalletBalance(
        walletId: destWallet.id,
        newBalance: newDestBalance,
      );

      // Create credit transaction for destination wallet
      final creditTransaction = WalletTransactionModel(
        id: '',
        walletId: destWallet.id,
        userId: destWallet.userId,
        type: 'donationReceived',
        amount: netAmount,
        balanceChange: netAmount,
        balanceAfter: newDestBalance,
        status: 'success',
        referenceId: donationId,
        referenceType: 'donation',
        description: 'Donation received',
        createdAt: DateTime.now(),
        completedAt: DateTime.now(),
      );
      await _dataSource.createTransaction(creditTransaction);

      // Create platform fee transaction if fee > 0
      if (platformFee > 0) {
        final feeTransaction = WalletTransactionModel(
          id: '',
          walletId: destWallet.id,
          userId: destWallet.userId,
          type: 'platformFee',
          amount: platformFee,
          balanceChange: 0, // Already deducted in net amount
          balanceAfter: newDestBalance,
          status: 'success',
          referenceId: donationId,
          referenceType: 'donation',
          description:
              'Platform fee (${platformFeePercent.toStringAsFixed(0)}%)',
          createdAt: DateTime.now(),
          completedAt: DateTime.now(),
        );
        await _dataSource.createTransaction(feeTransaction);
      }

      return Right(createdDebit.toEntity());
    } catch (e) {
      loge('processDonation error', tag: _logTag, error: e);
      return Left(WalletFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, WalletTransactionEntity>> requestWithdrawal({
    required String walletId,
    required double amount,
  }) async {
    try {
      logi('requestWithdrawal: $walletId, amount: $amount', tag: _logTag);

      // Get wallet
      final wallet = await _dataSource.getWalletById(walletId);
      if (wallet == null) {
        return const Left(WalletFailure.notFound);
      }

      // Check balance
      if (wallet.balance < amount) {
        return const Left(WalletFailure.insufficientBalance);
      }

      // Check bank details
      if (wallet.bankName == null ||
          wallet.bankAccountNumber == null ||
          wallet.bankAccountHolder == null) {
        return const Left(WalletFailure.bankDetailsRequired);
      }

      // Deduct balance immediately (hold)
      final newBalance = wallet.balance - amount;
      await _dataSource.updateWalletBalance(
        walletId: walletId,
        newBalance: newBalance,
      );

      // Create pending withdrawal transaction
      final transaction = WalletTransactionModel(
        id: '',
        walletId: walletId,
        userId: wallet.userId,
        type: 'withdrawal',
        amount: amount,
        balanceChange: -amount,
        balanceAfter: newBalance,
        status: 'pending',
        description:
            'Withdrawal to ${wallet.bankName} - ${wallet.bankAccountNumber}',
        createdAt: DateTime.now(),
      );

      final created = await _dataSource.createTransaction(transaction);
      return Right(created.toEntity());
    } catch (e) {
      loge('requestWithdrawal error', tag: _logTag, error: e);
      return Left(WalletFailure.fromException(e));
    }
  }

  // ============================================
  // TRANSACTIONS
  // ============================================
  @override
  Future<Either<Failure, List<WalletTransactionEntity>>> getWalletTransactions(
    String walletId, {
    int limit = 50,
    int offset = 0,
  }) async {
    try {
      logi('getWalletTransactions: $walletId', tag: _logTag);
      final models = await _dataSource.getWalletTransactions(
        walletId,
        limit: limit,
        offset: offset,
      );
      return Right(models.map((m) => m.toEntity()).toList());
    } catch (e) {
      loge('getWalletTransactions error', tag: _logTag, error: e);
      return Left(WalletFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, WalletTransactionEntity?>> getTransactionById(
    String transactionId,
  ) async {
    try {
      logi('getTransactionById: $transactionId', tag: _logTag);
      final model = await _dataSource.getTransactionById(transactionId);
      return Right(model?.toEntity());
    } catch (e) {
      loge('getTransactionById error', tag: _logTag, error: e);
      return Left(WalletFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, List<WalletTransactionEntity>>> getUserTransactions(
    String userId, {
    int limit = 50,
    int offset = 0,
  }) async {
    try {
      logi('getUserTransactions: $userId', tag: _logTag);
      final models = await _dataSource.getUserTransactions(
        userId,
        limit: limit,
        offset: offset,
      );
      return Right(models.map((m) => m.toEntity()).toList());
    } catch (e) {
      loge('getUserTransactions error', tag: _logTag, error: e);
      return Left(WalletFailure.fromException(e));
    }
  }

  // ============================================
  // WITHDRAWALS
  // ============================================
  @override
  Future<Either<Failure, List<WalletWithdrawalEntity>>> getWalletWithdrawals(
    String walletId,
  ) async {
    try {
      logi('getWalletWithdrawals: $walletId', tag: _logTag);
      final models = await _dataSource.getWalletWithdrawals(walletId);
      return Right(models.map((m) => m.toEntity()).toList());
    } catch (e) {
      loge('getWalletWithdrawals error', tag: _logTag, error: e);
      return Left(WalletFailure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, WalletWithdrawalEntity?>> getWithdrawalById(
    String withdrawalId,
  ) async {
    try {
      logi('getWithdrawalById: $withdrawalId', tag: _logTag);
      final model = await _dataSource.getWithdrawalById(withdrawalId);
      return Right(model?.toEntity());
    } catch (e) {
      loge('getWithdrawalById error', tag: _logTag, error: e);
      return Left(WalletFailure.fromException(e));
    }
  }
}
