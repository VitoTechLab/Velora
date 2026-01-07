import 'package:freezed_annotation/freezed_annotation.dart';

part 'follow_request_entity.freezed.dart';

@freezed
abstract class FollowRequestEntity with _$FollowRequestEntity {
  const factory FollowRequestEntity({
    required String requesterId,
    required String targetId,
    required DateTime createdAt,
    required String status,
    String? requesterUsername,
    String? requesterPhotoUrl,
    String? requesterFullName,
    String? targetUsername,
    String? targetPhotoUrl,
    String? targetFullName,
  }) = _FollowRequestEntity;
}
