import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/mention_entity.dart';
import '../../domain/usecases/get_my_mentions_usecase.dart';

part 'mention_event.dart';
part 'mention_state.dart';
part 'mention_bloc.freezed.dart';

class MentionBloc extends Bloc<MentionEvent, MentionState> {
  final GetMyMentionsUseCase getMyMentions;

  static const int _limit = 20;

  MentionBloc({
    required this.getMyMentions,
  }) : super(const MentionState.initial()) {
    on<_FetchMyMentions>(_onFetchMyMentions);
  }

  Future<void> _onFetchMyMentions(
    _FetchMyMentions event,
    Emitter<MentionState> emit,
  ) async {
    // If refreshing, start from loading/initial
    if (event.isRefresh) {
      emit(const MentionState.loading());
    }

    // Determine current page based on state if not refreshing (Pagination)
    // Simplified: For now, we assume simple list fetch or refresh.
    // Ideally use current list length / limit + 1.
    final currentState = state;
    int page = 1;
    List<MentionEntity> oldMentions = [];

    // If we are already loaded and not refreshing, we are fetching more
    if (!event.isRefresh && currentState is _Loaded) {
      if (currentState.hasReachedMax) return;
      oldMentions = currentState.mentions;
      page = (oldMentions.length ~/ _limit) + 1;
    }

    final result = await getMyMentions(page: page, limit: _limit);

    result.fold(
      (failure) => emit(
          MentionState.error(failure.message)), // Assumes Failure has .message
      (newMentions) {
        final hasReachedMax = newMentions.length < _limit;
        final allMentions =
            event.isRefresh ? newMentions : [...oldMentions, ...newMentions];

        emit(MentionState.loaded(
          mentions: allMentions,
          hasReachedMax: hasReachedMax,
        ));
      },
    );
  }
}
