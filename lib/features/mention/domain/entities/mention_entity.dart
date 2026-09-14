import 'package:freezed_annotation/freezed_annotation.dart';

part 'mention_entity.freezed.dart';

@freezed
abstract class MentionEntity with _$MentionEntity {
  const factory MentionEntity({
    required String id,
    required String userId,
    required String createdBy,
    required String entityType, // 'message', 'post', 'comment', 'story'
    required String entityId,
    required DateTime createdAt,
    // Optional expanded fields for display
    String? creatorUsername,
    String? creatorAvatarUrl,
    String? creatorFullName,
  }) = _MentionEntity;
}
