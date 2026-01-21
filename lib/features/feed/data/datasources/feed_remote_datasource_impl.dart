import 'dart:async';

import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:velora/core/errors/exceptions.dart';
import 'package:velora/core/supabase/supabase_guard.dart';
import 'package:velora/core/supabase/supabase_constants.dart';
import 'package:velora/core/utils/log_alias.dart';
import 'package:velora/features/feed/data/models/comment_cursor_model.dart';
import 'package:velora/features/feed/data/models/comment_model.dart';
import 'package:velora/features/feed/data/models/comment_pagination_model.dart';
import 'package:velora/features/feed/data/models/feed_cursor_model.dart';
import 'package:velora/features/feed/data/models/feed_model.dart';
import 'package:velora/features/feed/data/models/feed_pagination_model.dart';
import 'package:velora/features/feed/data/models/update_feed_model.dart';
import 'package:velora/features/feed/data/services/feed_notification_service.dart';
import 'feed_remote_datasource.dart';

/// Implementation of [FeedRemoteDataSource] using Supabase.
class FeedRemoteDataSourceImpl implements FeedRemoteDataSource {
  FeedRemoteDataSourceImpl({
    required SupabaseClient supabaseClient,
    required FeedNotificationService notificationService,
  })  : _client = supabaseClient,
        _notificationService = notificationService;

  final SupabaseClient _client;
  final FeedNotificationService _notificationService;
  RealtimeChannel? _channel;
  StreamController<CommentModel>? _commentStreamController;
  RealtimeChannel? _feedChannel;
  StreamController<FeedModel>? _feedStreamController;

  static const _logTag = 'FeedRemoteDataSource';

  String _requireUserId() {
    final userId = _client.auth.currentUser?.id;
    if (userId == null) {
      throw UnauthenticatedException();
    }
    return userId;
  }

  @override
  Future<FeedModel> getPostById(String postId) {
    return guardSupabase(
      () async {
        logi('Fetching post id=$postId', tag: _logTag);

        final response = await _client
            .from(SupabaseTables.feedPostsView)
            .select()
            .filter('id', 'eq', postId)
            .maybeSingle();

        if (response == null) throw NotFoundException('Post not found');
        return FeedModel.fromJson(response);
      },
      op: 'getPostById',
      tag: _logTag,
    );
  }

  @override
  Future<FeedModel> updatePost(String postId, UpdateFeedModel payload) {
    return guardSupabase(
      () async {
        logi('Updating post id=$postId', tag: _logTag);

        await _client
            .from(SupabaseTables.feedPosts)
            .update(payload.toJson())
            .filter('id', 'eq', postId);

        return getPostById(postId);
      },
      op: 'updatePost',
      tag: _logTag,
    );
  }

  @override
  Future<void> deletePost(String postId) {
    return guardSupabase(
      () async {
        logi('Deleting post id=$postId', tag: _logTag);
        await _client
            .from(SupabaseTables.feedPosts)
            .delete()
            .filter('id', 'eq', postId);
      },
      op: 'deletePost',
      tag: _logTag,
    );
  }

  @override
  Future<FeedPaginationModel> getFeed({
    int limit = 20,
    FeedCursorModel? cursor,
    String? userId,
  }) {
    return guardSupabase(
      () async {
        var query = _client.from(SupabaseTables.feedPostsView).select();

        if (userId != null) {
          query = query.filter('user_id', 'eq', userId);
        }

        if (cursor != null) {
          final iso = cursor.createdAt.toUtc().toIso8601String();
          query = query.or(
            'created_at.lt.$iso,and(created_at.eq.$iso,id.lt.${cursor.id})',
          );
        }

        final response = await query
            .order('created_at', ascending: false)
            .order('id', ascending: false)
            .limit(limit + 1);

        final all = (response as List)
            .map((e) => FeedModel.fromJson(e))
            .toList();

        final hasMore = all.length > limit;
        final posts = hasMore ? all.sublist(0, limit) : all;

        final nextCursor = posts.isEmpty
            ? null
            : FeedCursorModel(createdAt: posts.last.createdAt, id: posts.last.id);

        return FeedPaginationModel(
          posts: posts,
          hasMore: hasMore,
          nextCursor: nextCursor,
        );
      },
      op: 'getFeed',
      tag: _logTag,
    );
  }

  @override
  Future<void> toggleLikePost(String postId) {
    return guardSupabase(
      () async {
        final userId = _requireUserId();

        // Fetch post details first to check current like status and get author info
        final postData = await _client
            .from(SupabaseTables.feedPostsView)
            .select('user_id, username, is_liked, media_urls')
            .eq('id', postId)
            .maybeSingle();

        if (postData == null) {
          throw NotFoundException('Post not found');
        }

        final postAuthorId = postData['user_id'] as String;
        final postAuthorUsername = postData['username'] as String?;
        final wasLiked = postData['is_liked'] as bool? ?? false;
        final mediaUrls = postData['media_urls'] as List<dynamic>?;
        final firstImageUrl = mediaUrls?.isNotEmpty == true 
            ? mediaUrls!.first as String? 
            : null;

        // Atomic toggle using database function (uses auth.uid() internally)
        await _client.rpc(
          SupabaseRpc.togglePostLike,
          params: {'p_post_id': postId},
        );

        // Send notification only if this is a NEW like (not unlike)
        if (!wasLiked && postAuthorId != userId) {
          // Fetch current user's username for notification
          final currentUserData = await _client
              .from(SupabaseTables.userProfiles)
              .select('username')
              .eq('id', userId)
              .maybeSingle();

          final currentUsername = currentUserData?['username'] as String? ?? 'Someone';

          // Send notification asynchronously (fire and forget)
          _notificationService.sendPostLikeNotification(
            postAuthorId: postAuthorId,
            likerUserId: userId,
            likerUsername: currentUsername,
            postId: postId,
            postImageUrl: firstImageUrl,
          );
        }
      },
      op: 'toggleLikePost',
      tag: _logTag,
    );
  }

  @override
  Future<void> toggleBookmarkPost(String postId) {
    return guardSupabase(
      () async {
        // Atomic toggle using database function (uses auth.uid() internally)
        await _client.rpc(
          SupabaseRpc.togglePostBookmark,
          params: {'p_post_id': postId},
        );
      },
      op: 'toggleBookmarkPost',
      tag: _logTag,
    );
  }

  @override
  Future<CommentPaginationModel> getComments({
    required String postId,
    int limit = 20,
    CommentCursorModel? cursor,
  }) {
    return guardSupabase(
      () async {
        var query = _client
            .from(SupabaseTables.feedCommentsView)
            .select()
            .filter('post_id', 'eq', postId)
            .isFilter('parent_comment_id', null);

        if (cursor != null) {
          final iso = cursor.createdAt.toUtc().toIso8601String();
          query = query.or(
            'created_at.lt.$iso,and(created_at.eq.$iso,id.lt.${cursor.id})',
          );
        }

        final response = await query
            .order('created_at', ascending: false)
            .order('id', ascending: false)
            .limit(limit + 1);

        final allRoots = (response as List)
            .map((e) => CommentModel.fromJson(e))
            .toList();

        final hasMore = allRoots.length > limit;
        final roots = hasMore ? allRoots.sublist(0, limit) : allRoots;

        final nextCursor = roots.isEmpty
            ? null
            : CommentCursorModel(
                createdAt: roots.last.createdAt,
                id: roots.last.id,
              );

        return CommentPaginationModel(
          comments: roots,
          hasMore: hasMore,
          nextCursor: nextCursor,
        );
      },
      op: 'getComments',
      tag: _logTag,
    );
  }

  @override
  Future<List<CommentModel>> getReplies({
    required String parentCommentId,
  }) {
    return guardSupabase(
      () async {
        logi('Fetching replies for comment=$parentCommentId', tag: _logTag);

        final response = await _client
            .from(SupabaseTables.feedCommentsView)
            .select()
            .filter('parent_comment_id', 'eq', parentCommentId)
            .order('created_at', ascending: true);

        return (response as List)
            .map((e) => CommentModel.fromJson(e))
            .toList();
      },
      op: 'getReplies',
      tag: _logTag,
    );
  }

  @override
  Future<CommentModel> addComment({
    required String postId,
    required String content,
    String? parentCommentId,
  }) {
    return guardSupabase(
      () async {
        final userId = _requireUserId();
        final payload = {
          'post_id': postId,
          'user_id': userId,
          'content': content,
          'parent_comment_id': parentCommentId,
        };

        final insertResponse = await _client
            .from(SupabaseTables.feedComments)
            .insert(payload)
            .select('id')
            .single();

        final commentId = insertResponse['id'] as String;

        final commentData = await _client
            .from(SupabaseTables.feedCommentsView)
            .select()
            .eq('id', commentId)
            .single();

        final comment = CommentModel.fromJson(commentData);

        if (parentCommentId == null) {
          _sendPostCommentNotification(
            postId: postId,
            commentId: comment.id,
            commentText: content,
            commenterId: userId,
          );
        } else {
          _sendCommentReplyNotification(
            postId: postId,
            parentCommentId: parentCommentId,
            replyId: comment.id,
            replyText: content,
            replierId: userId,
          );
        }

        return comment;
      },
      op: 'addComment',
      tag: _logTag,
    );
  }

  /// Send notification for post comment (internal helper)
  Future<void> _sendPostCommentNotification({
    required String postId,
    required String commentId,
    required String commentText,
    required String commenterId,
  }) async {
    try {
      // Fetch post author and commenter info
      final postData = await _client
          .from(SupabaseTables.feedPostsView)
          .select('user_id, media_urls')
          .eq('id', postId)
          .maybeSingle();

      if (postData == null) return;

      final postAuthorId = postData['user_id'] as String;
      
      // Don't notify if commenting on own post
      if (postAuthorId == commenterId) return;

      final mediaUrls = postData['media_urls'] as List<dynamic>?;
      final firstImageUrl = mediaUrls?.isNotEmpty == true 
          ? mediaUrls!.first as String? 
          : null;

      // Fetch commenter username
      final commenterData = await _client
          .from(SupabaseTables.userProfiles)
          .select('username')
          .eq('id', commenterId)
          .maybeSingle();

      final commenterUsername = commenterData?['username'] as String? ?? 'Someone';

      await _notificationService.sendPostCommentNotification(
        postAuthorId: postAuthorId,
        commenterId: commenterId,
        commenterUsername: commenterUsername,
        postId: postId,
        commentId: commentId,
        commentText: commentText,
        postImageUrl: firstImageUrl,
      );
    } catch (e) {
      loge('Failed to send post comment notification', error: e, tag: _logTag);
      // Don't throw - notification failure shouldn't break the comment
    }
  }

  /// Send notification for comment reply (internal helper)
  Future<void> _sendCommentReplyNotification({
    required String postId,
    required String parentCommentId,
    required String replyId,
    required String replyText,
    required String replierId,
  }) async {
    try {
      // Fetch original comment author info
      final commentData = await _client
          .from(SupabaseTables.feedComments)
          .select('user_id')
          .eq('id', parentCommentId)
          .maybeSingle();

      if (commentData == null) return;

      final originalCommenterId = commentData['user_id'] as String;
      
      // Don't notify if replying to own comment
      if (originalCommenterId == replierId) return;

      // Fetch replier username
      final replierData = await _client
          .from(SupabaseTables.userProfiles)
          .select('username')
          .eq('id', replierId)
          .maybeSingle();

      final replierUsername = replierData?['username'] as String? ?? 'Someone';

      await _notificationService.sendCommentReplyNotification(
        originalCommenterId: originalCommenterId,
        replierId: replierId,
        replierUsername: replierUsername,
        postId: postId,
        commentId: parentCommentId,
        replyId: replyId,
        replyText: replyText,
      );
    } catch (e) {
      loge('Failed to send comment reply notification', error: e, tag: _logTag);
      // Don't throw - notification failure shouldn't break the reply
    }
  }

  @override
  Future<void> deleteComment(String commentId) {
    return guardSupabase(
      () async {
        await _client
            .from(SupabaseTables.feedComments)
            .delete()
            .filter('id', 'eq', commentId);
      },
      op: 'deleteComment',
      tag: _logTag,
    );
  }

  @override
  Future<void> toggleLikeComment(String commentId) {
    return guardSupabase(
      () async {
        // Atomic toggle using database function (uses auth.uid() internally)
        await _client.rpc(
          SupabaseRpc.toggleCommentLike,
          params: {'p_comment_id': commentId},
        );
      },
      op: 'toggleLikeComment',
      tag: _logTag,
    );
  }

  @override
  Stream<CommentModel> watchNewComments({required String postId}) {
    final previousController = _commentStreamController;
    if (previousController != null && !previousController.isClosed) {
      unawaited(previousController.close());
    }
    _commentStreamController = null;

    final controller = StreamController<CommentModel>.broadcast();
    _commentStreamController = controller;

    unawaited(_channel?.unsubscribe());

    _channel = _client
        .channel('comments:$postId')
        .onPostgresChanges(
          event: PostgresChangeEvent.insert,
          schema: 'public',
          table: SupabaseTables.feedComments,
          filter: PostgresChangeFilter(
            type: PostgresChangeFilterType.eq,
            column: 'post_id',
            value: postId,
          ),
          callback: (payload) async {
            try {
              final commentId = payload.newRecord['id'] as String;
              final commentData = await _client
                  .from(SupabaseTables.feedCommentsView)
                  .select()
                  .eq('id', commentId)
                  .maybeSingle();

              if (commentData != null) {
                final comment = CommentModel.fromJson(commentData);
                controller.add(comment);
              }
            } catch (e, st) {
              controller.addError(e, st);
            }
          },
        )
        .subscribe();

    controller.onCancel = () async {
      await _channel?.unsubscribe();
      _channel = null;
      _commentStreamController = null;
    };

    return controller.stream;
  }

  @override
  Future<void> stopWatch() async {
    await _channel?.unsubscribe();
    _channel = null;
    final controller = _commentStreamController;
    if (controller != null && !controller.isClosed) {
      await controller.close();
    }
    _commentStreamController = null;
  }

  @override
  Stream<FeedModel> watchFeedChanges() {
    final previousController = _feedStreamController;
    if (previousController != null && !previousController.isClosed) {
      unawaited(previousController.close());
    }
    _feedStreamController = null;

    final controller = StreamController<FeedModel>.broadcast();
    _feedStreamController = controller;

    unawaited(_feedChannel?.unsubscribe());

    _feedChannel = _client
        .channel('feed:all')
        .onPostgresChanges(
          event: PostgresChangeEvent.insert,
          schema: 'public',
          table: SupabaseTables.feedPosts,
          callback: (payload) async {
            try {
              final postId = payload.newRecord['id'] as String;
              final post = await getPostById(postId);
              controller.add(post);
            } catch (e, st) {
              loge('Error fetching new post from realtime', error: e, tag: _logTag);
              controller.addError(e, st);
            }
          },
        )
        .onPostgresChanges(
          event: PostgresChangeEvent.update,
          schema: 'public',
          table: SupabaseTables.feedPosts,
          callback: (payload) async {
            try {
              final postId = payload.newRecord['id'] as String;
              final post = await getPostById(postId);
              controller.add(post);
            } catch (e, st) {
              loge('Error fetching updated post from realtime', error: e, tag: _logTag);
              controller.addError(e, st);
            }
          },
        )
        .subscribe();

    controller.onCancel = () async {
      await _feedChannel?.unsubscribe();
      _feedChannel = null;
      _feedStreamController = null;
    };

    return controller.stream;
  }

  @override
  Future<void> stopWatchFeed() async {
    await _feedChannel?.unsubscribe();
    _feedChannel = null;
    final controller = _feedStreamController;
    if (controller != null && !controller.isClosed) {
      await controller.close();
    }
    _feedStreamController = null;
  }
}
