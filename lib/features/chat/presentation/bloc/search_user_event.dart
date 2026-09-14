import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_user_event.freezed.dart';

@freezed
abstract class SearchUserEvent with _$SearchUserEvent {
  const factory SearchUserEvent.searchQueryChanged(String query) =
      SearchQueryChanged;
  const factory SearchUserEvent.clearSearch() = ClearSearch;
  const factory SearchUserEvent.loadFollowedUsers() = LoadFollowedUsers;
}
