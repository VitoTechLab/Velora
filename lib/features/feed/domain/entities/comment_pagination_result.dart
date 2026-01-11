import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/feed/domain/entities/comment_cursor_entity.dart';
import 'package:velora/features/feed/domain/entities/comment_entity.dart';

part 'comment_pagination_result.freezed.dart';

/// Pagination result for comments.
@freezed
abstract class CommentPaginationResult with _$CommentPaginationResult {
  const factory CommentPaginationResult({
    required List<CommentEntity> comments,
    required bool hasMore,
    CommentCursorEntity? cursor,
  }) = _CommentPaginationResult;
}
