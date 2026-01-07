import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/core/serialization/json_converters.dart';
import 'package:velora/features/social_relation/domain/entities/follow_request_entity.dart';

part 'follow_request_model.freezed.dart';
part 'follow_request_model.g.dart';

@freezed
abstract class FollowRequestModel with _$FollowRequestModel {
  const FollowRequestModel._();

  const factory FollowRequestModel({
    @JsonKey(name: 'requester_id') required String requesterId,
    @JsonKey(name: 'target_id') required String targetId,
    @UtcDateTimeConverter()
    @JsonKey(name: 'created_at')
    required DateTime createdAt,
    @JsonKey(name: 'status') @Default('pending') String status,

    // Joined from user_profiles
    @JsonKey(name: 'requester_username') String? requesterUsername,
    @JsonKey(name: 'requester_photo_url') String? requesterPhotoUrl,
    @JsonKey(name: 'requester_full_name') String? requesterFullName,

    @JsonKey(name: 'target_username') String? targetUsername,
    @JsonKey(name: 'target_photo_url') String? targetPhotoUrl,
    @JsonKey(name: 'target_full_name') String? targetFullName,
  }) = _FollowRequestModel;

  factory FollowRequestModel.fromJson(Map<String, dynamic> json) =>
      _$FollowRequestModelFromJson(json);

  FollowRequestEntity toEntity() {
    return FollowRequestEntity(
      requesterId: requesterId,
      targetId: targetId,
      createdAt: createdAt,
      status: status,
      requesterUsername: requesterUsername,
      requesterPhotoUrl: requesterPhotoUrl,
      requesterFullName: requesterFullName,
      targetUsername: targetUsername,
      targetPhotoUrl: targetPhotoUrl,
      targetFullName: targetFullName,
    );
  }
}
