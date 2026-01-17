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
        mediaUrls: media ? mediaUrls : null,
        location: media ? location : null,
        tags: settings ? tags : null,
        mentionIds: settings ? mentionIds : null,
        allowComments: settings ? allowComments : null,
        allowShare: settings ? allowShare : null,
        isActive: settings ? isActive : null,
        campaignId: campaign ? campaignId : null,
        campaignTitle: campaign ? campaignTitle : null,
      );
}
