import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velora/core/utils/log_alias.dart';
import 'package:velora/features/chat/domain/usecases/search_followed_users.dart';
import 'package:velora/features/chat/presentation/bloc/search_user_event.dart';
import 'package:velora/features/chat/presentation/bloc/search_user_state.dart';

class SearchUserBloc extends Bloc<SearchUserEvent, SearchUserState> {
  SearchUserBloc({required this.searchFollowedUsers})
    : super(const SearchUserState()) {
    on<SearchQueryChanged>(_onSearchQueryChanged);
    on<ClearSearch>(_onClearSearch);
    on<LoadFollowedUsers>(_onLoadFollowedUsers);
  }

  final SearchFollowedUsers searchFollowedUsers;

  static const _logTag = 'SearchUserBloc';

  Future<void> _onSearchQueryChanged(
    SearchQueryChanged event,
    Emitter<SearchUserState> emit,
  ) async {
    final query = event.query.trim();

    if (query.isEmpty) {
      emit(const SearchUserState());
      return;
    }

    emit(state.copyWith(isLoading: true, query: query, error: null));

    final result = await searchFollowedUsers(query: query, limit: 20);

    result.fold(
      (failure) {
        loge('$_logTag: Search error', error: failure);
        emit(
          state.copyWith(isLoading: false, error: failure.message, results: []),
        );
      },
      (users) {
        emit(state.copyWith(isLoading: false, results: users, error: null));
      },
    );
  }

  Future<void> _onClearSearch(
    ClearSearch event,
    Emitter<SearchUserState> emit,
  ) async {
    emit(state.copyWith(query: '', results: [], error: null, isLoading: false));
  }

  Future<void> _onLoadFollowedUsers(
    LoadFollowedUsers event,
    Emitter<SearchUserState> emit,
  ) async {
    emit(state.copyWith(isLoadingFollowed: true));

    // Load all followed users by passing empty query to get all
    final result = await searchFollowedUsers(query: '', limit: 100);

    result.fold(
      (failure) {
        loge('$_logTag: Load followed users error', error: failure);
        emit(state.copyWith(isLoadingFollowed: false, error: failure.message));
      },
      (users) {
        emit(
          state.copyWith(
            isLoadingFollowed: false,
            followedUsers: users,
            error: null,
          ),
        );
      },
    );
  }
}
