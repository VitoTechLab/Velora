import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class InvestBottomSheet extends HookWidget {
  final double unitPrice;
  final int minBuyUnits;

  const InvestBottomSheet({
    super.key,
    required this.unitPrice,
    required this.minBuyUnits,
  });

  static void show(BuildContext context, double unitPrice, int minBuyUnits) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) =>
          InvestBottomSheet(unitPrice: unitPrice, minBuyUnits: minBuyUnits),
    );
  }

  String _formatCurrency(double amount) {
    return amount
        .toStringAsFixed(0)
        .replaceAllMapped(
          RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
          (Match m) => '${m[1]}.',
        );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final currentStep = useState(0);
    final units = useState(minBuyUnits);
    final risk1Accepted = useState(false);
    final risk2Accepted = useState(false);

    final totalAmount = unitPrice * units.value;

    return Container(
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
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
                          child: Text(
                            currentStep.value == 0
                                ? 'Investment Amount'
                                : 'Risk Acknowledgement',
                            style: theme.textTheme.headlineSmall?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: colorScheme.onSurface,
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: Icon(Icons.close),
                          style: IconButton.styleFrom(
                            backgroundColor:
                                colorScheme.surfaceContainerHighest,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),

                    // Step Indicator
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
                    const SizedBox(height: 32),

                    // Step Content
                    AnimatedSwitcher(
                      duration: const Duration(milliseconds: 300),
                      child: currentStep.value == 0
                          ? _AmountSelectionStep(
                              units: units,
                              minBuyUnits: minBuyUnits,
                              unitPrice: unitPrice,
                              totalAmount: totalAmount,
                              formatCurrency: _formatCurrency,
                              colorScheme: colorScheme,
                              theme: theme,
                            )
                          : _RiskAcknowledgementStep(
                              risk1Accepted: risk1Accepted,
                              risk2Accepted: risk2Accepted,
                              colorScheme: colorScheme,
                              theme: theme,
                            ),
                    ),
                    const SizedBox(height: 24),

                    // Action Buttons
                    if (currentStep.value == 0)
                      SizedBox(
                        width: double.infinity,
                        height: 56,
                        child: FilledButton(
                          onPressed: () => currentStep.value = 1,
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
                      )
                    else
                      Column(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            height: 56,
                            child: FilledButton(
                              onPressed:
                                  risk1Accepted.value && risk2Accepted.value
                                  ? () {
                                      Navigator.pop(context);
                                      ScaffoldMessenger.of(
                                        context,
                                      ).showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            'Investment placed: ${units.value} units (Rp ${_formatCurrency(totalAmount)})',
                                          ),
                                          behavior: SnackBarBehavior.floating,
                                        ),
                                      );
                                    }
                                  : null,
                              style: FilledButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                              child: Text(
                                'Confirm Investment',
                                style: theme.textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 12),
                          TextButton(
                            onPressed: () => currentStep.value = 0,
                            child: Text('Go Back'),
                          ),
                        ],
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _StepIndicator extends StatelessWidget {
  final bool isActive;
  final bool isCompleted;
  final String label;
  final ColorScheme colorScheme;

  const _StepIndicator({
    required this.isActive,
    required this.isCompleted,
    required this.label,
    required this.colorScheme,
  });

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

class _AmountSelectionStep extends StatelessWidget {
  final ValueNotifier<int> units;
  final int minBuyUnits;
  final double unitPrice;
  final double totalAmount;
  final String Function(double) formatCurrency;
  final ColorScheme colorScheme;
  final ThemeData theme;

  const _AmountSelectionStep({
    required this.units,
    required this.minBuyUnits,
    required this.unitPrice,
    required this.totalAmount,
    required this.formatCurrency,
    required this.colorScheme,
    required this.theme,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      key: const ValueKey('amount'),
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'How many units do you want to invest?',
          style: theme.textTheme.bodyLarge?.copyWith(
            color: colorScheme.onSurface,
          ),
        ),
        const SizedBox(height: 20),

        // Units selector
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton.filled(
              onPressed: units.value > minBuyUnits
                  ? () => units.value -= 10
                  : null,
              icon: const Icon(Icons.remove),
              style: IconButton.styleFrom(
                backgroundColor: colorScheme.primaryContainer,
              ),
            ),
            const SizedBox(width: 24),
            Text(
              '${units.value}',
              style: theme.textTheme.displaySmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: colorScheme.primary,
              ),
            ),
            const SizedBox(width: 24),
            IconButton.filled(
              onPressed: () => units.value += 10,
              icon: const Icon(Icons.add),
              style: IconButton.styleFrom(
                backgroundColor: colorScheme.primaryContainer,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Center(
          child: Text(
            'units (min. $minBuyUnits)',
            style: theme.textTheme.bodySmall?.copyWith(
              color: colorScheme.onSurfaceVariant,
            ),
          ),
        ),
        const SizedBox(height: 24),

        // Quick amount chips
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [minBuyUnits, 50, 100, 200].map((amount) {
            return ChoiceChip(
              label: Text('$amount units'),
              selected: units.value == amount,
              onSelected: (selected) {
                if (selected) units.value = amount;
              },
            );
          }).toList(),
        ),
        const SizedBox(height: 24),

        // Total summary
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: colorScheme.primaryContainer.withValues(alpha: 0.3),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: colorScheme.primary.withValues(alpha: 0.3),
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Unit Price:',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                  Text(
                    'Rp ${formatCurrency(unitPrice)}',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: colorScheme.onSurface,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Units:',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                  Text(
                    '${units.value}',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: colorScheme.onSurface,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Divider(color: colorScheme.primary.withValues(alpha: 0.3)),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Investment:',
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: colorScheme.onSurface,
                    ),
                  ),
                  Text(
                    'Rp ${formatCurrency(totalAmount)}',
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: colorScheme.primary,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _RiskAcknowledgementStep extends StatelessWidget {
  final ValueNotifier<bool> risk1Accepted;
  final ValueNotifier<bool> risk2Accepted;
  final ColorScheme colorScheme;
  final ThemeData theme;

  const _RiskAcknowledgementStep({
    required this.risk1Accepted,
    required this.risk2Accepted,
    required this.colorScheme,
    required this.theme,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      key: const ValueKey('risk'),
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: colorScheme.errorContainer.withValues(alpha: 0.3),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: colorScheme.error.withValues(alpha: 0.3)),
          ),
          child: Row(
            children: [
              Icon(Icons.warning_amber, color: colorScheme.error),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  'Please read and accept the risk disclosures',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: colorScheme.onSurface,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 24),

        CheckboxListTile(
          value: risk1Accepted.value,
          onChanged: (value) => risk1Accepted.value = value ?? false,
          title: Text(
            'I understand that this investment carries risk and I may lose some or all of my capital',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSurface,
            ),
          ),
          controlAffinity: ListTileControlAffinity.leading,
          contentPadding: EdgeInsets.zero,
        ),
        const SizedBox(height: 12),
        CheckboxListTile(
          value: risk2Accepted.value,
          onChanged: (value) => risk2Accepted.value = value ?? false,
          title: Text(
            'I confirm that I can afford to lose this investment and have read the full risk disclosure in the Transparency tab',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSurface,
            ),
          ),
          controlAffinity: ListTileControlAffinity.leading,
          contentPadding: EdgeInsets.zero,
        ),
      ],
    );
  }
}
