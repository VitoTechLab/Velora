import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:velora/core/errors/failure.dart';

/// Failure class specific to wallet operations
class WalletFailure extends Failure {
  const WalletFailure({
    required String message,
    this.code,
    this.originalError,
  }) : super(message);

  final String? code;
  final Object? originalError;

  /// Create a [WalletFailure] from an exception
  factory WalletFailure.fromException(Object e) {
    if (e is AuthException) {
      return WalletFailure(
        message: e.message,
        code: e.statusCode,
        originalError: e,
      );
    }
    if (e is PostgrestException) {
      return WalletFailure(
        message: e.message,
        code: e.code,
        originalError: e,
      );
    }
    if (e is StorageException) {
      return WalletFailure(
        message: e.message,
        code: e.statusCode,
        originalError: e,
      );
    }
    return WalletFailure(
      message: e.toString(),
      originalError: e,
    );
  }

  // Common wallet failures
  static const WalletFailure notFound = WalletFailure(
    message: 'Wallet not found',
    code: 'WALLET_NOT_FOUND',
  );

  static const WalletFailure insufficientBalance = WalletFailure(
    message: 'Insufficient balance',
    code: 'INSUFFICIENT_BALANCE',
  );

  static const WalletFailure withdrawalFailed = WalletFailure(
    message: 'Withdrawal request failed',
    code: 'WITHDRAWAL_FAILED',
  );

  static const WalletFailure topUpFailed = WalletFailure(
    message: 'Top up failed',
    code: 'TOP_UP_FAILED',
  );

  static const WalletFailure donationFailed = WalletFailure(
    message: 'Donation processing failed',
    code: 'DONATION_FAILED',
  );

  static const WalletFailure bankDetailsRequired = WalletFailure(
    message: 'Bank details are required for withdrawal',
    code: 'BANK_DETAILS_REQUIRED',
  );
}
