import 'package:velora/features/wallet/domain/entities/wallet_withdrawal_entity.dart';

/// Data model for wallet withdrawals
///
/// This model is used to transfer withdrawal data between the data layer
/// and the database. It corresponds to wallet withdrawal transactions
/// with additional metadata for tracking the bank transfer status.
class WalletWithdrawalModel {
  WalletWithdrawalModel({
    required this.id,
    required this.walletId,
    required this.userId,
    required this.amount,
    required this.status,
    required this.targetBankName,
    required this.targetAccountNumber,
    required this.targetAccountHolder,
    this.transferReference,
    this.notes,
    required this.createdAt,
    this.processedAt,
  });

  final String id;
  final String walletId;
  final String userId;
  final double amount;
  final String status;
  final String targetBankName;
  final String targetAccountNumber;
  final String targetAccountHolder;
  final String? transferReference;
  final String? notes;
  final DateTime createdAt;
  final DateTime? processedAt;

  /// Create from database JSON
  factory WalletWithdrawalModel.fromJson(Map<String, dynamic> json) {
    return WalletWithdrawalModel(
      id: json['id'] as String,
      walletId: json['wallet_id'] as String,
      userId: json['user_id'] as String,
      amount: (json['amount'] as num).toDouble(),
      status: json['status'] as String? ?? 'pending',
      targetBankName: json['target_bank_name'] as String,
      targetAccountNumber: json['target_account_number'] as String,
      targetAccountHolder: json['target_account_holder'] as String,
      transferReference: json['transfer_reference'] as String?,
      notes: json['notes'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      processedAt: json['processed_at'] != null
          ? DateTime.parse(json['processed_at'] as String)
          : null,
    );
  }

  /// Convert to database JSON
  Map<String, dynamic> toJson() {
    return {
      if (id.isNotEmpty) 'id': id,
      'wallet_id': walletId,
      'user_id': userId,
      'amount': amount,
      'status': status,
      'target_bank_name': targetBankName,
      'target_account_number': targetAccountNumber,
      'target_account_holder': targetAccountHolder,
      if (transferReference != null) 'transfer_reference': transferReference,
      if (notes != null) 'notes': notes,
      'created_at': createdAt.toIso8601String(),
      if (processedAt != null) 'processed_at': processedAt!.toIso8601String(),
    };
  }

  /// Convert to domain entity
  WalletWithdrawalEntity toEntity() {
    return WalletWithdrawalEntity(
      id: id,
      walletId: walletId,
      userId: userId,
      amount: amount,
      status: _parseStatus(status),
      targetBankName: targetBankName,
      targetAccountNumber: targetAccountNumber,
      targetAccountHolder: targetAccountHolder,
      transferReference: transferReference,
      notes: notes,
      createdAt: createdAt,
      processedAt: processedAt,
    );
  }

  /// Create from domain entity
  factory WalletWithdrawalModel.fromEntity(WalletWithdrawalEntity entity) {
    return WalletWithdrawalModel(
      id: entity.id,
      walletId: entity.walletId,
      userId: entity.userId,
      amount: entity.amount,
      status: entity.status.name,
      targetBankName: entity.targetBankName,
      targetAccountNumber: entity.targetAccountNumber,
      targetAccountHolder: entity.targetAccountHolder,
      transferReference: entity.transferReference,
      notes: entity.notes,
      createdAt: entity.createdAt,
      processedAt: entity.processedAt,
    );
  }

  static WalletWithdrawalStatus _parseStatus(String status) {
    return switch (status) {
      'pending' => WalletWithdrawalStatus.pending,
      'processing' => WalletWithdrawalStatus.processing,
      'completed' => WalletWithdrawalStatus.completed,
      'failed' => WalletWithdrawalStatus.failed,
      'cancelled' => WalletWithdrawalStatus.cancelled,
      _ => WalletWithdrawalStatus.pending,
    };
  }
}
