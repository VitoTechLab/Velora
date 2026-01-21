import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_transaction_entity.freezed.dart';

/// Type of wallet transaction
enum WalletTransactionType {
  /// Top-up to main wallet
  topup,

  /// Donation sent from main wallet
  donationSent,

  /// Donation received to campaign wallet
  donationReceived,

  /// Withdrawal from any wallet
  withdrawal,

  /// Platform fee deducted
  platformFee,

  /// Refund
  refund,
}

/// Status of wallet transaction
enum WalletTransactionStatus {
  pending,
  success,
  failed,
  cancelled,
}

/// Wallet transaction entity for tracking all wallet movements
@freezed
abstract class WalletTransactionEntity with _$WalletTransactionEntity {
  const factory WalletTransactionEntity({
    required String id,
    required String walletId,
    required String userId,
    required WalletTransactionType type,
    required double amount,

    /// Positive for incoming, negative for outgoing
    required double balanceChange,

    /// Balance after this transaction
    required double balanceAfter,
    @Default(WalletTransactionStatus.pending) WalletTransactionStatus status,

    /// Reference ID (donation_id, withdrawal_id, topup_id, etc.)
    String? referenceId,

    /// Reference type (donation, withdrawal, topup)
    String? referenceType,

    /// Description for display
    String? description,

    /// Payment gateway reference for top-ups
    String? paymentId,
    String? paymentMethod,

    required DateTime createdAt,
    DateTime? completedAt,
  }) = _WalletTransactionEntity;
}
