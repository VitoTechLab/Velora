import 'package:flutter/material.dart';
import '../screens/campaign_detail_screen.dart';
import '../../domain/entities/campaign_detail_model.dart';

class CampaignRoutes {
  static const String detail = '/campaign/detail';

  /// Show campaign detail with real data
  static void showDetail(BuildContext context, CampaignDetailModel campaign) {
    Navigator.of(context).push(CampaignDetailScreen.route(campaign: campaign));
  }
}
