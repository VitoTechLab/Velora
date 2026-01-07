import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_post_entity.freezed.dart';

/// Entity untuk create post
/// Tidak ada isLiked, isBookmarked, likesCount, commentsCount
/// Hanya ada hide properties dan data post
@freezed
abstract class CreatePostEntity with _$CreatePostEntity {
  const factory CreatePostEntity({
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
  }) = _CreatePostEntity;
}
