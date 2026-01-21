import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:velora/core/services/biometric_service.dart';
import 'package:velora/core/ui/app_messenger.dart';
import 'package:velora/features/settings/presentation/widgets/settings_section_card.dart';
import 'package:velora/features/settings/presentation/widgets/settings_tile.dart';
import 'package:velora/l10n/app_localizations.dart';
import 'package:velora/routes/app_router.dart';
import 'package:velora/shared/widgets/under_development_dialog.dart';

class WalletDashboardScreen extends HookWidget {
  const WalletDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final t = AppLocalizations.of(context)!;
    final isBalanceHidden = useState(false);
    final biometricService = useMemoized(() => BiometricService());
    final biometricVerified = useState(false);
    final isLoading = useState(true);

    useEffect(() {
      Future<void> checkAndVerifyBiometric() async {
        final enabled = await biometricService.isBiometricEnabled();
        final available = await biometricService.isBiometricAvailable();
        
        if (enabled && available) {
          // Request biometric authentication
          final authenticated = await biometricService.authenticate(
            reason: 'Authenticate to access your wallet',
          );
          
          if (!authenticated) {
            // Failed authentication - go back
            if (context.mounted) {
              context.pop();
              AppMessenger.showToast(
                message: 'Biometric authentication required',
                icon: Icons.fingerprint,
                isError: true,
              );
            }
          } else {
            biometricVerified.value = true;
          }
        } else {
          biometricVerified.value = true;
        }
        
        isLoading.value = false;
      }
      
      checkAndVerifyBiometric();
      return null;
    }, const []);

    if (isLoading.value || !biometricVerified.value) {
      return Scaffold(
        appBar: AppBar(
          title: Text(t.walletDashboardTitle),
        ),
        body: const Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(t.walletDashboardTitle),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Wallet Status Card
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    colorScheme.primaryContainer,
                    colorScheme.secondaryContainer,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                    color: colorScheme.shadow.withValues(alpha: 0.1),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        t.walletDashboardWalletId,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: colorScheme.onPrimaryContainer.withValues(
                            alpha: 0.7,
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          isBalanceHidden.value
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: colorScheme.onPrimaryContainer,
                        ),
                        onPressed: () {
                          isBalanceHidden.value = !isBalanceHidden.value;
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    isBalanceHidden.value ? '••••••' : 'Rp 2.450.000',
                    style: theme.textTheme.headlineLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: colorScheme.onPrimaryContainer,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    t.walletDashboardTotalBalance,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: colorScheme.onPrimaryContainer.withValues(
                        alpha: 0.8,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Quick Actions using SettingsSectionCard
            SettingsSectionCard(
              title: t.walletDashboardQuickActions,
              tiles: [
                SettingsTileData(
                  title: t.walletDashboardDonationHistory,
                  subtitle: t.walletDashboardDonationHistorySubtitle,
                  icon: Icons.history,
                  iconColor: const Color(0xFF00BCD4),
                  onTap: () => UnderDevelopmentDialog.show(context),
                ),
                SettingsTileData(
                  title: t.walletDashboardMyCampaigns,
                  subtitle: t.walletDashboardMyCampaignsSubtitle,
                  icon: Icons.campaign,
                  iconColor: const Color(0xFFFF6B6B),
                  onTap: () => context.go(AppRoutePath.campaign),
                ),
                SettingsTileData(
                  title: t.walletDashboardMyDonations,
                  subtitle: t.walletDashboardMyDonationsSubtitle,
                  icon: Icons.volunteer_activism,
                  iconColor: const Color(0xFF00A86B),
                  onTap: () => context.pushNamed(AppRouteName.settingsMyDonation),
                ),
                SettingsTileData(
                  title: t.walletDashboardAnalytics,
                  subtitle: t.walletDashboardAnalyticsSubtitle,
                  icon: Icons.analytics_outlined,
                  iconColor: const Color(0xFF8B5CF6),
                  onTap: () => UnderDevelopmentDialog.show(context),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
