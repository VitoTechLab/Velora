import 'package:freezed_annotation/freezed_annotation.dart';

part 'donation_entity.freezed.dart';

/// Donation payment status
enum PaymentStatus { pending, success, failed }

@freezed
abstract class DonationEntity with _$DonationEntity {
  const factory DonationEntity({
    required String id,
    required String campaignId,
    required String userId,
    required double amountTotal,
    @Default(0) double platformFeePercent,
    double? platformFeeAmount,
    double? amountNet,
    @Default(false) bool isAnonymous,
    String? message,
    @Default(PaymentStatus.pending) PaymentStatus paymentStatus,
    String? paymentId,
    required DateTime createdAt,

    // Joined from user_profiles (read-only)
    String? donorUsername,
    String? donorDisplayName,
    String? donorAvatarUrl,
  }) = _DonationEntity;
}
