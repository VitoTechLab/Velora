import 'package:flutter/material.dart';
import 'package:velora/l10n/app_localizations.dart';
import 'package:velora/shared/widgets/content_state.dart';

class EmptyFeedWidget extends StatelessWidget {
  final String? message;
  final String? subtitle;
  final VoidCallback? onRefresh;
  const EmptyFeedWidget({
    super.key,
    this.message,
    this.subtitle,
    this.onRefresh,
  });
  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return ContentState(
      title: message ?? t.feedEmptyMessage,
      message: subtitle ?? t.feedEmptySubtitle,
      icon: Icons.forum_outlined,
      actionLabel: t.feedRefreshButton,
      onAction: onRefresh,
    );
  }
}
