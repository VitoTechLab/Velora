import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velora/core/utils/log_alias.dart';
import 'package:velora/features/campaign/domain/entities/donation_entity.dart';
import 'package:velora/features/campaign/domain/usecases/add_campaign_comment_usecase.dart';
import 'package:velora/features/campaign/domain/usecases/create_campaign_usecase.dart';
import 'package:velora/features/campaign/domain/usecases/create_donation_usecase.dart';
import 'package:velora/features/campaign/domain/usecases/delete_campaign_comment_usecase.dart';
import 'package:velora/features/campaign/domain/usecases/delete_campaign_usecase.dart';
import 'package:velora/features/campaign/domain/usecases/get_all_campaigns_usecase.dart';
import 'package:velora/features/campaign/domain/usecases/get_campaign_by_id_usecase.dart';
import 'package:velora/features/campaign/domain/usecases/get_campaign_categories_usecase.dart';
import 'package:velora/features/campaign/domain/usecases/get_campaign_comments_usecase.dart';
import 'package:velora/features/campaign/domain/usecases/get_comment_replies_usecase.dart';
import 'package:velora/features/campaign/domain/usecases/get_donations_by_campaign_usecase.dart';
import 'package:velora/features/campaign/domain/usecases/get_donations_by_user_usecase.dart';
import 'package:velora/features/campaign/domain/usecases/get_campaigns_by_user_usecase.dart';
import 'package:velora/features/campaign/domain/usecases/get_withdrawal_by_id_usecase.dart';
import 'package:velora/features/campaign/domain/usecases/get_withdrawals_by_campaign_usecase.dart';
import 'package:velora/features/campaign/domain/usecases/request_withdrawal_usecase.dart';
import 'package:velora/features/campaign/domain/usecases/search_campaigns_usecase.dart';
import 'package:velora/features/campaign/domain/usecases/update_campaign_status_usecase.dart';
import 'package:velora/features/campaign/domain/usecases/update_campaign_usecase.dart';
import 'package:velora/features/campaign/domain/usecases/update_donation_status_usecase.dart';

import 'campaign_event.dart';
import 'campaign_state.dart';

class CampaignBloc extends Bloc<CampaignEvent, CampaignState> {
  CampaignBloc({
    required GetAllCampaignsUsecase getAllCampaignsUsecase,
    required SearchCampaignsUsecase searchCampaignsUsecase,
    required GetCampaignByIdUsecase getCampaignByIdUsecase,
    required CreateCampaignUsecase createCampaignUsecase,
    required UpdateCampaignUsecase updateCampaignUsecase,
    required DeleteCampaignUsecase deleteCampaignUsecase,
    required UpdateCampaignStatusUsecase updateCampaignStatusUsecase,
    required GetCampaignCategoriesUsecase getCampaignCategoriesUsecase,
    required CreateDonationUsecase createDonationUsecase,
    required GetDonationsByCampaignUsecase getDonationsByCampaignUsecase,
    required UpdateDonationStatusUsecase updateDonationStatusUsecase,
    required GetCampaignCommentsUsecase getCampaignCommentsUsecase,
    required AddCampaignCommentUsecase addCampaignCommentUsecase,
    required DeleteCampaignCommentUsecase deleteCampaignCommentUsecase,
    required GetCommentRepliesUsecase getCommentRepliesUsecase,
    required RequestWithdrawalUsecase requestWithdrawalUsecase,
    required GetWithdrawalsByCampaignUsecase getWithdrawalsByCampaignUsecase,
    required GetWithdrawalByIdUsecase getWithdrawalByIdUsecase,
    required GetCampaignsByUserUsecase getCampaignsByUserUsecase,
    required GetDonationsByUserUsecase getDonationsByUserUsecase,
  })  : _getAllCampaignsUsecase = getAllCampaignsUsecase,
        _searchCampaignsUsecase = searchCampaignsUsecase,
        _getCampaignByIdUsecase = getCampaignByIdUsecase,
        _createCampaignUsecase = createCampaignUsecase,
        _updateCampaignUsecase = updateCampaignUsecase,
        _deleteCampaignUsecase = deleteCampaignUsecase,
        _updateCampaignStatusUsecase = updateCampaignStatusUsecase,
        _getCampaignCategoriesUsecase = getCampaignCategoriesUsecase,
        _createDonationUsecase = createDonationUsecase,
        _getDonationsByCampaignUsecase = getDonationsByCampaignUsecase,
        _updateDonationStatusUsecase = updateDonationStatusUsecase,
        _getCampaignCommentsUsecase = getCampaignCommentsUsecase,
        _addCampaignCommentUsecase = addCampaignCommentUsecase,
        _deleteCampaignCommentUsecase = deleteCampaignCommentUsecase,
        _getCommentRepliesUsecase = getCommentRepliesUsecase,
        _requestWithdrawalUsecase = requestWithdrawalUsecase,
        _getWithdrawalsByCampaignUsecase = getWithdrawalsByCampaignUsecase,
        _getWithdrawalByIdUsecase = getWithdrawalByIdUsecase,
        _getCampaignsByUserUsecase = getCampaignsByUserUsecase,
        _getDonationsByUserUsecase = getDonationsByUserUsecase,
        super(const CampaignState()) {
    on<LoadCampaignsEvent>(
      _onLoadCampaigns,
      transformer: bloc_concurrency.droppable(),
    );
    on<RefreshCampaignsEvent>(
      _onRefreshCampaigns,
      transformer: bloc_concurrency.droppable(),
    );
    on<SearchCampaignsEvent>(
      _onSearchCampaigns,
      transformer: bloc_concurrency.droppable(),
    );
    on<GetCampaignDetailEvent>(_onGetCampaignDetail);
    on<CreateCampaignEvent>(_onCreateCampaign);
    on<UpdateCampaignEvent>(_onUpdateCampaign);
    on<DeleteCampaignEvent>(_onDeleteCampaign);
    on<UpdateCampaignStatusEvent>(_onUpdateCampaignStatus);
    on<LoadCategoriesEvent>(_onLoadCategories);
    on<LoadDonationsEvent>(_onLoadDonations);
    on<CreateDonationEvent>(_onCreateDonation);
    on<LoadCommentsEvent>(_onLoadComments);
    on<AddCommentEvent>(_onAddComment);
    on<DeleteCommentEvent>(_onDeleteComment);
    on<LoadCommentRepliesEvent>(_onLoadCommentReplies);
    on<RequestWithdrawalEvent>(_onRequestWithdrawal);
    on<LoadWithdrawalsEvent>(_onLoadWithdrawals);
    on<LoadUserCampaignsEvent>(_onLoadUserCampaigns);
    on<LoadUserDonationsEvent>(_onLoadUserDonations);
    on<UpdateCampaignBankDetailsEvent>(_onUpdateCampaignBankDetails);
    on<ProcessDonationEvent>(_onProcessDonation);
    on<ClearCampaignTransientEvent>(_onClearTransient);
  }

  static const _logTag = 'CampaignBloc';
  static const int _minPageSize = 1;
  static const int _maxPageSize = 50;

  final GetAllCampaignsUsecase _getAllCampaignsUsecase;
  final SearchCampaignsUsecase _searchCampaignsUsecase;
  final GetCampaignByIdUsecase _getCampaignByIdUsecase;
  final CreateCampaignUsecase _createCampaignUsecase;
  final UpdateCampaignUsecase _updateCampaignUsecase;
  final DeleteCampaignUsecase _deleteCampaignUsecase;
  final UpdateCampaignStatusUsecase _updateCampaignStatusUsecase;
  final GetCampaignCategoriesUsecase _getCampaignCategoriesUsecase;
  final CreateDonationUsecase _createDonationUsecase;
  final GetDonationsByCampaignUsecase _getDonationsByCampaignUsecase;
  final UpdateDonationStatusUsecase _updateDonationStatusUsecase;
  final GetCampaignCommentsUsecase _getCampaignCommentsUsecase;
  final AddCampaignCommentUsecase _addCampaignCommentUsecase;
  final DeleteCampaignCommentUsecase _deleteCampaignCommentUsecase;
  final GetCommentRepliesUsecase _getCommentRepliesUsecase;
  final RequestWithdrawalUsecase _requestWithdrawalUsecase;
  final GetWithdrawalsByCampaignUsecase _getWithdrawalsByCampaignUsecase;
  final GetWithdrawalByIdUsecase _getWithdrawalByIdUsecase;
  final GetCampaignsByUserUsecase _getCampaignsByUserUsecase;
  final GetDonationsByUserUsecase _getDonationsByUserUsecase;

  int _validatedLimit(int limit) => limit.clamp(_minPageSize, _maxPageSize);

  // ======================== Campaign List ========================
  Future<void> _onLoadCampaigns(
    LoadCampaignsEvent event,
    Emitter<CampaignState> emit,
  ) async {
    final limit = _validatedLimit(event.limit);
    logi('Load campaigns limit=$limit category=${event.categoryId}',
        tag: _logTag);

    emit(
      state.copyWith(
        isLoadingCampaigns: true,
        errorCampaigns: null,
        message: null,
      ),
    );

    final result = await _getAllCampaignsUsecase(
      categoryId: event.categoryId,
      limit: limit,
    );

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            isLoadingCampaigns: false,
            errorCampaigns: failure.message,
          ),
        );
      },
      (campaigns) {
        emit(
          state.copyWith(
            campaigns: campaigns,
            isLoadingCampaigns: false,
            errorCampaigns: null,
          ),
        );
      },
    );
  }

  Future<void> _onRefreshCampaigns(
    RefreshCampaignsEvent event,
    Emitter<CampaignState> emit,
  ) async {
    if (state.isLoadingCampaigns || state.isRefreshingCampaigns) return;

    final limit = _validatedLimit(event.limit);
    logi('Refresh campaigns limit=$limit category=${event.categoryId}',
        tag: _logTag);

    emit(
      state.copyWith(
        isRefreshingCampaigns: true,
        errorCampaigns: null,
        message: null,
      ),
    );

    final result = await _getAllCampaignsUsecase(
      categoryId: event.categoryId,
      limit: limit,
    );

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            isRefreshingCampaigns: false,
            errorCampaigns: failure.message,
          ),
        );
      },
      (campaigns) {
        emit(
          state.copyWith(
            campaigns: campaigns,
            isRefreshingCampaigns: false,
            errorCampaigns: null,
          ),
        );
      },
    );
  }

  Future<void> _onSearchCampaigns(
    SearchCampaignsEvent event,
    Emitter<CampaignState> emit,
  ) async {
    final query = event.query.trim();
    if (query.isEmpty) {
      // Kosongkan hasil search tapi tidak ganggu list utama
      emit(state.copyWith(message: null));
      return;
    }

    final limit = _validatedLimit(event.limit);
    logi(
        'Search campaigns q="$query" limit=$limit category=${event.categoryId}',
        tag: _logTag);

    emit(state.copyWith(isLoadingCampaigns: true, errorCampaigns: null));

    final result = await _searchCampaignsUsecase(
      query,
      categoryId: event.categoryId,
      limit: limit,
    );

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            isLoadingCampaigns: false,
            errorCampaigns: failure.message,
          ),
        );
      },
      (campaigns) {
        emit(
          state.copyWith(
            campaigns: campaigns,
            isLoadingCampaigns: false,
            errorCampaigns: null,
          ),
        );
      },
    );
  }

  // ======================== Campaign Detail ========================
  Future<void> _onGetCampaignDetail(
    GetCampaignDetailEvent event,
    Emitter<CampaignState> emit,
  ) async {
    final id = event.campaignId.trim();
    if (id.isEmpty) {
      emit(state.copyWith(errorCampaignDetail: 'Campaign id is required'));
      return;
    }

    logi('Get campaign detail id=$id', tag: _logTag);

    emit(
      state.copyWith(
        isLoadingCampaignDetail: true,
        errorCampaignDetail: null,
        selectedCampaign: null,
        message: null,
      ),
    );

    final result = await _getCampaignByIdUsecase(id);

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            isLoadingCampaignDetail: false,
            errorCampaignDetail: failure.message,
          ),
        );
      },
      (campaign) {
        emit(
          state.copyWith(
            isLoadingCampaignDetail: false,
            selectedCampaign: campaign,
          ),
        );
      },
    );
  }

  Future<void> _onCreateCampaign(
    CreateCampaignEvent event,
    Emitter<CampaignState> emit,
  ) async {
    emit(
      state.copyWith(
        isCreatingCampaign: true,
        errorCreateCampaign: null,
        message: null,
      ),
    );

    final result = await _createCampaignUsecase(event.campaign);

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            isCreatingCampaign: false,
            errorCreateCampaign: failure.message,
          ),
        );
      },
      (campaign) {
        final updatedList = [campaign, ...state.campaigns];
        emit(
          state.copyWith(
            isCreatingCampaign: false,
            campaigns: updatedList,
            message: 'Campaign created successfully',
          ),
        );
      },
    );
  }

  Future<void> _onUpdateCampaign(
    UpdateCampaignEvent event,
    Emitter<CampaignState> emit,
  ) async {
    final id = event.campaign.id.trim();
    if (id.isEmpty) {
      emit(state.copyWith(errorUpdateCampaign: 'Campaign id is required'));
      return;
    }

    emit(
      state.copyWith(
        isUpdatingCampaign: true,
        errorUpdateCampaign: null,
        message: null,
      ),
    );

    final result = await _updateCampaignUsecase(event.campaign);

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            isUpdatingCampaign: false,
            errorUpdateCampaign: failure.message,
          ),
        );
      },
      (campaign) {
        final updatedList = state.campaigns
            .map((c) => c.id == campaign.id ? campaign : c)
            .toList();
        emit(
          state.copyWith(
            isUpdatingCampaign: false,
            campaigns: updatedList,
            selectedCampaign: campaign,
            message: 'Campaign updated',
          ),
        );
      },
    );
  }

  Future<void> _onDeleteCampaign(
    DeleteCampaignEvent event,
    Emitter<CampaignState> emit,
  ) async {
    final id = event.campaignId.trim();
    if (id.isEmpty) {
      emit(state.copyWith(errorDeleteCampaign: 'Campaign id is required'));
      return;
    }

    emit(
      state.copyWith(
        isDeletingCampaign: true,
        errorDeleteCampaign: null,
        message: null,
      ),
    );

    final result = await _deleteCampaignUsecase(id);

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            isDeletingCampaign: false,
            errorDeleteCampaign: failure.message,
          ),
        );
      },
      (_) {
        final remaining = state.campaigns.where((c) => c.id != id).toList();
        emit(
          state.copyWith(
            isDeletingCampaign: false,
            campaigns: remaining,
            selectedCampaign: state.selectedCampaign?.id == id
                ? null
                : state.selectedCampaign,
            message: 'Campaign deleted',
          ),
        );
      },
    );
  }

  Future<void> _onUpdateCampaignStatus(
    UpdateCampaignStatusEvent event,
    Emitter<CampaignState> emit,
  ) async {
    final id = event.campaignId.trim();
    if (id.isEmpty) return;

    logi('Update campaign status id=$id -> ${event.status}', tag: _logTag);

    final result = await _updateCampaignStatusUsecase(id, event.status);

    result.fold(
      (failure) {
        emit(state.copyWith(message: failure.message));
      },
      (campaign) {
        final updatedList = state.campaigns
            .map((c) => c.id == campaign.id ? campaign : c)
            .toList();
        emit(
          state.copyWith(
            campaigns: updatedList,
            selectedCampaign: campaign,
            message: 'Campaign status updated',
          ),
        );
      },
    );
  }

  // ======================== Categories ========================
  Future<void> _onLoadCategories(
    LoadCategoriesEvent event,
    Emitter<CampaignState> emit,
  ) async {
    if (state.isLoadingCategories) return;

    emit(state.copyWith(isLoadingCategories: true, errorCategories: null));

    final result = await _getCampaignCategoriesUsecase();

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            isLoadingCategories: false,
            errorCategories: failure.message,
          ),
        );
      },
      (categories) {
        emit(
          state.copyWith(
            isLoadingCategories: false,
            categories: categories,
          ),
        );
      },
    );
  }

  // ======================== Donations ========================
  Future<void> _onLoadDonations(
    LoadDonationsEvent event,
    Emitter<CampaignState> emit,
  ) async {
    final id = event.campaignId.trim();
    if (id.isEmpty) return;

    emit(state.copyWith(isLoadingDonations: true, errorDonations: null));

    final result = await _getDonationsByCampaignUsecase(
      id,
      limit: event.limit,
    );

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            isLoadingDonations: false,
            errorDonations: failure.message,
          ),
        );
      },
      (donations) {
        emit(
          state.copyWith(
            isLoadingDonations: false,
            donations: donations,
          ),
        );
      },
    );
  }

  Future<void> _onCreateDonation(
    CreateDonationEvent event,
    Emitter<CampaignState> emit,
  ) async {
    emit(
      state.copyWith(
        isPerformingDonation: true,
        errorDonation: null,
        message: null,
      ),
    );

    final result = await _createDonationUsecase(event.donation);

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            isPerformingDonation: false,
            errorDonation: failure.message,
          ),
        );
      },
      (donation) {
        final updatedDonations = [donation, ...state.donations];
        emit(
          state.copyWith(
            isPerformingDonation: false,
            donations: updatedDonations,
            message: 'Donation created successfully',
          ),
        );
      },
    );
  }

  // ======================== Comments ========================
  Future<void> _onLoadComments(
    LoadCommentsEvent event,
    Emitter<CampaignState> emit,
  ) async {
    final id = event.campaignId.trim();
    if (id.isEmpty) return;

    emit(state.copyWith(isLoadingComments: true, errorComments: null));

    final result = await _getCampaignCommentsUsecase(
      id,
      includeReplies: event.includeReplies,
    );

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            isLoadingComments: false,
            errorComments: failure.message,
          ),
        );
      },
      (comments) {
        emit(
          state.copyWith(
            isLoadingComments: false,
            comments: comments,
          ),
        );
      },
    );
  }

  Future<void> _onAddComment(
    AddCommentEvent event,
    Emitter<CampaignState> emit,
  ) async {
    emit(state.copyWith(errorComments: null, message: null));

    final result = await _addCampaignCommentUsecase(event.comment);

    result.fold(
      (failure) {
        emit(state.copyWith(errorComments: failure.message));
      },
      (comment) {
        final updated = [comment, ...state.comments];
        emit(
          state.copyWith(
            comments: updated,
            message: 'Comment added',
          ),
        );
      },
    );
  }

  Future<void> _onDeleteComment(
    DeleteCommentEvent event,
    Emitter<CampaignState> emit,
  ) async {
    final campaignId = event.campaignId.trim();
    final commentId = event.commentId.trim();
    if (campaignId.isEmpty || commentId.isEmpty) return;

    final result = await _deleteCampaignCommentUsecase(
      campaignId: campaignId,
      commentId: commentId,
    );

    result.fold(
      (failure) {
        emit(state.copyWith(errorComments: failure.message));
      },
      (_) {
        final remaining =
            state.comments.where((c) => c.id != commentId).toList();
        emit(
          state.copyWith(
            comments: remaining,
            message: 'Comment deleted',
          ),
        );
      },
    );
  }

  Future<void> _onLoadCommentReplies(
    LoadCommentRepliesEvent event,
    Emitter<CampaignState> emit,
  ) async {
    final parentId = event.parentId.trim();
    if (parentId.isEmpty) return;

    final result = await _getCommentRepliesUsecase(parentId);

    result.fold(
      (failure) {
        emit(state.copyWith(errorComments: failure.message));
      },
      (replies) {
        // Map replies into parent in current comments list
        final updated = state.comments.map((c) {
          if (c.id == parentId) {
            return c.copyWith(replies: replies);
          }
          return c;
        }).toList();
        emit(state.copyWith(comments: updated));
      },
    );
  }

  // ======================== Withdrawals ========================
  Future<void> _onRequestWithdrawal(
    RequestWithdrawalEvent event,
    Emitter<CampaignState> emit,
  ) async {
    emit(
      state.copyWith(
        isRequestingWithdrawal: true,
        errorWithdrawal: null,
        message: null,
      ),
    );

    final result = await _requestWithdrawalUsecase(event.withdrawal);

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            isRequestingWithdrawal: false,
            errorWithdrawal: failure.message,
          ),
        );
      },
      (withdrawal) {
        final updated = [withdrawal, ...state.withdrawals];
        emit(
          state.copyWith(
            isRequestingWithdrawal: false,
            withdrawals: updated,
            message: 'Withdrawal requested',
          ),
        );
      },
    );
  }

  Future<void> _onLoadWithdrawals(
    LoadWithdrawalsEvent event,
    Emitter<CampaignState> emit,
  ) async {
    final campaignId = event.campaignId.trim();
    if (campaignId.isEmpty) return;

    emit(state.copyWith(isLoadingWithdrawals: true, errorWithdrawals: null));

    final result = await _getWithdrawalsByCampaignUsecase(campaignId);

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            isLoadingWithdrawals: false,
            errorWithdrawals: failure.message,
          ),
        );
      },
      (withdrawals) {
        emit(
          state.copyWith(
            isLoadingWithdrawals: false,
            withdrawals: withdrawals,
          ),
        );
      },
    );
  }

  // ======================== User Campaigns & Donations ========================
  Future<void> _onLoadUserCampaigns(
    LoadUserCampaignsEvent event,
    Emitter<CampaignState> emit,
  ) async {
    final userId = event.userId.trim();
    if (userId.isEmpty) return;

    logi('Load user campaigns userId=$userId', tag: _logTag);

    emit(state.copyWith(isLoadingUserCampaigns: true, errorUserCampaigns: null));

    final result = await _getCampaignsByUserUsecase(userId);

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            isLoadingUserCampaigns: false,
            errorUserCampaigns: failure.message,
          ),
        );
      },
      (campaigns) {
        emit(
          state.copyWith(
            isLoadingUserCampaigns: false,
            userCampaigns: campaigns,
          ),
        );
      },
    );
  }

  Future<void> _onLoadUserDonations(
    LoadUserDonationsEvent event,
    Emitter<CampaignState> emit,
  ) async {
    final userId = event.userId.trim();
    if (userId.isEmpty) return;

    final limit = _validatedLimit(event.limit);
    logi('Load user donations userId=$userId limit=$limit', tag: _logTag);

    emit(state.copyWith(isLoadingUserDonations: true, errorUserDonations: null));

    final result = await _getDonationsByUserUsecase(userId, limit: limit);

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            isLoadingUserDonations: false,
            errorUserDonations: failure.message,
          ),
        );
      },
      (donations) {
        emit(
          state.copyWith(
            isLoadingUserDonations: false,
            userDonations: donations,
          ),
        );
      },
    );
  }

  Future<void> _onUpdateCampaignBankDetails(
    UpdateCampaignBankDetailsEvent event,
    Emitter<CampaignState> emit,
  ) async {
    final campaignId = event.campaignId.trim();
    if (campaignId.isEmpty) {
      emit(state.copyWith(errorBankDetails: 'Campaign ID is required'));
      return;
    }

    logi('Update bank details for campaign=$campaignId', tag: _logTag);

    emit(
      state.copyWith(
        isUpdatingBankDetails: true,
        errorBankDetails: null,
        message: null,
      ),
    );

    // First, get the current campaign to preserve other fields
    final getResult = await _getCampaignByIdUsecase(campaignId);

    await getResult.fold(
      (failure) async {
        emit(
          state.copyWith(
            isUpdatingBankDetails: false,
            errorBankDetails: failure.message,
          ),
        );
      },
      (campaign) async {
        if (campaign == null) {
          emit(
            state.copyWith(
              isUpdatingBankDetails: false,
              errorBankDetails: 'Campaign not found',
            ),
          );
          return;
        }

        // Update with new bank details
        final updatedCampaign = campaign.copyWith(
          withdrawalBankName: event.bankName,
          withdrawalAccountNumber: event.accountNumber,
          withdrawalAccountHolder: event.accountHolder,
        );

        final updateResult = await _updateCampaignUsecase(updatedCampaign);

        updateResult.fold(
          (failure) {
            emit(
              state.copyWith(
                isUpdatingBankDetails: false,
                errorBankDetails: failure.message,
              ),
            );
          },
          (updated) {
            // Update in userCampaigns list
            final updatedUserCampaigns = state.userCampaigns
                .map((c) => c.id == updated.id ? updated : c)
                .toList();

            emit(
              state.copyWith(
                isUpdatingBankDetails: false,
                userCampaigns: updatedUserCampaigns,
                selectedCampaign:
                    state.selectedCampaign?.id == updated.id ? updated : state.selectedCampaign,
                message: 'Bank details saved',
              ),
            );
          },
        );
      },
    );
  }

  /// Process donation via mock Bank Transfer gateway.
  /// **MOCK**: Auto-approves payment immediately after creation.
  Future<void> _onProcessDonation(
    ProcessDonationEvent event,
    Emitter<CampaignState> emit,
  ) async {
    final campaignId = event.campaignId.trim();
    final userId = event.userId.trim();

    if (campaignId.isEmpty || userId.isEmpty) {
      emit(state.copyWith(errorDonation: 'Campaign and user ID required'));
      return;
    }

    if (event.amount <= 0) {
      emit(state.copyWith(errorDonation: 'Amount must be greater than 0'));
      return;
    }

    logi('Process donation campaign=$campaignId amount=${event.amount}', tag: _logTag);

    emit(
      state.copyWith(
        isPerformingDonation: true,
        errorDonation: null,
        message: null,
      ),
    );

    // Create donation with pending status
    final donation = DonationEntity(
      id: '',
      campaignId: campaignId,
      userId: userId,
      amountTotal: event.amount,
      platformFeePercent: 5.0, // Platform fee percentage
      isAnonymous: event.isAnonymous,
      message: event.message,
      paymentStatus: PaymentStatus.pending,
      createdAt: DateTime.now(),
    );

    final createResult = await _createDonationUsecase(donation);

    await createResult.fold(
      (failure) async {
        emit(
          state.copyWith(
            isPerformingDonation: false,
            errorDonation: failure.message,
          ),
        );
      },
      (createdDonation) async {
        // **MOCK**: Auto-approve payment immediately
        final mockPaymentId = 'MOCK-${DateTime.now().millisecondsSinceEpoch}';
        final approveResult = await _updateDonationStatusUsecase(
          createdDonation.id,
          'success',
          paymentId: mockPaymentId,
        );

        approveResult.fold(
          (failure) {
            emit(
              state.copyWith(
                isPerformingDonation: false,
                errorDonation: 'Payment confirmation failed: ${failure.message}',
              ),
            );
          },
          (approvedDonation) {
            final updatedDonations = [approvedDonation, ...state.donations];
            emit(
              state.copyWith(
                isPerformingDonation: false,
                donations: updatedDonations,
                message: 'Donation successful! Thank you for your support.',
              ),
            );
          },
        );
      },
    );
  }

  // ======================== Helpers ========================
  void _onClearTransient(
    ClearCampaignTransientEvent event,
    Emitter<CampaignState> emit,
  ) {
    emit(
      state.copyWith(
        message: null,
        errorCampaigns: null,
        errorCampaignDetail: null,
        errorCreateCampaign: null,
        errorUpdateCampaign: null,
        errorDeleteCampaign: null,
        errorComments: null,
        errorDonations: null,
        errorDonation: null,
        errorWithdrawal: null,
        errorWithdrawals: null,
        errorUserCampaigns: null,
        errorUserDonations: null,
        errorBankDetails: null,
      ),
    );
  }
}
