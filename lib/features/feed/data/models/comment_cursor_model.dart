import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/feed/domain/entities/comment_cursor_entity.dart';

part 'comment_cursor_model.freezed.dart';
part 'comment_cursor_model.g.dart';

/// Cursor model for comment pagination.
@freezed
abstract class CommentCursorModel with _$CommentCursorModel {
  const CommentCursorModel._();

  const factory CommentCursorModel({
    @JsonKey(name: 'cursor_created_at') required DateTime createdAt,
    @JsonKey(name: 'cursor_id') required String id,
  }) = _CommentCursorModel;

  factory CommentCursorModel.fromJson(Map<String, dynamic> json) =>
      _$CommentCursorModelFromJson(json);

  Map<String, dynamic> toMap() => toJson();

  CommentCursorEntity toEntity() =>
      CommentCursorEntity(createdAt: createdAt, id: id);
}
