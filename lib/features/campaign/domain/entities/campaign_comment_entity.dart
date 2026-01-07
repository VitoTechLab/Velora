import 'package:freezed_annotation/freezed_annotation.dart';

part 'campaign_comment_entity.freezed.dart';

@freezed
abstract class CampaignCommentEntity with _$CampaignCommentEntity {
  const factory CampaignCommentEntity({
    required String id,
    required String campaignId,
    required String userId,
    required String commentText,
    required DateTime createdAt,
    String? userFullName,
    String? userPhotoUrl,
    @Default(false) bool isDonorComment,
    @Default(false) bool isNameHidden,
  }) = _CampaignCommentEntity;
}
