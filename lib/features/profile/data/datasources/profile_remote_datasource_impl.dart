import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:velora/core/errors/exceptions.dart';
import 'package:velora/core/supabase/supabase_constants.dart';
import 'package:velora/core/supabase/supabase_guard.dart';
import 'package:velora/core/utils/log_alias.dart';
import 'package:velora/features/profile/data/models/user_profile_model.dart';
import 'profile_remote_datasource.dart';

class ProfileRemoteDataSourceImpl implements ProfileRemoteDataSource {
  final SupabaseClient _client;
  static const _logTag = 'ProfileRemoteDataSource';

  ProfileRemoteDataSourceImpl({required SupabaseClient supabaseClient})
    : _client = supabaseClient;

  String _requireUserId() {
    final userId = _client.auth.currentUser?.id;
    if (userId == null) throw UnauthenticatedException();
    return userId;
  }

  @override
  Future<UserProfileModel> getProfile(String userId) {
    return guardSupabase(
      () async {
        final currentUserId = _client.auth.currentUser?.id;
        logi(
          'Fetching profile - Requested userId=$userId, Auth userId=$currentUserId, Match=${userId == currentUserId}',
          tag: _logTag,
        );

        final response = await _client
            .from(SupabaseTables.userProfileHeaderView)
            .select()
            .eq('id', userId)
            .maybeSingle();

        if (response == null) {
          loge(
            'getProfile failed: user not found for userId=$userId (Auth userId=$currentUserId)',
            tag: _logTag,
          );
          throw NotFoundException('User profile not found');
        }

        logi(
          'getProfile success: userId=$userId, username=${response['username']}',
          tag: _logTag,
        );
        return UserProfileModel.fromJson(response);
      },
      op: 'getProfile',
      tag: _logTag,
    );
  }

  @override
  Future<void> toggleFollow(String targetUserId, {required bool isPrivate}) {
    return guardSupabase(
      () async {
        final userId = _requireUserId();
        logi(
          'Toggling follow for targetUserId=$targetUserId, isPrivate=$isPrivate',
          tag: _logTag,
        );

        if (isPrivate) {
          // Handle Follow Requests for private accounts
          final existingRequest = await _client
              .from(SupabaseTables.userFollowRequests)
              .select()
              .eq('requester_id', userId)
              .eq('target_id', targetUserId)
              .maybeSingle();

          if (existingRequest != null) {
            await _client
                .from(SupabaseTables.userFollowRequests)
                .delete()
                .eq('requester_id', userId)
                .eq('target_id', targetUserId);
          } else {
            await _client.from(SupabaseTables.userFollowRequests).insert({
              'requester_id': userId,
              'target_id': targetUserId,
              'status': 'pending',
            });
          }
        } else {
          // Handle Follow for public accounts
          final existingFollow = await _client
              .from(SupabaseTables.userFollows)
              .select()
              .eq('follower_id', userId)
              .eq('following_id', targetUserId)
              .maybeSingle();

          if (existingFollow != null) {
            await _client
                .from(SupabaseTables.userFollows)
                .delete()
                .eq('follower_id', userId)
                .eq('following_id', targetUserId);
          } else {
            await _client.from(SupabaseTables.userFollows).insert({
              'follower_id': userId,
              'following_id': targetUserId,
            });
          }
        }
      },
      op: 'toggleFollow',
      tag: _logTag,
    );
  }

  @override
  Future<void> blockUser(String targetUserId) {
    return guardSupabase(
      () async {
        final userId = _requireUserId();
        logi('Blocking user targetUserId=$targetUserId', tag: _logTag);
        await _client.from(SupabaseTables.userBlocks).insert({
          'blocker_id': userId,
          'blocked_id': targetUserId,
        });
      },
      op: 'blockUser',
      tag: _logTag,
    );
  }

  @override
  Future<void> unblockUser(String targetUserId) {
    return guardSupabase(
      () async {
        final userId = _requireUserId();
        logi('Unblocking user targetUserId=$targetUserId', tag: _logTag);
        await _client
            .from(SupabaseTables.userBlocks)
            .delete()
            .eq('blocker_id', userId)
            .eq('blocked_id', targetUserId);
      },
      op: 'unblockUser',
      tag: _logTag,
    );
  }
}
