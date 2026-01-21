import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_entity.freezed.dart';

/// Type of wallet
enum WalletType {
  /// Main personal wallet for top-ups and donations
  main,

  /// Campaign wallet for receiving donations
  campaign,
}

/// Wallet entity representing a user's wallet
///
/// Users have one main wallet and one wallet per campaign they own.
/// - Main wallet: Can be topped up, used to donate to campaigns
/// - Campaign wallet: Receives donations, linked to specific campaign
@freezed
abstract class WalletEntity with _$WalletEntity {
  const factory WalletEntity({
    required String id,
    required String userId,
    required WalletType type,
    @Default(0) double balance,

    /// For campaign wallets, the linked campaign ID
    String? campaignId,

    /// Bank account details for withdrawals
    String? bankName,
    String? bankAccountNumber,
    String? bankAccountHolder,

    /// Timestamps
    required DateTime createdAt,
    DateTime? updatedAt,

    // Joined data (read-only, from campaigns table)
    /// Campaign title for campaign wallets
    String? campaignTitle,

    /// Campaign cover image for campaign wallets
    String? campaignCoverImageUrl,
  }) = _WalletEntity;

  const WalletEntity._();

  /// Check if wallet has bank details configured
  bool get hasBankDetails =>
      bankName != null &&
      bankName!.isNotEmpty &&
      bankAccountNumber != null &&
      bankAccountNumber!.isNotEmpty &&
      bankAccountHolder != null &&
      bankAccountHolder!.isNotEmpty;

  /// Check if wallet can withdraw (has balance and bank details)
  bool get canWithdraw => balance > 0 && hasBankDetails;

  /// Check if this is the main wallet
  bool get isMainWallet => type == WalletType.main;

  /// Check if this is a campaign wallet
  bool get isCampaignWallet => type == WalletType.campaign;
}
