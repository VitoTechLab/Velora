import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/mention_entity.dart';

part 'mention_model.freezed.dart';
part 'mention_model.g.dart';

@freezed
abstract class MentionModel with _$MentionModel {
  const MentionModel._();

  const factory MentionModel({
    required String id,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'created_by') required String createdBy,
    @JsonKey(name: 'entity_type') required String entityType,
    @JsonKey(name: 'entity_id') required String entityId,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    // Expanded from join
    @JsonKey(name: 'creator_profile') Map<String, dynamic>? creatorProfile,
  }) = _MentionModel;

  factory MentionModel.fromJson(Map<String, dynamic> json) =>
      _$MentionModelFromJson(json);

  MentionEntity toEntity() {
    return MentionEntity(
      id: id,
      userId: userId,
      createdBy: createdBy,
      entityType: entityType,
      entityId: entityId,
      createdAt: createdAt,
      creatorUsername: creatorProfile?['username'] as String?,
      creatorAvatarUrl: creatorProfile?['avatar_url'] as String?,
      creatorFullName: creatorProfile?['full_name'] as String?,
    );
  }
}
