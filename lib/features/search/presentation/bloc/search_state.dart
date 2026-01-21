import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/search/data/models/search_campaign_result_model.dart';
import 'package:velora/features/search/data/models/search_user_result_model.dart';

part 'search_state.freezed.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    @Default([]) List<SearchUserResultModel> users,
    @Default([]) List<SearchCampaignResultModel> campaigns,
    @Default(false) bool isLoadingUsers,
    @Default(false) bool isLoadingCampaigns,
    String? errorUsers,
    String? errorCampaigns,
    String? lastQuery,
  }) = _SearchState;
}
