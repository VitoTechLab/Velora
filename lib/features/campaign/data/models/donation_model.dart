import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/campaign/domain/entities/donation_entity.dart';

part 'donation_model.freezed.dart';
part 'donation_model.g.dart';

@freezed
abstract class DonationModel with _$DonationModel {
  const DonationModel._();

  const factory DonationModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'campaign_id') required String campaignId,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'amount_total') required double amountTotal,
    @JsonKey(name: 'platform_fee_percent')
    @Default(0)
    double platformFeePercent,
    @JsonKey(name: 'platform_fee_amount') double? platformFeeAmount,
    @JsonKey(name: 'amount_net') double? amountNet,
    @JsonKey(name: 'is_anonymous') @Default(false) bool isAnonymous,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'payment_status') @Default('pending') String paymentStatus,
    @JsonKey(name: 'payment_id') String? paymentId,
    @JsonKey(name: 'created_at') required DateTime createdAt,

    // Joined from user_profiles (read-only)
    @JsonKey(name: 'donor_username') String? donorUsername,
    @JsonKey(name: 'donor_display_name') String? donorDisplayName,
    @JsonKey(name: 'donor_avatar_url') String? donorAvatarUrl,

    // Joined from campaigns (read-only)
    @JsonKey(name: 'campaign_title', readValue: _readCampaignTitle)
    String? campaignTitle,
    @JsonKey(name: 'campaign_image_url', readValue: _readCampaignImageUrl)
    String? campaignImageUrl,
  }) = _DonationModel;

  factory DonationModel.fromJson(Map<String, dynamic> json) =>
      _$DonationModelFromJson(json);

  DonationEntity toEntity() {
    return DonationEntity(
      id: id,
      campaignId: campaignId,
      userId: userId,
      amountTotal: amountTotal,
      platformFeePercent: platformFeePercent,
      platformFeeAmount: platformFeeAmount,
      amountNet: amountNet,
      isAnonymous: isAnonymous,
      message: message,
      paymentStatus: _parsePaymentStatus(paymentStatus),
      paymentId: paymentId,
      createdAt: createdAt,
      donorUsername: donorUsername,
      donorDisplayName: donorDisplayName,
      donorAvatarUrl: donorAvatarUrl,
      campaignTitle: campaignTitle,
      campaignImageUrl: campaignImageUrl,
    );
  }

  factory DonationModel.fromEntity(DonationEntity entity) {
    return DonationModel(
      id: entity.id,
      campaignId: entity.campaignId,
      userId: entity.userId,
      amountTotal: entity.amountTotal,
      platformFeePercent: entity.platformFeePercent,
      isAnonymous: entity.isAnonymous,
      message: entity.message,
      paymentStatus: entity.paymentStatus.name,
      paymentId: entity.paymentId,
      createdAt: entity.createdAt,
      campaignTitle: entity.campaignTitle,
      campaignImageUrl: entity.campaignImageUrl,
    );
  }

  /// Convert for INSERT (excludes computed columns)
  Map<String, dynamic> toInsertMap() {
    return {
      'campaign_id': campaignId,
      'user_id': userId,
      'amount_total': amountTotal,
      'platform_fee_percent': platformFeePercent,
      'is_anonymous': isAnonymous,
      'message': message,
      'payment_status': paymentStatus,
      'payment_id': paymentId,
    };
  }

  static PaymentStatus _parsePaymentStatus(String status) {
    return PaymentStatus.values.firstWhere(
      (e) => e.name == status,
      orElse: () => PaymentStatus.pending,
    );
  }
}

Object? _readCampaignTitle(Map json, String key) {
  if (json['campaigns'] is Map) {
    return json['campaigns']['title'];
  }
  return json['campaign_title']; // Fallback
}

Object? _readCampaignImageUrl(Map json, String key) {
  if (json['campaigns'] is Map) {
    return json['campaigns']['image_url'];
  }
  return json['campaign_image_url']; // Fallback
}
