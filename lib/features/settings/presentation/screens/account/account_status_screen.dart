import 'package:flutter/material.dart';
import 'package:velora/features/settings/presentation/widgets/edge_to_edge_section.dart';
import 'package:velora/features/settings/presentation/widgets/settings_page_scaffold.dart';
import 'package:velora/features/settings/presentation/widgets/settings_tile.dart';
import 'package:velora/l10n/app_localizations.dart';

class AccountStatusScreen extends StatelessWidget {
  const AccountStatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final t = AppLocalizations.of(context)!;

    return SettingsPageScaffold(
      title: t.settingsAccountStatusTitle,
      subtitle: t.settingsAccountStatusSubtitle,
      padding: EdgeInsets.zero,
      child: ListView(
        padding: const EdgeInsets.only(bottom: 24),
        children: [
          const SizedBox(height: 12),
          _AccountTileGroup(
            title: t.settingsAccountStatusInfoTitle,
            tiles: [
              SettingsTileData(
                title: t.settingsAccountStatusStandingTitle,
                subtitle: t.settingsAccountStatusStandingSubtitle,
                icon: Icons.verified_user_outlined,
                iconColor: colorScheme.secondary,
              ),
              SettingsTileData(
                title: t.settingsAccountStatusEmailTitle,
                subtitle: 'hello@velora.app',
                icon: Icons.email_outlined,
                iconColor: colorScheme.primary,
              ),
              SettingsTileData(
                title: t.settingsAccountStatusPhoneTitle,
                subtitle: '+62 812-xxxx-5678',
                icon: Icons.phone_outlined,
                iconColor: colorScheme.secondary,
              ),
            ],
          ),
          const SizedBox(height: 2),
          _AccountTileGroup(
            title: t.settingsAccountStatusMetricsTitle,
            tiles: [
              SettingsTileData(
                title: t.settingsAccountStatusMemberSinceTitle,
                subtitle: 'January 2024',
                icon: Icons.calendar_today_outlined,
                iconColor: colorScheme.tertiary,
              ),
              SettingsTileData(
                title: t.settingsAccountStatusCampaignsTitle,
                subtitle: '3 active campaigns',
                icon: Icons.campaign_outlined,
                iconColor: colorScheme.secondary,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _AccountTileGroup extends StatelessWidget {
  const _AccountTileGroup({required this.title, required this.tiles});

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
