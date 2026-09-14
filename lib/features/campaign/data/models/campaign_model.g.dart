// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CampaignModel _$CampaignModelFromJson(Map<String, dynamic> json) =>
    _CampaignModel(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      categoryId: json['category_id'] as String?,
      title: json['title'] as String,
      description: json['description'] as String,
      coverImageUrl: json['cover_image_url'] as String?,
      targetAmount: (json['target_amount'] as num).toDouble(),
      amountRaised: (json['amount_raised'] as num?)?.toDouble() ?? 0,
      currentBalance: (json['current_balance'] as num?)?.toDouble() ?? 0,
      donorCount: (json['donor_count'] as num?)?.toInt() ?? 0,
      status: json['status'] as String? ?? 'active',
      isVerified: json['is_verified'] as bool? ?? false,
      locationCity: json['location_city'] as String?,
      endDate: json['end_date'] == null
          ? null
          : DateTime.parse(json['end_date'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      completedAt: json['completed_at'] == null
          ? null
          : DateTime.parse(json['completed_at'] as String),
      organizerUsername: json['organizer_username'] as String?,
      organizerAvatarUrl: json['organizer_avatar_url'] as String?,
      categoryName: json['category_name'] as String?,
      categorySlug: json['category_slug'] as String?,
      withdrawalBankName: json['withdrawal_bank_name'] as String?,
      withdrawalAccountNumber: json['withdrawal_account_number'] as String?,
      withdrawalAccountHolder: json['withdrawal_account_holder'] as String?,
    );

Map<String, dynamic> _$CampaignModelToJson(_CampaignModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'category_id': instance.categoryId,
      'title': instance.title,
      'description': instance.description,
      'cover_image_url': instance.coverImageUrl,
      'target_amount': instance.targetAmount,
      'amount_raised': instance.amountRaised,
      'current_balance': instance.currentBalance,
      'donor_count': instance.donorCount,
      'status': instance.status,
      'is_verified': instance.isVerified,
      'location_city': instance.locationCity,
      'end_date': instance.endDate?.toIso8601String(),
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'completed_at': instance.completedAt?.toIso8601String(),
      'organizer_username': instance.organizerUsername,
      'organizer_avatar_url': instance.organizerAvatarUrl,
      'category_name': instance.categoryName,
      'category_slug': instance.categorySlug,
      'withdrawal_bank_name': instance.withdrawalBankName,
      'withdrawal_account_number': instance.withdrawalAccountNumber,
      'withdrawal_account_holder': instance.withdrawalAccountHolder,
    };
