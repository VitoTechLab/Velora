import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/campaign/domain/entities/campaign_comment_entity.dart';
import 'package:velora/features/campaign/domain/repositories/campaign_repository.dart';

class GetCampaignCommentsUsecase {
  const GetCampaignCommentsUsecase({required this.repository});

  final CampaignRepository repository;

  Future<Either<Failure, List<CampaignCommentEntity>>> call(
    String campaignId, {
    bool includeReplies = false,
  }) {
    return repository.getComments(
      campaignId,
      includeReplies: includeReplies,
    );
  }
}
