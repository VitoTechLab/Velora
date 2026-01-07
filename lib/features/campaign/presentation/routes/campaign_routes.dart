import 'package:flutter/material.dart';
import '../screens/campaign_detail_screen.dart';
import '../../domain/entities/campaign_detail_model.dart';
import '../../data/mock_campaign_detail.dart';

class CampaignRoutes {
  static const String detail = '/campaign/detail';

  /// Preview donation campaign with mock data
  static void showDonationDetail(BuildContext context) {
    Navigator.of(
      context,
    ).push(CampaignDetailScreen.route(campaign: mockDonationCampaign));
  }

  /// Preview equity campaign with mock data
  static void showEquityDetail(BuildContext context) {
    Navigator.of(
      context,
    ).push(CampaignDetailScreen.route(campaign: mockEquityCampaign));
  }

  /// Show campaign detail with custom data
  static void showDetail(BuildContext context, CampaignDetailModel campaign) {
    Navigator.of(context).push(CampaignDetailScreen.route(campaign: campaign));
  }
}
