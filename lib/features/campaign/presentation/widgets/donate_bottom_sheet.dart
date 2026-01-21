import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:velora/features/campaign/domain/services/bank_transfer_gateway.dart';
import 'package:velora/features/campaign/presentation/bloc/campaign_bloc.dart';
import 'package:velora/features/campaign/presentation/bloc/campaign_event.dart';
import 'package:velora/features/campaign/presentation/bloc/campaign_state.dart';

/// Donation Bottom Sheet for campaign donations.
///
/// Shows bank transfer instructions and allows user to confirm donation.
/// **MOCK IMPLEMENTATION**: Auto-approves payment after user confirms.
class DonateBottomSheet extends HookWidget {
  const DonateBottomSheet({
    super.key,
    required this.campaignId,
    required this.campaignTitle,
    required this.userId,
  });

  final String campaignId;
  final String campaignTitle;
  final String userId;

  static void show(
    BuildContext context, {
    required String campaignId,
    required String campaignTitle,
    required String userId,
  }) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => DonateBottomSheet(
        campaignId: campaignId,
        campaignTitle: campaignTitle,
        userId: userId,
      ),
    );
  }

  static final _currencyFormat = NumberFormat.currency(
    locale: 'id_ID',
    symbol: 'Rp ',
    decimalDigits: 0,
  );

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    // Form state
    final amountController = useTextEditingController();
    final messageController = useTextEditingController();
    final isAnonymous = useState(false);
    final currentStep = useState(0); // 0: amount, 1: transfer instructions
    final selectedQuickAmount = useState<int?>(null);

    // Quick amount options (in Rupiah)
    const quickAmounts = [10000, 25000, 50000, 100000, 250000, 500000];

    double? getAmount() {
      final text = amountController.text.replaceAll(RegExp(r'[^\d]'), '');
      if (text.isEmpty) return null;
      return double.tryParse(text);
    }

    void selectQuickAmount(int amount) {
      selectedQuickAmount.value = amount;
      amountController.text = _currencyFormat.format(amount);
    }

    return BlocListener<CampaignBloc, CampaignState>(
      listenWhen: (prev, curr) {
        return prev.isPerformingDonation != curr.isPerformingDonation ||
            prev.errorDonation != curr.errorDonation ||
            prev.message != curr.message;
      },
      listener: (context, state) {
        if (!state.isPerformingDonation && state.message != null) {
          // Success - close sheet and show message
          Navigator.of(context).pop();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.message!),
              behavior: SnackBarBehavior.floating,
              backgroundColor: colorScheme.primary,
            ),
          );
          // Clear the message
          context.read<CampaignBloc>().add(const CampaignEvent.clearTransient());
        } else if (!state.isPerformingDonation && state.errorDonation != null) {
          // Error - show error message
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errorDonation!),
              behavior: SnackBarBehavior.floating,
              backgroundColor: colorScheme.error,
            ),
          );
          context.read<CampaignBloc>().add(const CampaignEvent.clearTransient());
        }
      },
      child: Container(
        decoration: BoxDecoration(
          color: colorScheme.surface,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Handle bar
                Container(
                  margin: const EdgeInsets.only(top: 12),
                  width: 40,
                  height: 4,
                  decoration: BoxDecoration(
                    color: colorScheme.onSurfaceVariant.withValues(alpha: 0.4),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Header
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  currentStep.value == 0
                                      ? 'Donate'
                                      : 'Bank Transfer',
                                  style: theme.textTheme.headlineSmall?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: colorScheme.onSurface,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  campaignTitle,
                                  style: theme.textTheme.bodyMedium?.copyWith(
                                    color: colorScheme.onSurfaceVariant,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                            onPressed: () => Navigator.pop(context),
                            icon: const Icon(Icons.close),
                            style: IconButton.styleFrom(
                              backgroundColor: colorScheme.surfaceContainerHighest,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),

                      // Step indicator
                      Row(
                        children: [
                          _StepIndicator(
                            isActive: currentStep.value == 0,
                            isCompleted: currentStep.value > 0,
                            label: '1',
                            colorScheme: colorScheme,
                          ),
                          Expanded(
                            child: Container(
                              height: 2,
                              color: currentStep.value > 0
                                  ? colorScheme.primary
                                  : colorScheme.outlineVariant,
                            ),
                          ),
                          _StepIndicator(
                            isActive: currentStep.value == 1,
                            isCompleted: false,
                            label: '2',
                            colorScheme: colorScheme,
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),

                      // Step content
                      AnimatedSwitcher(
                        duration: const Duration(milliseconds: 300),
                        child: currentStep.value == 0
                            ? _AmountStep(
                                key: const ValueKey('amount'),
                                amountController: amountController,
                                messageController: messageController,
                                isAnonymous: isAnonymous,
                                selectedQuickAmount: selectedQuickAmount.value,
                                quickAmounts: quickAmounts,
                                onQuickAmountSelected: selectQuickAmount,
                                theme: theme,
                                colorScheme: colorScheme,
                              )
                            : _TransferStep(
                                key: const ValueKey('transfer'),
                                amount: getAmount() ?? 0,
                                theme: theme,
                                colorScheme: colorScheme,
                              ),
                      ),
                      const SizedBox(height: 24),

                      // Action buttons
                      BlocBuilder<CampaignBloc, CampaignState>(
                        buildWhen: (prev, curr) =>
                            prev.isPerformingDonation != curr.isPerformingDonation,
                        builder: (context, state) {
                          if (currentStep.value == 0) {
                            return SizedBox(
                              width: double.infinity,
                              height: 56,
                              child: FilledButton(
                                onPressed: getAmount() != null && getAmount()! > 0
                                    ? () => currentStep.value = 1
                                    : null,
                                style: FilledButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                ),
                                child: Text(
                                  'Continue',
                                  style: theme.textTheme.titleMedium?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            );
                          } else {
                            return Column(
                              children: [
                                SizedBox(
                                  width: double.infinity,
                                  height: 56,
                                  child: FilledButton(
                                    onPressed: state.isPerformingDonation
                                        ? null
                                        : () {
                                            // **MOCK**: Process donation with auto-approval
                                            context.read<CampaignBloc>().add(
                                                  CampaignEvent.processDonation(
                                                    campaignId: campaignId,
                                                    userId: userId,
                                                    amount: getAmount()!,
                                                    message: messageController.text.trim().isEmpty
                                                        ? null
                                                        : messageController.text.trim(),
                                                    isAnonymous: isAnonymous.value,
                                                  ),
                                                );
                                          },
                                    style: FilledButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                    ),
                                    child: state.isPerformingDonation
                                        ? SizedBox(
                                            width: 24,
                                            height: 24,
                                            child: CircularProgressIndicator(
                                              strokeWidth: 2,
                                              color: colorScheme.onPrimary,
                                            ),
                                          )
                                        : Text(
                                            'I Have Transferred',
                                            style: theme.textTheme.titleMedium?.copyWith(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                  ),
                                ),
                                const SizedBox(height: 12),
                                TextButton(
                                  onPressed: state.isPerformingDonation
                                      ? null
                                      : () => currentStep.value = 0,
                                  child: const Text('Go Back'),
                                ),
                              ],
                            );
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _StepIndicator extends StatelessWidget {
  const _StepIndicator({
    required this.isActive,
    required this.isCompleted,
    required this.label,
    required this.colorScheme,
  });

  final bool isActive;
  final bool isCompleted;
  final String label;
  final ColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
        color: isActive || isCompleted
            ? colorScheme.primary
            : colorScheme.surfaceContainerHighest,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: isCompleted
            ? Icon(Icons.check, color: colorScheme.onPrimary, size: 16)
            : Text(
                label,
                style: TextStyle(
                  color: isActive
                      ? colorScheme.onPrimary
                      : colorScheme.onSurfaceVariant,
                  fontWeight: FontWeight.bold,
                ),
              ),
      ),
    );
  }
}

class _AmountStep extends StatelessWidget {
  const _AmountStep({
    super.key,
    required this.amountController,
    required this.messageController,
    required this.isAnonymous,
    required this.selectedQuickAmount,
    required this.quickAmounts,
    required this.onQuickAmountSelected,
    required this.theme,
    required this.colorScheme,
  });

  final TextEditingController amountController;
  final TextEditingController messageController;
  final ValueNotifier<bool> isAnonymous;
  final int? selectedQuickAmount;
  final List<int> quickAmounts;
  final void Function(int) onQuickAmountSelected;
  final ThemeData theme;
  final ColorScheme colorScheme;

  String _formatQuickAmount(int amount) {
    if (amount >= 1000000) {
      return '${amount ~/ 1000000}M';
    } else if (amount >= 1000) {
      return '${amount ~/ 1000}K';
    }
    return amount.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'How much would you like to donate?',
          style: theme.textTheme.bodyLarge?.copyWith(
            color: colorScheme.onSurface,
          ),
        ),
        const SizedBox(height: 16),

        // Amount input
        TextField(
          controller: amountController,
          keyboardType: TextInputType.number,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          decoration: InputDecoration(
            labelText: 'Amount',
            prefixText: 'Rp ',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          style: theme.textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),

        // Quick amount chips
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: quickAmounts.map((amount) {
            final isSelected = selectedQuickAmount == amount;
            return ChoiceChip(
              label: Text(_formatQuickAmount(amount)),
              selected: isSelected,
              onSelected: (_) => onQuickAmountSelected(amount),
            );
          }).toList(),
        ),
        const SizedBox(height: 20),

        // Message input
        TextField(
          controller: messageController,
          maxLines: 2,
          maxLength: 200,
          decoration: InputDecoration(
            labelText: 'Add a message (optional)',
            hintText: 'Your words of encouragement...',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        const SizedBox(height: 12),

        // Anonymous toggle
        SwitchListTile.adaptive(
          value: isAnonymous.value,
          onChanged: (value) => isAnonymous.value = value,
          title: Text(
            'Donate anonymously',
            style: theme.textTheme.bodyMedium,
          ),
          subtitle: Text(
            'Your name will be hidden from the campaign page',
            style: theme.textTheme.bodySmall?.copyWith(
              color: colorScheme.onSurfaceVariant,
            ),
          ),
          contentPadding: EdgeInsets.zero,
        ),
      ],
    );
  }
}

class _TransferStep extends StatelessWidget {
  const _TransferStep({
    super.key,
    required this.amount,
    required this.theme,
    required this.colorScheme,
  });

  final double amount;
  final ThemeData theme;
  final ColorScheme colorScheme;

  static final _currencyFormat = NumberFormat.currency(
    locale: 'id_ID',
    symbol: 'Rp ',
    decimalDigits: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Amount summary
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: colorScheme.primaryContainer.withValues(alpha: 0.3),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: colorScheme.primary.withValues(alpha: 0.3),
            ),
          ),
          child: Column(
            children: [
              Text(
                'Transfer Amount',
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                _currencyFormat.format(amount),
                style: theme.textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: colorScheme.primary,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 24),

        // Bank details
        Text(
          'Transfer to:',
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 12),

        _BankDetailRow(
          label: 'Bank',
          value: BankTransferGateway.bankName,
          theme: theme,
          colorScheme: colorScheme,
        ),
        const SizedBox(height: 8),
        _BankDetailRow(
          label: 'Account Number',
          value: BankTransferGateway.accountNumber,
          theme: theme,
          colorScheme: colorScheme,
          canCopy: true,
        ),
        const SizedBox(height: 8),
        _BankDetailRow(
          label: 'Account Holder',
          value: BankTransferGateway.accountHolder,
          theme: theme,
          colorScheme: colorScheme,
        ),

        const SizedBox(height: 24),

        // Mock notice
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: colorScheme.tertiaryContainer.withValues(alpha: 0.3),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              Icon(
                Icons.info_outline,
                size: 20,
                color: colorScheme.tertiary,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  // **MOCK**: This is for development - payment is auto-approved
                  'After completing the transfer, tap "I Have Transferred" to confirm your donation.',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _BankDetailRow extends StatelessWidget {
  const _BankDetailRow({
    required this.label,
    required this.value,
    required this.theme,
    required this.colorScheme,
    this.canCopy = false,
  });

  final String label;
  final String value;
  final ThemeData theme;
  final ColorScheme colorScheme;
  final bool canCopy;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSurfaceVariant,
            ),
          ),
          Row(
            children: [
              Text(
                value,
                style: theme.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              if (canCopy) ...[
                const SizedBox(width: 8),
                GestureDetector(
                  onTap: () {
                    Clipboard.setData(ClipboardData(text: value));
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('$label copied'),
                        duration: const Duration(seconds: 1),
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  },
                  child: Icon(
                    Icons.copy,
                    size: 18,
                    color: colorScheme.primary,
                  ),
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }
}
