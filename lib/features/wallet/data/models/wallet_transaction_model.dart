import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/wallet/domain/entities/wallet_transaction_entity.dart';

part 'wallet_transaction_model.freezed.dart';
part 'wallet_transaction_model.g.dart';

@freezed
abstract class WalletTransactionModel with _$WalletTransactionModel {
  const WalletTransactionModel._();

  const factory WalletTransactionModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'wallet_id') required String walletId,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'type') required String type,
    @JsonKey(name: 'amount') required double amount,
    @JsonKey(name: 'balance_change') required double balanceChange,
    @JsonKey(name: 'balance_after') required double balanceAfter,
    @JsonKey(name: 'status') @Default('pending') String status,
    @JsonKey(name: 'reference_id') String? referenceId,
    @JsonKey(name: 'reference_type') String? referenceType,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'payment_id') String? paymentId,
    @JsonKey(name: 'payment_method') String? paymentMethod,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'completed_at') DateTime? completedAt,
  }) = _WalletTransactionModel;

  factory WalletTransactionModel.fromJson(Map<String, dynamic> json) =>
      _$WalletTransactionModelFromJson(json);

  WalletTransactionEntity toEntity() {
    return WalletTransactionEntity(
      id: id,
      walletId: walletId,
      userId: userId,
      type: _parseTransactionType(type),
      amount: amount,
      balanceChange: balanceChange,
      balanceAfter: balanceAfter,
      status: _parseTransactionStatus(status),
      referenceId: referenceId,
      referenceType: referenceType,
      description: description,
      paymentId: paymentId,
      paymentMethod: paymentMethod,
      createdAt: createdAt,
      completedAt: completedAt,
    );
  }

  factory WalletTransactionModel.fromEntity(WalletTransactionEntity entity) {
    return WalletTransactionModel(
      id: entity.id,
      walletId: entity.walletId,
      userId: entity.userId,
      type: entity.type.name,
      amount: entity.amount,
      balanceChange: entity.balanceChange,
      balanceAfter: entity.balanceAfter,
      status: entity.status.name,
      referenceId: entity.referenceId,
      referenceType: entity.referenceType,
      description: entity.description,
      paymentId: entity.paymentId,
      paymentMethod: entity.paymentMethod,
      createdAt: entity.createdAt,
      completedAt: entity.completedAt,
    );
  }

  /// Convert entity to JSON for insert (excludes id and timestamps)
  static Map<String, dynamic> toInsertJson(WalletTransactionEntity entity) {
    return {
      'wallet_id': entity.walletId,
      'user_id': entity.userId,
      'type': entity.type.name,
      'amount': entity.amount,
      'balance_change': entity.balanceChange,
      'balance_after': entity.balanceAfter,
      'status': entity.status.name,
      if (entity.referenceId != null) 'reference_id': entity.referenceId,
      if (entity.referenceType != null) 'reference_type': entity.referenceType,
      if (entity.description != null) 'description': entity.description,
      if (entity.paymentId != null) 'payment_id': entity.paymentId,
      if (entity.paymentMethod != null) 'payment_method': entity.paymentMethod,
    };
  }

  static WalletTransactionType _parseTransactionType(String type) {
    return WalletTransactionType.values.firstWhere(
      (e) => e.name == type,
      orElse: () => WalletTransactionType.topup,
    );
  }

  static WalletTransactionStatus _parseTransactionStatus(String status) {
    return WalletTransactionStatus.values.firstWhere(
      (e) => e.name == status,
      orElse: () => WalletTransactionStatus.pending,
    );
  }
}
