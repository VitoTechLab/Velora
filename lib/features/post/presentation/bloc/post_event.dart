import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_event.freezed.dart';

@freezed
class PostEvent with _$PostEvent {
  const factory PostEvent.createPost({
    required String userId,
    required String content,
    @Default([]) List<String> mediaUrls,
    @Default([]) List<String> tags,
    @Default([]) List<String> mentionIds,
    Map<String, dynamic>? location,
    @Default(true) bool allowComments,
    @Default(true) bool allowShare,
    String? campaignTitle,
  }) = CreatePostEvent;

  const factory PostEvent.clearPostTransient() = ClearPostTransientEvent;
}
