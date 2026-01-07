import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_presence_model.freezed.dart';
part 'user_presence_model.g.dart';

@freezed
abstract class UserPresenceModel with _$UserPresenceModel {
  const UserPresenceModel._();

  const factory UserPresenceModel({
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'last_seen_at') required DateTime lastSeenAt,
    @JsonKey(name: 'is_online') bool? isOnline,
  }) = _UserPresenceModel;

  factory UserPresenceModel.fromJson(Map<String, dynamic> json) =>
      _$UserPresenceModelFromJson(json);
}
