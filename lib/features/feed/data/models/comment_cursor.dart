import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/feed/domain/entities/comment_cursor.dart';

part 'comment_cursor.freezed.dart';
part 'comment_cursor.g.dart';

@freezed
abstract class CommentCursor with _$CommentCursor {
  const CommentCursor._();

  const factory CommentCursor({
    @JsonKey(name: 'cursor_created_at') required DateTime createdAt,
    @JsonKey(name: 'cursor_id') required String id,
  }) = _CommentCursor;

  factory CommentCursor.fromJson(Map<String, dynamic> json) =>
      _$CommentCursorFromJson(json);

  Map<String, dynamic> toMap() => toJson();

  CommentCursorEntity toEntity() =>
      CommentCursorEntity(createdAt: createdAt, id: id);
}
