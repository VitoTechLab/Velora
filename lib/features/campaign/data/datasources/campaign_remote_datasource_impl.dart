import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:velora/core/supabase/supabase_guard.dart';
import 'package:velora/core/utils/log_alias.dart';
import 'package:velora/features/campaign/data/datasources/campaign_remote_datasource.dart';
import 'package:velora/features/campaign/data/models/campaign_category_model.dart';
import 'package:velora/features/campaign/data/models/campaign_comment_model.dart';
import 'package:velora/features/campaign/data/models/campaign_model.dart';
import 'package:velora/features/campaign/data/models/campaign_update_model.dart';
import 'package:velora/features/campaign/data/models/donation_model.dart';
import 'package:velora/features/campaign/data/models/withdrawal_model.dart';

class CampaignRemoteDataSourceImpl implements CampaignRemoteDataSource {
  CampaignRemoteDataSourceImpl({required SupabaseClient supabaseClient})
      : _client = supabaseClient;

  final SupabaseClient _client;
  static const _logTag = 'CampaignDataSource';

  // Table names
  static const _campaigns = 'campaigns';
  static const _categories = 'campaign_categories';
  static const _donations = 'donations';
  static const _updates = 'campaign_updates';
  static const _comments = 'campaign_comments';
  static const _withdrawals = 'campaign_withdrawals';

  // ============================================
  // CAMPAIGNS
  // ============================================
  @override
  Future<CampaignModel> createCampaign(CampaignModel model) {
    return guardSupabase(
      () async {
        logi('Creating campaign: ${model.title}', tag: _logTag);
        final response = await _client
            .from(_campaigns)
            .insert(model.toInsertMap())
            .select()
            .single();
        return CampaignModel.fromJson(response);
      },
      op: 'createCampaign',
      tag: _logTag,
    );
  }

  @override
  Future<CampaignModel?> getCampaignById(String id) {
    return guardSupabase(
      () async {
        logi('Getting campaign by id: $id', tag: _logTag);
        final response = await _client.from(_campaigns).select('''
              *,
              user_profiles(username, avatar_url),
              campaign_categories(name, slug)
            ''').eq('id', id).maybeSingle();
        if (response == null) return null;
        return _mapCampaignWithJoins(response);
      },
      op: 'getCampaignById',
      tag: _logTag,
    );
  }

  @override
  Future<List<CampaignModel>> getCampaignsByUser(String userId) {
    return guardSupabase(
      () async {
        logi('Getting campaigns by user: $userId', tag: _logTag);
        final response = await _client.from(_campaigns).select('''
              *,
              campaign_categories(name, slug)
            ''').eq('user_id', userId).order('created_at', ascending: false);
        return (response as List)
            .map((row) => _mapCampaignWithJoins(row))
            .toList();
      },
      op: 'getCampaignsByUser',
      tag: _logTag,
    );
  }

  @override
  Future<List<CampaignModel>> getAllCampaigns(
      {String? categoryId, int limit = 20}) {
    return guardSupabase(
      () async {
        logi('Getting all campaigns', tag: _logTag);
        var query = _client.from(_campaigns).select('''
              *,
              user_profiles(username, avatar_url),
              campaign_categories(name, slug)
            ''').eq('status', 'active');

        if (categoryId != null) {
          query = query.eq('category_id', categoryId);
        }

        final response =
            await query.order('created_at', ascending: false).limit(limit);
        return (response as List)
            .map((row) => _mapCampaignWithJoins(row))
            .toList();
      },
      op: 'getAllCampaigns',
      tag: _logTag,
    );
  }

  @override
  Future<List<CampaignModel>> searchCampaigns(String query,
      {String? categoryId, int limit = 10}) {
    return guardSupabase(
      () async {
        logi('Searching campaigns: $query', tag: _logTag);
        final response = await _client.rpc(
          'search_campaigns',
          params: {
            'query_text': query,
            'p_category_id': categoryId,
            'limit_count': limit,
          },
        );
        return (response as List)
            .map((row) => CampaignModel.fromJson(row))
            .toList();
      },
      op: 'searchCampaigns',
      tag: _logTag,
    );
  }

  @override
  Future<CampaignModel> updateCampaign(CampaignModel campaign) {
    return guardSupabase(
      () async {
        logi('Updating campaign: ${campaign.id}', tag: _logTag);
        final response = await _client
            .from(_campaigns)
            .update(campaign.toUpdateMap())
            .eq('id', campaign.id)
            .select()
            .single();
        return CampaignModel.fromJson(response);
      },
      op: 'updateCampaign',
      tag: _logTag,
    );
  }

  @override
  Future<void> deleteCampaign(String campaignId) {
    return guardSupabase(
      () async {
        logi('Deleting campaign: $campaignId', tag: _logTag);
        await _client.from(_campaigns).delete().eq('id', campaignId);
      },
      op: 'deleteCampaign',
      tag: _logTag,
    );
  }

  @override
  Future<CampaignModel> updateCampaignStatus(String campaignId, String status) {
    return guardSupabase(
      () async {
        logi('Updating campaign status: $campaignId -> $status', tag: _logTag);
        final data = <String, dynamic>{'status': status};
        if (status == 'completed') {
          data['completed_at'] = DateTime.now().toIso8601String();
        }
        final response = await _client
            .from(_campaigns)
            .update(data)
            .eq('id', campaignId)
            .select()
            .single();
        return CampaignModel.fromJson(response);
      },
      op: 'updateCampaignStatus',
      tag: _logTag,
    );
  }

  // ============================================
  // CATEGORIES
  // ============================================
  @override
  Future<List<CampaignCategoryModel>> getCategories() {
    return guardSupabase(
      () async {
        logi('Getting all categories', tag: _logTag);
        final response = await _client
            .from(_categories)
            .select()
            .eq('is_active', true)
            .order('name');
        return (response as List)
            .map((row) => CampaignCategoryModel.fromJson(row))
            .toList();
      },
      op: 'getCategories',
      tag: _logTag,
    );
  }

  @override
  Future<CampaignCategoryModel?> getCategoryById(String id) {
    return guardSupabase(
      () async {
        final response =
            await _client.from(_categories).select().eq('id', id).maybeSingle();
        if (response == null) return null;
        return CampaignCategoryModel.fromJson(response);
      },
      op: 'getCategoryById',
      tag: _logTag,
    );
  }

  @override
  Future<CampaignCategoryModel?> getCategoryBySlug(String slug) {
    return guardSupabase(
      () async {
        final response = await _client
            .from(_categories)
            .select()
            .eq('slug', slug)
            .maybeSingle();
        if (response == null) return null;
        return CampaignCategoryModel.fromJson(response);
      },
      op: 'getCategoryBySlug',
      tag: _logTag,
    );
  }

  // ============================================
  // DONATIONS
  // ============================================
  @override
  Future<DonationModel> createDonation(DonationModel donation) {
    return guardSupabase(
      () async {
        logi('Creating donation for campaign: ${donation.campaignId}',
            tag: _logTag);
        final response = await _client
            .from(_donations)
            .insert(donation.toInsertMap())
            .select()
            .single();
        return DonationModel.fromJson(response);
      },
      op: 'createDonation',
      tag: _logTag,
    );
  }

  @override
  Future<DonationModel?> getDonationById(String id) {
    return guardSupabase(
      () async {
        final response =
            await _client.from(_donations).select().eq('id', id).maybeSingle();
        if (response == null) return null;
        return DonationModel.fromJson(response);
      },
      op: 'getDonationById',
      tag: _logTag,
    );
  }

  @override
  Future<List<DonationModel>> getDonationsByCampaign(String campaignId,
      {int limit = 50}) {
    return guardSupabase(
      () async {
        logi('Getting donations for campaign: $campaignId', tag: _logTag);
        final response = await _client
            .from(_donations)
            .select('''
              *,
              user_profiles(username, display_name, avatar_url)
            ''')
            .eq('campaign_id', campaignId)
            .eq('payment_status', 'success')
            .order('created_at', ascending: false)
            .limit(limit);
        return (response as List)
            .map((row) => _mapDonationWithJoins(row))
            .toList();
      },
      op: 'getDonationsByCampaign',
      tag: _logTag,
    );
  }

  @override
  Future<List<DonationModel>> getDonationsByUser(String userId,
      {int limit = 50}) {
    return guardSupabase(
      () async {
        logi('Getting donations by user: $userId', tag: _logTag);
        final response = await _client
            .from(_donations)
            .select('''
              *,
              campaigns(title, image_url)
            ''')
            .eq('user_id', userId)
            .order('created_at', ascending: false)
            .limit(limit);
        return (response as List)
            .map((row) => DonationModel.fromJson(row))
            .toList();
      },
      op: 'getDonationsByUser',
      tag: _logTag,
    );
  }

  @override
  Future<DonationModel> updateDonationStatus(String donationId, String status,
      {String? paymentId}) {
    return guardSupabase(
      () async {
        logi('Updating donation status: $donationId -> $status', tag: _logTag);
        final data = <String, dynamic>{'payment_status': status};
        if (paymentId != null) {
          data['payment_id'] = paymentId;
        }
        final response = await _client
            .from(_donations)
            .update(data)
            .eq('id', donationId)
            .select()
            .single();
        return DonationModel.fromJson(response);
      },
      op: 'updateDonationStatus',
      tag: _logTag,
    );
  }

  // ============================================
  // CAMPAIGN UPDATES
  // ============================================
  @override
  Future<CampaignUpdateModel> addCampaignUpdate(CampaignUpdateModel update) {
    return guardSupabase(
      () async {
        logi('Adding campaign update', tag: _logTag);
        final response = await _client
            .from(_updates)
            .insert(update.toInsertMap())
            .select()
            .single();
        return CampaignUpdateModel.fromJson(response);
      },
      op: 'addCampaignUpdate',
      tag: _logTag,
    );
  }

  @override
  Future<List<CampaignUpdateModel>> getCampaignUpdates(String campaignId) {
    return guardSupabase(
      () async {
        logi('Getting campaign updates: $campaignId', tag: _logTag);
        final response = await _client
            .from(_updates)
            .select()
            .eq('campaign_id', campaignId)
            .order('created_at', ascending: false);
        return (response as List)
            .map((row) => CampaignUpdateModel.fromJson(row))
            .toList();
      },
      op: 'getCampaignUpdates',
      tag: _logTag,
    );
  }

  @override
  Future<void> deleteCampaignUpdate(
      {required String campaignId, required String updateId}) {
    return guardSupabase(
      () async {
        logi('Deleting campaign update: $updateId', tag: _logTag);
        await _client
            .from(_updates)
            .delete()
            .eq('campaign_id', campaignId)
            .eq('id', updateId);
      },
      op: 'deleteCampaignUpdate',
      tag: _logTag,
    );
  }

  // ============================================
  // COMMENTS
  // ============================================
  @override
  Future<CampaignCommentModel> addComment(CampaignCommentModel comment) {
    return guardSupabase(
      () async {
        logi('Adding campaign comment', tag: _logTag);
        final response = await _client
            .from(_comments)
            .insert(comment.toInsertMap())
            .select('''
              *,
              user_profiles!campaign_comments_user_id_fkey(username, display_name, avatar_url)
            ''').single();
        return _mapCommentWithJoins(response);
      },
      op: 'addComment',
      tag: _logTag,
    );
  }

  @override
  Future<List<CampaignCommentModel>> getCampaignComments(String campaignId,
      {bool includeReplies = false}) {
    return guardSupabase(
      () async {
        logi('Getting campaign comments: $campaignId', tag: _logTag);
        var query = _client.from(_comments).select('''
              *,
              user_profiles!campaign_comments_user_id_fkey(username, display_name, avatar_url)
            ''').eq('campaign_id', campaignId);

        if (!includeReplies) {
          query = query.isFilter('parent_id', null);
        }

        final response = await query.order('created_at', ascending: false);
        return (response as List)
            .map((row) => _mapCommentWithJoins(row))
            .toList();
      },
      op: 'getCampaignComments',
      tag: _logTag,
    );
  }

  @override
  Future<List<CampaignCommentModel>> getCommentReplies(String parentId) {
    return guardSupabase(
      () async {
        logi('Getting comment replies: $parentId', tag: _logTag);
        final response = await _client.from(_comments).select('''
              *,
              user_profiles!campaign_comments_user_id_fkey(username, display_name, avatar_url)
            ''').eq('parent_id', parentId).order('created_at');
        return (response as List)
            .map((row) => _mapCommentWithJoins(row))
            .toList();
      },
      op: 'getCommentReplies',
      tag: _logTag,
    );
  }

  @override
  Future<void> deleteComment(
      {required String campaignId, required String commentId}) {
    return guardSupabase(
      () async {
        logi('Deleting campaign comment: $commentId', tag: _logTag);
        await _client
            .from(_comments)
            .delete()
            .eq('campaign_id', campaignId)
            .eq('id', commentId);
      },
      op: 'deleteComment',
      tag: _logTag,
    );
  }

  // ============================================
  // WITHDRAWALS
  // ============================================
  @override
  Future<WithdrawalModel> requestWithdrawal(WithdrawalModel withdrawal) {
    return guardSupabase(
      () async {
        logi('Requesting withdrawal for campaign: ${withdrawal.campaignId}',
            tag: _logTag);
        final response = await _client
            .from(_withdrawals)
            .insert(withdrawal.toInsertMap())
            .select()
            .single();
        return WithdrawalModel.fromJson(response);
      },
      op: 'requestWithdrawal',
      tag: _logTag,
    );
  }

  @override
  Future<List<WithdrawalModel>> getWithdrawalsByCampaign(String campaignId) {
    return guardSupabase(
      () async {
        logi('Getting withdrawals for campaign: $campaignId', tag: _logTag);
        final response = await _client
            .from(_withdrawals)
            .select()
            .eq('campaign_id', campaignId)
            .order('created_at', ascending: false);
        return (response as List)
            .map((row) => WithdrawalModel.fromJson(row))
            .toList();
      },
      op: 'getWithdrawalsByCampaign',
      tag: _logTag,
    );
  }

  @override
  Future<List<WithdrawalModel>> getWithdrawalsByUser(String userId) {
    return guardSupabase(
      () async {
        logi('Getting withdrawals by user: $userId', tag: _logTag);
        final response = await _client
            .from(_withdrawals)
            .select()
            .eq('user_id', userId)
            .order('created_at', ascending: false);
        return (response as List)
            .map((row) => WithdrawalModel.fromJson(row))
            .toList();
      },
      op: 'getWithdrawalsByUser',
      tag: _logTag,
    );
  }

  @override
  Future<WithdrawalModel?> getWithdrawalById(String id) {
    return guardSupabase(
      () async {
        final response = await _client
            .from(_withdrawals)
            .select()
            .eq('id', id)
            .maybeSingle();
        if (response == null) return null;
        return WithdrawalModel.fromJson(response);
      },
      op: 'getWithdrawalById',
      tag: _logTag,
    );
  }

  // ============================================
  // HELPERS: Mapping Joined Data
  // ============================================
  CampaignModel _mapCampaignWithJoins(Map<String, dynamic> row) {
    final profile = row['user_profiles'] as Map<String, dynamic>?;
    final category = row['campaign_categories'] as Map<String, dynamic>?;

    return CampaignModel.fromJson({
      ...row,
      'organizer_username': profile?['username'],
      'organizer_avatar_url': profile?['avatar_url'],
      'category_name': category?['name'],
      'category_slug': category?['slug'],
    });
  }

  DonationModel _mapDonationWithJoins(Map<String, dynamic> row) {
    final profile = row['user_profiles'] as Map<String, dynamic>?;

    return DonationModel.fromJson({
      ...row,
      'donor_username': profile?['username'],
      'donor_display_name': profile?['display_name'],
      'donor_avatar_url': profile?['avatar_url'],
    });
  }

  CampaignCommentModel _mapCommentWithJoins(Map<String, dynamic> row) {
    final profile = row['user_profiles'] as Map<String, dynamic>?;

    return CampaignCommentModel.fromJson({
      ...row,
      'username': profile?['username'],
      'display_name': profile?['display_name'],
      'avatar_url': profile?['avatar_url'],
    });
  }
}
