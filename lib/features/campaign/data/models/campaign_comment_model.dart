import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/campaign/domain/entities/campaign_comment_entity.dart';

part 'campaign_comment_model.freezed.dart';
part 'campaign_comment_model.g.dart';

@freezed
abstract class CampaignCommentModel with _$CampaignCommentModel {
  const CampaignCommentModel._();

  const factory CampaignCommentModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'campaign_id') required String campaignId,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'comment_text') required String commentText,
    @JsonKey(name: 'parent_id') String? parentId,
    @JsonKey(name: 'created_at') required DateTime createdAt,

    // Joined from user_profiles (read-only)
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'display_name') String? displayName,
    @JsonKey(name: 'avatar_url') String? avatarUrl,
  }) = _CampaignCommentModel;

  factory CampaignCommentModel.fromJson(Map<String, dynamic> json) =>
      _$CampaignCommentModelFromJson(json);

  CampaignCommentEntity toEntity(
      {List<CampaignCommentEntity> replies = const []}) {
    return CampaignCommentEntity(
      id: id,
      campaignId: campaignId,
      userId: userId,
      commentText: commentText,
      parentId: parentId,
      createdAt: createdAt,
      username: username,
      displayName: displayName,
      avatarUrl: avatarUrl,
      replies: replies,
    );
  }

  factory CampaignCommentModel.fromEntity(CampaignCommentEntity entity) {
    return CampaignCommentModel(
      id: entity.id,
      campaignId: entity.campaignId,
      userId: entity.userId,
      commentText: entity.commentText,
      parentId: entity.parentId,
      createdAt: entity.createdAt,
    );
  }

  /// Convert for INSERT
  Map<String, dynamic> toInsertMap() {
    return {
      'campaign_id': campaignId,
      'user_id': userId,
      'comment_text': commentText,
      'parent_id': parentId,
    };
  }
}
