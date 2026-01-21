import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:velora/core/errors/exceptions.dart';
import 'package:velora/core/supabase/supabase_constants.dart';
import 'package:velora/core/supabase/supabase_guard.dart';
import 'package:velora/core/utils/log_alias.dart';
import 'package:velora/features/feed/data/models/feed_model.dart';
import 'package:velora/features/feed/data/services/feed_notification_service.dart';
import 'package:velora/features/post/data/datasources/post_remote_datasource.dart';
import 'package:velora/features/post/data/models/post_feed_model.dart';

/// Implementation of post remote datasource using Supabase
class PostRemoteDataSourceImpl implements PostRemoteDataSource {
  const PostRemoteDataSourceImpl({
    required SupabaseClient supabaseClient,
    required FeedNotificationService notificationService,
  })  : _client = supabaseClient,
        _notificationService = notificationService;

  final SupabaseClient _client;
  final FeedNotificationService _notificationService;

  static const _logTag = 'PostRemoteDataSource';

  /// Create new feed post and return created post data
  @override
  Future<FeedModel> createFeedPost(PostFeedModel payload) {
    return guardSupabase(
      () async {
        // Get current authenticated user
        final currentUser = _client.auth.currentUser;
        final authUid = currentUser?.id;

        logi(
          'Creating post:\n'
          '  payload.userId = ${payload.userId}\n'
          '  auth.uid() = $authUid\n'
          '  user authenticated = ${currentUser != null}\n'
          '  match = ${payload.userId == authUid}',
          tag: _logTag,
        );

        final inserted = await _client
            .from(SupabaseTables.feedPosts)
            .insert(payload.toSupabaseJson())
            .select('id')
            .single();

        logi('Post created with id=${inserted['id']}', tag: _logTag);

        final response = await _client
            .from(SupabaseTables.feedPostsView)
            .select()
            .eq('id', inserted['id'])
            .maybeSingle();

        if (response == null) {
          throw NotFoundException('Post not found after creation');
        }

        final feedModel = FeedModel.fromJson(response);

        // Send notification to followers (fire and forget)
        _sendNewPostNotificationToFollowers(
          postId: feedModel.id,
          postAuthorId: feedModel.userId,
          postAuthorUsername: feedModel.username ?? 'Someone',
          postContent: feedModel.content,
          postImageUrl:
              feedModel.mediaUrls.isNotEmpty ? feedModel.mediaUrls.first : null,
        );

        return feedModel;
      },
      op: 'createFeedPost',
      tag: _logTag,
    );
  }

  /// Send new post notification to all followers (internal helper)
  Future<void> _sendNewPostNotificationToFollowers({
    required String postId,
    required String postAuthorId,
    required String postAuthorUsername,
    String? postContent,
    String? postImageUrl,
  }) async {
    try {
      await _notificationService.sendNewPostNotification(
        postAuthorId: postAuthorId,
        postAuthorUsername: postAuthorUsername,
        postId: postId,
        postImageUrl: postImageUrl,
        postContent: postContent,
      );
    } catch (e) {
      loge('Failed to send new post notification', error: e, tag: _logTag);
      // Don't throw - notification failure shouldn't break post creation
    }
  }
}
