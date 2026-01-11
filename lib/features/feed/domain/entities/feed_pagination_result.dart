import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/feed/domain/entities/feed_cursor_entity.dart';
import 'package:velora/features/feed/domain/entities/feed_entity.dart';

part 'feed_pagination_result.freezed.dart';

/// Pagination result for feed posts.
@freezed
abstract class FeedPaginationResult with _$FeedPaginationResult {
  const factory FeedPaginationResult({
    required List<FeedEntity> posts,
    required bool hasMore,
    FeedCursorEntity? cursor,
  }) = _FeedPaginationResult;
}
