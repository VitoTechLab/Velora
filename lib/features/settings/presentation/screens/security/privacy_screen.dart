import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:velora/features/settings/presentation/widgets/edge_to_edge_section.dart';
import 'package:velora/features/settings/presentation/widgets/settings_page_scaffold.dart';
import 'package:velora/features/settings/presentation/widgets/settings_tile.dart';
import 'package:velora/features/settings/presentation/widgets/settings_toggle_tile.dart';
import 'package:velora/l10n/app_localizations.dart';

class PrivacyScreen extends HookWidget {
  const PrivacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final privateAccount = useState(false);
    final appearInSearch = useState(true);
    final messagesFromEveryone = useState(true);
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final t = AppLocalizations.of(context)!;

    return SettingsPageScaffold(
      title: t.settingsPrivacyTitle,
      subtitle: t.settingsPrivacySubtitle,
      padding: EdgeInsets.zero,
      child: ListView(
        padding: const EdgeInsets.only(bottom: 24),
        children: [
          const SizedBox(height: 12),
          EdgeToEdgeSection(
            title: t.settingsPrivacyAudienceTitle,
            child: Column(
              children: [
                SettingsToggleTile(
                  title: t.settingsPrivacyPrivateAccountTitle,
                  subtitle: t.settingsPrivacyPrivateAccountSubtitle,
                  value: privateAccount.value,
                  icon: Icons.lock_outline,
                  iconColor: colorScheme.primary,
                  onChanged: (value) => privateAccount.value = value,
                ),
                Divider(
                  height: 0,
                  indent: 16,
                  endIndent: 16,
                  color: colorScheme.outlineVariant.withValues(alpha: 0.4),
                ),
                SettingsToggleTile(
                  title: t.settingsPrivacySearchTitle,
                  subtitle: t.settingsPrivacySearchSubtitle,
                  value: appearInSearch.value,
                  icon: Icons.search,
                  iconColor: colorScheme.secondary,
                  onChanged: (value) => appearInSearch.value = value,
                ),
              ],
            ),
          ),
          const SizedBox(height: 2),
          EdgeToEdgeSection(
            title: t.settingsPrivacyDirectMessagesTitle,
            child: SettingsToggleTile(
              title: t.settingsPrivacyDirectMessagesAllowTitle,
              subtitle: t.settingsPrivacyDirectMessagesAllowSubtitle,
              value: messagesFromEveryone.value,
              icon: Icons.chat_bubble_outline,
              iconColor: colorScheme.tertiary,
              onChanged: (value) => messagesFromEveryone.value = value,
            ),
          ),
          const SizedBox(height: 2),
          _PrivacyTileGroup(
            title: t.settingsPrivacyDataPermissionsTitle,
            tiles: [
              SettingsTileData(
                title: t.settingsPrivacyDownloadInfoTitle,
                subtitle: t.settingsPrivacyDownloadInfoSubtitle,
                icon: Icons.download_outlined,
                iconColor: colorScheme.primary,
                onTap: () {},
              ),
              SettingsTileData(
                title: t.settingsPrivacyDeleteAccountTitle,
                subtitle: t.settingsPrivacyDeleteAccountSubtitle,
                icon: Icons.delete_outline,
                iconColor: colorScheme.error,
                onTap: () {},
              ),
            ],
          ),
          const SizedBox(height: 2),
          EdgeToEdgeSection(
            title: t.settingsPrivacyDataSharingTitle,
            subtitle: t.settingsPrivacyDataSharingSubtitle,
            child: Column(
              children: [
                SettingsToggleTile(
                  title: t.settingsPrivacyAnalyticsTitle,
                  subtitle: t.settingsPrivacyAnalyticsSubtitle,
                  icon: Icons.insights_outlined,
                  iconColor: colorScheme.secondary,
                  value: true,
                  onChanged: (_) {},
                ),
                Divider(
                  height: 0,
                  indent: 16,
                  endIndent: 16,
                  color: colorScheme.outlineVariant.withValues(alpha: 0.4),
                ),
                SettingsToggleTile(
                  title: t.settingsPrivacyPersonalizedTitle,
                  subtitle: t.settingsPrivacyPersonalizedSubtitle,
                  icon: Icons.tune_outlined,
                  iconColor: colorScheme.primary,
                  value: true,
                  onChanged: (_) {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _PrivacyTileGroup extends StatelessWidget {
  const _PrivacyTileGroup({required this.title, required this.tiles});

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
