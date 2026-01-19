import 'package:flutter/material.dart';
import 'package:velora/features/settings/presentation/widgets/settings_page_scaffold.dart';
import 'package:velora/l10n/app_localizations.dart';
import 'package:velora/shared/widgets/under_development_dialog.dart';

/// Screen to manage ad preferences and settings
/// User can control what type of ads they want to see
class AdPreferencesScreen extends StatelessWidget {
  const AdPreferencesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    
    // Show under development dialog on screen load
    WidgetsBinding.instance.addPostFrameCallback((_) {
      UnderDevelopmentDialog.show(context);
    });
    
    return SettingsPageScaffold(
      title: t.settingsTileAdPreferencesTitle,
      subtitle: t.settingsTileAdPreferencesSubtitle,
      child: const SizedBox.shrink(),
    );
    
    // TODO: Implement when ad preferences API is ready in Supabase
    // This will include:
    // - Ad categories preferences
    // - Personalized ads toggle
    // - Ad frequency settings
    // - Data usage for ads preferences
  }
}
