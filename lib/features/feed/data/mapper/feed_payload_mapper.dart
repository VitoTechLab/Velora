import 'package:velora/features/feed/data/models/update_feed_model.dart';
import 'package:velora/features/feed/domain/entities/feed_entity.dart';

extension FeedEntityToPayloadX on FeedEntity {
  /// patch: ambil field yang ingin diupdate
  UpdateFeedModel toUpdateFeedModel({
    bool content = true,
    bool media = true,
    bool settings = true,
    bool campaign = true,
  }) => UpdateFeedModel(
    content: content ? this.content : null,
    imageUrls: media ? imageUrls : null,
    videoUrls: media ? videoUrls : null,
    commentsEnabled: settings ? commentsEnabled : null,
    hideLikeCount: settings ? hideLikeCount : null,
    hideCommentCount: settings ? hideCommentCount : null,
    hideShareCount: settings ? hideShareCount : null,
    hideLikesList: settings ? hideLikesList : null,
    campaignId: campaign ? campaignId : null,
    campaignTitle: campaign ? campaignTitle : null,
  );
}
