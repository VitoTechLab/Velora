import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:velora/core/utils/log_alias.dart';

/// Service for sending post-related notifications via Supabase Edge Functions
class FeedNotificationService {
  FeedNotificationService({required SupabaseClient supabaseClient})
      : _client = supabaseClient;

  final SupabaseClient _client;

  static const _logTag = 'FeedNotificationService';
  static const _functionName = 'send-notification';

  /// Send notification when a user likes a post
  Future<void> sendPostLikeNotification({
    required String postAuthorId,
    required String likerUserId,
    required String likerUsername,
    required String postId,
    String? postImageUrl,
  }) async {
    // Don't send notification if user likes their own post
    if (postAuthorId == likerUserId) {
      logi('Skipping notification: user liked their own post', tag: _logTag);
      return;
    }

    try {
      logi(
        'Sending like notification: postId=$postId, liker=$likerUsername',
        tag: _logTag,
      );

      await _client.functions.invoke(
        _functionName,
        body: {
          'userId': postAuthorId,
          'type': 'post_like',
          'title': 'New Like',
          'body': '$likerUsername liked your post',
          'data': {
            'postId': postId,
            'likerId': likerUserId,
            'likerUsername': likerUsername,
            'type': 'post_like',
          },
          if (postImageUrl != null) 'imageUrl': postImageUrl,
          'priority': 'normal',
        },
      );

      logi('Like notification sent successfully', tag: _logTag);
    } catch (e) {
      loge('Failed to send like notification', error: e, tag: _logTag);
      // Don't throw - notification failure shouldn't break the like action
    }
  }

  /// Send notification when a user comments on a post
  Future<void> sendPostCommentNotification({
    required String postAuthorId,
    required String commenterId,
    required String commenterUsername,
    required String postId,
    required String commentId,
    required String commentText,
    String? postImageUrl,
  }) async {
    // Don't send notification if user comments on their own post
    if (postAuthorId == commenterId) {
      logi('Skipping notification: user commented on their own post',
          tag: _logTag);
      return;
    }

    try {
      logi(
        'Sending comment notification: postId=$postId, commenter=$commenterUsername',
        tag: _logTag,
      );

      // Truncate comment text for notification
      final truncatedText =
          commentText.length > 100 ? '${commentText.substring(0, 97)}...' : commentText;

      await _client.functions.invoke(
        _functionName,
        body: {
          'userId': postAuthorId,
          'type': 'post_comment',
          'title': 'New Comment',
          'body': '$commenterUsername: $truncatedText',
          'data': {
            'postId': postId,
            'commentId': commentId,
            'commenterId': commenterId,
            'commenterUsername': commenterUsername,
            'type': 'post_comment',
          },
          if (postImageUrl != null) 'imageUrl': postImageUrl,
          'priority': 'normal',
        },
      );

      logi('Comment notification sent successfully', tag: _logTag);
    } catch (e) {
      loge('Failed to send comment notification', error: e, tag: _logTag);
      // Don't throw - notification failure shouldn't break the comment action
    }
  }

  /// Send notification when a user replies to a comment
  Future<void> sendCommentReplyNotification({
    required String originalCommenterId,
    required String replierId,
    required String replierUsername,
    required String postId,
    required String commentId,
    required String replyId,
    required String replyText,
  }) async {
    // Don't send notification if user replies to their own comment
    if (originalCommenterId == replierId) {
      logi('Skipping notification: user replied to their own comment',
          tag: _logTag);
      return;
    }

    try {
      logi(
        'Sending reply notification: commentId=$commentId, replier=$replierUsername',
        tag: _logTag,
      );

      // Truncate reply text for notification
      final truncatedText =
          replyText.length > 100 ? '${replyText.substring(0, 97)}...' : replyText;

      await _client.functions.invoke(
        _functionName,
        body: {
          'userId': originalCommenterId,
          'type': 'comment_reply',
          'title': 'New Reply',
          'body': '$replierUsername replied: $truncatedText',
          'data': {
            'postId': postId,
            'commentId': commentId,
            'replyId': replyId,
            'replierId': replierId,
            'replierUsername': replierUsername,
            'type': 'comment_reply',
          },
          'priority': 'normal',
        },
      );

      logi('Reply notification sent successfully', tag: _logTag);
    } catch (e) {
      loge('Failed to send reply notification', error: e, tag: _logTag);
      // Don't throw - notification failure shouldn't break the reply action
    }
  }

  /// Send notification when a user mentions someone in a comment
  Future<void> sendMentionNotification({
    required String mentionedUserId,
    required String mentionerUserId,
    required String mentionerUsername,
    required String postId,
    required String commentId,
    required String commentText,
  }) async {
    // Don't send notification if user mentions themselves
    if (mentionedUserId == mentionerUserId) {
      return;
    }

    try {
      logi(
        'Sending mention notification: mentionedUser=$mentionedUserId',
        tag: _logTag,
      );

      // Truncate comment text for notification
      final truncatedText =
          commentText.length > 100 ? '${commentText.substring(0, 97)}...' : commentText;

      await _client.functions.invoke(
        _functionName,
        body: {
          'userId': mentionedUserId,
          'type': 'mention',
          'title': 'You were mentioned',
          'body': '$mentionerUsername mentioned you: $truncatedText',
          'data': {
            'postId': postId,
            'commentId': commentId,
            'mentionerId': mentionerUserId,
            'mentionerUsername': mentionerUsername,
            'type': 'mention',
          },
          'priority': 'normal',
        },
      );

      logi('Mention notification sent successfully', tag: _logTag);
    } catch (e) {
      loge('Failed to send mention notification', error: e, tag: _logTag);
      // Don't throw - notification failure shouldn't break the comment action
    }
  }
}
