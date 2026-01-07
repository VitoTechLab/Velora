import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:uuid/uuid.dart';
import 'package:velora/core/errors/exceptions.dart';
import 'package:velora/core/supabase/supabase_constants.dart';
import 'package:velora/core/supabase/supabase_guard.dart';
import 'package:velora/core/utils/log_alias.dart';
import 'package:velora/features/campaign/data/datasources/campaign_remote_datasource.dart';
import 'package:velora/features/campaign/data/models/campaign_comment_model.dart';
import 'package:velora/features/campaign/data/models/campaign_model.dart';
import 'package:velora/features/campaign/data/models/campaign_update_model.dart';
import 'package:velora/features/campaign/domain/entities/campaign_entity.dart';

class CampaignRemoteDataSourceImpl implements CampaignRemoteDataSource {
  CampaignRemoteDataSourceImpl({required SupabaseClient supabaseClient})
    : _client = supabaseClient;

  final SupabaseClient _client;
  final Uuid _uuid = const Uuid();
  static const _logTag = 'CampaignRemoteDataSource';

  @override
  Future<CampaignModel> createCampaign(CampaignModel model) {
    return guardSupabase(
      () async {
        logi('Creating campaign', tag: _logTag);
        final Map<String, dynamic> data = model
            .copyWith(id: _uuid.v4(), createdAt: DateTime.now())
            .toMap(includeId: true);
        final response = await _client
            .from(SupabaseTables.campaigns)
            .insert(data)
            .select()
            .single();
        return CampaignModel.fromMap(response);
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
        final response = await _client
            .from(SupabaseTables.campaigns)
            .select()
            .eq('id', id)
            .maybeSingle();
        if (response == null) return null;
        return CampaignModel.fromMap(response);
      },
      op: 'getCampaignById',
      tag: _logTag,
    );
  }

  @override
  Future<CampaignModel?> getCampaignByPostId(String postId) {
    return guardSupabase(
      () async {
        logi('Getting campaign by post id: $postId', tag: _logTag);
        final response = await _client
            .from(SupabaseTables.campaigns)
            .select()
            .eq('post_id', postId)
            .order('created_at', ascending: false)
            .maybeSingle();
        if (response == null) return null;
        return CampaignModel.fromMap(response);
      },
      op: 'getCampaignByPostId',
      tag: _logTag,
    );
  }

  @override
  Future<List<CampaignModel>> getCampaignsByUser(String userId) {
    return guardSupabase(
      () async {
        logi('Getting campaigns by user: $userId', tag: _logTag);
        final response = await _client
            .from(SupabaseTables.campaigns)
            .select()
            .eq('user_id', userId)
            .order('created_at', ascending: false);
        return (response as List)
            .map((row) => CampaignModel.fromMap(row))
            .toList();
      },
      op: 'getCampaignsByUser',
      tag: _logTag,
    );
  }

  @override
  Future<List<CampaignModel>> getAllCampaigns() {
    return guardSupabase(
      () async {
        logi('Getting all campaigns', tag: _logTag);
        final response = await _client
            .from(SupabaseTables.campaigns)
            .select()
            .order('created_at', ascending: false);
        return (response as List)
            .map((row) => CampaignModel.fromMap(row))
            .toList();
      },
      op: 'getAllCampaigns',
      tag: _logTag,
    );
  }

  @override
  Future<CampaignModel> updateCampaign(CampaignModel campaign) {
    return guardSupabase(
      () async {
        logi('Updating campaign: ${campaign.id}', tag: _logTag);
        final response = await _client
            .from(SupabaseTables.campaigns)
            .update(campaign.toMap())
            .eq('id', campaign.id)
            .select()
            .single();
        return CampaignModel.fromMap(response);
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
        await _client
            .from(SupabaseTables.campaignUpdates)
            .delete()
            .eq('campaign_id', campaignId);
        await _client
            .from(SupabaseTables.campaignComments)
            .delete()
            .eq('campaign_id', campaignId);
        await _client
            .from(SupabaseTables.campaigns)
            .delete()
            .eq('id', campaignId);
      },
      op: 'deleteCampaign',
      tag: _logTag,
    );
  }

  @override
  Future<CampaignModel> markCampaignComplete(String campaignId) {
    return guardSupabase(
      () async {
        logi('Marking campaign complete: $campaignId', tag: _logTag);
        final response = await _client
            .from(SupabaseTables.campaigns)
            .update({
              'status': CampaignStatus.completed.name,
              'completed_at': DateTime.now().toIso8601String(),
            })
            .eq('id', campaignId)
            .select()
            .single();
        return CampaignModel.fromMap(response);
      },
      op: 'markCampaignComplete',
      tag: _logTag,
    );
  }

  @override
  Future<CampaignModel> addDonorToCampaign({
    required String campaignId,
    required String donorId,
    required double amount,
  }) {
    return guardSupabase(
      () async {
        logi('Adding donor to campaign: $campaignId', tag: _logTag);

        final existingResponse = await _client
            .from(SupabaseTables.campaigns)
            .select()
            .eq('id', campaignId)
            .maybeSingle();

        if (existingResponse == null) {
          throw NotFoundException('Campaign not found');
        }

        final existing = CampaignModel.fromMap(existingResponse);

        final currentDonors = List<String>.from(existing.donorIds);
        if (!currentDonors.contains(donorId)) {
          currentDonors.add(donorId);
        }
        final newAmount = existing.amountRaised + amount;

        final response = await _client
            .from(SupabaseTables.campaigns)
            .update({'amount_raised': newAmount, 'donor_ids': currentDonors})
            .eq('id', campaignId)
            .select()
            .single();
        return CampaignModel.fromMap(response);
      },
      op: 'addDonorToCampaign',
      tag: _logTag,
    );
  }

  @override
  Future<CampaignUpdateModel> addCampaignUpdate(CampaignUpdateModel update) {
    return guardSupabase(
      () async {
        logi('Adding campaign update', tag: _logTag);
        final data = update
            .copyWith(id: _uuid.v4(), createdAt: DateTime.now())
            .toMap(includeId: true);
        final response = await _client
            .from(SupabaseTables.campaignUpdates)
            .insert(data)
            .select()
            .single();
        return CampaignUpdateModel.fromMap(response);
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
            .from(SupabaseTables.campaignUpdates)
            .select()
            .eq('campaign_id', campaignId)
            .order('created_at', ascending: false);
        return (response as List)
            .map((row) => CampaignUpdateModel.fromMap(row))
            .toList();
      },
      op: 'getCampaignUpdates',
      tag: _logTag,
    );
  }

  @override
  Future<void> deleteCampaignUpdate({
    required String campaignId,
    required String updateId,
  }) {
    return guardSupabase(
      () async {
        logi('Deleting campaign update: $updateId', tag: _logTag);
        await _client
            .from(SupabaseTables.campaignUpdates)
            .delete()
            .eq('campaign_id', campaignId)
            .eq('id', updateId);
      },
      op: 'deleteCampaignUpdate',
      tag: _logTag,
    );
  }

  @override
  Future<CampaignCommentModel> addComment(CampaignCommentModel comment) {
    return guardSupabase(
      () async {
        logi('Adding campaign comment', tag: _logTag);
        final data = comment
            .copyWith(id: _uuid.v4(), createdAt: DateTime.now())
            .toMap(includeId: true);
        final response = await _client
            .from(SupabaseTables.campaignComments)
            .insert(data)
            .select()
            .single();
        return CampaignCommentModel.fromMap(response);
      },
      op: 'addComment',
      tag: _logTag,
    );
  }

  @override
  Future<List<CampaignCommentModel>> getCampaignComments(String campaignId) {
    return guardSupabase(
      () async {
        logi('Getting campaign comments: $campaignId', tag: _logTag);
        final response = await _client
            .from(SupabaseTables.campaignComments)
            .select()
            .eq('campaign_id', campaignId)
            .order('created_at', ascending: false);
        return (response as List)
            .map((row) => CampaignCommentModel.fromMap(row))
            .toList();
      },
      op: 'getCampaignComments',
      tag: _logTag,
    );
  }

  @override
  Future<void> deleteComment({
    required String campaignId,
    required String commentId,
  }) {
    return guardSupabase(
      () async {
        logi('Deleting campaign comment: $commentId', tag: _logTag);
        await _client
            .from(SupabaseTables.campaignComments)
            .delete()
            .eq('campaign_id', campaignId)
            .eq('id', commentId);
      },
      op: 'deleteComment',
      tag: _logTag,
    );
  }
}
