import 'package:json_annotation/json_annotation.dart';
import '../../domain/entities/campaign_milestone_entity.dart';

part 'campaign_milestone_model.g.dart';

@JsonSerializable()
class CampaignMilestoneModel {
  final String id;
  @JsonKey(name: 'campaign_id')
  final String campaignId;
  final String title;
  final String? description;
  @JsonKey(name: 'target_amount')
  final double targetAmount;
  @JsonKey(name: 'due_date')
  final DateTime? dueDate;
  final String status;
  @JsonKey(name: 'sort_order')
  final int sortOrder;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @JsonKey(name: 'completed_at')
  final DateTime? completedAt;

  CampaignMilestoneModel({
    required this.id,
    required this.campaignId,
    required this.title,
    this.description,
    required this.targetAmount,
    this.dueDate,
    this.status = 'pending',
    this.sortOrder = 0,
    required this.createdAt,
    this.completedAt,
  });

  factory CampaignMilestoneModel.fromJson(Map<String, dynamic> json) =>
      _$CampaignMilestoneModelFromJson(json);

  Map<String, dynamic> toJson() => _$CampaignMilestoneModelToJson(this);

  CampaignMilestoneEntity toEntity() => CampaignMilestoneEntity(
        id: id,
        campaignId: campaignId,
        title: title,
        description: description,
        targetAmount: targetAmount,
        dueDate: dueDate,
        status: status,
        sortOrder: sortOrder,
        createdAt: createdAt,
        completedAt: completedAt,
      );

  Map<String, dynamic> toInsertMap() => {
        'campaign_id': campaignId,
        'title': title,
        'description': description,
        'target_amount': targetAmount,
        'due_date': dueDate?.toIso8601String(),
        'status': status,
        'sort_order': sortOrder,
      };
}
