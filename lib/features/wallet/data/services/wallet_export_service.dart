import 'dart:io';

import 'package:csv/csv.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:velora/features/wallet/domain/entities/wallet_entity.dart';
import 'package:velora/features/wallet/domain/entities/wallet_transaction_entity.dart';

/// Service for exporting wallet data to various formats
///
/// Currently supports:
/// - CSV export for transaction history
///
/// Future enhancements:
/// - PDF export with formatted receipts
/// - Excel export with multiple sheets
class WalletExportService {
  /// Export transactions to CSV file and share it
  ///
  /// The CSV includes the following columns:
  /// - Date: Transaction date/time
  /// - Type: Transaction type (topup, withdrawal, donation, etc.)
  /// - Description: Transaction description
  /// - Amount: The balance change amount
  /// - Balance After: Balance after this transaction
  /// - Status: Transaction status
  ///
  /// Returns true if export was successful, false otherwise
  Future<bool> exportTransactionsToCSV({
    required List<WalletTransactionEntity> transactions,
    required WalletEntity wallet,
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    try {
      // Filter by date range if provided
      var filteredTransactions = transactions;
      if (startDate != null) {
        filteredTransactions = filteredTransactions
            .where((t) => t.createdAt.isAfter(startDate))
            .toList();
      }
      if (endDate != null) {
        filteredTransactions = filteredTransactions
            .where((t) => t.createdAt.isBefore(endDate.add(const Duration(days: 1))))
            .toList();
      }

      // Sort by date descending
      filteredTransactions.sort((a, b) => b.createdAt.compareTo(a.createdAt));

      // Build CSV data
      final dateFormat = DateFormat('yyyy-MM-dd HH:mm:ss');
      final currencyFormat = NumberFormat.currency(
        locale: 'id_ID',
        symbol: 'Rp ',
        decimalDigits: 0,
      );

      // Header row
      final List<List<dynamic>> rows = [
        ['Date', 'Type', 'Description', 'Amount', 'Balance After', 'Status'],
      ];

      // Data rows
      for (final tx in filteredTransactions) {
        rows.add([
          dateFormat.format(tx.createdAt),
          _transactionTypeToString(tx.type),
          tx.description ?? '',
          currencyFormat.format(tx.balanceChange),
          currencyFormat.format(tx.balanceAfter),
          tx.status.name,
        ]);
      }

      // Convert to CSV string
      const converter = ListToCsvConverter();
      final csvString = converter.convert(rows);

      // Generate filename
      final walletName = wallet.isMainWallet
          ? 'main_wallet'
          : 'campaign_${wallet.campaignId ?? 'unknown'}';
      final timestamp = DateFormat('yyyyMMdd_HHmmss').format(DateTime.now());
      final filename = 'transactions_${walletName}_$timestamp.csv';

      // Write to temp file
      final tempDir = await getTemporaryDirectory();
      final file = File('${tempDir.path}/$filename');
      await file.writeAsString(csvString);

      // Share the file
      await Share.shareXFiles(
        [XFile(file.path)],
        subject: 'Wallet Transaction History',
        text: 'Transaction history for ${wallet.isMainWallet ? "Main Wallet" : wallet.campaignTitle ?? "Campaign Wallet"}',
      );

      return true;
    } catch (e) {
      return false;
    }
  }

  String _transactionTypeToString(WalletTransactionType type) {
    return switch (type) {
      WalletTransactionType.topup => 'Top Up',
      WalletTransactionType.donationSent => 'Donation Sent',
      WalletTransactionType.donationReceived => 'Donation Received',
      WalletTransactionType.withdrawal => 'Withdrawal',
      WalletTransactionType.platformFee => 'Platform Fee',
      WalletTransactionType.refund => 'Refund',
    };
  }
}
