import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/chat/domain/entities/user_search_entity.dart';

part 'search_user_state.freezed.dart';

@freezed
abstract class SearchUserState with _$SearchUserState {
  const factory SearchUserState({
    @Default('') String query,
    @Default([]) List<UserSearchEntity> results,
    @Default([]) List<UserSearchEntity> followedUsers,
    @Default([]) List<UserSearchEntity> recentSearches,
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingFollowed,
    String? error,
  }) = _SearchUserState;
}
