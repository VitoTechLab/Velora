import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:velora/core/services/biometric_service.dart';
import 'package:velora/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:velora/features/wallet/domain/entities/wallet_entity.dart';
import 'package:velora/features/wallet/presentation/bloc/wallet_bloc.dart';
import 'package:velora/features/wallet/presentation/bloc/wallet_event.dart';
import 'package:velora/features/wallet/presentation/bloc/wallet_state.dart';
import 'package:velora/l10n/app_localizations.dart';
import 'package:velora/routes/app_router.dart';

/// Session-level flag to remember if user already authenticated for wallet access
/// This prevents re-prompting when navigating to child routes and back
bool _walletSessionAuthenticated = false;

class WalletDashboardScreen extends HookWidget {
  const WalletDashboardScreen({super.key});

  /// Call this to reset the session authentication (e.g., on logout)
  static void resetSessionAuth() {
    _walletSessionAuthenticated = false;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final t = AppLocalizations.of(context)!;

    final authState = context.read<AuthBloc>().state;
    final userId = authState.userId;
    final isBalanceHidden = useState(false);

    // Biometric authentication state
    final biometricService = useMemoized(() => BiometricService());
    // Initialize with session state - if already authenticated, skip the check
    final isAuthenticated = useState(_walletSessionAuthenticated);
    final isCheckingAuth = useState(!_walletSessionAuthenticated);
    final authError = useState<String?>(null);

    final currencyFormat = NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp ',
      decimalDigits: 0,
    );

    // Check and prompt for biometric authentication on mount
    useEffect(() {
      // Skip if already authenticated in this session
      if (_walletSessionAuthenticated) {
        if (userId != null) {
          context.read<WalletBloc>().add(WalletEvent.loadWallets(userId: userId));
        }
        return null;
      }

      Future<void> checkBiometricAuth() async {
        try {
          final status = await biometricService.getBiometricStatus();
          
          // If biometric is enabled, prompt for authentication
          if (status.isFullySetup) {
            final authenticated = await biometricService.authenticate(
              reason: 'Authenticate to access your wallet',
            );
            
            if (authenticated) {
              _walletSessionAuthenticated = true;
              isAuthenticated.value = true;
              // Load wallets after successful authentication
              if (userId != null) {
                context.read<WalletBloc>().add(WalletEvent.loadWallets(userId: userId));
              }
            } else {
              authError.value = 'Authentication failed. Please try again.';
            }
          } else {
            // Biometric not enabled, allow access directly
            _walletSessionAuthenticated = true;
            isAuthenticated.value = true;
            if (userId != null) {
              context.read<WalletBloc>().add(WalletEvent.loadWallets(userId: userId));
            }
          }
        } catch (e) {
          // If biometric check fails, allow access (graceful degradation)
          _walletSessionAuthenticated = true;
          isAuthenticated.value = true;
          if (userId != null) {
            context.read<WalletBloc>().add(WalletEvent.loadWallets(userId: userId));
          }
        } finally {
          isCheckingAuth.value = false;
        }
      }

      checkBiometricAuth();
      return null;
    }, [userId]);

    // Show loading while checking biometric
    if (isCheckingAuth.value) {
      return Scaffold(
        appBar: AppBar(title: Text(t.walletDashboardTitle)),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.fingerprint,
                size: 64,
                color: colorScheme.primary,
              ),
              const SizedBox(height: 16),
              const CircularProgressIndicator(),
              const SizedBox(height: 16),
              Text(
                'Verifying identity...',
                style: theme.textTheme.titleMedium,
              ),
            ],
          ),
        ),
      );
    }

    // Show authentication failed screen
    if (!isAuthenticated.value) {
      return Scaffold(
        appBar: AppBar(title: Text(t.walletDashboardTitle)),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: colorScheme.errorContainer,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.lock_outline,
                    size: 48,
                    color: colorScheme.onErrorContainer,
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  'Authentication Required',
                  style: theme.textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  authError.value ?? 'Please authenticate to access your wallet',
                  style: theme.textTheme.bodyLarge?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 32),
                FilledButton.icon(
                  onPressed: () async {
                    isCheckingAuth.value = true;
                    authError.value = null;
                    
                    final authenticated = await biometricService.authenticate(
                      reason: 'Authenticate to access your wallet',
                    );
                    
                    if (authenticated) {
                      _walletSessionAuthenticated = true;
                      isAuthenticated.value = true;
                      if (userId != null) {
                        context.read<WalletBloc>().add(WalletEvent.loadWallets(userId: userId));
                      }
                    } else {
                      authError.value = 'Authentication failed. Please try again.';
                    }
                    isCheckingAuth.value = false;
                  },
                  icon: const Icon(Icons.fingerprint),
                  label: const Text('Try Again'),
                ),
                const SizedBox(height: 12),
                TextButton(
                  onPressed: () => context.pop(),
                  child: const Text('Go Back'),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(t.walletDashboardTitle),
        actions: [
          IconButton(
            icon: Icon(
              isBalanceHidden.value ? Icons.visibility_off : Icons.visibility,
            ),
            onPressed: () => isBalanceHidden.value = !isBalanceHidden.value,
            tooltip: isBalanceHidden.value ? 'Show balance' : 'Hide balance',
          ),
        ],
      ),
      body: BlocConsumer<WalletBloc, WalletState>(
        listener: (context, state) {
          if (state.message != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message!)),
            );
            context.read<WalletBloc>().add(const WalletEvent.clearTransient());
          }
          if (state.errorWallets != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.errorWallets!),
                backgroundColor: colorScheme.error,
              ),
            );
            context.read<WalletBloc>().add(const WalletEvent.clearTransient());
          }
        },
        builder: (context, state) {
          if (state.isLoadingWallets && state.wallets.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }

          return RefreshIndicator(
            onRefresh: () async {
              if (userId != null) {
                context
                    .read<WalletBloc>()
                    .add(WalletEvent.loadWallets(userId: userId));
              }
            },
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Main Wallet Card
                  if (state.mainWallet != null)
                    _MainWalletCard(
                      wallet: state.mainWallet!,
                      isBalanceHidden: isBalanceHidden.value,
                      currencyFormat: currencyFormat,
                      onTopUp: () => _showTopUpDialog(context, state.mainWallet!),
                      onWithdraw: () =>
                          _showWithdrawDialog(context, state.mainWallet!),
                      onSetupBank: () =>
                          _showBankDetailsDialog(context, state.mainWallet!),
                      onViewDetails: () => _showWalletDetails(context, state.mainWallet!),
                      onViewWithdrawals: () => context.pushNamed(
                        'walletWithdrawals',
                        pathParameters: {'walletId': state.mainWallet!.id},
                      ),
                    )
                  else
                    _CreateMainWalletCard(
                      onTap: () {
                        if (userId != null) {
                          context.read<WalletBloc>().add(
                                WalletEvent.createMainWallet(userId: userId),
                              );
                        }
                      },
                    ),

                  const SizedBox(height: 24),

                  // Campaign Wallets Section
                  if (state.campaignWallets.isNotEmpty) ...[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          t.walletDashboardCampaignWallets,
                          style: theme.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '${state.campaignWallets.length} campaigns',
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: state.campaignWallets.length,
                      separatorBuilder: (_, __) => const SizedBox(height: 12),
                      itemBuilder: (context, index) {
                        final wallet = state.campaignWallets[index];
                        return _CampaignWalletCard(
                          wallet: wallet,
                          isBalanceHidden: isBalanceHidden.value,
                          currencyFormat: currencyFormat,
                          onTap: () => _showWalletDetails(context, wallet),
                          onWithdraw: () =>
                              _showWithdrawDialog(context, wallet),
                          onSetupBank: () =>
                              _showBankDetailsDialog(context, wallet),
                        );
                      },
                    ),
                  ] else
                    _EmptyCampaignWallets(
                      onCreateCampaign: () => context.pushNamed('myCampaigns'),
                    ),

                  const SizedBox(height: 24),

                  // Quick Actions
                  _QuickActionsSection(
                    onDonationHistory: () =>
                        context.pushNamed(AppRouteName.settingsMyDonation),
                    onMyCampaigns: () => context.pushNamed('myCampaigns'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void _showTopUpDialog(BuildContext context, WalletEntity wallet) {
    final controller = TextEditingController();
    final t = AppLocalizations.of(context)!;

    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(t.walletDashboardTopUp),
        content: TextField(
          controller: controller,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: t.walletDashboardAmount,
            prefixText: 'Rp ',
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: Text(t.commonCancel),
          ),
          FilledButton(
            onPressed: () {
              final amount = double.tryParse(controller.text) ?? 0;
              if (amount > 0) {
                context.read<WalletBloc>().add(
                      WalletEvent.initiateTopUp(
                        walletId: wallet.id,
                        amount: amount,
                      ),
                    );
                Navigator.pop(ctx);
              }
            },
            child: Text(t.walletDashboardTopUp),
          ),
        ],
      ),
    );
  }

  void _showWithdrawDialog(BuildContext context, WalletEntity wallet) {
    if (!wallet.hasBankDetails) {
      _showBankDetailsDialog(context, wallet);
      return;
    }

    final controller = TextEditingController();
    final t = AppLocalizations.of(context)!;
    final currencyFormat = NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp ',
      decimalDigits: 0,
    );

    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(t.walletDashboardWithdraw),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${t.walletDashboardAvailableBalance}: ${currencyFormat.format(wallet.balance)}',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(height: 8),
            Text(
              '${t.walletDashboardTo}: ${wallet.bankName} - ${wallet.bankAccountNumber}',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(height: 16),
            TextField(
              controller: controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: t.walletDashboardAmount,
                prefixText: 'Rp ',
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: Text(t.commonCancel),
          ),
          FilledButton(
            onPressed: () {
              final amount = double.tryParse(controller.text) ?? 0;
              if (amount > 0 && amount <= wallet.balance) {
                context.read<WalletBloc>().add(
                      WalletEvent.requestWithdrawal(
                        walletId: wallet.id,
                        amount: amount,
                      ),
                    );
                Navigator.pop(ctx);
              }
            },
            child: Text(t.walletDashboardWithdraw),
          ),
        ],
      ),
    );
  }

  void _showBankDetailsDialog(BuildContext context, WalletEntity wallet) {
    final bankNameController = TextEditingController(text: wallet.bankName);
    final accountNumberController =
        TextEditingController(text: wallet.bankAccountNumber);
    final accountHolderController =
        TextEditingController(text: wallet.bankAccountHolder);
    final t = AppLocalizations.of(context)!;

    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(t.walletDashboardBankDetails),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: bankNameController,
              decoration: InputDecoration(labelText: t.walletDashboardBankName),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: accountNumberController,
              decoration:
                  InputDecoration(labelText: t.walletDashboardAccountNumber),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 8),
            TextField(
              controller: accountHolderController,
              decoration:
                  InputDecoration(labelText: t.walletDashboardAccountHolder),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: Text(t.commonCancel),
          ),
          FilledButton(
            onPressed: () {
              if (bankNameController.text.isNotEmpty &&
                  accountNumberController.text.isNotEmpty &&
                  accountHolderController.text.isNotEmpty) {
                context.read<WalletBloc>().add(
                      WalletEvent.updateBankDetails(
                        walletId: wallet.id,
                        bankName: bankNameController.text,
                        bankAccountNumber: accountNumberController.text,
                        bankAccountHolder: accountHolderController.text,
                      ),
                    );
                Navigator.pop(ctx);
              }
            },
            child: Text(t.settingsProfileFieldSave),
          ),
        ],
      ),
    );
  }

  void _showWalletDetails(BuildContext context, WalletEntity wallet) {
    context.pushNamed(
      AppRouteName.walletDetail,
      pathParameters: {'walletId': wallet.id},
    );
  }
}

// ============================================
// WIDGET COMPONENTS
// ============================================

class _MainWalletCard extends StatelessWidget {
  const _MainWalletCard({
    required this.wallet,
    required this.isBalanceHidden,
    required this.currencyFormat,
    required this.onTopUp,
    required this.onWithdraw,
    required this.onSetupBank,
    required this.onViewDetails,
    required this.onViewWithdrawals,
  });

  final WalletEntity wallet;
  final bool isBalanceHidden;
  final NumberFormat currencyFormat;
  final VoidCallback onTopUp;
  final VoidCallback onWithdraw;
  final VoidCallback onSetupBank;
  final VoidCallback onViewDetails;
  final VoidCallback onViewWithdrawals;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final t = AppLocalizations.of(context)!;

    return Container(
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
              Row(
                children: [
                  Icon(
                    Icons.account_balance_wallet,
                    color: colorScheme.onPrimaryContainer,
                    size: 20,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    t.walletDashboardMainWallet,
                    style: theme.textTheme.titleSmall?.copyWith(
                      color: colorScheme.onPrimaryContainer,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              if (!wallet.hasBankDetails)
                TextButton.icon(
                  onPressed: onSetupBank,
                  icon: Icon(
                    Icons.warning_amber_rounded,
                    size: 16,
                    color: colorScheme.error,
                  ),
                  label: Text(
                    t.walletDashboardSetupBank,
                    style: TextStyle(color: colorScheme.error, fontSize: 12),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            isBalanceHidden ? '••••••' : currencyFormat.format(wallet.balance),
            style: theme.textTheme.headlineLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: colorScheme.onPrimaryContainer,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            t.walletDashboardAvailableBalance,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: colorScheme.onPrimaryContainer.withValues(alpha: 0.8),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: FilledButton.icon(
                  onPressed: onTopUp,
                  icon: const Icon(Icons.add, size: 18),
                  label: Text(t.walletDashboardTopUp),
                  style: FilledButton.styleFrom(
                    backgroundColor: colorScheme.primary,
                    foregroundColor: colorScheme.onPrimary,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: OutlinedButton.icon(
                  onPressed: wallet.canWithdraw ? onWithdraw : null,
                  icon: const Icon(Icons.arrow_upward, size: 18),
                  label: Text(t.walletDashboardWithdraw),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: colorScheme.onPrimaryContainer,
                    side: BorderSide(
                      color: colorScheme.onPrimaryContainer.withValues(alpha: 0.5),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          // Quick action links
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton.icon(
                onPressed: onViewDetails,
                icon: Icon(
                  Icons.receipt_long,
                  size: 16,
                  color: colorScheme.onPrimaryContainer.withValues(alpha: 0.8),
                ),
                label: Text(
                  'Transaction History',
                  style: TextStyle(
                    color: colorScheme.onPrimaryContainer.withValues(alpha: 0.8),
                    fontSize: 12,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              TextButton.icon(
                onPressed: onViewWithdrawals,
                icon: Icon(
                  Icons.history,
                  size: 16,
                  color: colorScheme.onPrimaryContainer.withValues(alpha: 0.8),
                ),
                label: Text(
                  'Withdrawals',
                  style: TextStyle(
                    color: colorScheme.onPrimaryContainer.withValues(alpha: 0.8),
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _CreateMainWalletCard extends StatelessWidget {
  const _CreateMainWalletCard({required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final t = AppLocalizations.of(context)!;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: colorScheme.outlineVariant,
          style: BorderStyle.solid,
        ),
      ),
      child: Column(
        children: [
          Icon(
            Icons.account_balance_wallet_outlined,
            size: 48,
            color: colorScheme.onSurfaceVariant,
          ),
          const SizedBox(height: 12),
          Text(
            t.walletDashboardNoMainWallet,
            style: theme.textTheme.titleMedium?.copyWith(
              color: colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 16),
          FilledButton(
            onPressed: onTap,
            child: Text(t.walletDashboardCreateWallet),
          ),
        ],
      ),
    );
  }
}

class _CampaignWalletCard extends StatelessWidget {
  const _CampaignWalletCard({
    required this.wallet,
    required this.isBalanceHidden,
    required this.currencyFormat,
    required this.onTap,
    required this.onWithdraw,
    required this.onSetupBank,
  });

  final WalletEntity wallet;
  final bool isBalanceHidden;
  final NumberFormat currencyFormat;
  final VoidCallback onTap;
  final VoidCallback onWithdraw;
  final VoidCallback onSetupBank;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final t = AppLocalizations.of(context)!;

    return Card(
      elevation: 0,
      color: colorScheme.surfaceContainerLow,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  // Campaign image
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: colorScheme.primaryContainer,
                      image: wallet.campaignCoverImageUrl != null
                          ? DecorationImage(
                              image: NetworkImage(wallet.campaignCoverImageUrl!),
                              fit: BoxFit.cover,
                            )
                          : null,
                    ),
                    child: wallet.campaignCoverImageUrl == null
                        ? Icon(
                            Icons.campaign,
                            color: colorScheme.onPrimaryContainer,
                          )
                        : null,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          wallet.campaignTitle ?? 'Campaign',
                          style: theme.textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 2),
                        Text(
                          isBalanceHidden
                              ? '••••••'
                              : currencyFormat.format(wallet.balance),
                          style: theme.textTheme.titleMedium?.copyWith(
                            color: colorScheme.primary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Bank status indicator
                  if (!wallet.hasBankDetails)
                    IconButton(
                      onPressed: onSetupBank,
                      icon: Icon(
                        Icons.warning_amber_rounded,
                        color: colorScheme.error,
                        size: 20,
                      ),
                      tooltip: t.walletDashboardSetupBank,
                    )
                  else
                    Icon(
                      Icons.check_circle,
                      color: colorScheme.primary,
                      size: 20,
                    ),
                ],
              ),
              if (wallet.hasBankDetails && wallet.balance > 0) ...[
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        '${wallet.bankName} - ****${wallet.bankAccountNumber?.substring((wallet.bankAccountNumber?.length ?? 4) - 4)}',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: onWithdraw,
                      child: Text(t.walletDashboardWithdraw),
                    ),
                  ],
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

class _EmptyCampaignWallets extends StatelessWidget {
  const _EmptyCampaignWallets({required this.onCreateCampaign});

  final VoidCallback onCreateCampaign;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final t = AppLocalizations.of(context)!;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerHighest.withValues(alpha: 0.5),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Icon(
            Icons.campaign_outlined,
            size: 40,
            color: colorScheme.onSurfaceVariant,
          ),
          const SizedBox(height: 12),
          Text(
            t.walletDashboardNoCampaignWallets,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSurfaceVariant,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          TextButton(
            onPressed: onCreateCampaign,
            child: Text(t.walletDashboardStartCampaign),
          ),
        ],
      ),
    );
  }
}

class _QuickActionsSection extends StatelessWidget {
  const _QuickActionsSection({
    required this.onDonationHistory,
    required this.onMyCampaigns,
  });

  final VoidCallback onDonationHistory;
  final VoidCallback onMyCampaigns;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final t = AppLocalizations.of(context)!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          t.walletDashboardQuickActions,
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: _QuickActionCard(
                icon: Icons.volunteer_activism,
                label: t.walletDashboardMyDonations,
                color: const Color(0xFF00A86B),
                onTap: onDonationHistory,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: _QuickActionCard(
                icon: Icons.campaign,
                label: t.walletDashboardMyCampaigns,
                color: const Color(0xFFFF6B6B),
                onTap: onMyCampaigns,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _QuickActionCard extends StatelessWidget {
  const _QuickActionCard({
    required this.icon,
    required this.label,
    required this.color,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Card(
      elevation: 0,
      color: colorScheme.surfaceContainerLow,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: color.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(icon, color: color),
              ),
              const SizedBox(height: 8),
              Text(
                label,
                style: theme.textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
