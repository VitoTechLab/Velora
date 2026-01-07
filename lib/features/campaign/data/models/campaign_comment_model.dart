import 'package:velora/features/campaign/domain/entities/campaign_comment_entity.dart';

class CampaignCommentModel {
  const CampaignCommentModel({
    required this.id,
    required this.campaignId,
    required this.userId,
    required this.commentText,
    required this.createdAt,
    this.userFullName,
    this.userPhotoUrl,
    this.isDonorComment = false,
    this.isNameHidden = false,
  });

  final String id;
  final String campaignId;
  final String userId;
  final String commentText;
  final DateTime createdAt;
  final String? userFullName;
  final String? userPhotoUrl;
  final bool isDonorComment;
  final bool isNameHidden;

  CampaignCommentEntity toEntity() {
    return CampaignCommentEntity(
      id: id,
      campaignId: campaignId,
      userId: userId,
      commentText: commentText,
      createdAt: createdAt,
      userFullName: userFullName,
      userPhotoUrl: userPhotoUrl,
      isDonorComment: isDonorComment,
      isNameHidden: isNameHidden,
    );
  }

  CampaignCommentModel copyWith({
    String? id,
    String? campaignId,
    String? userId,
    String? commentText,
    DateTime? createdAt,
    String? userFullName,
    String? userPhotoUrl,
    bool? isDonorComment,
    bool? isNameHidden,
  }) {
    return CampaignCommentModel(
      id: id ?? this.id,
      campaignId: campaignId ?? this.campaignId,
      userId: userId ?? this.userId,
      commentText: commentText ?? this.commentText,
      createdAt: createdAt ?? this.createdAt,
      userFullName: userFullName ?? this.userFullName,
      userPhotoUrl: userPhotoUrl ?? this.userPhotoUrl,
      isDonorComment: isDonorComment ?? this.isDonorComment,
      isNameHidden: isNameHidden ?? this.isNameHidden,
    );
  }

  Map<String, dynamic> toMap({bool includeId = false}) {
    final map = <String, dynamic>{
      'campaign_id': campaignId,
      'user_id': userId,
      'comment_text': commentText,
      'created_at': createdAt.toIso8601String(),
      'user_full_name': userFullName,
      'user_photo_url': userPhotoUrl,
      'is_donor_comment': isDonorComment,
      'is_name_hidden': isNameHidden,
    };
    if (includeId) {
      map['id'] = id;
    }
    return map;
  }

  factory CampaignCommentModel.fromMap(Map<String, dynamic> map) {
    return CampaignCommentModel(
      id: map['id'] as String,
      campaignId: map['campaign_id'] as String,
      userId: map['user_id'] as String,
      commentText: map['comment_text'] as String,
      createdAt: DateTime.parse(map['created_at'] as String),
      userFullName: map['user_full_name'] as String?,
      userPhotoUrl: map['user_photo_url'] as String?,
      isDonorComment: (map['is_donor_comment'] as bool?) ?? false,
      isNameHidden: (map['is_name_hidden'] as bool?) ?? false,
    );
  }

  factory CampaignCommentModel.fromEntity(CampaignCommentEntity entity) {
    return CampaignCommentModel(
      id: entity.id,
      campaignId: entity.campaignId,
      userId: entity.userId,
      commentText: entity.commentText,
      createdAt: entity.createdAt,
      userFullName: entity.userFullName,
      userPhotoUrl: entity.userPhotoUrl,
      isDonorComment: entity.isDonorComment,
      isNameHidden: entity.isNameHidden,
    );
  }
}
