import 'package:flutter/material.dart';
import '../../domain/entities/campaign_model.dart';
import 'campaign_card.dart';

/// Featured stories use the same funding hierarchy and scroll with discovery.
class ElegantFeaturedCarousel extends StatelessWidget {
  final List<CampaignModel> campaigns;
  final void Function(CampaignModel campaign)? onCampaignTap;
  const ElegantFeaturedCarousel({
    super.key,
    required this.campaigns,
    this.onCampaignTap,
  });
  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Column(
      children: campaigns
          .take(10)
          .map(
            (campaign) => CampaignCard(
              campaign: campaign,
              onTap: () => onCampaignTap?.call(campaign),
            ),
          )
          .toList(),
    ),
  );
}
