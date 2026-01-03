import 'package:flutter_test/flutter_test.dart';
import 'package:velora/features/post/domain/entities/create_post_entity.dart';

void main() {
  test('CreatePostEntity has sensible defaults', () {
    const entity = CreatePostEntity(
      userId: 'user-1',
      content: 'Caption',
    );

    expect(entity.imageUrls, isEmpty);
    expect(entity.commentsEnabled, isTrue);
    expect(entity.hideLikeCount, isFalse);
  });

  test('supports copyWith via Freezed', () {
    const entity = CreatePostEntity(userId: 'u1', content: 'c1');
    final updated = entity.copyWith(
      content: 'c2',
      hideLikeCount: true,
    );

    expect(updated.content, 'c2');
    expect(updated.hideLikeCount, isTrue);
  });
}
