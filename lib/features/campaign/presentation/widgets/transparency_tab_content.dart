import 'package:flutter/material.dart';
import '../../domain/entities/campaign_document_entity.dart';
import '../../domain/entities/campaign_milestone_entity.dart';
import '../../domain/entities/campaign_fund_breakdown_entity.dart';
import '../../domain/entities/campaign_proof_item_entity.dart';
import 'fund_breakdown_section.dart';
import 'documents_section.dart';
import 'milestones_section.dart';
import 'proof_gallery_section.dart';
import 'risk_disclaimer_section.dart';

class TransparencyTabContent extends StatelessWidget {
  final List<CampaignFundBreakdownEntity> fundBreakdown;
  final List<CampaignDocumentEntity> documents;
  final List<CampaignMilestoneEntity> milestones;
  final List<CampaignProofItemEntity> proofItems;
  final bool showRiskDisclaimer;
  final String? riskGrade;

  const TransparencyTabContent({
    super.key,
    required this.fundBreakdown,
    required this.documents,
    required this.milestones,
    required this.proofItems,
    this.showRiskDisclaimer = false,
    this.riskGrade,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 1. Fund Usage Breakdown
          FundBreakdownSection(items: fundBreakdown),
          const SizedBox(height: 24),

          Divider(color: colorScheme.outlineVariant.withValues(alpha: 0.5)),
          const SizedBox(height: 24),

          // 2. Documents
          DocumentsSection(documents: documents),
          const SizedBox(height: 24),

          Divider(color: colorScheme.outlineVariant.withValues(alpha: 0.5)),
          const SizedBox(height: 24),

          // 3. Milestones & Tranches
          MilestonesSection(milestones: milestones),
          const SizedBox(height: 24),

          Divider(color: colorScheme.outlineVariant.withValues(alpha: 0.5)),
          const SizedBox(height: 24),

          // 4. Proof Updates
          ProofGallerySection(proofItems: proofItems),
          const SizedBox(height: 24),

          // 5. Risk & Disclaimer (for equity/debt)
          if (showRiskDisclaimer && riskGrade != null) ...[
            Divider(color: colorScheme.outlineVariant.withValues(alpha: 0.5)),
            const SizedBox(height: 24),
            RiskDisclaimerSection(riskGrade: riskGrade!),
          ],
        ],
      ),
    );
  }
}
