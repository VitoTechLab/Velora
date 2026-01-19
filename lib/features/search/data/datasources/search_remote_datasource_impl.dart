import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:velora/core/supabase/supabase_constants.dart';
import 'package:velora/core/supabase/supabase_guard.dart';
import 'package:velora/core/utils/log_alias.dart';
import 'package:velora/features/search/data/datasources/search_remote_datasource.dart';
import 'package:velora/features/search/data/models/search_campaign_result_model.dart';
import 'package:velora/features/search/data/models/search_user_result_model.dart';

class SearchRemoteDataSourceImpl implements SearchRemoteDataSource {
  SearchRemoteDataSourceImpl({required SupabaseClient supabaseClient})
      : _client = supabaseClient;

  final SupabaseClient _client;

  static const _logTag = 'SearchRemoteDataSource';

  @override
  Future<List<SearchUserResultModel>> searchUsers({
    required String query,
    String scope = 'global',
    int limit = 10,
  }) {
    return guardSupabase(
      () async {
        final cleanQuery = query.trim();
        if (cleanQuery.isEmpty) return <SearchUserResultModel>[];

        logi(
          'searchUsers query="$cleanQuery" scope=$scope limit=$limit',
          tag: _logTag,
        );

        final response = await _client.rpc(
          SupabaseRpc.searchUsers,
          params: {
            'query_text': cleanQuery,
            'search_scope': scope,
            'limit_count': limit,
          },
        ) as List<dynamic>;

        return response
            .map((e) => SearchUserResultModel.fromJson(
                  Map<String, dynamic>.from(e as Map),
                ))
            .toList();
      },
      op: 'searchUsers',
      tag: _logTag,
    );
  }

  @override
  Future<List<SearchCampaignResultModel>> searchCampaigns({
    required String query,
    String? categoryId,
    int limit = 10,
  }) {
    return guardSupabase(
      () async {
        final cleanQuery = query.trim();
        if (cleanQuery.isEmpty) return <SearchCampaignResultModel>[];

        logi(
          'searchCampaigns query="$cleanQuery" categoryId=$categoryId limit=$limit',
          tag: _logTag,
        );

        final params = <String, dynamic>{
          'query_text': cleanQuery,
          'limit_count': limit,
        };
        if (categoryId != null && categoryId.isNotEmpty) {
          params['p_category_id'] = categoryId;
        }

        final response = await _client.rpc(
          SupabaseRpc.searchCampaigns,
          params: params,
        ) as List<dynamic>;

        return response
            .map((e) => SearchCampaignResultModel.fromJson(
                  Map<String, dynamic>.from(e as Map),
                ))
            .toList();
      },
      op: 'searchCampaigns',
      tag: _logTag,
    );
  }
}
