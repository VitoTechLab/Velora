import 'package:freezed_annotation/freezed_annotation.dart';

part 'withdrawal_entity.freezed.dart';

/// Withdrawal request status
enum WithdrawalStatus { pending, approved, rejected, processed }

@freezed
abstract class WithdrawalEntity with _$WithdrawalEntity {
  const factory WithdrawalEntity({
    required String id,
    required String campaignId,
    required String userId,
    required double amount,
    @Default(WithdrawalStatus.pending) WithdrawalStatus status,
    required String targetBankName,
    required String targetAccountNumber,
    required String targetAccountHolder,
    String? proofFileUrl,
    String? adminNotes,
    required DateTime createdAt,
    DateTime? processedAt,
  }) = _WithdrawalEntity;
}
