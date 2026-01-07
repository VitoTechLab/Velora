import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/feed/data/models/comment_cursor.dart';
import 'package:velora/features/feed/domain/entities/comment_cursor.dart';
import 'package:velora/features/feed/domain/entities/comment_pagination_result.dart';

import 'comment_model.dart';

part 'comment_pagination_model.freezed.dart';
part 'comment_pagination_model.g.dart';

CommentCursor? _cursorFromJson(Object? json) {
  if (json == null) return null;
  return CommentCursor.fromJson(json as Map<String, dynamic>);
}

Object? _cursorToJson(CommentCursor? cursor) => cursor?.toJson();

/// Cursor model for comment pagination (created_at + id)
@freezed
abstract class CommentPaginationModel with _$CommentPaginationModel {
  const CommentPaginationModel._();

  const factory CommentPaginationModel({
    required List<CommentModel> comments,
    required bool hasMore,
    @JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson)
    CommentCursor? nextCursor,
  }) = _CommentPaginationModel;

  factory CommentPaginationModel.fromJson(Map<String, dynamic> json) =>
      _$CommentPaginationModelFromJson(json);

  CommentPaginationResult toEntity() {
    return CommentPaginationResult(
      comments: comments.map((c) => c.toEntity()).toList(),
      hasMore: hasMore,
      cursor: nextCursor == null
          ? null
          : CommentCursorEntity(
              createdAt: nextCursor!.createdAt,
              id: nextCursor!.id,
            ),
    );
  }
}
