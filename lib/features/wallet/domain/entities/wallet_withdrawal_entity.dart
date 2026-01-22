import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_withdrawal_entity.freezed.dart';

/// Wallet withdrawal request status
///
/// Flow:
/// 1. pending -> User submitted request
/// 2. processing -> System is processing (mock: instant)
/// 3. completed -> Transfer successful
/// 4. failed -> Transfer failed
/// 5. cancelled -> User cancelled
enum WalletWithdrawalStatus { pending, processing, completed, failed, cancelled }

/// Represents a wallet withdrawal request
///
/// This is used for both main wallet and campaign wallet withdrawals.
/// In MOCK mode, withdrawals are processed instantly and status goes
/// directly from 'pending' to 'completed'.
@freezed
abstract class WalletWithdrawalEntity with _$WalletWithdrawalEntity {
  const WalletWithdrawalEntity._();

  const factory WalletWithdrawalEntity({
    required String id,
    required String walletId,
    required String userId,
    required double amount,
    @Default(WalletWithdrawalStatus.pending) WalletWithdrawalStatus status,

    /// Target bank for transfer
    required String targetBankName,
    required String targetAccountNumber,
    required String targetAccountHolder,

    /// Reference number from mock bank transfer
    String? transferReference,

    /// Admin/system notes
    String? notes,

    required DateTime createdAt,
    DateTime? processedAt,
  }) = _WalletWithdrawalEntity;

  /// Check if withdrawal is in a final state
  bool get isFinal =>
      status == WalletWithdrawalStatus.completed ||
      status == WalletWithdrawalStatus.failed ||
      status == WalletWithdrawalStatus.cancelled;

  /// Check if withdrawal is pending
  bool get isPending => status == WalletWithdrawalStatus.pending;

  /// Check if withdrawal was successful
  bool get isSuccessful => status == WalletWithdrawalStatus.completed;
}
