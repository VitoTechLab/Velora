import 'package:freezed_annotation/freezed_annotation.dart';

part 'campaign_comment_entity.freezed.dart';

@freezed
abstract class CampaignCommentEntity with _$CampaignCommentEntity {
  const factory CampaignCommentEntity({
    required String id,
    required String campaignId,
    required String userId,
    required String commentText,
    String? parentId,
    required DateTime createdAt,

    // Joined from user_profiles (read-only)
    String? username,
    String? displayName,
    String? avatarUrl,

    // For threaded comments
    @Default([]) List<CampaignCommentEntity> replies,
  }) = _CampaignCommentEntity;
}
