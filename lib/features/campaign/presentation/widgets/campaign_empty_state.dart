import 'package:flutter/material.dart';
import 'package:velora/shared/widgets/content_state.dart';

class CampaignEmptyState extends StatelessWidget {
  final VoidCallback onRetry;
  const CampaignEmptyState({super.key, required this.onRetry});
  @override
  Widget build(BuildContext context) {
    final id = Localizations.localeOf(context).languageCode == 'id';
    return ContentState(
      title: id ? 'Kampanye tidak ditemukan' : 'No campaigns found',
      message: id
          ? 'Coba kata kunci atau filter lain.'
          : 'Try another search or filter.',
      icon: Icons.search_off,
      actionLabel: id ? 'Atur ulang filter' : 'Reset filters',
      onAction: onRetry,
    );
  }
}
