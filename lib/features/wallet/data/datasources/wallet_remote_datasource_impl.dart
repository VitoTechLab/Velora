import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:velora/core/supabase/supabase_guard.dart';
import 'package:velora/core/utils/log_alias.dart';
import 'package:velora/features/wallet/data/datasources/wallet_remote_datasource.dart';
import 'package:velora/features/wallet/data/models/wallet_model.dart';
import 'package:velora/features/wallet/data/models/wallet_transaction_model.dart';
import 'package:velora/features/wallet/data/models/wallet_withdrawal_model.dart';

class WalletRemoteDataSourceImpl implements WalletRemoteDataSource {
  WalletRemoteDataSourceImpl({required SupabaseClient supabaseClient})
      : _client = supabaseClient;

  final SupabaseClient _client;
  static const _logTag = 'WalletDataSource';

  // Table names
  static const _wallets = 'wallets';
  static const _transactions = 'wallet_transactions';
  static const _withdrawals = 'wallet_withdrawals';

  // ============================================
  // WALLET CRUD
  // ============================================
  @override
  Future<List<WalletModel>> getUserWallets(String userId) {
    return guardSupabase(
      () async {
        logi('Getting wallets for user: $userId', tag: _logTag);
        final response = await _client.from(_wallets).select('''
              *,
              campaigns(title, cover_image_url)
            ''').eq('user_id', userId).order('type').order('created_at');

        return (response as List)
            .map((row) => _mapWalletWithJoins(row))
            .toList();
      },
      op: 'getUserWallets',
      tag: _logTag,
    );
  }

  @override
  Future<WalletModel?> getMainWallet(String userId) {
    return guardSupabase(
      () async {
        logi('Getting main wallet for user: $userId', tag: _logTag);
        final response = await _client
            .from(_wallets)
            .select()
            .eq('user_id', userId)
            .eq('type', 'main')
            .maybeSingle();
        if (response == null) return null;
        return WalletModel.fromJson(response);
      },
      op: 'getMainWallet',
      tag: _logTag,
    );
  }

  @override
  Future<WalletModel?> getWalletById(String walletId) {
    return guardSupabase(
      () async {
        logi('Getting wallet by id: $walletId', tag: _logTag);
        final response = await _client.from(_wallets).select('''
              *,
              campaigns(title, cover_image_url)
            ''').eq('id', walletId).maybeSingle();
        if (response == null) return null;
        return _mapWalletWithJoins(response);
      },
      op: 'getWalletById',
      tag: _logTag,
    );
  }

  @override
  Future<WalletModel?> getCampaignWallet(String campaignId) {
    return guardSupabase(
      () async {
        logi('Getting wallet for campaign: $campaignId', tag: _logTag);
        final response = await _client.from(_wallets).select('''
              *,
              campaigns(title, cover_image_url)
            ''').eq('campaign_id', campaignId).maybeSingle();
        if (response == null) return null;
        return _mapWalletWithJoins(response);
      },
      op: 'getCampaignWallet',
      tag: _logTag,
    );
  }

  @override
  Future<WalletModel> createWallet(WalletModel model) {
    return guardSupabase(
      () async {
        logi('Creating wallet type: ${model.type}', tag: _logTag);
        final insertData = {
          'user_id': model.userId,
          'type': model.type,
          'balance': model.balance,
          if (model.campaignId != null) 'campaign_id': model.campaignId,
          if (model.bankName != null) 'bank_name': model.bankName,
          if (model.bankAccountNumber != null)
            'bank_account_number': model.bankAccountNumber,
          if (model.bankAccountHolder != null)
            'bank_account_holder': model.bankAccountHolder,
        };
        final response =
            await _client.from(_wallets).insert(insertData).select().single();
        return WalletModel.fromJson(response);
      },
      op: 'createWallet',
      tag: _logTag,
    );
  }

  @override
  Future<WalletModel> updateWalletBankDetails({
    required String walletId,
    required String bankName,
    required String bankAccountNumber,
    required String bankAccountHolder,
  }) {
    return guardSupabase(
      () async {
        logi('Updating bank details for wallet: $walletId', tag: _logTag);
        final response = await _client
            .from(_wallets)
            .update({
              'bank_name': bankName,
              'bank_account_number': bankAccountNumber,
              'bank_account_holder': bankAccountHolder,
              'updated_at': DateTime.now().toIso8601String(),
            })
            .eq('id', walletId)
            .select()
            .single();
        return WalletModel.fromJson(response);
      },
      op: 'updateWalletBankDetails',
      tag: _logTag,
    );
  }

  @override
  Future<WalletModel> updateWalletBalance({
    required String walletId,
    required double newBalance,
  }) {
    return guardSupabase(
      () async {
        logi('Updating balance for wallet: $walletId to $newBalance',
            tag: _logTag);
        final response = await _client
            .from(_wallets)
            .update({
              'balance': newBalance,
              'updated_at': DateTime.now().toIso8601String(),
            })
            .eq('id', walletId)
            .select()
            .single();
        return WalletModel.fromJson(response);
      },
      op: 'updateWalletBalance',
      tag: _logTag,
    );
  }

  // ============================================
  // TRANSACTIONS
  // ============================================
  @override
  Future<WalletTransactionModel> createTransaction(
    WalletTransactionModel transaction,
  ) {
    return guardSupabase(
      () async {
        logi('Creating transaction type: ${transaction.type}', tag: _logTag);
        final insertData = {
          'wallet_id': transaction.walletId,
          'user_id': transaction.userId,
          'type': transaction.type,
          'amount': transaction.amount,
          'balance_change': transaction.balanceChange,
          'balance_after': transaction.balanceAfter,
          'status': transaction.status,
          if (transaction.referenceId != null)
            'reference_id': transaction.referenceId,
          if (transaction.referenceType != null)
            'reference_type': transaction.referenceType,
          if (transaction.description != null)
            'description': transaction.description,
          if (transaction.paymentId != null) 'payment_id': transaction.paymentId,
          if (transaction.paymentMethod != null)
            'payment_method': transaction.paymentMethod,
        };
        final response = await _client
            .from(_transactions)
            .insert(insertData)
            .select()
            .single();
        return WalletTransactionModel.fromJson(response);
      },
      op: 'createTransaction',
      tag: _logTag,
    );
  }

  @override
  Future<WalletTransactionModel> updateTransactionStatus({
    required String transactionId,
    required String status,
    String? paymentId,
    DateTime? completedAt,
  }) {
    return guardSupabase(
      () async {
        logi('Updating transaction status: $transactionId -> $status',
            tag: _logTag);
        final updateData = <String, dynamic>{
          'status': status,
          if (paymentId != null) 'payment_id': paymentId,
          if (completedAt != null) 'completed_at': completedAt.toIso8601String(),
        };
        final response = await _client
            .from(_transactions)
            .update(updateData)
            .eq('id', transactionId)
            .select()
            .single();
        return WalletTransactionModel.fromJson(response);
      },
      op: 'updateTransactionStatus',
      tag: _logTag,
    );
  }

  @override
  Future<List<WalletTransactionModel>> getWalletTransactions(
    String walletId, {
    int limit = 50,
    int offset = 0,
  }) {
    return guardSupabase(
      () async {
        logi('Getting transactions for wallet: $walletId', tag: _logTag);
        final response = await _client
            .from(_transactions)
            .select()
            .eq('wallet_id', walletId)
            .order('created_at', ascending: false)
            .range(offset, offset + limit - 1);
        return (response as List)
            .map((row) => WalletTransactionModel.fromJson(row))
            .toList();
      },
      op: 'getWalletTransactions',
      tag: _logTag,
    );
  }

  @override
  Future<WalletTransactionModel?> getTransactionById(String transactionId) {
    return guardSupabase(
      () async {
        logi('Getting transaction by id: $transactionId', tag: _logTag);
        final response = await _client
            .from(_transactions)
            .select()
            .eq('id', transactionId)
            .maybeSingle();
        if (response == null) return null;
        return WalletTransactionModel.fromJson(response);
      },
      op: 'getTransactionById',
      tag: _logTag,
    );
  }

  @override
  Future<List<WalletTransactionModel>> getUserTransactions(
    String userId, {
    int limit = 50,
    int offset = 0,
  }) {
    return guardSupabase(
      () async {
        logi('Getting transactions for user: $userId', tag: _logTag);
        final response = await _client
            .from(_transactions)
            .select()
            .eq('user_id', userId)
            .order('created_at', ascending: false)
            .range(offset, offset + limit - 1);
        return (response as List)
            .map((row) => WalletTransactionModel.fromJson(row))
            .toList();
      },
      op: 'getUserTransactions',
      tag: _logTag,
    );
  }

  // ============================================
  // HELPERS
  // ============================================
  WalletModel _mapWalletWithJoins(Map<String, dynamic> row) {
    final campaigns = row['campaigns'] as Map<String, dynamic>?;
    return WalletModel.fromJson({
      ...row,
      'campaign_title': campaigns?['title'],
      'campaign_cover_image_url': campaigns?['cover_image_url'],
    });
  }

  // ============================================
  // WITHDRAWALS
  // ============================================
  @override
  Future<List<WalletWithdrawalModel>> getWalletWithdrawals(String walletId) {
    return guardSupabase(
      () async {
        logi('Getting withdrawals for wallet: $walletId', tag: _logTag);
        final response = await _client
            .from(_withdrawals)
            .select()
            .eq('wallet_id', walletId)
            .order('created_at', ascending: false);
        return (response as List)
            .map((row) => WalletWithdrawalModel.fromJson(row))
            .toList();
      },
      op: 'getWalletWithdrawals',
      tag: _logTag,
    );
  }

  @override
  Future<WalletWithdrawalModel?> getWithdrawalById(String withdrawalId) {
    return guardSupabase(
      () async {
        logi('Getting withdrawal by id: $withdrawalId', tag: _logTag);
        final response = await _client
            .from(_withdrawals)
            .select()
            .eq('id', withdrawalId)
            .maybeSingle();
        if (response == null) return null;
        return WalletWithdrawalModel.fromJson(response);
      },
      op: 'getWithdrawalById',
      tag: _logTag,
    );
  }

  @override
  Future<WalletWithdrawalModel> createWithdrawal(
    WalletWithdrawalModel withdrawal,
  ) {
    return guardSupabase(
      () async {
        logi('Creating withdrawal for wallet: ${withdrawal.walletId}',
            tag: _logTag);
        final insertData = {
          'wallet_id': withdrawal.walletId,
          'user_id': withdrawal.userId,
          'amount': withdrawal.amount,
          'status': withdrawal.status,
          'target_bank_name': withdrawal.targetBankName,
          'target_account_number': withdrawal.targetAccountNumber,
          'target_account_holder': withdrawal.targetAccountHolder,
          if (withdrawal.transferReference != null)
            'transfer_reference': withdrawal.transferReference,
          if (withdrawal.notes != null) 'notes': withdrawal.notes,
        };
        final response = await _client
            .from(_withdrawals)
            .insert(insertData)
            .select()
            .single();
        return WalletWithdrawalModel.fromJson(response);
      },
      op: 'createWithdrawal',
      tag: _logTag,
    );
  }

  @override
  Future<WalletWithdrawalModel> updateWithdrawalStatus({
    required String withdrawalId,
    required String status,
    String? transferReference,
    String? notes,
    DateTime? processedAt,
  }) {
    return guardSupabase(
      () async {
        logi('Updating withdrawal status: $withdrawalId -> $status',
            tag: _logTag);
        final updateData = <String, dynamic>{
          'status': status,
          if (transferReference != null) 'transfer_reference': transferReference,
          if (notes != null) 'notes': notes,
          if (processedAt != null)
            'processed_at': processedAt.toIso8601String(),
        };
        final response = await _client
            .from(_withdrawals)
            .update(updateData)
            .eq('id', withdrawalId)
            .select()
            .single();
        return WalletWithdrawalModel.fromJson(response);
      },
      op: 'updateWithdrawalStatus',
      tag: _logTag,
    );
  }
}
