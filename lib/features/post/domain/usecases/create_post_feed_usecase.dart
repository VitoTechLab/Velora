import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/feed/domain/entities/feed_entity.dart';
import 'package:velora/features/post/domain/entities/post_feed_entity.dart';
import 'package:velora/features/post/domain/repositories/post_repository.dart';

class CreatePostFeedUseCase {
  const CreatePostFeedUseCase({required this.repository});

  final PostRepository repository;

  Future<Either<Failure, FeedEntity>> call({
    required String userId,
    required String content,
    List<String> mediaUrls = const [],
    List<String> tags = const [],
    List<String> mentionIds = const [],
    Map<String, dynamic>? location,
    bool allowComments = true,
    bool allowShare = true,
    String? campaignTitle,
  }) {
    final entity = PostFeedEntity(
      userId: userId,
      content: content,
      mediaUrls: mediaUrls,
      tags: tags,
      mentionIds: mentionIds,
      location: location,
      allowComments: allowComments,
      allowShare: allowShare,
      campaignTitle: campaignTitle,
    );

    return repository.createFeedPost(post: entity);
  }
}
