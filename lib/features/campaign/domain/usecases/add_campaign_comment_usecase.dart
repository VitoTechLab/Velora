import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/campaign/domain/entities/campaign_comment_entity.dart';
import 'package:velora/features/campaign/domain/repositories/campaign_repository.dart';

class AddCampaignCommentUsecase {
  const AddCampaignCommentUsecase({required this.repository});

  final CampaignRepository repository;

  Future<Either<Failure, CampaignCommentEntity>> call(
    CampaignCommentEntity comment,
  ) {
    return repository.addComment(comment);
  }
}
