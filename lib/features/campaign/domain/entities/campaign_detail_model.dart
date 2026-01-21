import 'campaign_entity.dart';
import 'campaign_type.dart';

class CampaignDetailModel {
  final String id;
  final String title;
  final String creatorName;
  final bool isVerified;
  final CampaignType type;
  final String category;
  final double raised;
  final double target;
  final String timeLeftLabel;
  final int donorsCount;
  final int updatesCount;
  final int milestonesCount;
  final int commentsCount;
  final String? coverImageUrl;
  final String? description;

  // Equity / debt extras
  final double? unitPrice;
  final int? minBuyUnits;
  final String? riskGrade;
  final double? projectedReturn;
  final double? equityChangePct;

  const CampaignDetailModel({
    required this.id,
    required this.title,
    required this.creatorName,
    required this.isVerified,
    required this.type,
    required this.category,
    required this.raised,
    required this.target,
    required this.timeLeftLabel,
    required this.donorsCount,
    required this.updatesCount,
    required this.milestonesCount,
    required this.commentsCount,
    this.coverImageUrl,
    this.description,
    this.unitPrice,
    this.minBuyUnits,
    this.riskGrade,
    this.projectedReturn,
    this.equityChangePct,
  });

  /// Factory constructor from CampaignEntity
  factory CampaignDetailModel.fromEntity(CampaignEntity entity) {
    final now = DateTime.now();
    String timeLeftLabel;
    if (entity.endDate == null) {
      timeLeftLabel = 'Flexible';
    } else {
      final diff = entity.endDate!.difference(now);
      if (diff.isNegative) {
        timeLeftLabel = 'Ended';
      } else if (diff.inDays >= 1) {
        timeLeftLabel = 'D-${diff.inDays}';
      } else if (diff.inHours >= 1) {
        timeLeftLabel = '${diff.inHours}h';
      } else {
        timeLeftLabel = '${diff.inMinutes}m';
      }
    }

    return CampaignDetailModel(
      id: entity.id,
      title: entity.title,
      creatorName: entity.organizerUsername ?? 'Organizer',
      isVerified: entity.isVerified,
      type: CampaignType.donation, // Default, extend later
      category: entity.categoryName ?? 'General',
      raised: entity.amountRaised,
      target: entity.targetAmount,
      timeLeftLabel: timeLeftLabel,
      donorsCount: entity.donorCount,
      updatesCount: 0, // Will be fetched separately
      milestonesCount: 0,
      commentsCount: 0,
      coverImageUrl: entity.coverImageUrl,
      description: entity.description,
    );
  }

  double get progressPercent => (raised / target * 100).clamp(0, 100);

  String get ctaLabel {
    switch (type) {
      case CampaignType.donation:
      case CampaignType.emergency:
        return 'Donate';
      case CampaignType.reward:
        return 'Back This Project';
      case CampaignType.equity:
        return 'Invest Now';
      case CampaignType.debt:
        return 'Lend';
      case CampaignType.subscription:
        return 'Subscribe';
      default:
        return 'Support';
    }
  }
}

class UpdateModel {
  final String id;
  final String title;
  final String dateLabel;
  final String body;

  const UpdateModel({
    required this.id,
    required this.title,
    required this.dateLabel,
    required this.body,
  });
}

class CommentModel {
  final String id;
  final String userName;
  final String body;
  final String timeAgo;
  final int likesCount;

  const CommentModel({
    required this.id,
    required this.userName,
    required this.body,
    required this.timeAgo,
    this.likesCount = 0,
  });
}

class DocumentModel {
  final String id;
  final String title;
  final String typeLabel;
  final String status;

  const DocumentModel({
    required this.id,
    required this.title,
    required this.typeLabel,
    required this.status,
  });
}

class MilestoneModel {
  final String id;
  final String title;
  final String dueLabel;
  final double amount;
  final String status;

  const MilestoneModel({
    required this.id,
    required this.title,
    required this.dueLabel,
    required this.amount,
    required this.status,
  });
}

class BreakdownItem {
  final String label;
  final double amount;
  final double percent;

  const BreakdownItem({
    required this.label,
    required this.amount,
    required this.percent,
  });
}

class ProofItem {
  final String id;
  final String caption;

  const ProofItem({required this.id, required this.caption});
}
