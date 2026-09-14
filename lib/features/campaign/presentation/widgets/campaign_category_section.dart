import 'package:flutter/material.dart';
import 'campaign_card.dart';

import '../../../../l10n/app_localizations.dart';
import '../../domain/entities/campaign_model.dart';

class CampaignCategorySection extends StatelessWidget {
  final String categoryName;
  final List<CampaignModel> campaigns;
  final VoidCallback onSeeMore;
  final void Function(CampaignModel campaign)? onCampaignTap;

  const CampaignCategorySection({
    super.key,
    required this.categoryName,
    required this.campaigns,
    required this.onSeeMore,
    this.onCampaignTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final l10n = AppLocalizations.of(context);

    // Show only 3 campaigns
    final displayCampaigns = campaigns.take(3).toList();

    if (displayCampaigns.isEmpty) {
      return const SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  categoryName,
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: colorScheme.onSurface,
                  ),
                ),
              ),
              if (campaigns.length > 3)
                TextButton.icon(
                  onPressed: onSeeMore,
                  icon: Icon(
                    Icons.arrow_forward,
                    size: 18,
                    color: colorScheme.primary,
                  ),
                  label: Text(
                    l10n?.campaignSeeMore ?? 'See More',
                    style: theme.textTheme.labelLarge?.copyWith(
                      color: colorScheme.primary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
            ],
          ),
        ),

        // Campaign Cards
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: displayCampaigns.map((campaign) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: _buildCampaignCard(context, campaign),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildCampaignCard(BuildContext context, CampaignModel campaign) =>
      CampaignCard(
        campaign: campaign,
        onTap: () => onCampaignTap?.call(campaign),
      );
}
