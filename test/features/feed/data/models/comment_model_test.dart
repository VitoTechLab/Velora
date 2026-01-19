import 'package:flutter_test/flutter_test.dart';
import 'package:velora/features/feed/data/models/comment_model.dart';
import 'package:velora/features/feed/domain/entities/comment_entity.dart';

void main() {
  final createdAt = DateTime.utc(2024, 2, 10, 9, 30);
  final reply = CommentModel(
    id: 'reply-1',
    postId: 'post-1',
    userId: 'user-2',
    content: 'Replying!',
    createdAt: createdAt,
    likesCount: 1,
    isLiked: false,
  );
  final model = CommentModel(
    id: 'comment-1',
    postId: 'post-1',
    userId: 'user-1',
    content: 'Great update',
    createdAt: createdAt,
    username: 'Vito',
    photoUrl: 'https://example.com/photo.png',
    replies: [reply],
    likesCount: 5,
    isLiked: true,
  );

  test('toEntity converts nested replies', () {
    final entity = model.toEntity();
    expect(entity, isA<CommentEntity>());
    expect(entity.replies.length, 1);
    expect(entity.replies.first.id, equals(reply.id));
  });

  test('toJson serializes correctly', () {
    final json = model.toJson();
    expect(json['id'], equals('comment-1'));
    expect(json['post_id'], equals('post-1'));
    expect(json['content'], equals('Great update'));
  });

  test('fromJson deserializes correctly', () {
    final json = model.toJson();
    final fromJson = CommentModel.fromJson(json);
    expect(fromJson.id, equals(model.id));
    expect(fromJson.content, equals(model.content));
  });
}
