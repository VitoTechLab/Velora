import 'package:flutter/material.dart';
import '../../domain/entities/campaign_detail_model.dart';
import 'fund_breakdown_section.dart';
import 'documents_section.dart';
import 'milestones_section.dart';
import 'proof_gallery_section.dart';
import 'risk_disclaimer_section.dart';

class TransparencyTabContent extends StatelessWidget {
  final List<BreakdownItem> fundBreakdown;
  final List<DocumentModel> documents;
  final List<MilestoneModel> milestones;
  final List<ProofItem> proofItems;
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
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Trust Dashboard Header
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  colorScheme.primaryContainer.withValues(alpha: 0.5),
                  colorScheme.secondaryContainer.withValues(alpha: 0.3),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: colorScheme.primary.withValues(alpha: 0.3),
              ),
            ),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: colorScheme.primary,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    Icons.verified_user,
                    color: colorScheme.onPrimary,
                    size: 24,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Trust Dashboard',
                        style: theme.textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: colorScheme.onSurface,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Complete transparency on fund usage and project progress',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 32),

          // 1. Fund Usage Breakdown
          FundBreakdownSection(items: fundBreakdown),
          const SizedBox(height: 32),

          Divider(color: colorScheme.outlineVariant.withValues(alpha: 0.5)),
          const SizedBox(height: 32),

          // 2. Documents
          DocumentsSection(documents: documents),
          const SizedBox(height: 32),

          Divider(color: colorScheme.outlineVariant.withValues(alpha: 0.5)),
          const SizedBox(height: 32),

          // 3. Milestones & Tranches
          MilestonesSection(milestones: milestones),
          const SizedBox(height: 32),

          Divider(color: colorScheme.outlineVariant.withValues(alpha: 0.5)),
          const SizedBox(height: 32),

          // 4. Proof Updates
          ProofGallerySection(proofItems: proofItems),
          const SizedBox(height: 32),

          // 5. Risk & Disclaimer (for equity/debt)
          if (showRiskDisclaimer && riskGrade != null) ...[
            Divider(color: colorScheme.outlineVariant.withValues(alpha: 0.5)),
            const SizedBox(height: 32),
            RiskDisclaimerSection(riskGrade: riskGrade!),
          ],
        ],
      ),
    );
  }
}
