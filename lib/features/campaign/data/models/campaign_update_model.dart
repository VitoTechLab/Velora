import 'package:velora/features/campaign/domain/entities/campaign_update_entity.dart';

class CampaignUpdateModel {
  const CampaignUpdateModel({
    required this.id,
    required this.campaignId,
    required this.updateText,
    this.imageUrl,
    required this.createdAt,
  });

  final String id;
  final String campaignId;
  final String updateText;
  final String? imageUrl;
  final DateTime createdAt;

  CampaignUpdateEntity toEntity() {
    return CampaignUpdateEntity(
      id: id,
      campaignId: campaignId,
      updateText: updateText,
      imageUrl: imageUrl,
      createdAt: createdAt,
    );
  }

  Map<String, dynamic> toMap({bool includeId = false}) {
    final map = <String, dynamic>{
      'campaign_id': campaignId,
      'update_text': updateText,
      'image_url': imageUrl,
      'created_at': createdAt.toIso8601String(),
    };
    if (includeId) {
      map['id'] = id;
    }
    return map;
  }

  CampaignUpdateModel copyWith({
    String? id,
    String? campaignId,
    String? updateText,
    String? imageUrl,
    DateTime? createdAt,
  }) {
    return CampaignUpdateModel(
      id: id ?? this.id,
      campaignId: campaignId ?? this.campaignId,
      updateText: updateText ?? this.updateText,
      imageUrl: imageUrl ?? this.imageUrl,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  factory CampaignUpdateModel.fromEntity(CampaignUpdateEntity entity) {
    return CampaignUpdateModel(
      id: entity.id,
      campaignId: entity.campaignId,
      updateText: entity.updateText,
      imageUrl: entity.imageUrl,
      createdAt: entity.createdAt,
    );
  }

  factory CampaignUpdateModel.fromMap(Map<String, dynamic> map) {
    return CampaignUpdateModel(
      id: map['id'] as String,
      campaignId: map['campaign_id'] as String,
      updateText: map['update_text'] as String,
      imageUrl: map['image_url'] as String?,
      createdAt: DateTime.parse(map['created_at'] as String),
    );
  }
}
