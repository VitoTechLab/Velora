import 'package:flutter/material.dart';
import 'package:velora/l10n/app_localizations.dart';

/// A reusable dialog to show features that are under development
class UnderDevelopmentDialog extends StatelessWidget {
  const UnderDevelopmentDialog({super.key});

  static Future<void> show(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => const UnderDevelopmentDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    return AlertDialog(
      icon: const Icon(Icons.construction),
      title: Text(t.walletDashboardUnderDevelopmentTitle),
      content: Text(t.walletDashboardUnderDevelopmentMessage),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(t.walletDashboardUnderDevelopmentButton),
        ),
      ],
    );
  }
}
