import 'package:flutter_test/flutter_test.dart';
import 'package:velora/features/feed/data/models/feed_model.dart';
import 'package:velora/features/feed/domain/entities/feed_entity.dart';

void main() {
  final createdAt = DateTime.utc(2024, 1, 15, 12);
  final model = FeedModel(
    id: 'post-1',
    userId: 'user-1',
    content: 'Hello Velora',
    createdAt: createdAt,
    username: 'Vito',
    photoUrl: 'https://example.com/avatar.png',
    mediaUrls: const ['https://example.com/image.png'],
    likesCount: 10,
    commentsCount: 2,
    sharesCount: 1,
    isLiked: true,
    isBookmarked: false,
    allowComments: true,
    campaignId: 'cmp-32',
    campaignTitle: 'Save the forest',
  );

  test('serializes to/from json correctly', () {
    final json = model.toJson();
    final fromJson = FeedModel.fromJson(json);

    expect(fromJson, equals(model));
  });

  test('converts to entity correctly', () {
    final entity = model.toEntity();
    expect(entity, isA<FeedEntity>());
    expect(entity.id, equals(model.id));
    expect(entity.content, equals(model.content));
    expect(entity.likesCount, equals(model.likesCount));
    expect(entity.username, equals(model.username));
  });
}
