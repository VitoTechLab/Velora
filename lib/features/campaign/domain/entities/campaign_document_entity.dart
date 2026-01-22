import 'package:freezed_annotation/freezed_annotation.dart';

part 'campaign_document_entity.freezed.dart';

/// Represents a document attached to a campaign for transparency.
@freezed
abstract class CampaignDocumentEntity with _$CampaignDocumentEntity {
  const factory CampaignDocumentEntity({
    required String id,
    required String campaignId,
    required String title,
    @Default('Document') String typeLabel,
    String? fileUrl,
    @Default('pending') String status, // pending, verified, rejected
    required DateTime createdAt,
    DateTime? updatedAt,
  }) = _CampaignDocumentEntity;
}
