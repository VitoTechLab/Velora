// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'withdrawal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WithdrawalModel _$WithdrawalModelFromJson(Map<String, dynamic> json) =>
    _WithdrawalModel(
      id: json['id'] as String,
      campaignId: json['campaign_id'] as String,
      userId: json['user_id'] as String,
      amount: (json['amount'] as num).toDouble(),
      status: json['status'] as String? ?? 'pending',
      targetBankName: json['target_bank_name'] as String,
      targetAccountNumber: json['target_account_number'] as String,
      targetAccountHolder: json['target_account_holder'] as String,
      proofFileUrl: json['proof_file_url'] as String?,
      adminNotes: json['admin_notes'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      processedAt: json['processed_at'] == null
          ? null
          : DateTime.parse(json['processed_at'] as String),
    );

Map<String, dynamic> _$WithdrawalModelToJson(_WithdrawalModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'campaign_id': instance.campaignId,
      'user_id': instance.userId,
      'amount': instance.amount,
      'status': instance.status,
      'target_bank_name': instance.targetBankName,
      'target_account_number': instance.targetAccountNumber,
      'target_account_holder': instance.targetAccountHolder,
      'proof_file_url': instance.proofFileUrl,
      'admin_notes': instance.adminNotes,
      'created_at': instance.createdAt.toIso8601String(),
      'processed_at': instance.processedAt?.toIso8601String(),
    };
