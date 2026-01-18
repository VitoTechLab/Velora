import 'package:flutter_test/flutter_test.dart';
import 'package:velora/features/post/domain/entities/post_feed_entity.dart';

void main() {
  test('PostFeedEntity has sensible defaults', () {
    const entity = PostFeedEntity(userId: 'user-1', content: 'Caption');

    expect(entity.mediaUrls, isEmpty);
    expect(entity.tags, isEmpty);
    expect(entity.mentionIds, isEmpty);
    expect(entity.allowComments, isTrue);
    expect(entity.allowShare, isTrue);
    expect(entity.location, isNull);
    expect(entity.campaignTitle, isNull);
  });

  test('supports copyWith via Freezed', () {
    const entity = PostFeedEntity(userId: 'u1', content: 'c1');
    final updated = entity.copyWith(content: 'c2', allowShare: false);

    expect(updated.content, 'c2');
    expect(updated.allowShare, isFalse);
  });
}
