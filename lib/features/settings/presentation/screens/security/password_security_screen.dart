import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';
import 'package:velora/core/ui/app_messenger.dart';
import 'package:velora/features/settings/presentation/widgets/edge_to_edge_section.dart';
import 'package:velora/features/settings/presentation/widgets/settings_page_scaffold.dart';
import 'package:velora/features/settings/presentation/widgets/settings_tile.dart';
import 'package:velora/l10n/app_localizations.dart';

class PasswordSecurityScreen extends HookWidget {
  const PasswordSecurityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final biometric = useState(false);
    final twoFactor = useState(true);
    final deviceAlerts = useState(true);
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final t = AppLocalizations.of(context)!;

    return SettingsPageScaffold(
      title: t.settingsTilePasswordSecurityTitle,
      subtitle: t.settingsTilePasswordSecuritySubtitle,
      padding: EdgeInsets.zero,
      child: ListView(
        padding: const EdgeInsets.only(bottom: 24),
        children: [
          const SizedBox(height: 12),
          _SecurityTileGroup(
            title: t.settingsSecurityPasswordSectionTitle,
            tiles: [
              SettingsTileData(
                title: t.settingsSecurityPasswordChange,
                subtitle: t.settingsSecurityPasswordLastChanged,
                icon: Icons.lock_outline,
                trailing: const Icon(Icons.chevron_right),
                onTap: () {
                  AppMessenger.showToast(
                    message: t.settingsSecurityPasswordToast,
                    icon: Icons.lock_outline,
                    duration: const Duration(seconds: 2),
                  );
                },
              ),
            ],
          ),
          const SizedBox(height: 2),
          _SecurityTileGroup(
            title: t.settingsSecurityTwoFactorSectionTitle,
            tiles: [
              SettingsTileData(
                title: t.settingsSecurityTwoFactorTitle,
                subtitle: t.settingsSecurityTwoFactorSubtitle,
                icon: Icons.shield_moon_outlined,
                trailing: Switch.adaptive(
                  value: twoFactor.value,
                  onChanged: (value) => twoFactor.value = value,
                  activeColor: colorScheme.primary,
                ),
              ),
            ],
          ),
          if (twoFactor.value) ...[
            const SizedBox(height: 2),
            EdgeToEdgeSection(
              child: Text(
                t.settingsSecurityTwoFactorMethods,
                style: textTheme.bodySmall?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
              ),
            ),
          ],
          const SizedBox(height: 2),
          _SecurityTileGroup(
            title: t.settingsSecurityBiometricSectionTitle,
            tiles: [
              SettingsTileData(
                title: t.settingsSecurityBiometricTitle,
                subtitle: t.settingsSecurityBiometricSubtitle,
                icon: Icons.fingerprint,
                trailing: Switch.adaptive(
                  value: biometric.value,
                  onChanged: (value) => biometric.value = value,
                  activeColor: colorScheme.primary,
                ),
              ),
            ],
          ),
          const SizedBox(height: 2),
          EdgeToEdgeSection(
            title: t.settingsSecurityLoginActivityTitle,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  t.settingsSecurityLoginActivityEntry(
                    DateFormat.jm().format(
                      DateTime.now().subtract(const Duration(hours: 2)),
                    ),
                  ),
                  style: textTheme.bodyMedium,
                ),
                const SizedBox(height: 4),
                Text(
                  t.settingsSecurityLoginActivityLocation,
                  style: textTheme.bodySmall?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 2),
          _SecurityTileGroup(
            title: t.settingsSecuritySessionsTitle,
            tiles: [
              SettingsTileData(
                title: t.settingsSecuritySessionsDevice1Title,
                subtitle: t.settingsSecuritySessionsDevice1Subtitle,
                icon: Icons.phone_android,
                badgeLabel: t.settingsSecuritySessionsBadgeCurrent,
                trailing: TextButton(
                  onPressed: () {},
                  child: Text(t.settingsSecuritySessionsDetails),
                ),
              ),
              SettingsTileData(
                title: t.settingsSecuritySessionsDevice2Title,
                subtitle: t.settingsSecuritySessionsDevice2Subtitle,
                icon: Icons.laptop_windows,
                trailing: TextButton(
                  onPressed: () {},
                  child: Text(t.settingsSecuritySessionsSignOut),
                ),
              ),
            ],
          ),
          const SizedBox(height: 2),
          _SecurityTileGroup(
            title: t.settingsSecurityAlertsTitle,
            tiles: [
              SettingsTileData(
                title: t.settingsSecurityAlertsDeviceTitle,
                subtitle: t.settingsSecurityAlertsDeviceSubtitle,
                icon: Icons.notifications_active_outlined,
                trailing: Switch.adaptive(
                  value: deviceAlerts.value,
                  onChanged: (value) => deviceAlerts.value = value,
                  activeColor: colorScheme.primary,
                ),
              ),
            ],
          ),
          const SizedBox(height: 2),
          _SecurityTileGroup(
            title: t.settingsSecurityRecoveryTitle,
            tiles: [
              SettingsTileData(
                title: t.settingsSecurityRecoveryTrustedTitle,
                subtitle: t.settingsSecurityRecoveryTrustedSubtitle,
                icon: Icons.supervisor_account_outlined,
                trailing: const Icon(Icons.chevron_right),
                onTap: () {},
              ),
              SettingsTileData(
                title: t.settingsSecurityRecoveryCodesTitle,
                subtitle: t.settingsSecurityRecoveryCodesSubtitle,
                icon: Icons.download_outlined,
                trailing: const Icon(Icons.chevron_right),
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _SecurityTileGroup extends StatelessWidget {
  const _SecurityTileGroup({required this.title, required this.tiles});

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
