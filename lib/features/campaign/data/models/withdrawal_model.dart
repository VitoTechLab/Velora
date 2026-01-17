import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/campaign/domain/entities/withdrawal_entity.dart';

part 'withdrawal_model.freezed.dart';
part 'withdrawal_model.g.dart';

@freezed
abstract class WithdrawalModel with _$WithdrawalModel {
  const WithdrawalModel._();

  const factory WithdrawalModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'campaign_id') required String campaignId,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'amount') required double amount,
    @JsonKey(name: 'status') @Default('pending') String status,
    @JsonKey(name: 'target_bank_name') required String targetBankName,
    @JsonKey(name: 'target_account_number') required String targetAccountNumber,
    @JsonKey(name: 'target_account_holder') required String targetAccountHolder,
    @JsonKey(name: 'proof_file_url') String? proofFileUrl,
    @JsonKey(name: 'admin_notes') String? adminNotes,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'processed_at') DateTime? processedAt,
  }) = _WithdrawalModel;

  factory WithdrawalModel.fromJson(Map<String, dynamic> json) =>
      _$WithdrawalModelFromJson(json);

  WithdrawalEntity toEntity() {
    return WithdrawalEntity(
      id: id,
      campaignId: campaignId,
      userId: userId,
      amount: amount,
      status: _parseStatus(status),
      targetBankName: targetBankName,
      targetAccountNumber: targetAccountNumber,
      targetAccountHolder: targetAccountHolder,
      proofFileUrl: proofFileUrl,
      adminNotes: adminNotes,
      createdAt: createdAt,
      processedAt: processedAt,
    );
  }

  factory WithdrawalModel.fromEntity(WithdrawalEntity entity) {
    return WithdrawalModel(
      id: entity.id,
      campaignId: entity.campaignId,
      userId: entity.userId,
      amount: entity.amount,
      status: entity.status.name,
      targetBankName: entity.targetBankName,
      targetAccountNumber: entity.targetAccountNumber,
      targetAccountHolder: entity.targetAccountHolder,
      proofFileUrl: entity.proofFileUrl,
      adminNotes: entity.adminNotes,
      createdAt: entity.createdAt,
      processedAt: entity.processedAt,
    );
  }

  /// Convert for INSERT
  Map<String, dynamic> toInsertMap() {
    return {
      'campaign_id': campaignId,
      'user_id': userId,
      'amount': amount,
      'target_bank_name': targetBankName,
      'target_account_number': targetAccountNumber,
      'target_account_holder': targetAccountHolder,
    };
  }

  static WithdrawalStatus _parseStatus(String status) {
    return WithdrawalStatus.values.firstWhere(
      (e) => e.name == status,
      orElse: () => WithdrawalStatus.pending,
    );
  }
}
