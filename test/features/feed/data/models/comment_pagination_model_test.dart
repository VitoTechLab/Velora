import 'package:flutter_test/flutter_test.dart';
import 'package:velora/features/feed/data/models/comment_cursor.dart';
import 'package:velora/features/feed/data/models/comment_model.dart';
import 'package:velora/features/feed/data/models/comment_pagination_model.dart';

void main() {
  final now = DateTime.utc(2024, 4, 1);
  final comments = [
    CommentModel(
      id: 'c1',
      postId: 'post-1',
      userId: 'user-1',
      content: 'Nice post',
      createdAt: now,
    ),
  ];

  test('CommentPaginationModel -> entity retains cursor', () {
    final cursor = CommentCursor(createdAt: now, id: 'cursor');
    final model = CommentPaginationModel(
      comments: comments,
      hasMore: false,
      nextCursor: cursor,
    );

    final entity = model.toEntity();
    expect(entity.comments.length, 1);
    expect(entity.cursor?.id, equals('cursor'));
  });
}
