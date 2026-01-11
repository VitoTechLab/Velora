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
    imageUrls: const ['https://example.com/image.png'],
    videoUrls: const [],
    likesCount: 10,
    commentsCount: 2,
    sharesCount: 1,
    isLiked: true,
    isBookmarked: false,
    commentsEnabled: true,
    hideLikeCount: false,
    hideCommentCount: false,
    hideShareCount: false,
    hideLikesList: false,
    campaignId: 'cmp-32',
    campaignTitle: 'Save the forest',
  );

  test('serializes to/from json correctly', () {
    final json = model.toJson();
    final fromJson = FeedModel.fromJson(json);

    expect(fromJson, equals(model));
  });

  test('converts between model and entity', () {
    final entity = model.toEntity();
    expect(entity, isA<FeedEntity>());
    expect(entity.id, equals(model.id));
    expect(entity.likesCount, equals(model.likesCount));

    final backToModel = FeedModel.fromEntity(entity);
    expect(backToModel, equals(model));
  });
}
