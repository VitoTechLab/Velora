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
import 'feed_remote_datasource.dart';

/// Implementation of [FeedRemoteDataSource] using Supabase.
class FeedRemoteDataSourceImpl implements FeedRemoteDataSource {
  FeedRemoteDataSourceImpl({required SupabaseClient supabaseClient})
    : _client = supabaseClient;

  final SupabaseClient _client;
  RealtimeChannel? _channel;
  StreamController<CommentModel>? _commentStreamController;

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
          query = query.lt('created_at', iso);
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

        // Atomic toggle using database function (no race condition)
        await _client.rpc(
          SupabaseRpc.togglePostLike,
          params: {'p_post_id': postId, 'p_user_id': userId},
        );
      },
      op: 'toggleLikePost',
      tag: _logTag,
    );
  }

  @override
  Future<void> toggleBookmarkPost(String postId) {
    return guardSupabase(
      () async {
        final userId = _requireUserId();

        // Atomic toggle using database function (no race condition)
        await _client.rpc(
          SupabaseRpc.togglePostBookmark,
          params: {'p_post_id': postId, 'p_user_id': userId},
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
        // Fetch only ROOT comments (parent_comment_id is null)
        // Replies are loaded on-demand via getReplies()
        var query = _client
            .from(SupabaseTables.feedComments)
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
            .from(SupabaseTables.feedComments)
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

        final response = await _client
            .from(SupabaseTables.feedComments)
            .insert(payload)
            .select()
            .single();

        return CommentModel.fromJson(response);
      },
      op: 'addComment',
      tag: _logTag,
    );
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
        final userId = _requireUserId();

        // Atomic toggle using database function (no race condition)
        await _client.rpc(
          SupabaseRpc.toggleCommentLike,
          params: {'p_comment_id': commentId, 'p_user_id': userId},
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
          callback: (payload) {
            try {
              final comment = CommentModel.fromJson(payload.newRecord);
              controller.add(comment);
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
}
