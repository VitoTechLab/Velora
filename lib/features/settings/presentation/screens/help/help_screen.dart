import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velora/core/ui/app_messenger.dart';
import 'package:velora/features/settings/presentation/widgets/edge_to_edge_section.dart';
import 'package:velora/features/settings/presentation/widgets/settings_page_scaffold.dart';
import 'package:velora/features/settings/presentation/widgets/settings_tile.dart';
import 'package:velora/l10n/app_localizations.dart';
import 'package:velora/routes/app_router.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final t = AppLocalizations.of(context)!;

    return SettingsPageScaffold(
      title: t.settingsHelpCenterTitle,
      subtitle: t.settingsHelpCenterSubtitle,
      padding: EdgeInsets.zero,
      child: ListView(
        padding: const EdgeInsets.only(bottom: 24),
        children: [
          const SizedBox(height: 12),
          Semantics(
            label: t.settingsHelpPrioritySemantics,
            container: true,
            child: EdgeToEdgeSection(
              backgroundColor: Colors.transparent,
              padding: EdgeInsets.zero,
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.support_agent,
                      size: 48,
                      color: colorScheme.onPrimaryContainer,
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            t.settingsHelpPriorityTitle,
                            style: textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            t.settingsHelpPrioritySubtitle,
                            style: textTheme.bodyMedium?.copyWith(
                              color: colorScheme.onPrimaryContainer.withValues(
                                alpha: 0.85,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 2),
          _HelpTileGroup(
            title: t.settingsHelpSupportOptionsTitle,
            tiles: [
              SettingsTileData(
                title: t.settingsHelpFaqTileTitle,
                subtitle: t.settingsHelpFaqTileSubtitle,
                icon: Icons.menu_book_outlined,
                iconColor: colorScheme.primary,
                onTap: () => context.push(AppRoutePath.settingsFaq),
              ),
              SettingsTileData(
                title: t.settingsHelpEmailTitle,
                subtitle: t.settingsHelpEmailSubtitle,
                icon: Icons.email_outlined,
                iconColor: colorScheme.tertiary,
                onTap: () => launchUrl(Uri.parse('mailto:support@velora.app')),
              ),
              SettingsTileData(
                title: t.settingsHelpReportTitle,
                subtitle: t.settingsHelpReportSubtitle,
                icon: Icons.report_outlined,
                iconColor: colorScheme.error,
                onTap: () => _showReportSheet(context),
              ),
            ],
          ),
          const SizedBox(height: 2),
          _HelpTileGroup(
            title: t.settingsHelpGuidesTitle,
            tiles: [
              SettingsTileData(
                title: t.settingsHelpCommunityGuidelinesTitle,
                subtitle: t.settingsHelpCommunityGuidelinesSubtitle,
                icon: Icons.shield_outlined,
                iconColor: colorScheme.secondary,
              ),
              SettingsTileData(
                title: t.settingsHelpSecurityChecklistTitle,
                subtitle: t.settingsHelpSecurityChecklistSubtitle,
                icon: Icons.check_circle_outline,
                iconColor: colorScheme.tertiary,
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _showReportSheet(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        final t = AppLocalizations.of(context)!;
        final controller = TextEditingController();
        return Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 44,
                height: 4,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.outlineVariant,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              const SizedBox(height: 12),
              Text(
                t.settingsHelpReportSheetTitle,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 12),
              TextField(
                controller: controller,
                maxLines: 4,
                decoration: InputDecoration(
                  hintText: t.settingsHelpReportHint,
                  border: const OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 12),
              FilledButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  AppMessenger.showToast(
                    message: t.settingsHelpReportThanks,
                    icon: Icons.check_circle_outline,
                    duration: const Duration(seconds: 2),
                  );
                },
                child: Text(t.settingsHelpReportSendButton),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _HelpTileGroup extends StatelessWidget {
  const _HelpTileGroup({required this.title, required this.tiles});

  final String title;
  final List<SettingsTileData> tiles;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return EdgeToEdgeSection(
      title: title,
      child: Column(
        children: [
          for (int i = 0; i < tiles.length; i++) ...[
            SettingsTile(data: tiles[i]),
            if (i != tiles.length - 1)
              Divider(
                height: 0,
                indent: tiles[i].icon != null ? 72 : 16,
                endIndent: 16,
                color: colorScheme.outlineVariant.withValues(alpha: 0.4),
              ),
          ],
        ],
      ),
    );
  }
}
