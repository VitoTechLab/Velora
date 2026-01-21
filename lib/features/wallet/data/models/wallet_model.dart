import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/wallet/domain/entities/wallet_entity.dart';

part 'wallet_model.freezed.dart';
part 'wallet_model.g.dart';

@freezed
abstract class WalletModel with _$WalletModel {
  const WalletModel._();

  const factory WalletModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'type') required String type,
    @JsonKey(name: 'balance') @Default(0) double balance,
    @JsonKey(name: 'campaign_id') String? campaignId,
    @JsonKey(name: 'bank_name') String? bankName,
    @JsonKey(name: 'bank_account_number') String? bankAccountNumber,
    @JsonKey(name: 'bank_account_holder') String? bankAccountHolder,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,

    // Joined from campaigns (when fetching campaign wallets)
    @JsonKey(name: 'campaign_title') String? campaignTitle,
    @JsonKey(name: 'campaign_cover_image_url') String? campaignCoverImageUrl,
  }) = _WalletModel;

  factory WalletModel.fromJson(Map<String, dynamic> json) =>
      _$WalletModelFromJson(json);

  WalletEntity toEntity() {
    return WalletEntity(
      id: id,
      userId: userId,
      type: _parseWalletType(type),
      balance: balance,
      campaignId: campaignId,
      bankName: bankName,
      bankAccountNumber: bankAccountNumber,
      bankAccountHolder: bankAccountHolder,
      createdAt: createdAt,
      updatedAt: updatedAt,
      campaignTitle: campaignTitle,
      campaignCoverImageUrl: campaignCoverImageUrl,
    );
  }

  factory WalletModel.fromEntity(WalletEntity entity) {
    return WalletModel(
      id: entity.id,
      userId: entity.userId,
      type: entity.type.name,
      balance: entity.balance,
      campaignId: entity.campaignId,
      bankName: entity.bankName,
      bankAccountNumber: entity.bankAccountNumber,
      bankAccountHolder: entity.bankAccountHolder,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
      campaignTitle: entity.campaignTitle,
      campaignCoverImageUrl: entity.campaignCoverImageUrl,
    );
  }

  /// Convert entity to JSON for insert (excludes id, timestamps, and joined fields)
  static Map<String, dynamic> toInsertJson(WalletEntity entity) {
    return {
      'user_id': entity.userId,
      'type': entity.type.name,
      'balance': entity.balance,
      if (entity.campaignId != null) 'campaign_id': entity.campaignId,
      if (entity.bankName != null) 'bank_name': entity.bankName,
      if (entity.bankAccountNumber != null)
        'bank_account_number': entity.bankAccountNumber,
      if (entity.bankAccountHolder != null)
        'bank_account_holder': entity.bankAccountHolder,
    };
  }

  static WalletType _parseWalletType(String type) {
    return WalletType.values.firstWhere(
      (e) => e.name == type,
      orElse: () => WalletType.main,
    );
  }
}
