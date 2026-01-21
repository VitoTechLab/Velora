import 'package:flutter/material.dart';
import 'package:velora/l10n/app_localizations.dart';

/// A reusable dialog to show features that are under development
class UnderDevelopmentDialog extends StatelessWidget {
  const UnderDevelopmentDialog({
    super.key,
    this.feature,
  });

  final String? feature;

  static Future<void> show(BuildContext context, {String? feature}) {
    return showDialog(
      context: context,
      builder: (context) => UnderDevelopmentDialog(feature: feature),
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final colorScheme = Theme.of(context).colorScheme;

    return AlertDialog(
      icon: Icon(
        Icons.construction,
        color: colorScheme.secondary,
        size: 48,
      ),
      title: Text(t.walletDashboardUnderDevelopmentTitle),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            feature != null
                ? 'The "$feature" feature is currently under development.'
                : t.walletDashboardUnderDevelopmentMessage,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          Text(
            'We\'re working hard to bring this feature to you soon!',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(t.walletDashboardUnderDevelopmentButton),
        ),
      ],
    );
  }
}

