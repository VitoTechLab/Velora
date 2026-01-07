import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/feed/domain/entities/feed_cursor.dart';
import 'package:velora/features/feed/domain/entities/feed_entity.dart';

part 'feed_state.freezed.dart';

@freezed
abstract class FeedState with _$FeedState {
  const factory FeedState({
    @Default(<FeedEntity>[]) List<FeedEntity> posts,
    @Default(false) bool hasMore,
    FeedCursorEntity? cursor,
    @Default(false) bool isLoadingInitial,
    @Default(false) bool isLoadingMore,
    @Default(false) bool isRefreshing,
    String? errorFeed,
    FeedEntity? singlePost,
    @Default(false) bool isLoadingSinglePost,
    String? errorSinglePost,
    FeedEntity? updatedPost,
    @Default(false) bool isUpdatingPost,
    String? errorUpdatePost,
    @Default(false) bool isDeletingPost,
    String? errorDeletePost,
    String? message,
  }) = _FeedState;
}
