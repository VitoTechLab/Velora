import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';
import 'package:velora/features/campaign/domain/entities/campaign_entity.dart';
import 'package:velora/features/campaign/domain/entities/withdrawal_entity.dart';
import 'package:velora/features/campaign/presentation/bloc/campaign_bloc.dart';
import 'package:velora/features/campaign/presentation/bloc/campaign_event.dart';
import 'package:velora/features/campaign/presentation/bloc/campaign_state.dart';

/// Request Withdrawal Screen
///
/// Allows creators to request a withdrawal from their campaign balance.
/// Validates amount against available balance and checks for bank details.
class RequestWithdrawalScreen extends HookWidget {
  const RequestWithdrawalScreen({
    super.key,
    required this.campaignId,
  });

  final String campaignId;

  static final _currencyFormat = NumberFormat.currency(
    locale: 'id_ID',
    symbol: 'Rp ',
    decimalDigits: 0,
  );

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    // Load campaign details on init
    useEffect(() {
      context.read<CampaignBloc>().add(
            CampaignEvent.getCampaignDetail(campaignId: campaignId),
          );
      return null;
    }, [campaignId]);

    final amountController = useTextEditingController();
    final formKey = useMemoized(() => GlobalKey<FormState>());

    return Scaffold(
      backgroundColor: colorScheme.surface,
      appBar: AppBar(
        title: const Text('Withdraw Funds'),
        backgroundColor: colorScheme.surface,
      ),
      body: BlocConsumer<CampaignBloc, CampaignState>(
        listenWhen: (prev, curr) =>
            prev.isRequestingWithdrawal != curr.isRequestingWithdrawal ||
            prev.message != curr.message ||
            prev.errorWithdrawal != curr.errorWithdrawal,
        listener: (context, state) {
          if (!state.isRequestingWithdrawal) {
            if (state.message != null &&
                state.message!.contains('processed')) {
              // Success
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (context) => AlertDialog(
                  title: const Text('Withdrawal Successful'),
                  content: const Text(
                    'Your withdrawal request has been processed and funds will be transferred to your account shortly.',
                  ),
                  icon: const Icon(Icons.check_circle, color: Colors.green, size: 48),
                  actions: [
                    TextButton(
                      onPressed: () {
                        context.pop(); // Close dialog
                        context.pop(); // Go back to dashboard
                      },
                      child: const Text('Done'),
                    ),
                  ],
                ),
              );
            } else if (state.errorWithdrawal != null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.errorWithdrawal!),
                  backgroundColor: colorScheme.error,
                ),
              );
            }
            context
                .read<CampaignBloc>()
                .add(const CampaignEvent.clearTransient());
          }
        },
        builder: (context, state) {
          // Find campaign - prefer selectedCampaign since it's freshly loaded
          // with getCampaignDetail and will have the latest bank details
          final campaign = state.selectedCampaign?.id == campaignId
              ? state.selectedCampaign
              : state.userCampaigns.cast<CampaignEntity?>().firstWhere(
                    (c) => c?.id == campaignId,
                    orElse: () => state.selectedCampaign,
                  );

          if (campaign == null) {
            return const Center(child: CircularProgressIndicator());
          }

          final hasBankDetails = campaign.withdrawalBankName != null &&
              campaign.withdrawalAccountNumber != null;

          return SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Available Balance Card
                  _BalanceCard(
                    balance: campaign.currentBalance,
                    colorScheme: colorScheme,
                    theme: theme,
                    currencyFormat: _currencyFormat,
                  ),
                  const SizedBox(height: 32),

                  // Amount Input
                  Text(
                    'Withdrawal Amount',
                    style: theme.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: amountController,
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    style: theme.textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                      prefixText: 'Rp ',
                      hintText: '0',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      suffixIcon: TextButton(
                        onPressed: () {
                          amountController.text =
                              campaign.currentBalance.toInt().toString();
                        },
                        child: const Text('MAX'),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Required';
                      }
                      final amount = double.tryParse(value) ?? 0;
                      if (amount <= 0) {
                        return 'Amount must be greater than 0';
                      }
                      if (amount > campaign.currentBalance) {
                        return 'Insufficient balance';
                      }
                      if (amount < 10000) { // Minimum withdrawal
                        return 'Minimum withdrawal is Rp 10,000';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 32),

                  // Destination Account
                  Text(
                    'Destination Account',
                    style: theme.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  if (hasBankDetails)
                    _BankDetailsCard(
                      campaign: campaign,
                      colorScheme: colorScheme,
                      theme: theme,
                      onEdit: () => context.push(
                        '/profile/settings/wallet/my-campaigns/$campaignId/bank-settings',
                      ),
                    )
                  else
                    _NoBankDetailsCard(
                      colorScheme: colorScheme,
                      theme: theme,
                      onAdd: () => context.push(
                        '/profile/settings/wallet/my-campaigns/$campaignId/bank-settings',
                      ),
                    ),

                  const SizedBox(height: 48),

                  // Info Note
                  Row(
                    children: [
                      Icon(Icons.info_outline,
                          size: 16, color: colorScheme.onSurfaceVariant),
                      const SizedBox(width: 8),
                      Text(
                        'Withdrawals are processed instantly (mock).',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),

                  // Submit Button
                  SizedBox(
                    width: double.infinity,
                    height: 56,
                    child: FilledButton(
                      onPressed: state.isRequestingWithdrawal ||
                              campaign.currentBalance <= 0 ||
                              !hasBankDetails
                          ? null
                          : () {
                              if (formKey.currentState!.validate()) {
                                final amount =
                                    double.tryParse(amountController.text) ?? 0;
                                final withdrawal = WithdrawalEntity(
                                  id: const Uuid().v4(),
                                  campaignId: campaignId,
                                  userId: campaign.userId,
                                  amount: amount,
                                  targetBankName: campaign.withdrawalBankName ?? '',
                                  targetAccountNumber: campaign.withdrawalAccountNumber ?? '',
                                  targetAccountHolder: campaign.withdrawalAccountHolder ?? '',
                                  createdAt: DateTime.now(),
                                );
                                context.read<CampaignBloc>().add(
                                      CampaignEvent.requestWithdrawal(
                                        withdrawal: withdrawal,
                                      ),
                                    );
                              }
                            },
                      style: FilledButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: state.isRequestingWithdrawal
                          ? const SizedBox(
                              width: 24,
                              height: 24,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                color: Colors.white,
                              ),
                            )
                          : const Text(
                              'Confirm Withdrawal',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _BalanceCard extends StatelessWidget {
  const _BalanceCard({
    required this.balance,
    required this.colorScheme,
    required this.theme,
    required this.currencyFormat,
  });

  final double balance;
  final ColorScheme colorScheme;
  final ThemeData theme;
  final NumberFormat currencyFormat;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerHighest.withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: colorScheme.outlineVariant.withValues(alpha: 0.5),
        ),
      ),
      child: Column(
        children: [
          Text(
            'Available Balance',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            currencyFormat.format(balance),
            style: theme.textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }
}

class _BankDetailsCard extends StatelessWidget {
  const _BankDetailsCard({
    required this.campaign,
    required this.colorScheme,
    required this.theme,
    required this.onEdit,
  });

  final CampaignEntity campaign;
  final ColorScheme colorScheme;
  final ThemeData theme;
  final VoidCallback onEdit;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: colorScheme.secondaryContainer.withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: colorScheme.outlineVariant),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: colorScheme.surface,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(Icons.account_balance, color: colorScheme.primary),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  campaign.withdrawalBankName ?? '',
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  campaign.withdrawalAccountNumber ?? '',
                  style: theme.textTheme.bodyMedium,
                ),
                Text(
                  campaign.withdrawalAccountHolder?.toUpperCase() ?? '',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: onEdit,
            icon: const Icon(Icons.edit_outlined),
            tooltip: 'Edit',
          ),
        ],
      ),
    );
  }
}

class _NoBankDetailsCard extends StatelessWidget {
  const _NoBankDetailsCard({
    required this.colorScheme,
    required this.theme,
    required this.onAdd,
  });

  final ColorScheme colorScheme;
  final ThemeData theme;
  final VoidCallback onAdd;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onAdd,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            color: colorScheme.error,
            style: BorderStyle.solid,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(12),
          color: colorScheme.errorContainer.withValues(alpha: 0.1),
        ),
        child: Column(
          children: [
            Icon(Icons.warning_amber_rounded, color: colorScheme.error),
            const SizedBox(height: 8),
            Text(
              'No Bank Details Found',
              style: theme.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: colorScheme.error,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              'Please add a bank account to withdraw funds',
              style: theme.textTheme.bodySmall?.copyWith(
                color: colorScheme.onErrorContainer,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              'Add Account',
              style: TextStyle(
                color: colorScheme.error,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
