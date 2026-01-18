part of 'mention_bloc.dart';

@freezed
class MentionEvent with _$MentionEvent {
  // Event to fetch the user's mentions (Timeline/Notifications)
  const factory MentionEvent.fetchMyMentions({
    @Default(false) bool isRefresh,
  }) = _FetchMyMentions;
}
