part of 'mention_bloc.dart';

@freezed
class MentionState with _$MentionState {
  const factory MentionState.initial() = _Initial;
  const factory MentionState.loading() = _Loading;
  const factory MentionState.loaded({
    required List<MentionEntity> mentions,
    @Default(false) bool hasReachedMax,
  }) = _Loaded;
  const factory MentionState.error(String message) = _Error;
}
