import 'package:flutter_test/flutter_test.dart';
import 'package:velora/features/feed/data/models/feed_cursor.dart';
import 'package:velora/features/feed/data/models/feed_model.dart';
import 'package:velora/features/feed/data/models/feed_pagination_model.dart';

void main() {
  final now = DateTime.utc(2024, 3, 1);
  final posts = [
    FeedModel(
      id: 'p1',
      userId: 'u1',
      content: 'Hello',
      createdAt: now,
    ),
    FeedModel(
      id: 'p2',
      userId: 'u2',
      content: 'World',
      createdAt: now.subtract(const Duration(minutes: 5)),
    ),
  ];

  test('FeedPaginationModel converts to entity', () {
    final model = FeedPaginationModel(
      posts: posts,
      hasMore: true,
      nextCursor: FeedCursor(
        createdAt: now.subtract(const Duration(minutes: 5)),
        id: 'cursor-1',
      ),
    );

    final entity = model.toEntity();
    expect(entity.posts.length, 2);
    expect(entity.hasMore, isTrue);
  });
}
