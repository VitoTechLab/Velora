import 'package:velora/features/campaign/domain/entities/campaign_entity.dart';

class CampaignModel {
  const CampaignModel({
    required this.id,
    required this.postId,
    required this.userId,
    required this.title,
    required this.description,
    required this.targetAmount,
    required this.amountRaised,
    required this.status,
    required this.createdAt,
    this.completedAt,
    this.donorIds = const [],
  });

  final String id;
  final String postId;
  final String userId;
  final String title;
  final String description;
  final double targetAmount;
  final double amountRaised;
  final CampaignStatus status;
  final DateTime createdAt;
  final DateTime? completedAt;
  final List<String> donorIds;

  CampaignEntity toEntity() {
    return CampaignEntity(
      id: id,
      postId: postId,
      userId: userId,
      title: title,
      description: description,
      targetAmount: targetAmount,
      amountRaised: amountRaised,
      status: status,
      createdAt: createdAt,
      completedAt: completedAt,
      donorIds: donorIds,
    );
  }

  CampaignModel copyWith({
    String? id,
    String? postId,
    String? userId,
    String? title,
    String? description,
    double? targetAmount,
    double? amountRaised,
    CampaignStatus? status,
    DateTime? createdAt,
    DateTime? completedAt,
    List<String>? donorIds,
  }) {
    return CampaignModel(
      id: id ?? this.id,
      postId: postId ?? this.postId,
      userId: userId ?? this.userId,
      title: title ?? this.title,
      description: description ?? this.description,
      targetAmount: targetAmount ?? this.targetAmount,
      amountRaised: amountRaised ?? this.amountRaised,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
      completedAt: completedAt ?? this.completedAt,
      donorIds: donorIds ?? this.donorIds,
    );
  }

  Map<String, dynamic> toMap({bool includeId = false}) {
    final map = <String, dynamic>{
      'post_id': postId,
      'user_id': userId,
      'title': title,
      'description': description,
      'target_amount': targetAmount,
      'amount_raised': amountRaised,
      'status': status.name,
      'created_at': createdAt.toIso8601String(),
      'completed_at': completedAt?.toIso8601String(),
      'donor_ids': donorIds,
    };
    if (includeId) {
      map['id'] = id;
    }
    return map;
  }

  factory CampaignModel.fromMap(Map<String, dynamic> map) {
    return CampaignModel(
      id: map['id'] as String,
      postId: map['post_id'] as String,
      userId: map['user_id'] as String,
      title: map['title'] as String,
      description: map['description'] as String,
      targetAmount: (map['target_amount'] as num).toDouble(),
      amountRaised: (map['amount_raised'] as num).toDouble(),
      status: CampaignStatus.values.firstWhere(
        (status) => status.name == map['status'],
        orElse: () => CampaignStatus.active,
      ),
      createdAt: DateTime.parse(
        (map['created_at'] as String?) ?? DateTime.now().toIso8601String(),
      ),
      completedAt: (map['completed_at'] as String?) != null
          ? DateTime.parse(map['completed_at'] as String)
          : null,
      donorIds:
          (map['donor_ids'] as List<dynamic>?)
              ?.map((e) => e.toString())
              .toList() ??
          const [],
    );
  }

  factory CampaignModel.fromEntity(CampaignEntity entity) {
    return CampaignModel(
      id: entity.id,
      postId: entity.postId,
      userId: entity.userId,
      title: entity.title,
      description: entity.description,
      targetAmount: entity.targetAmount,
      amountRaised: entity.amountRaised,
      status: entity.status,
      createdAt: entity.createdAt,
      completedAt: entity.completedAt,
      donorIds: entity.donorIds,
    );
  }
}
