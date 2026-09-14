import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_event.freezed.dart';

@freezed
abstract class SearchEvent with _$SearchEvent {
  const factory SearchEvent.searchUsers({
    required String query,
    @Default('global') String scope,
    @Default(20) int limit,
  }) = SearchUsersEvent;

  const factory SearchEvent.searchCampaigns({
    required String query,
    String? categoryId,
    @Default(20) int limit,
  }) = SearchCampaignsEvent;

  const factory SearchEvent.searchAll({
    required String query,
  }) = SearchAllEvent;

  const factory SearchEvent.clearSearch() = ClearSearchEvent;
}
