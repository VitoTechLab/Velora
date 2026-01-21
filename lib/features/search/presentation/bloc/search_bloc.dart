import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velora/core/utils/log_alias.dart';
import 'package:velora/features/search/data/datasources/search_remote_datasource.dart';
import 'package:velora/features/search/data/models/search_campaign_result_model.dart';
import 'package:velora/features/search/data/models/search_user_result_model.dart';
import 'package:velora/features/search/presentation/bloc/search_event.dart';
import 'package:velora/features/search/presentation/bloc/search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc({required SearchRemoteDataSource searchDataSource})
      : _searchDataSource = searchDataSource,
        super(const SearchState()) {
    on<SearchUsersEvent>(_onSearchUsers);
    on<SearchCampaignsEvent>(_onSearchCampaigns);
    on<SearchAllEvent>(_onSearchAll);
    on<ClearSearchEvent>(_onClearSearch);
  }

  final SearchRemoteDataSource _searchDataSource;
  static const _logTag = 'SearchBloc';

  Future<void> _onSearchUsers(
    SearchUsersEvent event,
    Emitter<SearchState> emit,
  ) async {
    if (event.query.trim().isEmpty) {
      emit(state.copyWith(users: [], errorUsers: null, lastQuery: ''));
      return;
    }

    emit(state.copyWith(isLoadingUsers: true, errorUsers: null));

    try {
      final users = await _searchDataSource.searchUsers(
        query: event.query,
        scope: event.scope,
        limit: event.limit,
      );
      logi('Found ${users.length} users for query: ${event.query}',
          tag: _logTag);
      emit(state.copyWith(
        users: users,
        isLoadingUsers: false,
        lastQuery: event.query,
      ));
    } catch (e, st) {
      loge('Error searching users: $e', error: e, stackTrace: st, tag: _logTag);
      emit(state.copyWith(
        isLoadingUsers: false,
        errorUsers: e.toString(),
      ));
    }
  }

  Future<void> _onSearchCampaigns(
    SearchCampaignsEvent event,
    Emitter<SearchState> emit,
  ) async {
    if (event.query.trim().isEmpty) {
      emit(state.copyWith(campaigns: [], errorCampaigns: null, lastQuery: ''));
      return;
    }

    emit(state.copyWith(isLoadingCampaigns: true, errorCampaigns: null));

    try {
      final campaigns = await _searchDataSource.searchCampaigns(
        query: event.query,
        categoryId: event.categoryId,
        limit: event.limit,
      );
      logi('Found ${campaigns.length} campaigns for query: ${event.query}',
          tag: _logTag);
      emit(state.copyWith(
        campaigns: campaigns,
        isLoadingCampaigns: false,
        lastQuery: event.query,
      ));
    } catch (e, st) {
      loge('Error searching campaigns: $e',
          error: e, stackTrace: st, tag: _logTag);
      emit(state.copyWith(
        isLoadingCampaigns: false,
        errorCampaigns: e.toString(),
      ));
    }
  }

  Future<void> _onSearchAll(
    SearchAllEvent event,
    Emitter<SearchState> emit,
  ) async {
    if (event.query.trim().isEmpty) {
      emit(const SearchState());
      return;
    }

    emit(state.copyWith(
      isLoadingUsers: true,
      isLoadingCampaigns: true,
      errorUsers: null,
      errorCampaigns: null,
    ));

    try {
      // Search users and campaigns in parallel
      final results = await Future.wait([
        _searchDataSource.searchUsers(query: event.query, limit: 20),
        _searchDataSource.searchCampaigns(query: event.query, limit: 20),
      ]);

      final users = results[0] as List<SearchUserResultModel>;
      final campaigns = results[1] as List<SearchCampaignResultModel>;

      logi(
          'Found ${users.length} users and ${campaigns.length} campaigns for query: ${event.query}',
          tag: _logTag);

      emit(state.copyWith(
        users: users,
        campaigns: campaigns,
        isLoadingUsers: false,
        isLoadingCampaigns: false,
        lastQuery: event.query,
      ));
    } catch (e, st) {
      loge('Error searching all: $e', error: e, stackTrace: st, tag: _logTag);
      emit(state.copyWith(
        isLoadingUsers: false,
        isLoadingCampaigns: false,
        errorUsers: e.toString(),
        errorCampaigns: e.toString(),
      ));
    }
  }

  Future<void> _onClearSearch(
    ClearSearchEvent event,
    Emitter<SearchState> emit,
  ) async {
    emit(const SearchState());
  }
}
