import 'package:flutter/material.dart';
import '../../domain/entities/campaign_model.dart';
import 'campaign_card.dart';

class CampaignListCard extends StatelessWidget {
  final CampaignModel campaign;
  final VoidCallback? onTap;
  const CampaignListCard({super.key, required this.campaign, this.onTap});
  @override
  Widget build(BuildContext context) => Column(
    children: [
      CampaignCard(campaign: campaign, onTap: onTap, compact: true),
      const Divider(height: 1),
    ],
  );
}
