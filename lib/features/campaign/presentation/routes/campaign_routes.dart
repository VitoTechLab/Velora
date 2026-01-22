import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../screens/campaign_detail_screen.dart';
import '../bloc/campaign_bloc.dart';
import '../../domain/entities/campaign_detail_model.dart';

class CampaignRoutes {
  static const String detail = '/campaign/detail';

  /// Show campaign detail with real data
  static void showDetail(BuildContext context, CampaignDetailModel campaign) {
    final bloc = context.read<CampaignBloc>();
    Navigator.of(context).push(CampaignDetailScreen.route(campaign: campaign, bloc: bloc));
  }
}
