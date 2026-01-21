import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/campaign/domain/entities/donation_entity.dart';
import 'package:velora/features/campaign/domain/repositories/campaign_repository.dart';

/// Mock Bank Transfer Gateway for donation payments.
///
/// **IMPORTANT - MOCK IMPLEMENTATION**:
/// This gateway automatically marks donations as "success" after user
/// confirms transfer. In production, this MUST be replaced with actual
/// payment verification via webhook from a real payment gateway
/// (e.g., Midtrans, Xendit, Stripe).
///
/// The bank details are for display purposes in the UI when users
/// initiate a bank transfer donation.
class BankTransferGateway {
  BankTransferGateway({required CampaignRepository repository})
      : _repository = repository;

  final CampaignRepository _repository;

  /// Bank name for display in transfer instructions
  static const String bankName = 'BANK BCA';

  /// Account number for display in transfer instructions
  static const String accountNumber = '123';

  /// Account holder name for display in transfer instructions
  static const String accountHolder = 'VELORA SINAR INDONESIA';

  /// Platform fee percentage applied to donations
  /// In a real implementation, this would be configurable
  static const double platformFeePercent = 5.0;

  /// Confirms payment and auto-marks donation as success.
  ///
  /// **MOCK IMPLEMENTATION**: In production, this should only be called
  /// by a webhook from the payment gateway after actual payment verification.
  ///
  /// This method:
  /// 1. Updates the donation status from 'pending' to 'success'
  /// 2. The database trigger then automatically updates campaign stats
  ///    (amount_raised, current_balance, donor_count)
  Future<Either<Failure, void>> confirmPayment({
    required String donationId,
    String? paymentId,
  }) async {
    // **MOCK**: Auto-approve payment immediately
    // In production, this would be called by payment gateway webhook
    // after verifying the actual bank transfer was received
    final mockPaymentId =
        paymentId ?? 'MOCK-${DateTime.now().millisecondsSinceEpoch}';

    return await _repository
        .updateDonationStatus(
          donationId,
          'success',
          paymentId: mockPaymentId,
        )
        .then((result) => result.map((_) {}));
  }

  /// Creates a pending donation and immediately confirms it (mock flow).
  ///
  /// This simulates the full flow:
  /// 1. User initiates donation
  /// 2. Donation created with 'pending' status
  /// 3. User "transfers" money (mock - we skip this)
  /// 4. Payment confirmed and status updated to 'success'
  ///
  /// Returns the donation ID on success.
  Future<Either<Failure, String>> processMockDonation({
    required String campaignId,
    required String userId,
    required double amount,
    String? message,
    bool isAnonymous = false,
  }) async {
    final donationEntity = DonationEntity(
      id: '', // Will be assigned by database
      campaignId: campaignId,
      userId: userId,
      amountTotal: amount,
      platformFeePercent: platformFeePercent,
      isAnonymous: isAnonymous,
      message: message,
      paymentStatus: PaymentStatus.pending,
      createdAt: DateTime.now(),
    );

    final donation = await _repository.createDonation(donationEntity);

    return donation.fold(
      (failure) => Left(failure),
      (createdDonation) async {
        // **MOCK**: Immediately confirm the payment
        final confirmResult =
            await confirmPayment(donationId: createdDonation.id);
        return confirmResult.fold(
          (failure) => Left(failure),
          (_) => Right(createdDonation.id),
        );
      },
    );
  }
}
