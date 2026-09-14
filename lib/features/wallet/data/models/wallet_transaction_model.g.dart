// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WalletTransactionModel _$WalletTransactionModelFromJson(
  Map<String, dynamic> json,
) => _WalletTransactionModel(
  id: json['id'] as String,
  walletId: json['wallet_id'] as String,
  userId: json['user_id'] as String,
  type: json['type'] as String,
  amount: (json['amount'] as num).toDouble(),
  balanceChange: (json['balance_change'] as num).toDouble(),
  balanceAfter: (json['balance_after'] as num).toDouble(),
  status: json['status'] as String? ?? 'pending',
  referenceId: json['reference_id'] as String?,
  referenceType: json['reference_type'] as String?,
  description: json['description'] as String?,
  paymentId: json['payment_id'] as String?,
  paymentMethod: json['payment_method'] as String?,
  createdAt: DateTime.parse(json['created_at'] as String),
  completedAt: json['completed_at'] == null
      ? null
      : DateTime.parse(json['completed_at'] as String),
);

Map<String, dynamic> _$WalletTransactionModelToJson(
  _WalletTransactionModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'wallet_id': instance.walletId,
  'user_id': instance.userId,
  'type': instance.type,
  'amount': instance.amount,
  'balance_change': instance.balanceChange,
  'balance_after': instance.balanceAfter,
  'status': instance.status,
  'reference_id': instance.referenceId,
  'reference_type': instance.referenceType,
  'description': instance.description,
  'payment_id': instance.paymentId,
  'payment_method': instance.paymentMethod,
  'created_at': instance.createdAt.toIso8601String(),
  'completed_at': instance.completedAt?.toIso8601String(),
};
