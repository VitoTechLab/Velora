import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/feed/domain/entities/feed_entity.dart';
import 'package:velora/features/post/domain/entities/post_feed_entity.dart';
import 'package:velora/features/post/domain/repositories/post_repository.dart';

/// Use case for creating a new feed post
class CreatePostFeedUseCase {
  const CreatePostFeedUseCase({required this.repository});

  final PostRepository repository;

  Future<Either<Failure, FeedEntity>> call({
    required String userId,
    required String content,
    List<String> imageUrls = const [],
    List<String> videoUrls = const [],
    bool commentsEnabled = true,
    bool hideLikeCount = false,
    bool hideCommentCount = false,
    bool hideShareCount = false,
    bool hideLikesList = false,
    String? campaignId,
    String? campaignTitle,
  }) {
    final entity = PostFeedEntity(
      userId: userId,
      content: content,
      imageUrls: imageUrls,
      videoUrls: videoUrls,
      commentsEnabled: commentsEnabled,
      hideLikeCount: hideLikeCount,
      hideCommentCount: hideCommentCount,
      hideShareCount: hideShareCount,
      hideLikesList: hideLikesList,
      campaignId: campaignId,
      campaignTitle: campaignTitle,
    );

    return repository.createFeedPost(post: entity);
  }
}
