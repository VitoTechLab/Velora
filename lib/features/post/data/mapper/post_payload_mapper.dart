import 'package:velora/features/feed/domain/entities/feed_entity.dart';
import 'package:velora/features/post/data/models/create_post_model.dart';

extension FeedEntityToPostPayloadX on FeedEntity {
  CreatePostModel toCreatePostModel() => CreatePostModel(
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
}
