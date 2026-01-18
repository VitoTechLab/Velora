import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/campaign/domain/repositories/campaign_repository.dart';

class DeleteCampaignCommentUsecase {
  const DeleteCampaignCommentUsecase({required this.repository});

  final CampaignRepository repository;

  Future<Either<Failure, void>> call({
    required String campaignId,
    required String commentId,
  }) {
    return repository.deleteComment(
      campaignId: campaignId,
      commentId: commentId,
    );
  }
}
