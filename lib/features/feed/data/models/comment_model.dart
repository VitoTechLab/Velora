import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/core/serialization/json_converters.dart';
import 'package:velora/features/feed/domain/entities/comment_entity.dart';

part 'comment_model.freezed.dart';
part 'comment_model.g.dart';

/// Comment data model for API responses.
@freezed
abstract class CommentModel with _$CommentModel {
  const CommentModel._();

  const factory CommentModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'post_id') required String postId,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'content') required String content,
    @UtcDateTimeConverter()
    @JsonKey(name: 'created_at')
    required DateTime createdAt,
    @JsonKey(name: 'user_full_name') String? userFullName,
    @JsonKey(name: 'user_photo_url') String? userPhotoUrl,
    @JsonKey(name: 'parent_comment_id') String? parentCommentId,
    @JsonKey(includeFromJson: false, includeToJson: false)
    @Default([])
    List<CommentModel> replies,
    @JsonKey(name: 'likes_count') @Default(0) int likesCount,
    @JsonKey(includeToJson: false) @Default(false) bool isLiked,
    @JsonKey(name: 'reply_count') @Default(0) int replyCount,
  }) = _CommentModel;

  factory CommentModel.fromJson(Map<String, dynamic> json) =>
      _$CommentModelFromJson(json);

  /// Converts to domain entity.
  CommentEntity toEntity() {
    return CommentEntity(
      id: id,
      postId: postId,
      userId: userId,
      content: content,
      createdAt: createdAt,
      userFullName: userFullName,
      userPhotoUrl: userPhotoUrl,
      parentCommentId: parentCommentId,
      replies: replies.map((r) => r.toEntity()).toList(),
      likesCount: likesCount,
      isLiked: isLiked,
      replyCount: replyCount,
      repliesLoaded: replies.isNotEmpty,
    );
  }

  /// Converts to insert payload.
  Map<String, dynamic> toInsertJson() {
    final payload = <String, dynamic>{
      'post_id': postId,
      'user_id': userId,
      'content': content,
      'parent_comment_id': parentCommentId,
      'user_full_name': userFullName,
      'user_photo_url': userPhotoUrl,
    };
    payload.removeWhere((key, value) => value == null);
    return payload;
  }

  /// Creates from domain entity.
  factory CommentModel.fromEntity(CommentEntity entity) {
    return CommentModel(
      id: entity.id,
      postId: entity.postId,
      userId: entity.userId,
      content: entity.content,
      createdAt: entity.createdAt,
      userFullName: entity.userFullName,
      userPhotoUrl: entity.userPhotoUrl,
      parentCommentId: entity.parentCommentId,
      replies: entity.replies.map((r) => CommentModel.fromEntity(r)).toList(),
      likesCount: entity.likesCount,
      isLiked: entity.isLiked,
      replyCount: entity.replyCount,
    );
  }
}
