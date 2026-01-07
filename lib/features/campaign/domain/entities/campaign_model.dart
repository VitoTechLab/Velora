import 'campaign_type.dart';

class CampaignModel {
  final String id;
  final String title;
  final String creatorName;
  final bool isVerified;
  final CampaignType type;
  final String category;
  final double raised;
  final double target;
  final int donorsCount;
  final int updatesCount;
  final int milestonesCount;
  final int? investorsCount;
  final double? equityChangePct;
  final String timeLeftLabel;
  final bool isFeatured;

  const CampaignModel({
    required this.id,
    required this.title,
    required this.creatorName,
    required this.isVerified,
    required this.type,
    required this.category,
    required this.raised,
    required this.target,
    required this.donorsCount,
    required this.updatesCount,
    required this.milestonesCount,
    this.investorsCount,
    this.equityChangePct,
    required this.timeLeftLabel,
    this.isFeatured = false,
  });

  double get progressPercent => (raised / target * 100).clamp(0, 100);

  String get ctaLabel {
    switch (type) {
      case CampaignType.donation:
      case CampaignType.emergency:
        return 'Donate';
      case CampaignType.reward:
        return 'Back';
      case CampaignType.equity:
        return 'Invest';
      case CampaignType.debt:
        return 'Lend';
      case CampaignType.subscription:
        return 'Subscribe';
      default:
        return 'Support';
    }
  }
}
