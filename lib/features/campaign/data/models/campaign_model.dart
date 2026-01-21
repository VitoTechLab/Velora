import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/campaign/domain/entities/campaign_entity.dart';

part 'campaign_model.freezed.dart';
part 'campaign_model.g.dart';

@freezed
abstract class CampaignModel with _$CampaignModel {
  const CampaignModel._();

  const factory CampaignModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'category_id') String? categoryId,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'cover_image_url') String? coverImageUrl,
    @JsonKey(name: 'target_amount') required double targetAmount,
    @JsonKey(name: 'amount_raised') @Default(0) double amountRaised,
    @JsonKey(name: 'current_balance') @Default(0) double currentBalance,
    @JsonKey(name: 'donor_count') @Default(0) int donorCount,
    @JsonKey(name: 'status') @Default('active') String status,
    @JsonKey(name: 'is_verified') @Default(false) bool isVerified,
    @JsonKey(name: 'location_city') String? locationCity,
    @JsonKey(name: 'end_date') DateTime? endDate,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'completed_at') DateTime? completedAt,

    // Joined from user_profiles (read-only)
    @JsonKey(name: 'organizer_username') String? organizerUsername,
    @JsonKey(name: 'organizer_avatar_url') String? organizerAvatarUrl,

    // Joined from campaign_categories (read-only)
    @JsonKey(name: 'category_name') String? categoryName,
    @JsonKey(name: 'category_slug') String? categorySlug,

    // Bank details for withdrawal processing
    @JsonKey(name: 'withdrawal_bank_name') String? withdrawalBankName,
    @JsonKey(name: 'withdrawal_account_number') String? withdrawalAccountNumber,
    @JsonKey(name: 'withdrawal_account_holder') String? withdrawalAccountHolder,
  }) = _CampaignModel;

  factory CampaignModel.fromJson(Map<String, dynamic> json) =>
      _$CampaignModelFromJson(json);

  CampaignEntity toEntity() {
    return CampaignEntity(
      id: id,
      userId: userId,
      categoryId: categoryId,
      title: title,
      description: description,
      coverImageUrl: coverImageUrl,
      targetAmount: targetAmount,
      amountRaised: amountRaised,
      currentBalance: currentBalance,
      donorCount: donorCount,
      status: _parseStatus(status),
      isVerified: isVerified,
      locationCity: locationCity,
      endDate: endDate,
      createdAt: createdAt,
      updatedAt: updatedAt,
      completedAt: completedAt,
      organizerUsername: organizerUsername,
      organizerAvatarUrl: organizerAvatarUrl,
      categoryName: categoryName,
      categorySlug: categorySlug,
      withdrawalBankName: withdrawalBankName,
      withdrawalAccountNumber: withdrawalAccountNumber,
      withdrawalAccountHolder: withdrawalAccountHolder,
    );
  }

  factory CampaignModel.fromEntity(CampaignEntity entity) {
    return CampaignModel(
      id: entity.id,
      userId: entity.userId,
      categoryId: entity.categoryId,
      title: entity.title,
      description: entity.description,
      coverImageUrl: entity.coverImageUrl,
      targetAmount: entity.targetAmount,
      amountRaised: entity.amountRaised,
      currentBalance: entity.currentBalance,
      donorCount: entity.donorCount,
      status: entity.status.name,
      isVerified: entity.isVerified,
      locationCity: entity.locationCity,
      endDate: entity.endDate,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
      completedAt: entity.completedAt,
      withdrawalBankName: entity.withdrawalBankName,
      withdrawalAccountNumber: entity.withdrawalAccountNumber,
      withdrawalAccountHolder: entity.withdrawalAccountHolder,
    );
  }

  /// Convert for INSERT (excludes read-only fields)
  Map<String, dynamic> toInsertMap() {
    return {
      'user_id': userId,
      'category_id': categoryId,
      'title': title,
      'description': description,
      'cover_image_url': coverImageUrl,
      'target_amount': targetAmount,
      'status': status,
      'location_city': locationCity,
      'end_date': endDate?.toIso8601String(),
    };
  }

  Map<String, dynamic> toUpdateMap() {
    return {
      'category_id': categoryId,
      'title': title,
      'description': description,
      'cover_image_url': coverImageUrl,
      'target_amount': targetAmount,
      'status': status,
      'location_city': locationCity,
      'end_date': endDate?.toIso8601String(),
      'withdrawal_bank_name': withdrawalBankName,
      'withdrawal_account_number': withdrawalAccountNumber,
      'withdrawal_account_holder': withdrawalAccountHolder,
    };
  }

  static CampaignStatus _parseStatus(String status) {
    return CampaignStatus.values.firstWhere(
      (e) => e.name == status,
      orElse: () => CampaignStatus.active,
    );
  }
}
