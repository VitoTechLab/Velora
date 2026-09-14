// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WalletModel _$WalletModelFromJson(Map<String, dynamic> json) => _WalletModel(
  id: json['id'] as String,
  userId: json['user_id'] as String,
  type: json['type'] as String,
  balance: (json['balance'] as num?)?.toDouble() ?? 0,
  campaignId: json['campaign_id'] as String?,
  bankName: json['bank_name'] as String?,
  bankAccountNumber: json['bank_account_number'] as String?,
  bankAccountHolder: json['bank_account_holder'] as String?,
  createdAt: DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
  campaignTitle: json['campaign_title'] as String?,
  campaignCoverImageUrl: json['campaign_cover_image_url'] as String?,
);

Map<String, dynamic> _$WalletModelToJson(_WalletModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'type': instance.type,
      'balance': instance.balance,
      'campaign_id': instance.campaignId,
      'bank_name': instance.bankName,
      'bank_account_number': instance.bankAccountNumber,
      'bank_account_holder': instance.bankAccountHolder,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'campaign_title': instance.campaignTitle,
      'campaign_cover_image_url': instance.campaignCoverImageUrl,
    };
