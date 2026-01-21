import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/post/domain/entities/post_feed_entity.dart';

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

extension CreatePostEventExtension on CreatePostEvent {
  PostFeedEntity toPostEntity() {
    return PostFeedEntity(
      userId: userId,
      content: content,
      mediaUrls: mediaUrls,
      tags: tags,
      mentionIds: mentionIds,
      location: location,
      allowComments: allowComments,
      allowShare: allowShare,
      campaignTitle: campaignTitle,
    );
  }
}
