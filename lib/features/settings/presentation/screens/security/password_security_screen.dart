import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:local_auth/local_auth.dart';
import 'package:velora/core/services/biometric_service.dart';
import 'package:velora/core/services/security_settings_service.dart';
import 'package:velora/core/ui/app_messenger.dart';
import 'package:velora/features/settings/presentation/widgets/edge_to_edge_section.dart';
import 'package:velora/features/settings/presentation/widgets/settings_page_scaffold.dart';
import 'package:velora/features/settings/presentation/widgets/settings_tile.dart';
import 'package:velora/l10n/app_localizations.dart';
import 'package:velora/shared/widgets/biometric_setup_dialog.dart';
import 'package:velora/shared/widgets/change_password_dialog.dart';

class PasswordSecurityScreen extends HookWidget {
  const PasswordSecurityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final biometric = useState(false);
    final twoFactor = useState(false);
    final deviceAlerts = useState(true);
    final biometricStatus = useState<BiometricStatus?>(null);
    final isLoadingBiometric = useState(false);
    final securitySettings = useState<SecuritySettings?>(null);
    final lastPasswordChange = useState<DateTime?>(null);
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final t = AppLocalizations.of(context)!;
    final biometricService = useMemoized(() => BiometricService());
    final securityService = useMemoized(() => SecuritySettingsService());

    // Load biometric and security settings on mount
    useEffect(
      () {
        Future<void> loadSettings() async {
          final bioStatus = await biometricService.getBiometricStatus();
          biometric.value = bioStatus.isEnabled;
          biometricStatus.value = bioStatus;

          final secSettings = await securityService.getSecuritySettings();
          securitySettings.value = secSettings;
          twoFactor.value = secSettings.twoFactorEnabled;
          deviceAlerts.value = secSettings.deviceAlertsEnabled;
          lastPasswordChange.value = secSettings.lastPasswordChange;
        }

        loadSettings();
        return null;
      },
      const [],
    );

    Future<void> handlePasswordChange() async {
      final result = await ChangePasswordDialog.show(context);
      if (result == true) {
        final changeDate = await securityService.getLastPasswordChangeDate();
        lastPasswordChange.value = changeDate;
      }
    }

    Future<void> handleBiometricToggle(bool value) async {
      if (value) {
        // Show setup dialog
        final result = await BiometricSetupDialog.show(context);
        if (result == true) {
          // Reload status
          final status = await biometricService.getBiometricStatus();
          biometric.value = status.isEnabled;
          biometricStatus.value = status;

          if (context.mounted) {
            AppMessenger.showToast(
              message:
                  '${biometricStatus.value?.primaryBiometricName ?? 'Biometric'} enabled successfully',
              icon: Icons.check_circle_outline,
              duration: const Duration(seconds: 2),
            );
          }
        }
      } else {
        // Disable biometric
        isLoadingBiometric.value = true;
        final success = await biometricService.disableBiometric();
        isLoadingBiometric.value = false;

        if (success) {
          biometric.value = false;
          final status = await biometricService.getBiometricStatus();
          biometricStatus.value = status;

          if (context.mounted) {
            AppMessenger.showToast(
              message: 'Biometric authentication disabled',
              icon: Icons.info_outline,
              duration: const Duration(seconds: 2),
            );
          }
        }
      }
    }

    Future<void> handleTwoFactorToggle(bool value) async {
      if (value) {
        // Navigate to 2FA setup screen
        final result = await context.push<bool>('/settings/security/two-factor-setup');
        if (result == true) {
          twoFactor.value = true;
          final settings = await securityService.getSecuritySettings();
          securitySettings.value = settings;
        }
      } else {
        // Disable 2FA
        final confirmed = await showDialog<bool>(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Disable Two-Factor Authentication?'),
            content: const Text(
              'This will make your account less secure. Are you sure you want to disable two-factor authentication?',
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: const Text('Cancel'),
              ),
              FilledButton(
                onPressed: () => Navigator.of(context).pop(true),
                style: FilledButton.styleFrom(
                  backgroundColor: colorScheme.error,
                ),
                child: const Text('Disable'),
              ),
            ],
          ),
        );

        if (confirmed == true) {
          final success = await securityService.disableTwoFactor();
          if (success) {
            twoFactor.value = false;
            if (context.mounted) {
              AppMessenger.showToast(
                message: 'Two-factor authentication disabled',
                icon: Icons.info_outline,
                duration: const Duration(seconds: 2),
              );
            }
          }
        }
      }
    }

    Future<void> handleDeviceAlertsToggle(bool value) async {
      final success = await securityService.setDeviceAlerts(value);
      if (success) {
        deviceAlerts.value = value;
        if (context.mounted) {
          AppMessenger.showToast(
            message: value
                ? 'Device alerts enabled'
                : 'Device alerts disabled',
            icon: Icons.notifications_outlined,
            duration: const Duration(seconds: 2),
          );
        }
      }
    }

    IconData getBiometricIcon(BiometricType type) {
      switch (type) {
        case BiometricType.face:
          return Icons.face;
        case BiometricType.fingerprint:
          return Icons.fingerprint;
        case BiometricType.iris:
          return Icons.remove_red_eye;
        default:
          return Icons.security;
      }
    }

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
                subtitle: lastPasswordChange.value != null
                    ? 'Last changed ${DateFormat.yMMMd().format(lastPasswordChange.value!)}'
                    : t.settingsSecurityPasswordLastChanged,
                icon: Icons.lock_outline,
                trailing: const Icon(Icons.chevron_right),
                onTap: handlePasswordChange,
              ),
            ],
          ),
          const SizedBox(height: 2),
          // _SecurityTileGroup(
          //   title: t.settingsSecurityTwoFactorSectionTitle,
          //   tiles: [
          //     SettingsTileData(
          //       title: t.settingsSecurityTwoFactorTitle,
          //       subtitle: twoFactor.value &&
          //               securitySettings.value?.twoFactorSetupDate != null
          //           ? 'Enabled ${DateFormat.yMMMd().format(securitySettings.value!.twoFactorSetupDate!)}'
          //           : t.settingsSecurityTwoFactorSubtitle,
          //       icon: Icons.shield_moon_outlined,
          //       trailing: Switch.adaptive(
          //         value: twoFactor.value,
          //         onChanged: handleTwoFactorToggle,
          //         activeTrackColor: colorScheme.primary,
          //         activeThumbColor: colorScheme.onPrimary,
          //         inactiveTrackColor: colorScheme.surfaceContainerHighest,
          //         inactiveThumbColor: colorScheme.outline,
          //       ),
          //     ),
          //   ],
          // ),
          // if (twoFactor.value) ...[
          //   const SizedBox(height: 2),
          //   EdgeToEdgeSection(
          //     child: Container(
          //       padding: const EdgeInsets.all(12),
          //       decoration: BoxDecoration(
          //         color: colorScheme.primaryContainer.withValues(alpha: 0.5),
          //         borderRadius: BorderRadius.circular(8),
          //       ),
          //       child: Row(
          //         children: [
          //           Icon(
          //             Icons.check_circle,
          //             size: 20,
          //             color: colorScheme.primary,
          //           ),
          //           const SizedBox(width: 12),
          //           Expanded(
          //             child: Text(
          //               t.settingsSecurityTwoFactorMethods,
          //               style: textTheme.bodySmall?.copyWith(
          //                 color: colorScheme.onPrimaryContainer,
          //               ),
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ),
          // ],
          // const SizedBox(height: 2),
          _SecurityTileGroup(
            title: t.settingsSecurityBiometricSectionTitle,
            tiles: [
              SettingsTileData(
                title: biometricStatus.value?.primaryBiometricName ??
                    t.settingsSecurityBiometricTitle,
                subtitle: biometric.value &&
                        biometricStatus.value?.setupDate != null
                    ? 'Enabled ${DateFormat.yMMMd().format(biometricStatus.value!.setupDate!)}'
                    : t.settingsSecurityBiometricSubtitle,
                icon: biometricStatus.value?.availableBiometrics.isNotEmpty ==
                        true
                    ? getBiometricIcon(
                        biometricStatus.value!.availableBiometrics.first,
                      )
                    : Icons.fingerprint,
                trailing: isLoadingBiometric.value
                    ? const SizedBox(
                        width: 24,
                        height: 24,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : Switch.adaptive(
                        value: biometric.value,
                        onChanged: biometricStatus.value?.canEnable == true ||
                                biometric.value
                            ? handleBiometricToggle
                            : null,
                        activeTrackColor: colorScheme.primary,
                        activeThumbColor: colorScheme.onPrimary,
                        inactiveTrackColor: colorScheme.surfaceContainerHighest,
                        inactiveThumbColor: colorScheme.outline,
                      ),
              ),
            ],
          ),
          if (!biometric.value &&
              biometricStatus.value?.isAvailable == false) ...[
            const SizedBox(height: 2),
            EdgeToEdgeSection(
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: colorScheme.errorContainer.withValues(alpha: 0.5),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.warning_amber_rounded,
                      color: colorScheme.error,
                      size: 20,
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        biometricStatus.value?.isSupported == true
                            ? 'No biometric enrolled. Set up Face ID or Fingerprint in device settings.'
                            : 'Biometric authentication not supported on this device.',
                        style: textTheme.bodySmall?.copyWith(
                          color: colorScheme.onErrorContainer,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
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
          // _SecurityTileGroup(
          //   title: t.settingsSecuritySessionsTitle,
          //   tiles: [
          //     SettingsTileData(
          //       title: 'Manage Active Sessions',
          //       subtitle: 'View and control devices signed into your account',
          //       icon: Icons.devices,
          //       trailing: const Icon(Icons.chevron_right),
          //       onTap: () => context.push('/settings/security/active-sessions'),
          //     ),
          //   ],
          // ),
          // const SizedBox(height: 2),
          _SecurityTileGroup(
            title: t.settingsSecurityAlertsTitle,
            tiles: [
              SettingsTileData(
                title: t.settingsSecurityAlertsDeviceTitle,
                subtitle: t.settingsSecurityAlertsDeviceSubtitle,
                icon: Icons.notifications_active_outlined,
                trailing: Switch.adaptive(
                  value: deviceAlerts.value,
                  onChanged: handleDeviceAlertsToggle,
                  activeTrackColor: colorScheme.primary,
                  activeThumbColor: colorScheme.onPrimary,
                  inactiveTrackColor: colorScheme.surfaceContainerHighest,
                  inactiveThumbColor: colorScheme.outline,
                ),
              ),
            ],
          ),
          // const SizedBox(height: 2),
          // _SecurityTileGroup(
          //   title: t.settingsSecurityRecoveryTitle,
          //   tiles: [
          //     SettingsTileData(
          //       title: t.settingsSecurityRecoveryTrustedTitle,
          //       subtitle: t.settingsSecurityRecoveryTrustedSubtitle,
          //       icon: Icons.supervisor_account_outlined,
          //       trailing: const Icon(Icons.chevron_right),
          //       onTap: () => context.push('/settings/security/trusted-contacts'),
          //     ),
          //     SettingsTileData(
          //       title: t.settingsSecurityRecoveryCodesTitle,
          //       subtitle: t.settingsSecurityRecoveryCodesSubtitle,
          //       icon: Icons.download_outlined,
          //       trailing: const Icon(Icons.chevron_right),
          //       onTap: () => context.push('/settings/security/recovery-codes'),
          //     ),
          //   ],
          // ),
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
