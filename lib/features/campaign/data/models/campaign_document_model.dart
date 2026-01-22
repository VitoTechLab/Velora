import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/campaign_document_entity.dart';

part 'campaign_document_model.g.dart';

@JsonSerializable()
class CampaignDocumentModel {
  final String id;
  @JsonKey(name: 'campaign_id')
  final String campaignId;
  final String title;
  @JsonKey(name: 'type_label')
  final String typeLabel;
  @JsonKey(name: 'file_url')
  final String? fileUrl;
  final String status;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  CampaignDocumentModel({
    required this.id,
    required this.campaignId,
    required this.title,
    this.typeLabel = 'Document',
    this.fileUrl,
    this.status = 'pending',
    required this.createdAt,
    this.updatedAt,
  });

  factory CampaignDocumentModel.fromJson(Map<String, dynamic> json) =>
      _$CampaignDocumentModelFromJson(json);

  Map<String, dynamic> toJson() => _$CampaignDocumentModelToJson(this);

  CampaignDocumentEntity toEntity() => CampaignDocumentEntity(
        id: id,
        campaignId: campaignId,
        title: title,
        typeLabel: typeLabel,
        fileUrl: fileUrl,
        status: status,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );

  Map<String, dynamic> toInsertMap() => {
        'campaign_id': campaignId,
        'title': title,
        'type_label': typeLabel,
        'file_url': fileUrl,
        'status': status,
      };
}
