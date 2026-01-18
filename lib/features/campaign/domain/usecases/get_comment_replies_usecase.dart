import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/campaign/domain/entities/campaign_comment_entity.dart';
import 'package:velora/features/campaign/domain/repositories/campaign_repository.dart';

class GetCommentRepliesUsecase {
  const GetCommentRepliesUsecase({required this.repository});

  final CampaignRepository repository;

  Future<Either<Failure, List<CampaignCommentEntity>>> call(String parentId) {
    return repository.getCommentReplies(parentId);
  }
}
