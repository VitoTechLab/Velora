import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/search/data/models/search_campaign_result_model.dart';

part 'campaign_entity.freezed.dart';

/// Campaign status enum matching SQL schema
enum CampaignStatus { active, paused, completed, withdrawn, banned }

@freezed
abstract class CampaignEntity with _$CampaignEntity {
  const factory CampaignEntity({
    required String id,
    required String userId,
    String? categoryId,
    required String title,
    required String description,
    String? coverImageUrl,
    required double targetAmount,
    @Default(0) double amountRaised,
    @Default(0) double currentBalance,
    @Default(0) int donorCount,
    @Default(CampaignStatus.active) CampaignStatus status,
    @Default(false) bool isVerified,
    String? locationCity,
    DateTime? endDate,
    required DateTime createdAt,
    DateTime? updatedAt,
    DateTime? completedAt,

    // Joined from user_profiles (read-only)
    String? organizerUsername,
    String? organizerAvatarUrl,

    // Joined from campaign_categories (read-only)
    String? categoryName,
    String? categorySlug,

    // Bank details for withdrawal processing
    String? withdrawalBankName,
    String? withdrawalAccountNumber,
    String? withdrawalAccountHolder,
  }) = _CampaignEntity;

  const CampaignEntity._();

  /// Calculate progress percentage based on amount raised vs target
  double get progressPercent =>
      targetAmount > 0 ? (amountRaised / targetAmount * 100).clamp(0, 100) : 0;

  /// Convert to SearchCampaignResultModel for search results
  SearchCampaignResultModel toSearchResultModel() {
    return SearchCampaignResultModel(
      id: id,
      title: title,
      coverImageUrl: coverImageUrl,
      amountRaised: amountRaised,
      targetAmount: targetAmount,
      organizerUsername: organizerUsername ?? '',
      categoryName: categoryName,
    );
  }
}
