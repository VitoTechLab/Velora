import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:velora/core/errors/exceptions.dart';
import 'package:velora/core/supabase/supabase_constants.dart';
import 'package:velora/core/supabase/supabase_guard.dart';
import 'package:velora/core/utils/log_alias.dart';
import 'package:velora/features/feed/data/models/feed_model.dart';
import 'package:velora/features/post/data/datasources/post_remote_datasource.dart';
import 'package:velora/features/post/data/models/create_post_model.dart';

class PostRemoteDataSourceImpl implements PostRemoteDataSource {
  PostRemoteDataSourceImpl({required SupabaseClient supabaseClient})
    : _client = supabaseClient;

  final SupabaseClient _client;

  static const _logTag = 'PostRemoteDataSource';

  @override
  Future<FeedModel> createPost(CreatePostModel payload) {
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
            .insert(payload.toJson())
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

        return FeedModel.fromJson(response);
      },
      op: 'createPost',
      tag: _logTag,
    );
  }
}
