import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:velora/core/errors/exceptions.dart';
import 'package:velora/core/supabase/supabase_guard.dart';
import 'package:velora/core/supabase/supabase_constants.dart';
import 'package:velora/core/utils/log_alias.dart';
import 'package:velora/features/mention/data/models/mention_model.dart';
import 'package:velora/features/mention/data/datasources/mention_remote_datasource.dart';

/// Implementation of [MentionRemoteDataSource] using Supabase.
class MentionRemoteDataSourceImpl implements MentionRemoteDataSource {
  MentionRemoteDataSourceImpl({required SupabaseClient supabaseClient})
      : _client = supabaseClient;

  final SupabaseClient _client;

  static const _logTag = 'MentionRemoteDataSource';

  String _requireUserId() {
    final userId = _client.auth.currentUser?.id;
    if (userId == null) {
      throw UnauthenticatedException();
    }
    return userId;
  }

  @override
  Future<List<MentionModel>> getMyMentions({
    int page = 1,
    int limit = 20,
  }) {
    return guardSupabase(
      () async {
        final userId = _requireUserId();
        final from = (page - 1) * limit;
        final to = from + limit - 1;

        logi('Fetching mentions for user=$userId, page=$page', tag: _logTag);

        // Efficient query: Select only needed fields and join profile for creator info
        final response = await _client
            .from(SupabaseTables.mentions)
            .select('''
              id,
              user_id,
              created_by,
              entity_type,
              entity_id,
              created_at,
              creator_profile:created_by (
                username,
                full_name,
                avatar_url
              )
            ''')
            .eq('user_id', userId)
            .order('created_at', ascending: false)
            .range(from, to);

        return (response as List)
            .map((json) => MentionModel.fromJson(json))
            .toList();
      },
      op: 'getMyMentions',
      tag: _logTag,
    );
  }

  @override
  Future<List<MentionModel>> getMentionsForEntity({
    required String entityType,
    required String entityId,
  }) {
    return guardSupabase(
      () async {
        logi(
          'Fetching mentions for entity=$entityType, id=$entityId',
          tag: _logTag,
        );

        final response = await _client.from(SupabaseTables.mentions).select('''
              id,
              user_id,
              created_by,
              entity_type,
              entity_id,
              created_at
            ''').eq('entity_type', entityType).eq('entity_id', entityId);

        return (response as List)
            .map((json) => MentionModel.fromJson(json))
            .toList();
      },
      op: 'getMentionsForEntity',
      tag: _logTag,
    );
  }
}
