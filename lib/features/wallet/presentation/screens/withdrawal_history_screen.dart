import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';
import 'package:velora/features/wallet/domain/entities/wallet_withdrawal_entity.dart';
import 'package:velora/features/wallet/presentation/bloc/wallet_bloc.dart';
import 'package:velora/features/wallet/presentation/bloc/wallet_event.dart';
import 'package:velora/features/wallet/presentation/bloc/wallet_state.dart';

class WithdrawalHistoryScreen extends HookWidget {
  const WithdrawalHistoryScreen({super.key, required this.walletId});

  final String walletId;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final currencyFormat = NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp ',
      decimalDigits: 0,
    );

    useEffect(() {
      context.read<WalletBloc>().add(
        WalletEvent.loadWithdrawals(walletId: walletId),
      );
      return null;
    }, [walletId]);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Withdrawal History'),
        actions: [
          IconButton(
            onPressed: () {
              context.read<WalletBloc>().add(
                WalletEvent.loadWithdrawals(walletId: walletId),
              );
            },
            icon: const Icon(Icons.refresh),
            tooltip: 'Refresh',
          ),
        ],
      ),
      body: BlocBuilder<WalletBloc, WalletState>(
        builder: (context, state) {
          if (state.isLoadingWithdrawals) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state.errorWithdrawals != null) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.error_outline, size: 64, color: colorScheme.error),
                  const SizedBox(height: 16),
                  Text(
                    'Failed to load withdrawals',
                    style: theme.textTheme.titleMedium,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    state.errorWithdrawals!,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  FilledButton.icon(
                    onPressed: () {
                      context.read<WalletBloc>().add(
                        WalletEvent.loadWithdrawals(walletId: walletId),
                      );
                    },
                    icon: const Icon(Icons.refresh),
                    label: const Text('Retry'),
                  ),
                ],
              ),
            );
          }

          if (state.withdrawals.isEmpty) {
            return _EmptyWithdrawals();
          }

          return RefreshIndicator(
            onRefresh: () async {
              context.read<WalletBloc>().add(
                WalletEvent.loadWithdrawals(walletId: walletId),
              );
            },
            child: ListView.separated(
              padding: const EdgeInsets.all(16),
              itemCount: state.withdrawals.length,
              separatorBuilder: (_, __) => const SizedBox(height: 12),
              itemBuilder: (context, index) {
                final withdrawal = state.withdrawals[index];
                return _WithdrawalCard(
                  withdrawal: withdrawal,
                  currencyFormat: currencyFormat,
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class _EmptyWithdrawals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.account_balance_outlined,
            size: 72,
            color: colorScheme.onSurfaceVariant.withValues(alpha: 0.5),
          ),
          const SizedBox(height: 16),
          Text(
            'No withdrawals yet',
            style: theme.textTheme.titleMedium?.copyWith(
              color: colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48),
            child: Text(
              'Your withdrawal requests will appear here.',
              style: theme.textTheme.bodyMedium?.copyWith(
                color: colorScheme.onSurfaceVariant.withValues(alpha: 0.7),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

class _WithdrawalCard extends StatelessWidget {
  const _WithdrawalCard({
    required this.withdrawal,
    required this.currencyFormat,
  });

  final WalletWithdrawalEntity withdrawal;
  final NumberFormat currencyFormat;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final statusInfo = _getStatusInfo(withdrawal.status, colorScheme);

    return Card(
      elevation: 0,
      color: colorScheme.surfaceContainerLow,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () => _showWithdrawalDetails(context),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Amount
                  Text(
                    currencyFormat.format(withdrawal.amount),
                    style: theme.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // Status Badge
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: statusInfo.backgroundColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          statusInfo.icon,
                          size: 14,
                          color: statusInfo.textColor,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          statusInfo.label,
                          style: theme.textTheme.labelSmall?.copyWith(
                            color: statusInfo.textColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              const Divider(height: 1),
              const SizedBox(height: 12),

              // Bank Details
              _InfoRow(
                icon: Icons.account_balance,
                label: 'Bank',
                value: withdrawal.targetBankName,
              ),
              const SizedBox(height: 8),
              _InfoRow(
                icon: Icons.credit_card,
                label: 'Account',
                value: _maskAccountNumber(withdrawal.targetAccountNumber),
              ),
              const SizedBox(height: 8),
              if (withdrawal.transferReference != null) ...[
                _InfoRow(
                  icon: Icons.tag,
                  label: 'Reference',
                  value: withdrawal.transferReference!,
                ),
                const SizedBox(height: 8),
              ],

              // Date
              _InfoRow(
                icon: Icons.access_time,
                label: 'Requested',
                value: DateFormat.yMMMd().add_jm().format(withdrawal.createdAt),
              ),

              if (withdrawal.processedAt != null) ...[
                const SizedBox(height: 8),
                _InfoRow(
                  icon: Icons.check_circle_outline,
                  label: 'Processed',
                  value: DateFormat.yMMMd().add_jm().format(
                    withdrawal.processedAt!,
                  ),
                ),
              ],

              if (withdrawal.notes != null && withdrawal.notes!.isNotEmpty) ...[
                const SizedBox(height: 12),
                Text(
                  withdrawal.notes!,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  String _maskAccountNumber(String accountNumber) {
    if (accountNumber.length <= 4) return accountNumber;
    final visiblePart = accountNumber.substring(accountNumber.length - 4);
    return '****$visiblePart';
  }

  _StatusInfo _getStatusInfo(
    WalletWithdrawalStatus status,
    ColorScheme colorScheme,
  ) {
    return switch (status) {
      WalletWithdrawalStatus.pending => _StatusInfo(
        label: 'Pending',
        icon: Icons.schedule,
        backgroundColor: Colors.orange.withValues(alpha: 0.15),
        textColor: Colors.orange.shade700,
      ),
      WalletWithdrawalStatus.processing => _StatusInfo(
        label: 'Processing',
        icon: Icons.sync,
        backgroundColor: Colors.blue.withValues(alpha: 0.15),
        textColor: Colors.blue.shade700,
      ),
      WalletWithdrawalStatus.completed => _StatusInfo(
        label: 'Completed',
        icon: Icons.check_circle,
        backgroundColor: Colors.green.withValues(alpha: 0.15),
        textColor: Colors.green.shade700,
      ),
      WalletWithdrawalStatus.failed => _StatusInfo(
        label: 'Failed',
        icon: Icons.error,
        backgroundColor: colorScheme.errorContainer,
        textColor: colorScheme.onErrorContainer,
      ),
      WalletWithdrawalStatus.cancelled => _StatusInfo(
        label: 'Cancelled',
        icon: Icons.cancel,
        backgroundColor: colorScheme.surfaceContainerHighest,
        textColor: colorScheme.onSurfaceVariant,
      ),
    };
  }

  void _showWithdrawalDetails(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final statusInfo = _getStatusInfo(withdrawal.status, colorScheme);

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (ctx) => DraggableScrollableSheet(
        initialChildSize: 0.6,
        minChildSize: 0.4,
        maxChildSize: 0.9,
        expand: false,
        builder: (_, scrollController) => SingleChildScrollView(
          controller: scrollController,
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Handle
              Center(
                child: Container(
                  width: 40,
                  height: 4,
                  decoration: BoxDecoration(
                    color: colorScheme.onSurfaceVariant.withValues(alpha: 0.3),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // Title
              Text(
                'Withdrawal Details',
                style: theme.textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 24),

              // Amount Card
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    Text(
                      'Amount',
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: colorScheme.onPrimaryContainer,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      currencyFormat.format(withdrawal.amount),
                      style: theme.textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: colorScheme.onPrimaryContainer,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: statusInfo.backgroundColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            statusInfo.icon,
                            size: 16,
                            color: statusInfo.textColor,
                          ),
                          const SizedBox(width: 6),
                          Text(
                            statusInfo.label,
                            style: theme.textTheme.labelMedium?.copyWith(
                              color: statusInfo.textColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Details
              Text(
                'Transfer Details',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              _DetailTile(label: 'Bank Name', value: withdrawal.targetBankName),
              _DetailTile(
                label: 'Account Number',
                value: withdrawal.targetAccountNumber,
              ),
              _DetailTile(
                label: 'Account Holder',
                value: withdrawal.targetAccountHolder,
              ),
              _DetailTile(
                label: 'Transfer Reference',
                value: withdrawal.transferReference ?? '-',
              ),
              const SizedBox(height: 24),

              Text(
                'Timeline',
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              _DetailTile(
                label: 'Requested At',
                value: DateFormat.yMMMd().add_jm().format(withdrawal.createdAt),
              ),
              if (withdrawal.processedAt != null)
                _DetailTile(
                  label: 'Processed At',
                  value: DateFormat.yMMMd().add_jm().format(
                    withdrawal.processedAt!,
                  ),
                ),

              if (withdrawal.notes != null && withdrawal.notes!.isNotEmpty) ...[
                const SizedBox(height: 24),
                Text(
                  'Notes',
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(withdrawal.notes!, style: theme.textTheme.bodyMedium),
              ],

              const SizedBox(height: 32),

              // Cancel button for pending withdrawals
              if (withdrawal.isPending)
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton.icon(
                    onPressed: () {
                      Navigator.pop(ctx);
                      _showCancelConfirmation(context);
                    },
                    icon: const Icon(Icons.cancel_outlined),
                    label: const Text('Cancel Withdrawal'),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: colorScheme.error,
                      side: BorderSide(color: colorScheme.error),
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  void _showCancelConfirmation(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Cancel Withdrawal?'),
        content: Text(
          'Are you sure you want to cancel this withdrawal request? '
          'The amount will be returned to your wallet balance.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text('No, Keep It'),
          ),
          FilledButton(
            onPressed: () {
              Navigator.pop(ctx);
              // TODO: Implement cancel withdrawal event
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Withdrawal cancelled')),
              );
            },
            style: FilledButton.styleFrom(backgroundColor: colorScheme.error),
            child: const Text('Yes, Cancel'),
          ),
        ],
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  const _InfoRow({
    required this.icon,
    required this.label,
    required this.value,
  });

  final IconData icon;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Row(
      children: [
        Icon(icon, size: 16, color: colorScheme.onSurfaceVariant),
        const SizedBox(width: 8),
        Text(
          '$label: ',
          style: theme.textTheme.bodySmall?.copyWith(
            color: colorScheme.onSurfaceVariant,
          ),
        ),
        Expanded(
          child: Text(
            value,
            style: theme.textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.end,
          ),
        ),
      ],
    );
  }
}

class _DetailTile extends StatelessWidget {
  const _DetailTile({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSurfaceVariant,
            ),
          ),
          Flexible(
            child: Text(
              value,
              style: theme.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.end,
            ),
          ),
        ],
      ),
    );
  }
}

class _StatusInfo {
  const _StatusInfo({
    required this.label,
    required this.icon,
    required this.backgroundColor,
    required this.textColor,
  });

  final String label;
  final IconData icon;
  final Color backgroundColor;
  final Color textColor;
}
