import 'package:dartz/dartz.dart';
import 'package:velora/core/errors/failure.dart';
import 'package:velora/features/campaign/domain/entities/campaign_document_entity.dart';
import 'package:velora/features/campaign/domain/repositories/campaign_repository.dart';

class GetCampaignDocumentsUsecase {
  const GetCampaignDocumentsUsecase({required this.repository});

  final CampaignRepository repository;

  Future<Either<Failure, List<CampaignDocumentEntity>>> call(String campaignId) {
    return repository.getCampaignDocuments(campaignId);
  }
}
