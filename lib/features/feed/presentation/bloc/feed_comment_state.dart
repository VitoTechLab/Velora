import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/feed/domain/entities/comment_entity.dart';
import 'package:velora/features/feed/domain/entities/comment_cursor.dart';

part 'feed_comment_state.freezed.dart';

@freezed
abstract class FeedCommentState with _$FeedCommentState {
  const factory FeedCommentState({
    @Default(<CommentEntity>[]) List<CommentEntity> comments,
    String? postId,
    @Default(false) bool hasMore,
    CommentCursorEntity? cursor,
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingMore,
    String? errorMessage,
    @Default(false) bool isAdding,
    String? addError,
    CommentEntity? addedComment,
    @Default(false) bool isDeleting,
    String? deleteError,
    String? message,
    @Default(false) bool isWatching,
    String? watchError,
  }) = _FeedCommentState;
}
