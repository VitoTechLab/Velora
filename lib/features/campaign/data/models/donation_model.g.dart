// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'donation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DonationModel _$DonationModelFromJson(Map<String, dynamic> json) =>
    _DonationModel(
      id: json['id'] as String,
      campaignId: json['campaign_id'] as String,
      userId: json['user_id'] as String,
      amountTotal: (json['amount_total'] as num).toDouble(),
      platformFeePercent:
          (json['platform_fee_percent'] as num?)?.toDouble() ?? 0,
      platformFeeAmount: (json['platform_fee_amount'] as num?)?.toDouble(),
      amountNet: (json['amount_net'] as num?)?.toDouble(),
      isAnonymous: json['is_anonymous'] as bool? ?? false,
      message: json['message'] as String?,
      paymentStatus: json['payment_status'] as String? ?? 'pending',
      paymentId: json['payment_id'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      donorUsername: json['donor_username'] as String?,
      donorDisplayName: json['donor_display_name'] as String?,
      donorAvatarUrl: json['donor_avatar_url'] as String?,
      campaignTitle: _readCampaignTitle(json, 'campaign_title') as String?,
      campaignImageUrl:
          _readCampaignImageUrl(json, 'campaign_image_url') as String?,
    );

Map<String, dynamic> _$DonationModelToJson(_DonationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'campaign_id': instance.campaignId,
      'user_id': instance.userId,
      'amount_total': instance.amountTotal,
      'platform_fee_percent': instance.platformFeePercent,
      'platform_fee_amount': instance.platformFeeAmount,
      'amount_net': instance.amountNet,
      'is_anonymous': instance.isAnonymous,
      'message': instance.message,
      'payment_status': instance.paymentStatus,
      'payment_id': instance.paymentId,
      'created_at': instance.createdAt.toIso8601String(),
      'donor_username': instance.donorUsername,
      'donor_display_name': instance.donorDisplayName,
      'donor_avatar_url': instance.donorAvatarUrl,
      'campaign_title': instance.campaignTitle,
      'campaign_image_url': instance.campaignImageUrl,
    };
