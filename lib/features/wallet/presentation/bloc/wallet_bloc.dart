import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velora/core/utils/log_alias.dart';
import 'package:velora/features/wallet/domain/entities/wallet_entity.dart';
import 'package:velora/features/wallet/domain/usecases/confirm_topup_usecase.dart';
import 'package:velora/features/wallet/domain/usecases/create_wallet_usecase.dart';
import 'package:velora/features/wallet/domain/usecases/get_main_wallet_usecase.dart';
import 'package:velora/features/wallet/domain/usecases/get_user_wallets_usecase.dart';
import 'package:velora/features/wallet/domain/usecases/get_wallet_by_id_usecase.dart';
import 'package:velora/features/wallet/domain/usecases/get_wallet_transactions_usecase.dart';
import 'package:velora/features/wallet/domain/usecases/initiate_topup_usecase.dart';
import 'package:velora/features/wallet/domain/usecases/process_wallet_donation_usecase.dart';
import 'package:velora/features/wallet/domain/usecases/request_withdrawal_usecase.dart';
import 'package:velora/features/wallet/domain/usecases/update_wallet_bank_details_usecase.dart';
import 'package:velora/features/wallet/presentation/bloc/wallet_event.dart';
import 'package:velora/features/wallet/presentation/bloc/wallet_state.dart';

class WalletBloc extends Bloc<WalletEvent, WalletState> {
  WalletBloc({
    required GetUserWalletsUsecase getUserWalletsUsecase,
    required GetMainWalletUsecase getMainWalletUsecase,
    required GetWalletByIdUsecase getWalletByIdUsecase,
    required CreateWalletUsecase createWalletUsecase,
    required UpdateWalletBankDetailsUsecase updateWalletBankDetailsUsecase,
    required InitiateTopUpUsecase initiateTopUpUsecase,
    required ConfirmTopUpUsecase confirmTopUpUsecase,
    required ProcessWalletDonationUsecase processWalletDonationUsecase,
    required RequestWithdrawalUsecase requestWithdrawalUsecase,
    required GetWalletTransactionsUsecase getWalletTransactionsUsecase,
  })  : _getUserWalletsUsecase = getUserWalletsUsecase,
        _getMainWalletUsecase = getMainWalletUsecase,
        _getWalletByIdUsecase = getWalletByIdUsecase,
        _createWalletUsecase = createWalletUsecase,
        _updateWalletBankDetailsUsecase = updateWalletBankDetailsUsecase,
        _initiateTopUpUsecase = initiateTopUpUsecase,
        _confirmTopUpUsecase = confirmTopUpUsecase,
        _processWalletDonationUsecase = processWalletDonationUsecase,
        _requestWithdrawalUsecase = requestWithdrawalUsecase,
        _getWalletTransactionsUsecase = getWalletTransactionsUsecase,
        super(const WalletState()) {
    on<LoadWalletsEvent>(_onLoadWallets);
    on<LoadMainWalletEvent>(_onLoadMainWallet);
    on<LoadWalletEvent>(_onLoadWallet);
    on<CreateMainWalletEvent>(_onCreateMainWallet);
    on<UpdateBankDetailsEvent>(_onUpdateBankDetails);
    on<InitiateTopUpEvent>(_onInitiateTopUp);
    on<ConfirmTopUpEvent>(_onConfirmTopUp);
    on<ProcessDonationEvent>(_onProcessDonation);
    on<RequestWalletWithdrawalEvent>(_onRequestWithdrawal);
    on<LoadTransactionsEvent>(_onLoadTransactions);
    on<ClearWalletTransientEvent>(_onClearTransient);
  }

  final GetUserWalletsUsecase _getUserWalletsUsecase;
  final GetMainWalletUsecase _getMainWalletUsecase;
  final GetWalletByIdUsecase _getWalletByIdUsecase;
  final CreateWalletUsecase _createWalletUsecase;
  final UpdateWalletBankDetailsUsecase _updateWalletBankDetailsUsecase;
  final InitiateTopUpUsecase _initiateTopUpUsecase;
  final ConfirmTopUpUsecase _confirmTopUpUsecase;
  final ProcessWalletDonationUsecase _processWalletDonationUsecase;
  final RequestWithdrawalUsecase _requestWithdrawalUsecase;
  final GetWalletTransactionsUsecase _getWalletTransactionsUsecase;

  static const _logTag = 'WalletBloc';

  // ======================== Load Wallets ========================
  Future<void> _onLoadWallets(
    LoadWalletsEvent event,
    Emitter<WalletState> emit,
  ) async {
    final userId = event.userId.trim();
    if (userId.isEmpty) return;

    logi('Loading wallets for user: $userId', tag: _logTag);

    emit(state.copyWith(isLoadingWallets: true, errorWallets: null));

    final result = await _getUserWalletsUsecase(userId);

    result.fold(
      (failure) {
        emit(state.copyWith(
          isLoadingWallets: false,
          errorWallets: failure.message,
        ));
      },
      (wallets) {
        final mainWallet = wallets
            .where((w) => w.type == WalletType.main)
            .cast<WalletEntity?>()
            .firstOrNull;
        emit(state.copyWith(
          isLoadingWallets: false,
          wallets: wallets,
          mainWallet: mainWallet,
        ));
      },
    );
  }

  Future<void> _onLoadMainWallet(
    LoadMainWalletEvent event,
    Emitter<WalletState> emit,
  ) async {
    final userId = event.userId.trim();
    if (userId.isEmpty) return;

    logi('Loading main wallet for user: $userId', tag: _logTag);

    emit(state.copyWith(isLoadingWallets: true, errorWallets: null));

    final result = await _getMainWalletUsecase(userId);

    result.fold(
      (failure) {
        emit(state.copyWith(
          isLoadingWallets: false,
          errorWallets: failure.message,
        ));
      },
      (wallet) {
        emit(state.copyWith(
          isLoadingWallets: false,
          mainWallet: wallet,
        ));
      },
    );
  }

  Future<void> _onLoadWallet(
    LoadWalletEvent event,
    Emitter<WalletState> emit,
  ) async {
    final walletId = event.walletId.trim();
    if (walletId.isEmpty) return;

    logi('Loading wallet: $walletId', tag: _logTag);

    emit(state.copyWith(
      isLoadingWallet: true,
      errorWallet: null,
      selectedWallet: null,
    ));

    final result = await _getWalletByIdUsecase(walletId);

    result.fold(
      (failure) {
        emit(state.copyWith(
          isLoadingWallet: false,
          errorWallet: failure.message,
        ));
      },
      (wallet) {
        emit(state.copyWith(
          isLoadingWallet: false,
          selectedWallet: wallet,
        ));
      },
    );
  }

  // ======================== Create Wallet ========================
  Future<void> _onCreateMainWallet(
    CreateMainWalletEvent event,
    Emitter<WalletState> emit,
  ) async {
    final userId = event.userId.trim();
    if (userId.isEmpty) return;

    logi('Creating main wallet for user: $userId', tag: _logTag);

    emit(state.copyWith(isCreatingWallet: true, errorCreateWallet: null));

    final result = await _createWalletUsecase.createMainWallet(userId);

    result.fold(
      (failure) {
        emit(state.copyWith(
          isCreatingWallet: false,
          errorCreateWallet: failure.message,
        ));
      },
      (wallet) {
        final updatedWallets = [wallet, ...state.wallets];
        emit(state.copyWith(
          isCreatingWallet: false,
          wallets: updatedWallets,
          mainWallet: wallet,
          message: 'Wallet created successfully',
        ));
      },
    );
  }

  // ======================== Update Bank Details ========================
  Future<void> _onUpdateBankDetails(
    UpdateBankDetailsEvent event,
    Emitter<WalletState> emit,
  ) async {
    final walletId = event.walletId.trim();
    if (walletId.isEmpty) return;

    logi('Updating bank details for wallet: $walletId', tag: _logTag);

    emit(state.copyWith(isUpdatingBankDetails: true, errorBankDetails: null));

    final result = await _updateWalletBankDetailsUsecase(
      walletId: walletId,
      bankName: event.bankName,
      bankAccountNumber: event.bankAccountNumber,
      bankAccountHolder: event.bankAccountHolder,
    );

    result.fold(
      (failure) {
        emit(state.copyWith(
          isUpdatingBankDetails: false,
          errorBankDetails: failure.message,
        ));
      },
      (wallet) {
        // Update in wallets list
        final updatedWallets = state.wallets
            .map((w) => w.id == wallet.id ? wallet : w)
            .toList();
        emit(state.copyWith(
          isUpdatingBankDetails: false,
          wallets: updatedWallets,
          mainWallet:
              state.mainWallet?.id == wallet.id ? wallet : state.mainWallet,
          selectedWallet: state.selectedWallet?.id == wallet.id
              ? wallet
              : state.selectedWallet,
          message: 'Bank details updated',
        ));
      },
    );
  }

  // ======================== Top-Up ========================
  Future<void> _onInitiateTopUp(
    InitiateTopUpEvent event,
    Emitter<WalletState> emit,
  ) async {
    final walletId = event.walletId.trim();
    if (walletId.isEmpty) return;

    if (event.amount <= 0) {
      emit(state.copyWith(errorTopUp: 'Amount must be greater than 0'));
      return;
    }

    logi('Initiating top-up for wallet: $walletId amount: ${event.amount}',
        tag: _logTag);

    emit(state.copyWith(isProcessingTopUp: true, errorTopUp: null));

    final result = await _initiateTopUpUsecase(
      walletId: walletId,
      amount: event.amount,
      paymentMethod: event.paymentMethod,
    );

    result.fold(
      (failure) {
        emit(state.copyWith(
          isProcessingTopUp: false,
          errorTopUp: failure.message,
        ));
      },
      (transaction) {
        // For MOCK: Auto-confirm the top-up
        add(WalletEvent.confirmTopUp(
          transactionId: transaction.id,
          paymentId: 'MOCK-${DateTime.now().millisecondsSinceEpoch}',
        ));
      },
    );
  }

  Future<void> _onConfirmTopUp(
    ConfirmTopUpEvent event,
    Emitter<WalletState> emit,
  ) async {
    final transactionId = event.transactionId.trim();
    if (transactionId.isEmpty) return;

    logi('Confirming top-up: $transactionId', tag: _logTag);

    final result = await _confirmTopUpUsecase(
      transactionId: transactionId,
      paymentId: event.paymentId,
    );

    result.fold(
      (failure) {
        emit(state.copyWith(
          isProcessingTopUp: false,
          errorTopUp: failure.message,
        ));
      },
      (transaction) {
        emit(state.copyWith(
          isProcessingTopUp: false,
          message: 'Top-up successful!',
        ));
        // Reload wallets to get updated balance
        if (state.wallets.isNotEmpty) {
          add(WalletEvent.loadWallets(userId: state.wallets.first.userId));
        }
      },
    );
  }

  // ======================== Donation ========================
  Future<void> _onProcessDonation(
    ProcessDonationEvent event,
    Emitter<WalletState> emit,
  ) async {
    final fromWalletId = event.fromWalletId.trim();
    final toCampaignId = event.toCampaignId.trim();

    if (fromWalletId.isEmpty || toCampaignId.isEmpty) return;

    if (event.amount <= 0) {
      emit(state.copyWith(errorDonation: 'Amount must be greater than 0'));
      return;
    }

    // Check balance
    final sourceWallet = state.wallets
        .where((w) => w.id == fromWalletId)
        .cast<WalletEntity?>()
        .firstOrNull;
    if (sourceWallet != null && sourceWallet.balance < event.amount) {
      emit(state.copyWith(errorDonation: 'Insufficient balance'));
      return;
    }

    logi(
        'Processing donation from $fromWalletId to campaign $toCampaignId amount: ${event.amount}',
        tag: _logTag);

    emit(state.copyWith(isProcessingDonation: true, errorDonation: null));

    final result = await _processWalletDonationUsecase(
      fromWalletId: fromWalletId,
      toCampaignId: toCampaignId,
      amount: event.amount,
      donationId: event.donationId,
    );

    result.fold(
      (failure) {
        emit(state.copyWith(
          isProcessingDonation: false,
          errorDonation: failure.message,
        ));
      },
      (transaction) {
        emit(state.copyWith(
          isProcessingDonation: false,
          message: 'Donation successful! Thank you for your support.',
        ));
        // Reload wallets to get updated balances
        if (state.wallets.isNotEmpty) {
          add(WalletEvent.loadWallets(userId: state.wallets.first.userId));
        }
      },
    );
  }

  // ======================== Withdrawal ========================
  Future<void> _onRequestWithdrawal(
    RequestWalletWithdrawalEvent event,
    Emitter<WalletState> emit,
  ) async {
    final walletId = event.walletId.trim();
    if (walletId.isEmpty) return;

    if (event.amount <= 0) {
      emit(state.copyWith(errorWithdrawal: 'Amount must be greater than 0'));
      return;
    }

    // Check balance and bank details
    final wallet = state.wallets
        .where((w) => w.id == walletId)
        .cast<WalletEntity?>()
        .firstOrNull;
    if (wallet != null) {
      if (wallet.balance < event.amount) {
        emit(state.copyWith(errorWithdrawal: 'Insufficient balance'));
        return;
      }
      if (!wallet.hasBankDetails) {
        emit(state.copyWith(
            errorWithdrawal: 'Please configure bank details first'));
        return;
      }
    }

    logi('Requesting withdrawal from $walletId amount: ${event.amount}',
        tag: _logTag);

    emit(state.copyWith(isProcessingWithdrawal: true, errorWithdrawal: null));

    final result = await _requestWithdrawalUsecase(
      walletId: walletId,
      amount: event.amount,
    );

    result.fold(
      (failure) {
        emit(state.copyWith(
          isProcessingWithdrawal: false,
          errorWithdrawal: failure.message,
        ));
      },
      (transaction) {
        emit(state.copyWith(
          isProcessingWithdrawal: false,
          message: 'Withdrawal request submitted',
        ));
        // Reload wallets to get updated balances
        if (state.wallets.isNotEmpty) {
          add(WalletEvent.loadWallets(userId: state.wallets.first.userId));
        }
      },
    );
  }

  // ======================== Transactions ========================
  Future<void> _onLoadTransactions(
    LoadTransactionsEvent event,
    Emitter<WalletState> emit,
  ) async {
    final walletId = event.walletId.trim();
    if (walletId.isEmpty) return;

    logi('Loading transactions for wallet: $walletId', tag: _logTag);

    emit(state.copyWith(isLoadingTransactions: true, errorTransactions: null));

    final result = await _getWalletTransactionsUsecase(
      walletId,
      limit: event.limit,
      offset: event.offset,
    );

    result.fold(
      (failure) {
        emit(state.copyWith(
          isLoadingTransactions: false,
          errorTransactions: failure.message,
        ));
      },
      (transactions) {
        emit(state.copyWith(
          isLoadingTransactions: false,
          transactions: transactions,
        ));
      },
    );
  }

  // ======================== Clear Transient ========================
  void _onClearTransient(
    ClearWalletTransientEvent event,
    Emitter<WalletState> emit,
  ) {
    emit(state.copyWith(
      message: null,
      errorWallets: null,
      errorWallet: null,
      errorTransactions: null,
      errorCreateWallet: null,
      errorBankDetails: null,
      errorTopUp: null,
      errorDonation: null,
      errorWithdrawal: null,
    ));
  }
}
