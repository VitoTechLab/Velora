import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';
import 'package:velora/features/wallet/domain/entities/wallet_entity.dart';
import 'package:velora/features/wallet/domain/entities/wallet_transaction_entity.dart';
import 'package:velora/features/wallet/presentation/bloc/wallet_bloc.dart';
import 'package:velora/features/wallet/presentation/bloc/wallet_event.dart';
import 'package:velora/features/wallet/presentation/bloc/wallet_state.dart';
import 'package:velora/l10n/app_localizations.dart';

class WalletDetailScreen extends HookWidget {
  const WalletDetailScreen({super.key, required this.walletId});

  final String walletId;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final t = AppLocalizations.of(context)!;

    final currencyFormat = NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp ',
      decimalDigits: 0,
    );

    useEffect(() {
      context.read<WalletBloc>().add(WalletEvent.loadWallet(walletId: walletId));
      context
          .read<WalletBloc>()
          .add(WalletEvent.loadTransactions(walletId: walletId));
      return null;
    }, [walletId]);

    return BlocBuilder<WalletBloc, WalletState>(
      builder: (context, state) {
        final wallet = state.selectedWallet;

        return Scaffold(
          appBar: AppBar(
            title: Text(wallet?.isMainWallet == true
                ? t.walletDashboardMainWallet
                : wallet?.campaignTitle ?? 'Wallet'),
          ),
          body: state.isLoadingWallet
              ? const Center(child: CircularProgressIndicator())
              : wallet == null
                  ? Center(child: Text(t.walletDashboardNoMainWallet))
                  : RefreshIndicator(
                      onRefresh: () async {
                        context
                            .read<WalletBloc>()
                            .add(WalletEvent.loadWallet(walletId: walletId));
                        context.read<WalletBloc>().add(
                            WalletEvent.loadTransactions(walletId: walletId));
                      },
                      child: SingleChildScrollView(
                        physics: const AlwaysScrollableScrollPhysics(),
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Balance Card
                            _BalanceCard(
                              wallet: wallet,
                              currencyFormat: currencyFormat,
                            ),
                            const SizedBox(height: 24),

                            // Bank Details Section
                            _BankDetailsSection(
                              wallet: wallet,
                              onEdit: () =>
                                  _showBankDetailsDialog(context, wallet),
                            ),
                            const SizedBox(height: 24),

                            // Transaction History
                            Text(
                              t.walletDashboardRecentActivity,
                              style: theme.textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 12),
                            if (state.isLoadingTransactions)
                              const Center(child: CircularProgressIndicator())
                            else if (state.transactions.isEmpty)
                              _EmptyTransactions()
                            else
                              ListView.separated(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: state.transactions.length,
                                separatorBuilder: (_, __) =>
                                    const Divider(height: 1),
                                itemBuilder: (context, index) {
                                  final tx = state.transactions[index];
                                  return _TransactionTile(
                                    transaction: tx,
                                    currencyFormat: currencyFormat,
                                  );
                                },
                              ),
                          ],
                        ),
                      ),
                    ),
        );
      },
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
}

class _BalanceCard extends StatelessWidget {
  const _BalanceCard({
    required this.wallet,
    required this.currencyFormat,
  });

  final WalletEntity wallet;
  final NumberFormat currencyFormat;

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
          colors: wallet.isMainWallet
              ? [colorScheme.primaryContainer, colorScheme.secondaryContainer]
              : [colorScheme.tertiaryContainer, colorScheme.secondaryContainer],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                wallet.isMainWallet
                    ? Icons.account_balance_wallet
                    : Icons.campaign,
                color: colorScheme.onPrimaryContainer,
              ),
              const SizedBox(width: 8),
              Text(
                wallet.isMainWallet
                    ? t.walletDashboardMainWallet
                    : wallet.campaignTitle ?? 'Campaign Wallet',
                style: theme.textTheme.titleSmall?.copyWith(
                  color: colorScheme.onPrimaryContainer,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            currencyFormat.format(wallet.balance),
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
        ],
      ),
    );
  }
}

class _BankDetailsSection extends StatelessWidget {
  const _BankDetailsSection({
    required this.wallet,
    required this.onEdit,
  });

  final WalletEntity wallet;
  final VoidCallback onEdit;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final t = AppLocalizations.of(context)!;

    return Card(
      elevation: 0,
      color: colorScheme.surfaceContainerLow,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  t.walletDashboardBankDetails,
                  style: theme.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton.icon(
                  onPressed: onEdit,
                  icon: const Icon(Icons.edit, size: 16),
                  label: const Text('Edit'),
                ),
              ],
            ),
            const Divider(),
            if (wallet.hasBankDetails) ...[
              _DetailRow(label: t.walletDashboardBankName, value: wallet.bankName!),
              _DetailRow(
                  label: t.walletDashboardAccountNumber,
                  value: wallet.bankAccountNumber!),
              _DetailRow(
                  label: t.walletDashboardAccountHolder,
                  value: wallet.bankAccountHolder!),
            ] else
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  children: [
                    Icon(Icons.warning_amber_rounded,
                        color: colorScheme.error, size: 20),
                    const SizedBox(width: 8),
                    Text(
                      'Bank details not configured',
                      style: TextStyle(color: colorScheme.error),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _DetailRow extends StatelessWidget {
  const _DetailRow({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: theme.textTheme.bodySmall),
          Text(value, style: theme.textTheme.bodyMedium),
        ],
      ),
    );
  }
}

class _EmptyTransactions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final t = AppLocalizations.of(context)!;

    return Container(
      padding: const EdgeInsets.all(32),
      alignment: Alignment.center,
      child: Column(
        children: [
          Icon(
            Icons.receipt_long_outlined,
            size: 48,
            color: colorScheme.onSurfaceVariant,
          ),
          const SizedBox(height: 12),
          Text(
            t.walletDashboardNoActivity,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}

class _TransactionTile extends StatelessWidget {
  const _TransactionTile({
    required this.transaction,
    required this.currencyFormat,
  });

  final WalletTransactionEntity transaction;
  final NumberFormat currencyFormat;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final isPositive = transaction.balanceChange >= 0;
    final icon = switch (transaction.type) {
      WalletTransactionType.topup => Icons.add_circle_outline,
      WalletTransactionType.donationSent => Icons.volunteer_activism,
      WalletTransactionType.donationReceived => Icons.favorite,
      WalletTransactionType.withdrawal => Icons.arrow_upward,
      WalletTransactionType.platformFee => Icons.percent,
      WalletTransactionType.refund => Icons.refresh,
    };

    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: (isPositive ? Colors.green : Colors.red).withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(
          icon,
          color: isPositive ? Colors.green : Colors.red,
          size: 20,
        ),
      ),
      title: Text(
        transaction.description ?? transaction.type.name,
        style: theme.textTheme.bodyMedium,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(
        DateFormat.yMMMd().add_jm().format(transaction.createdAt),
        style: theme.textTheme.bodySmall,
      ),
      trailing: Text(
        '${isPositive ? '+' : ''}${currencyFormat.format(transaction.balanceChange)}',
        style: theme.textTheme.bodyMedium?.copyWith(
          color: isPositive ? Colors.green : Colors.red,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
