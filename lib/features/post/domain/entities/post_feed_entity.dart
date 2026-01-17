import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_feed_entity.freezed.dart';

@freezed
abstract class PostFeedEntity with _$PostFeedEntity {
  const factory PostFeedEntity({
    required String userId,
    required String content,
    @Default([]) List<String> mediaUrls,
    @Default([]) List<String> tags,
    @Default([]) List<String> mentionIds,
    Map<String, dynamic>? location,
    @Default(true) bool allowComments,
    @Default(true) bool allowShare,
    String? campaignTitle,
  }) = _PostFeedEntity;
}
