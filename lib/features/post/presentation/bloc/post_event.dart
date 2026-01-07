import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_event.freezed.dart';

@freezed
class PostEvent with _$PostEvent {
  const factory PostEvent.createPost({
    required String userId,
    required String content,
    @Default([]) List<String> imageUrls,
    @Default([]) List<String> videoUrls,
    @Default(true) bool commentsEnabled,
    @Default(false) bool hideLikeCount,
    @Default(false) bool hideCommentCount,
    @Default(false) bool hideShareCount,
    @Default(false) bool hideLikesList,
    String? campaignId,
    String? campaignTitle,
  }) = CreatePostEvent;

  const factory PostEvent.clearPostTransient() = ClearPostTransientEvent;
}
