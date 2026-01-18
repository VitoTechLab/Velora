// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaign_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CampaignEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? categoryId, int limit) loadCampaigns,
    required TResult Function(String? categoryId, int limit) refreshCampaigns,
    required TResult Function(String query, String? categoryId, int limit)
        searchCampaigns,
    required TResult Function(String campaignId) getCampaignDetail,
    required TResult Function(CampaignEntity campaign) createCampaign,
    required TResult Function(CampaignEntity campaign) updateCampaign,
    required TResult Function(String campaignId) deleteCampaign,
    required TResult Function(String campaignId, String status)
        updateCampaignStatus,
    required TResult Function() loadCategories,
    required TResult Function(String campaignId, int limit) loadDonations,
    required TResult Function(DonationEntity donation) createDonation,
    required TResult Function(String campaignId, bool includeReplies)
        loadComments,
    required TResult Function(CampaignCommentEntity comment) addComment,
    required TResult Function(String campaignId, String commentId)
        deleteComment,
    required TResult Function(String parentId) loadCommentReplies,
    required TResult Function(WithdrawalEntity withdrawal) requestWithdrawal,
    required TResult Function(String campaignId) loadWithdrawals,
    required TResult Function() clearTransient,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? categoryId, int limit)? loadCampaigns,
    TResult? Function(String? categoryId, int limit)? refreshCampaigns,
    TResult? Function(String query, String? categoryId, int limit)?
        searchCampaigns,
    TResult? Function(String campaignId)? getCampaignDetail,
    TResult? Function(CampaignEntity campaign)? createCampaign,
    TResult? Function(CampaignEntity campaign)? updateCampaign,
    TResult? Function(String campaignId)? deleteCampaign,
    TResult? Function(String campaignId, String status)? updateCampaignStatus,
    TResult? Function()? loadCategories,
    TResult? Function(String campaignId, int limit)? loadDonations,
    TResult? Function(DonationEntity donation)? createDonation,
    TResult? Function(String campaignId, bool includeReplies)? loadComments,
    TResult? Function(CampaignCommentEntity comment)? addComment,
    TResult? Function(String campaignId, String commentId)? deleteComment,
    TResult? Function(String parentId)? loadCommentReplies,
    TResult? Function(WithdrawalEntity withdrawal)? requestWithdrawal,
    TResult? Function(String campaignId)? loadWithdrawals,
    TResult? Function()? clearTransient,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? categoryId, int limit)? loadCampaigns,
    TResult Function(String? categoryId, int limit)? refreshCampaigns,
    TResult Function(String query, String? categoryId, int limit)?
        searchCampaigns,
    TResult Function(String campaignId)? getCampaignDetail,
    TResult Function(CampaignEntity campaign)? createCampaign,
    TResult Function(CampaignEntity campaign)? updateCampaign,
    TResult Function(String campaignId)? deleteCampaign,
    TResult Function(String campaignId, String status)? updateCampaignStatus,
    TResult Function()? loadCategories,
    TResult Function(String campaignId, int limit)? loadDonations,
    TResult Function(DonationEntity donation)? createDonation,
    TResult Function(String campaignId, bool includeReplies)? loadComments,
    TResult Function(CampaignCommentEntity comment)? addComment,
    TResult Function(String campaignId, String commentId)? deleteComment,
    TResult Function(String parentId)? loadCommentReplies,
    TResult Function(WithdrawalEntity withdrawal)? requestWithdrawal,
    TResult Function(String campaignId)? loadWithdrawals,
    TResult Function()? clearTransient,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCampaignsEvent value) loadCampaigns,
    required TResult Function(RefreshCampaignsEvent value) refreshCampaigns,
    required TResult Function(SearchCampaignsEvent value) searchCampaigns,
    required TResult Function(GetCampaignDetailEvent value) getCampaignDetail,
    required TResult Function(CreateCampaignEvent value) createCampaign,
    required TResult Function(UpdateCampaignEvent value) updateCampaign,
    required TResult Function(DeleteCampaignEvent value) deleteCampaign,
    required TResult Function(UpdateCampaignStatusEvent value)
        updateCampaignStatus,
    required TResult Function(LoadCategoriesEvent value) loadCategories,
    required TResult Function(LoadDonationsEvent value) loadDonations,
    required TResult Function(CreateDonationEvent value) createDonation,
    required TResult Function(LoadCommentsEvent value) loadComments,
    required TResult Function(AddCommentEvent value) addComment,
    required TResult Function(DeleteCommentEvent value) deleteComment,
    required TResult Function(LoadCommentRepliesEvent value) loadCommentReplies,
    required TResult Function(RequestWithdrawalEvent value) requestWithdrawal,
    required TResult Function(LoadWithdrawalsEvent value) loadWithdrawals,
    required TResult Function(ClearCampaignTransientEvent value) clearTransient,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCampaignsEvent value)? loadCampaigns,
    TResult? Function(RefreshCampaignsEvent value)? refreshCampaigns,
    TResult? Function(SearchCampaignsEvent value)? searchCampaigns,
    TResult? Function(GetCampaignDetailEvent value)? getCampaignDetail,
    TResult? Function(CreateCampaignEvent value)? createCampaign,
    TResult? Function(UpdateCampaignEvent value)? updateCampaign,
    TResult? Function(DeleteCampaignEvent value)? deleteCampaign,
    TResult? Function(UpdateCampaignStatusEvent value)? updateCampaignStatus,
    TResult? Function(LoadCategoriesEvent value)? loadCategories,
    TResult? Function(LoadDonationsEvent value)? loadDonations,
    TResult? Function(CreateDonationEvent value)? createDonation,
    TResult? Function(LoadCommentsEvent value)? loadComments,
    TResult? Function(AddCommentEvent value)? addComment,
    TResult? Function(DeleteCommentEvent value)? deleteComment,
    TResult? Function(LoadCommentRepliesEvent value)? loadCommentReplies,
    TResult? Function(RequestWithdrawalEvent value)? requestWithdrawal,
    TResult? Function(LoadWithdrawalsEvent value)? loadWithdrawals,
    TResult? Function(ClearCampaignTransientEvent value)? clearTransient,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCampaignsEvent value)? loadCampaigns,
    TResult Function(RefreshCampaignsEvent value)? refreshCampaigns,
    TResult Function(SearchCampaignsEvent value)? searchCampaigns,
    TResult Function(GetCampaignDetailEvent value)? getCampaignDetail,
    TResult Function(CreateCampaignEvent value)? createCampaign,
    TResult Function(UpdateCampaignEvent value)? updateCampaign,
    TResult Function(DeleteCampaignEvent value)? deleteCampaign,
    TResult Function(UpdateCampaignStatusEvent value)? updateCampaignStatus,
    TResult Function(LoadCategoriesEvent value)? loadCategories,
    TResult Function(LoadDonationsEvent value)? loadDonations,
    TResult Function(CreateDonationEvent value)? createDonation,
    TResult Function(LoadCommentsEvent value)? loadComments,
    TResult Function(AddCommentEvent value)? addComment,
    TResult Function(DeleteCommentEvent value)? deleteComment,
    TResult Function(LoadCommentRepliesEvent value)? loadCommentReplies,
    TResult Function(RequestWithdrawalEvent value)? requestWithdrawal,
    TResult Function(LoadWithdrawalsEvent value)? loadWithdrawals,
    TResult Function(ClearCampaignTransientEvent value)? clearTransient,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CampaignEventCopyWith<$Res> {
  factory $CampaignEventCopyWith(
          CampaignEvent value, $Res Function(CampaignEvent) then) =
      _$CampaignEventCopyWithImpl<$Res, CampaignEvent>;
}

/// @nodoc
class _$CampaignEventCopyWithImpl<$Res, $Val extends CampaignEvent>
    implements $CampaignEventCopyWith<$Res> {
  _$CampaignEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CampaignEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadCampaignsEventImplCopyWith<$Res> {
  factory _$$LoadCampaignsEventImplCopyWith(_$LoadCampaignsEventImpl value,
          $Res Function(_$LoadCampaignsEventImpl) then) =
      __$$LoadCampaignsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? categoryId, int limit});
}

/// @nodoc
class __$$LoadCampaignsEventImplCopyWithImpl<$Res>
    extends _$CampaignEventCopyWithImpl<$Res, _$LoadCampaignsEventImpl>
    implements _$$LoadCampaignsEventImplCopyWith<$Res> {
  __$$LoadCampaignsEventImplCopyWithImpl(_$LoadCampaignsEventImpl _value,
      $Res Function(_$LoadCampaignsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CampaignEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = freezed,
    Object? limit = null,
  }) {
    return _then(_$LoadCampaignsEventImpl(
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadCampaignsEventImpl implements LoadCampaignsEvent {
  const _$LoadCampaignsEventImpl({this.categoryId, this.limit = 20});

  @override
  final String? categoryId;
  @override
  @JsonKey()
  final int limit;

  @override
  String toString() {
    return 'CampaignEvent.loadCampaigns(categoryId: $categoryId, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadCampaignsEventImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId, limit);

  /// Create a copy of CampaignEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadCampaignsEventImplCopyWith<_$LoadCampaignsEventImpl> get copyWith =>
      __$$LoadCampaignsEventImplCopyWithImpl<_$LoadCampaignsEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? categoryId, int limit) loadCampaigns,
    required TResult Function(String? categoryId, int limit) refreshCampaigns,
    required TResult Function(String query, String? categoryId, int limit)
        searchCampaigns,
    required TResult Function(String campaignId) getCampaignDetail,
    required TResult Function(CampaignEntity campaign) createCampaign,
    required TResult Function(CampaignEntity campaign) updateCampaign,
    required TResult Function(String campaignId) deleteCampaign,
    required TResult Function(String campaignId, String status)
        updateCampaignStatus,
    required TResult Function() loadCategories,
    required TResult Function(String campaignId, int limit) loadDonations,
    required TResult Function(DonationEntity donation) createDonation,
    required TResult Function(String campaignId, bool includeReplies)
        loadComments,
    required TResult Function(CampaignCommentEntity comment) addComment,
    required TResult Function(String campaignId, String commentId)
        deleteComment,
    required TResult Function(String parentId) loadCommentReplies,
    required TResult Function(WithdrawalEntity withdrawal) requestWithdrawal,
    required TResult Function(String campaignId) loadWithdrawals,
    required TResult Function() clearTransient,
  }) {
    return loadCampaigns(categoryId, limit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? categoryId, int limit)? loadCampaigns,
    TResult? Function(String? categoryId, int limit)? refreshCampaigns,
    TResult? Function(String query, String? categoryId, int limit)?
        searchCampaigns,
    TResult? Function(String campaignId)? getCampaignDetail,
    TResult? Function(CampaignEntity campaign)? createCampaign,
    TResult? Function(CampaignEntity campaign)? updateCampaign,
    TResult? Function(String campaignId)? deleteCampaign,
    TResult? Function(String campaignId, String status)? updateCampaignStatus,
    TResult? Function()? loadCategories,
    TResult? Function(String campaignId, int limit)? loadDonations,
    TResult? Function(DonationEntity donation)? createDonation,
    TResult? Function(String campaignId, bool includeReplies)? loadComments,
    TResult? Function(CampaignCommentEntity comment)? addComment,
    TResult? Function(String campaignId, String commentId)? deleteComment,
    TResult? Function(String parentId)? loadCommentReplies,
    TResult? Function(WithdrawalEntity withdrawal)? requestWithdrawal,
    TResult? Function(String campaignId)? loadWithdrawals,
    TResult? Function()? clearTransient,
  }) {
    return loadCampaigns?.call(categoryId, limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? categoryId, int limit)? loadCampaigns,
    TResult Function(String? categoryId, int limit)? refreshCampaigns,
    TResult Function(String query, String? categoryId, int limit)?
        searchCampaigns,
    TResult Function(String campaignId)? getCampaignDetail,
    TResult Function(CampaignEntity campaign)? createCampaign,
    TResult Function(CampaignEntity campaign)? updateCampaign,
    TResult Function(String campaignId)? deleteCampaign,
    TResult Function(String campaignId, String status)? updateCampaignStatus,
    TResult Function()? loadCategories,
    TResult Function(String campaignId, int limit)? loadDonations,
    TResult Function(DonationEntity donation)? createDonation,
    TResult Function(String campaignId, bool includeReplies)? loadComments,
    TResult Function(CampaignCommentEntity comment)? addComment,
    TResult Function(String campaignId, String commentId)? deleteComment,
    TResult Function(String parentId)? loadCommentReplies,
    TResult Function(WithdrawalEntity withdrawal)? requestWithdrawal,
    TResult Function(String campaignId)? loadWithdrawals,
    TResult Function()? clearTransient,
    required TResult orElse(),
  }) {
    if (loadCampaigns != null) {
      return loadCampaigns(categoryId, limit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCampaignsEvent value) loadCampaigns,
    required TResult Function(RefreshCampaignsEvent value) refreshCampaigns,
    required TResult Function(SearchCampaignsEvent value) searchCampaigns,
    required TResult Function(GetCampaignDetailEvent value) getCampaignDetail,
    required TResult Function(CreateCampaignEvent value) createCampaign,
    required TResult Function(UpdateCampaignEvent value) updateCampaign,
    required TResult Function(DeleteCampaignEvent value) deleteCampaign,
    required TResult Function(UpdateCampaignStatusEvent value)
        updateCampaignStatus,
    required TResult Function(LoadCategoriesEvent value) loadCategories,
    required TResult Function(LoadDonationsEvent value) loadDonations,
    required TResult Function(CreateDonationEvent value) createDonation,
    required TResult Function(LoadCommentsEvent value) loadComments,
    required TResult Function(AddCommentEvent value) addComment,
    required TResult Function(DeleteCommentEvent value) deleteComment,
    required TResult Function(LoadCommentRepliesEvent value) loadCommentReplies,
    required TResult Function(RequestWithdrawalEvent value) requestWithdrawal,
    required TResult Function(LoadWithdrawalsEvent value) loadWithdrawals,
    required TResult Function(ClearCampaignTransientEvent value) clearTransient,
  }) {
    return loadCampaigns(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCampaignsEvent value)? loadCampaigns,
    TResult? Function(RefreshCampaignsEvent value)? refreshCampaigns,
    TResult? Function(SearchCampaignsEvent value)? searchCampaigns,
    TResult? Function(GetCampaignDetailEvent value)? getCampaignDetail,
    TResult? Function(CreateCampaignEvent value)? createCampaign,
    TResult? Function(UpdateCampaignEvent value)? updateCampaign,
    TResult? Function(DeleteCampaignEvent value)? deleteCampaign,
    TResult? Function(UpdateCampaignStatusEvent value)? updateCampaignStatus,
    TResult? Function(LoadCategoriesEvent value)? loadCategories,
    TResult? Function(LoadDonationsEvent value)? loadDonations,
    TResult? Function(CreateDonationEvent value)? createDonation,
    TResult? Function(LoadCommentsEvent value)? loadComments,
    TResult? Function(AddCommentEvent value)? addComment,
    TResult? Function(DeleteCommentEvent value)? deleteComment,
    TResult? Function(LoadCommentRepliesEvent value)? loadCommentReplies,
    TResult? Function(RequestWithdrawalEvent value)? requestWithdrawal,
    TResult? Function(LoadWithdrawalsEvent value)? loadWithdrawals,
    TResult? Function(ClearCampaignTransientEvent value)? clearTransient,
  }) {
    return loadCampaigns?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCampaignsEvent value)? loadCampaigns,
    TResult Function(RefreshCampaignsEvent value)? refreshCampaigns,
    TResult Function(SearchCampaignsEvent value)? searchCampaigns,
    TResult Function(GetCampaignDetailEvent value)? getCampaignDetail,
    TResult Function(CreateCampaignEvent value)? createCampaign,
    TResult Function(UpdateCampaignEvent value)? updateCampaign,
    TResult Function(DeleteCampaignEvent value)? deleteCampaign,
    TResult Function(UpdateCampaignStatusEvent value)? updateCampaignStatus,
    TResult Function(LoadCategoriesEvent value)? loadCategories,
    TResult Function(LoadDonationsEvent value)? loadDonations,
    TResult Function(CreateDonationEvent value)? createDonation,
    TResult Function(LoadCommentsEvent value)? loadComments,
    TResult Function(AddCommentEvent value)? addComment,
    TResult Function(DeleteCommentEvent value)? deleteComment,
    TResult Function(LoadCommentRepliesEvent value)? loadCommentReplies,
    TResult Function(RequestWithdrawalEvent value)? requestWithdrawal,
    TResult Function(LoadWithdrawalsEvent value)? loadWithdrawals,
    TResult Function(ClearCampaignTransientEvent value)? clearTransient,
    required TResult orElse(),
  }) {
    if (loadCampaigns != null) {
      return loadCampaigns(this);
    }
    return orElse();
  }
}

abstract class LoadCampaignsEvent implements CampaignEvent {
  const factory LoadCampaignsEvent(
      {final String? categoryId, final int limit}) = _$LoadCampaignsEventImpl;

  String? get categoryId;
  int get limit;

  /// Create a copy of CampaignEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadCampaignsEventImplCopyWith<_$LoadCampaignsEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RefreshCampaignsEventImplCopyWith<$Res> {
  factory _$$RefreshCampaignsEventImplCopyWith(
          _$RefreshCampaignsEventImpl value,
          $Res Function(_$RefreshCampaignsEventImpl) then) =
      __$$RefreshCampaignsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? categoryId, int limit});
}

/// @nodoc
class __$$RefreshCampaignsEventImplCopyWithImpl<$Res>
    extends _$CampaignEventCopyWithImpl<$Res, _$RefreshCampaignsEventImpl>
    implements _$$RefreshCampaignsEventImplCopyWith<$Res> {
  __$$RefreshCampaignsEventImplCopyWithImpl(_$RefreshCampaignsEventImpl _value,
      $Res Function(_$RefreshCampaignsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CampaignEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = freezed,
    Object? limit = null,
  }) {
    return _then(_$RefreshCampaignsEventImpl(
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RefreshCampaignsEventImpl implements RefreshCampaignsEvent {
  const _$RefreshCampaignsEventImpl({this.categoryId, this.limit = 20});

  @override
  final String? categoryId;
  @override
  @JsonKey()
  final int limit;

  @override
  String toString() {
    return 'CampaignEvent.refreshCampaigns(categoryId: $categoryId, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshCampaignsEventImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId, limit);

  /// Create a copy of CampaignEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefreshCampaignsEventImplCopyWith<_$RefreshCampaignsEventImpl>
      get copyWith => __$$RefreshCampaignsEventImplCopyWithImpl<
          _$RefreshCampaignsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? categoryId, int limit) loadCampaigns,
    required TResult Function(String? categoryId, int limit) refreshCampaigns,
    required TResult Function(String query, String? categoryId, int limit)
        searchCampaigns,
    required TResult Function(String campaignId) getCampaignDetail,
    required TResult Function(CampaignEntity campaign) createCampaign,
    required TResult Function(CampaignEntity campaign) updateCampaign,
    required TResult Function(String campaignId) deleteCampaign,
    required TResult Function(String campaignId, String status)
        updateCampaignStatus,
    required TResult Function() loadCategories,
    required TResult Function(String campaignId, int limit) loadDonations,
    required TResult Function(DonationEntity donation) createDonation,
    required TResult Function(String campaignId, bool includeReplies)
        loadComments,
    required TResult Function(CampaignCommentEntity comment) addComment,
    required TResult Function(String campaignId, String commentId)
        deleteComment,
    required TResult Function(String parentId) loadCommentReplies,
    required TResult Function(WithdrawalEntity withdrawal) requestWithdrawal,
    required TResult Function(String campaignId) loadWithdrawals,
    required TResult Function() clearTransient,
  }) {
    return refreshCampaigns(categoryId, limit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? categoryId, int limit)? loadCampaigns,
    TResult? Function(String? categoryId, int limit)? refreshCampaigns,
    TResult? Function(String query, String? categoryId, int limit)?
        searchCampaigns,
    TResult? Function(String campaignId)? getCampaignDetail,
    TResult? Function(CampaignEntity campaign)? createCampaign,
    TResult? Function(CampaignEntity campaign)? updateCampaign,
    TResult? Function(String campaignId)? deleteCampaign,
    TResult? Function(String campaignId, String status)? updateCampaignStatus,
    TResult? Function()? loadCategories,
    TResult? Function(String campaignId, int limit)? loadDonations,
    TResult? Function(DonationEntity donation)? createDonation,
    TResult? Function(String campaignId, bool includeReplies)? loadComments,
    TResult? Function(CampaignCommentEntity comment)? addComment,
    TResult? Function(String campaignId, String commentId)? deleteComment,
    TResult? Function(String parentId)? loadCommentReplies,
    TResult? Function(WithdrawalEntity withdrawal)? requestWithdrawal,
    TResult? Function(String campaignId)? loadWithdrawals,
    TResult? Function()? clearTransient,
  }) {
    return refreshCampaigns?.call(categoryId, limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? categoryId, int limit)? loadCampaigns,
    TResult Function(String? categoryId, int limit)? refreshCampaigns,
    TResult Function(String query, String? categoryId, int limit)?
        searchCampaigns,
    TResult Function(String campaignId)? getCampaignDetail,
    TResult Function(CampaignEntity campaign)? createCampaign,
    TResult Function(CampaignEntity campaign)? updateCampaign,
    TResult Function(String campaignId)? deleteCampaign,
    TResult Function(String campaignId, String status)? updateCampaignStatus,
    TResult Function()? loadCategories,
    TResult Function(String campaignId, int limit)? loadDonations,
    TResult Function(DonationEntity donation)? createDonation,
    TResult Function(String campaignId, bool includeReplies)? loadComments,
    TResult Function(CampaignCommentEntity comment)? addComment,
    TResult Function(String campaignId, String commentId)? deleteComment,
    TResult Function(String parentId)? loadCommentReplies,
    TResult Function(WithdrawalEntity withdrawal)? requestWithdrawal,
    TResult Function(String campaignId)? loadWithdrawals,
    TResult Function()? clearTransient,
    required TResult orElse(),
  }) {
    if (refreshCampaigns != null) {
      return refreshCampaigns(categoryId, limit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCampaignsEvent value) loadCampaigns,
    required TResult Function(RefreshCampaignsEvent value) refreshCampaigns,
    required TResult Function(SearchCampaignsEvent value) searchCampaigns,
    required TResult Function(GetCampaignDetailEvent value) getCampaignDetail,
    required TResult Function(CreateCampaignEvent value) createCampaign,
    required TResult Function(UpdateCampaignEvent value) updateCampaign,
    required TResult Function(DeleteCampaignEvent value) deleteCampaign,
    required TResult Function(UpdateCampaignStatusEvent value)
        updateCampaignStatus,
    required TResult Function(LoadCategoriesEvent value) loadCategories,
    required TResult Function(LoadDonationsEvent value) loadDonations,
    required TResult Function(CreateDonationEvent value) createDonation,
    required TResult Function(LoadCommentsEvent value) loadComments,
    required TResult Function(AddCommentEvent value) addComment,
    required TResult Function(DeleteCommentEvent value) deleteComment,
    required TResult Function(LoadCommentRepliesEvent value) loadCommentReplies,
    required TResult Function(RequestWithdrawalEvent value) requestWithdrawal,
    required TResult Function(LoadWithdrawalsEvent value) loadWithdrawals,
    required TResult Function(ClearCampaignTransientEvent value) clearTransient,
  }) {
    return refreshCampaigns(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCampaignsEvent value)? loadCampaigns,
    TResult? Function(RefreshCampaignsEvent value)? refreshCampaigns,
    TResult? Function(SearchCampaignsEvent value)? searchCampaigns,
    TResult? Function(GetCampaignDetailEvent value)? getCampaignDetail,
    TResult? Function(CreateCampaignEvent value)? createCampaign,
    TResult? Function(UpdateCampaignEvent value)? updateCampaign,
    TResult? Function(DeleteCampaignEvent value)? deleteCampaign,
    TResult? Function(UpdateCampaignStatusEvent value)? updateCampaignStatus,
    TResult? Function(LoadCategoriesEvent value)? loadCategories,
    TResult? Function(LoadDonationsEvent value)? loadDonations,
    TResult? Function(CreateDonationEvent value)? createDonation,
    TResult? Function(LoadCommentsEvent value)? loadComments,
    TResult? Function(AddCommentEvent value)? addComment,
    TResult? Function(DeleteCommentEvent value)? deleteComment,
    TResult? Function(LoadCommentRepliesEvent value)? loadCommentReplies,
    TResult? Function(RequestWithdrawalEvent value)? requestWithdrawal,
    TResult? Function(LoadWithdrawalsEvent value)? loadWithdrawals,
    TResult? Function(ClearCampaignTransientEvent value)? clearTransient,
  }) {
    return refreshCampaigns?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCampaignsEvent value)? loadCampaigns,
    TResult Function(RefreshCampaignsEvent value)? refreshCampaigns,
    TResult Function(SearchCampaignsEvent value)? searchCampaigns,
    TResult Function(GetCampaignDetailEvent value)? getCampaignDetail,
    TResult Function(CreateCampaignEvent value)? createCampaign,
    TResult Function(UpdateCampaignEvent value)? updateCampaign,
    TResult Function(DeleteCampaignEvent value)? deleteCampaign,
    TResult Function(UpdateCampaignStatusEvent value)? updateCampaignStatus,
    TResult Function(LoadCategoriesEvent value)? loadCategories,
    TResult Function(LoadDonationsEvent value)? loadDonations,
    TResult Function(CreateDonationEvent value)? createDonation,
    TResult Function(LoadCommentsEvent value)? loadComments,
    TResult Function(AddCommentEvent value)? addComment,
    TResult Function(DeleteCommentEvent value)? deleteComment,
    TResult Function(LoadCommentRepliesEvent value)? loadCommentReplies,
    TResult Function(RequestWithdrawalEvent value)? requestWithdrawal,
    TResult Function(LoadWithdrawalsEvent value)? loadWithdrawals,
    TResult Function(ClearCampaignTransientEvent value)? clearTransient,
    required TResult orElse(),
  }) {
    if (refreshCampaigns != null) {
      return refreshCampaigns(this);
    }
    return orElse();
  }
}

abstract class RefreshCampaignsEvent implements CampaignEvent {
  const factory RefreshCampaignsEvent(
      {final String? categoryId,
      final int limit}) = _$RefreshCampaignsEventImpl;

  String? get categoryId;
  int get limit;

  /// Create a copy of CampaignEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefreshCampaignsEventImplCopyWith<_$RefreshCampaignsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchCampaignsEventImplCopyWith<$Res> {
  factory _$$SearchCampaignsEventImplCopyWith(_$SearchCampaignsEventImpl value,
          $Res Function(_$SearchCampaignsEventImpl) then) =
      __$$SearchCampaignsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query, String? categoryId, int limit});
}

/// @nodoc
class __$$SearchCampaignsEventImplCopyWithImpl<$Res>
    extends _$CampaignEventCopyWithImpl<$Res, _$SearchCampaignsEventImpl>
    implements _$$SearchCampaignsEventImplCopyWith<$Res> {
  __$$SearchCampaignsEventImplCopyWithImpl(_$SearchCampaignsEventImpl _value,
      $Res Function(_$SearchCampaignsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CampaignEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? categoryId = freezed,
    Object? limit = null,
  }) {
    return _then(_$SearchCampaignsEventImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SearchCampaignsEventImpl implements SearchCampaignsEvent {
  const _$SearchCampaignsEventImpl(
      {required this.query, this.categoryId, this.limit = 20});

  @override
  final String query;
  @override
  final String? categoryId;
  @override
  @JsonKey()
  final int limit;

  @override
  String toString() {
    return 'CampaignEvent.searchCampaigns(query: $query, categoryId: $categoryId, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchCampaignsEventImpl &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query, categoryId, limit);

  /// Create a copy of CampaignEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchCampaignsEventImplCopyWith<_$SearchCampaignsEventImpl>
      get copyWith =>
          __$$SearchCampaignsEventImplCopyWithImpl<_$SearchCampaignsEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? categoryId, int limit) loadCampaigns,
    required TResult Function(String? categoryId, int limit) refreshCampaigns,
    required TResult Function(String query, String? categoryId, int limit)
        searchCampaigns,
    required TResult Function(String campaignId) getCampaignDetail,
    required TResult Function(CampaignEntity campaign) createCampaign,
    required TResult Function(CampaignEntity campaign) updateCampaign,
    required TResult Function(String campaignId) deleteCampaign,
    required TResult Function(String campaignId, String status)
        updateCampaignStatus,
    required TResult Function() loadCategories,
    required TResult Function(String campaignId, int limit) loadDonations,
    required TResult Function(DonationEntity donation) createDonation,
    required TResult Function(String campaignId, bool includeReplies)
        loadComments,
    required TResult Function(CampaignCommentEntity comment) addComment,
    required TResult Function(String campaignId, String commentId)
        deleteComment,
    required TResult Function(String parentId) loadCommentReplies,
    required TResult Function(WithdrawalEntity withdrawal) requestWithdrawal,
    required TResult Function(String campaignId) loadWithdrawals,
    required TResult Function() clearTransient,
  }) {
    return searchCampaigns(query, categoryId, limit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? categoryId, int limit)? loadCampaigns,
    TResult? Function(String? categoryId, int limit)? refreshCampaigns,
    TResult? Function(String query, String? categoryId, int limit)?
        searchCampaigns,
    TResult? Function(String campaignId)? getCampaignDetail,
    TResult? Function(CampaignEntity campaign)? createCampaign,
    TResult? Function(CampaignEntity campaign)? updateCampaign,
    TResult? Function(String campaignId)? deleteCampaign,
    TResult? Function(String campaignId, String status)? updateCampaignStatus,
    TResult? Function()? loadCategories,
    TResult? Function(String campaignId, int limit)? loadDonations,
    TResult? Function(DonationEntity donation)? createDonation,
    TResult? Function(String campaignId, bool includeReplies)? loadComments,
    TResult? Function(CampaignCommentEntity comment)? addComment,
    TResult? Function(String campaignId, String commentId)? deleteComment,
    TResult? Function(String parentId)? loadCommentReplies,
    TResult? Function(WithdrawalEntity withdrawal)? requestWithdrawal,
    TResult? Function(String campaignId)? loadWithdrawals,
    TResult? Function()? clearTransient,
  }) {
    return searchCampaigns?.call(query, categoryId, limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? categoryId, int limit)? loadCampaigns,
    TResult Function(String? categoryId, int limit)? refreshCampaigns,
    TResult Function(String query, String? categoryId, int limit)?
        searchCampaigns,
    TResult Function(String campaignId)? getCampaignDetail,
    TResult Function(CampaignEntity campaign)? createCampaign,
    TResult Function(CampaignEntity campaign)? updateCampaign,
    TResult Function(String campaignId)? deleteCampaign,
    TResult Function(String campaignId, String status)? updateCampaignStatus,
    TResult Function()? loadCategories,
    TResult Function(String campaignId, int limit)? loadDonations,
    TResult Function(DonationEntity donation)? createDonation,
    TResult Function(String campaignId, bool includeReplies)? loadComments,
    TResult Function(CampaignCommentEntity comment)? addComment,
    TResult Function(String campaignId, String commentId)? deleteComment,
    TResult Function(String parentId)? loadCommentReplies,
    TResult Function(WithdrawalEntity withdrawal)? requestWithdrawal,
    TResult Function(String campaignId)? loadWithdrawals,
    TResult Function()? clearTransient,
    required TResult orElse(),
  }) {
    if (searchCampaigns != null) {
      return searchCampaigns(query, categoryId, limit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCampaignsEvent value) loadCampaigns,
    required TResult Function(RefreshCampaignsEvent value) refreshCampaigns,
    required TResult Function(SearchCampaignsEvent value) searchCampaigns,
    required TResult Function(GetCampaignDetailEvent value) getCampaignDetail,
    required TResult Function(CreateCampaignEvent value) createCampaign,
    required TResult Function(UpdateCampaignEvent value) updateCampaign,
    required TResult Function(DeleteCampaignEvent value) deleteCampaign,
    required TResult Function(UpdateCampaignStatusEvent value)
        updateCampaignStatus,
    required TResult Function(LoadCategoriesEvent value) loadCategories,
    required TResult Function(LoadDonationsEvent value) loadDonations,
    required TResult Function(CreateDonationEvent value) createDonation,
    required TResult Function(LoadCommentsEvent value) loadComments,
    required TResult Function(AddCommentEvent value) addComment,
    required TResult Function(DeleteCommentEvent value) deleteComment,
    required TResult Function(LoadCommentRepliesEvent value) loadCommentReplies,
    required TResult Function(RequestWithdrawalEvent value) requestWithdrawal,
    required TResult Function(LoadWithdrawalsEvent value) loadWithdrawals,
    required TResult Function(ClearCampaignTransientEvent value) clearTransient,
  }) {
    return searchCampaigns(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCampaignsEvent value)? loadCampaigns,
    TResult? Function(RefreshCampaignsEvent value)? refreshCampaigns,
    TResult? Function(SearchCampaignsEvent value)? searchCampaigns,
    TResult? Function(GetCampaignDetailEvent value)? getCampaignDetail,
    TResult? Function(CreateCampaignEvent value)? createCampaign,
    TResult? Function(UpdateCampaignEvent value)? updateCampaign,
    TResult? Function(DeleteCampaignEvent value)? deleteCampaign,
    TResult? Function(UpdateCampaignStatusEvent value)? updateCampaignStatus,
    TResult? Function(LoadCategoriesEvent value)? loadCategories,
    TResult? Function(LoadDonationsEvent value)? loadDonations,
    TResult? Function(CreateDonationEvent value)? createDonation,
    TResult? Function(LoadCommentsEvent value)? loadComments,
    TResult? Function(AddCommentEvent value)? addComment,
    TResult? Function(DeleteCommentEvent value)? deleteComment,
    TResult? Function(LoadCommentRepliesEvent value)? loadCommentReplies,
    TResult? Function(RequestWithdrawalEvent value)? requestWithdrawal,
    TResult? Function(LoadWithdrawalsEvent value)? loadWithdrawals,
    TResult? Function(ClearCampaignTransientEvent value)? clearTransient,
  }) {
    return searchCampaigns?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCampaignsEvent value)? loadCampaigns,
    TResult Function(RefreshCampaignsEvent value)? refreshCampaigns,
    TResult Function(SearchCampaignsEvent value)? searchCampaigns,
    TResult Function(GetCampaignDetailEvent value)? getCampaignDetail,
    TResult Function(CreateCampaignEvent value)? createCampaign,
    TResult Function(UpdateCampaignEvent value)? updateCampaign,
    TResult Function(DeleteCampaignEvent value)? deleteCampaign,
    TResult Function(UpdateCampaignStatusEvent value)? updateCampaignStatus,
    TResult Function(LoadCategoriesEvent value)? loadCategories,
    TResult Function(LoadDonationsEvent value)? loadDonations,
    TResult Function(CreateDonationEvent value)? createDonation,
    TResult Function(LoadCommentsEvent value)? loadComments,
    TResult Function(AddCommentEvent value)? addComment,
    TResult Function(DeleteCommentEvent value)? deleteComment,
    TResult Function(LoadCommentRepliesEvent value)? loadCommentReplies,
    TResult Function(RequestWithdrawalEvent value)? requestWithdrawal,
    TResult Function(LoadWithdrawalsEvent value)? loadWithdrawals,
    TResult Function(ClearCampaignTransientEvent value)? clearTransient,
    required TResult orElse(),
  }) {
    if (searchCampaigns != null) {
      return searchCampaigns(this);
    }
    return orElse();
  }
}

abstract class SearchCampaignsEvent implements CampaignEvent {
  const factory SearchCampaignsEvent(
      {required final String query,
      final String? categoryId,
      final int limit}) = _$SearchCampaignsEventImpl;

  String get query;
  String? get categoryId;
  int get limit;

  /// Create a copy of CampaignEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchCampaignsEventImplCopyWith<_$SearchCampaignsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCampaignDetailEventImplCopyWith<$Res> {
  factory _$$GetCampaignDetailEventImplCopyWith(
          _$GetCampaignDetailEventImpl value,
          $Res Function(_$GetCampaignDetailEventImpl) then) =
      __$$GetCampaignDetailEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String campaignId});
}

/// @nodoc
class __$$GetCampaignDetailEventImplCopyWithImpl<$Res>
    extends _$CampaignEventCopyWithImpl<$Res, _$GetCampaignDetailEventImpl>
    implements _$$GetCampaignDetailEventImplCopyWith<$Res> {
  __$$GetCampaignDetailEventImplCopyWithImpl(
      _$GetCampaignDetailEventImpl _value,
      $Res Function(_$GetCampaignDetailEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CampaignEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? campaignId = null,
  }) {
    return _then(_$GetCampaignDetailEventImpl(
      campaignId: null == campaignId
          ? _value.campaignId
          : campaignId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCampaignDetailEventImpl implements GetCampaignDetailEvent {
  const _$GetCampaignDetailEventImpl({required this.campaignId});

  @override
  final String campaignId;

  @override
  String toString() {
    return 'CampaignEvent.getCampaignDetail(campaignId: $campaignId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCampaignDetailEventImpl &&
            (identical(other.campaignId, campaignId) ||
                other.campaignId == campaignId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, campaignId);

  /// Create a copy of CampaignEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCampaignDetailEventImplCopyWith<_$GetCampaignDetailEventImpl>
      get copyWith => __$$GetCampaignDetailEventImplCopyWithImpl<
          _$GetCampaignDetailEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? categoryId, int limit) loadCampaigns,
    required TResult Function(String? categoryId, int limit) refreshCampaigns,
    required TResult Function(String query, String? categoryId, int limit)
        searchCampaigns,
    required TResult Function(String campaignId) getCampaignDetail,
    required TResult Function(CampaignEntity campaign) createCampaign,
    required TResult Function(CampaignEntity campaign) updateCampaign,
    required TResult Function(String campaignId) deleteCampaign,
    required TResult Function(String campaignId, String status)
        updateCampaignStatus,
    required TResult Function() loadCategories,
    required TResult Function(String campaignId, int limit) loadDonations,
    required TResult Function(DonationEntity donation) createDonation,
    required TResult Function(String campaignId, bool includeReplies)
        loadComments,
    required TResult Function(CampaignCommentEntity comment) addComment,
    required TResult Function(String campaignId, String commentId)
        deleteComment,
    required TResult Function(String parentId) loadCommentReplies,
    required TResult Function(WithdrawalEntity withdrawal) requestWithdrawal,
    required TResult Function(String campaignId) loadWithdrawals,
    required TResult Function() clearTransient,
  }) {
    return getCampaignDetail(campaignId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? categoryId, int limit)? loadCampaigns,
    TResult? Function(String? categoryId, int limit)? refreshCampaigns,
    TResult? Function(String query, String? categoryId, int limit)?
        searchCampaigns,
    TResult? Function(String campaignId)? getCampaignDetail,
    TResult? Function(CampaignEntity campaign)? createCampaign,
    TResult? Function(CampaignEntity campaign)? updateCampaign,
    TResult? Function(String campaignId)? deleteCampaign,
    TResult? Function(String campaignId, String status)? updateCampaignStatus,
    TResult? Function()? loadCategories,
    TResult? Function(String campaignId, int limit)? loadDonations,
    TResult? Function(DonationEntity donation)? createDonation,
    TResult? Function(String campaignId, bool includeReplies)? loadComments,
    TResult? Function(CampaignCommentEntity comment)? addComment,
    TResult? Function(String campaignId, String commentId)? deleteComment,
    TResult? Function(String parentId)? loadCommentReplies,
    TResult? Function(WithdrawalEntity withdrawal)? requestWithdrawal,
    TResult? Function(String campaignId)? loadWithdrawals,
    TResult? Function()? clearTransient,
  }) {
    return getCampaignDetail?.call(campaignId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? categoryId, int limit)? loadCampaigns,
    TResult Function(String? categoryId, int limit)? refreshCampaigns,
    TResult Function(String query, String? categoryId, int limit)?
        searchCampaigns,
    TResult Function(String campaignId)? getCampaignDetail,
    TResult Function(CampaignEntity campaign)? createCampaign,
    TResult Function(CampaignEntity campaign)? updateCampaign,
    TResult Function(String campaignId)? deleteCampaign,
    TResult Function(String campaignId, String status)? updateCampaignStatus,
    TResult Function()? loadCategories,
    TResult Function(String campaignId, int limit)? loadDonations,
    TResult Function(DonationEntity donation)? createDonation,
    TResult Function(String campaignId, bool includeReplies)? loadComments,
    TResult Function(CampaignCommentEntity comment)? addComment,
    TResult Function(String campaignId, String commentId)? deleteComment,
    TResult Function(String parentId)? loadCommentReplies,
    TResult Function(WithdrawalEntity withdrawal)? requestWithdrawal,
    TResult Function(String campaignId)? loadWithdrawals,
    TResult Function()? clearTransient,
    required TResult orElse(),
  }) {
    if (getCampaignDetail != null) {
      return getCampaignDetail(campaignId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCampaignsEvent value) loadCampaigns,
    required TResult Function(RefreshCampaignsEvent value) refreshCampaigns,
    required TResult Function(SearchCampaignsEvent value) searchCampaigns,
    required TResult Function(GetCampaignDetailEvent value) getCampaignDetail,
    required TResult Function(CreateCampaignEvent value) createCampaign,
    required TResult Function(UpdateCampaignEvent value) updateCampaign,
    required TResult Function(DeleteCampaignEvent value) deleteCampaign,
    required TResult Function(UpdateCampaignStatusEvent value)
        updateCampaignStatus,
    required TResult Function(LoadCategoriesEvent value) loadCategories,
    required TResult Function(LoadDonationsEvent value) loadDonations,
    required TResult Function(CreateDonationEvent value) createDonation,
    required TResult Function(LoadCommentsEvent value) loadComments,
    required TResult Function(AddCommentEvent value) addComment,
    required TResult Function(DeleteCommentEvent value) deleteComment,
    required TResult Function(LoadCommentRepliesEvent value) loadCommentReplies,
    required TResult Function(RequestWithdrawalEvent value) requestWithdrawal,
    required TResult Function(LoadWithdrawalsEvent value) loadWithdrawals,
    required TResult Function(ClearCampaignTransientEvent value) clearTransient,
  }) {
    return getCampaignDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCampaignsEvent value)? loadCampaigns,
    TResult? Function(RefreshCampaignsEvent value)? refreshCampaigns,
    TResult? Function(SearchCampaignsEvent value)? searchCampaigns,
    TResult? Function(GetCampaignDetailEvent value)? getCampaignDetail,
    TResult? Function(CreateCampaignEvent value)? createCampaign,
    TResult? Function(UpdateCampaignEvent value)? updateCampaign,
    TResult? Function(DeleteCampaignEvent value)? deleteCampaign,
    TResult? Function(UpdateCampaignStatusEvent value)? updateCampaignStatus,
    TResult? Function(LoadCategoriesEvent value)? loadCategories,
    TResult? Function(LoadDonationsEvent value)? loadDonations,
    TResult? Function(CreateDonationEvent value)? createDonation,
    TResult? Function(LoadCommentsEvent value)? loadComments,
    TResult? Function(AddCommentEvent value)? addComment,
    TResult? Function(DeleteCommentEvent value)? deleteComment,
    TResult? Function(LoadCommentRepliesEvent value)? loadCommentReplies,
    TResult? Function(RequestWithdrawalEvent value)? requestWithdrawal,
    TResult? Function(LoadWithdrawalsEvent value)? loadWithdrawals,
    TResult? Function(ClearCampaignTransientEvent value)? clearTransient,
  }) {
    return getCampaignDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCampaignsEvent value)? loadCampaigns,
    TResult Function(RefreshCampaignsEvent value)? refreshCampaigns,
    TResult Function(SearchCampaignsEvent value)? searchCampaigns,
    TResult Function(GetCampaignDetailEvent value)? getCampaignDetail,
    TResult Function(CreateCampaignEvent value)? createCampaign,
    TResult Function(UpdateCampaignEvent value)? updateCampaign,
    TResult Function(DeleteCampaignEvent value)? deleteCampaign,
    TResult Function(UpdateCampaignStatusEvent value)? updateCampaignStatus,
    TResult Function(LoadCategoriesEvent value)? loadCategories,
    TResult Function(LoadDonationsEvent value)? loadDonations,
    TResult Function(CreateDonationEvent value)? createDonation,
    TResult Function(LoadCommentsEvent value)? loadComments,
    TResult Function(AddCommentEvent value)? addComment,
    TResult Function(DeleteCommentEvent value)? deleteComment,
    TResult Function(LoadCommentRepliesEvent value)? loadCommentReplies,
    TResult Function(RequestWithdrawalEvent value)? requestWithdrawal,
    TResult Function(LoadWithdrawalsEvent value)? loadWithdrawals,
    TResult Function(ClearCampaignTransientEvent value)? clearTransient,
    required TResult orElse(),
  }) {
    if (getCampaignDetail != null) {
      return getCampaignDetail(this);
    }
    return orElse();
  }
}

abstract class GetCampaignDetailEvent implements CampaignEvent {
  const factory GetCampaignDetailEvent({required final String campaignId}) =
      _$GetCampaignDetailEventImpl;

  String get campaignId;

  /// Create a copy of CampaignEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetCampaignDetailEventImplCopyWith<_$GetCampaignDetailEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateCampaignEventImplCopyWith<$Res> {
  factory _$$CreateCampaignEventImplCopyWith(_$CreateCampaignEventImpl value,
          $Res Function(_$CreateCampaignEventImpl) then) =
      __$$CreateCampaignEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CampaignEntity campaign});

  $CampaignEntityCopyWith<$Res> get campaign;
}

/// @nodoc
class __$$CreateCampaignEventImplCopyWithImpl<$Res>
    extends _$CampaignEventCopyWithImpl<$Res, _$CreateCampaignEventImpl>
    implements _$$CreateCampaignEventImplCopyWith<$Res> {
  __$$CreateCampaignEventImplCopyWithImpl(_$CreateCampaignEventImpl _value,
      $Res Function(_$CreateCampaignEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CampaignEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? campaign = null,
  }) {
    return _then(_$CreateCampaignEventImpl(
      campaign: null == campaign
          ? _value.campaign
          : campaign // ignore: cast_nullable_to_non_nullable
              as CampaignEntity,
    ));
  }

  /// Create a copy of CampaignEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CampaignEntityCopyWith<$Res> get campaign {
    return $CampaignEntityCopyWith<$Res>(_value.campaign, (value) {
      return _then(_value.copyWith(campaign: value));
    });
  }
}

/// @nodoc

class _$CreateCampaignEventImpl implements CreateCampaignEvent {
  const _$CreateCampaignEventImpl({required this.campaign});

  @override
  final CampaignEntity campaign;

  @override
  String toString() {
    return 'CampaignEvent.createCampaign(campaign: $campaign)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateCampaignEventImpl &&
            (identical(other.campaign, campaign) ||
                other.campaign == campaign));
  }

  @override
  int get hashCode => Object.hash(runtimeType, campaign);

  /// Create a copy of CampaignEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateCampaignEventImplCopyWith<_$CreateCampaignEventImpl> get copyWith =>
      __$$CreateCampaignEventImplCopyWithImpl<_$CreateCampaignEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? categoryId, int limit) loadCampaigns,
    required TResult Function(String? categoryId, int limit) refreshCampaigns,
    required TResult Function(String query, String? categoryId, int limit)
        searchCampaigns,
    required TResult Function(String campaignId) getCampaignDetail,
    required TResult Function(CampaignEntity campaign) createCampaign,
    required TResult Function(CampaignEntity campaign) updateCampaign,
    required TResult Function(String campaignId) deleteCampaign,
    required TResult Function(String campaignId, String status)
        updateCampaignStatus,
    required TResult Function() loadCategories,
    required TResult Function(String campaignId, int limit) loadDonations,
    required TResult Function(DonationEntity donation) createDonation,
    required TResult Function(String campaignId, bool includeReplies)
        loadComments,
    required TResult Function(CampaignCommentEntity comment) addComment,
    required TResult Function(String campaignId, String commentId)
        deleteComment,
    required TResult Function(String parentId) loadCommentReplies,
    required TResult Function(WithdrawalEntity withdrawal) requestWithdrawal,
    required TResult Function(String campaignId) loadWithdrawals,
    required TResult Function() clearTransient,
  }) {
    return createCampaign(campaign);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? categoryId, int limit)? loadCampaigns,
    TResult? Function(String? categoryId, int limit)? refreshCampaigns,
    TResult? Function(String query, String? categoryId, int limit)?
        searchCampaigns,
    TResult? Function(String campaignId)? getCampaignDetail,
    TResult? Function(CampaignEntity campaign)? createCampaign,
    TResult? Function(CampaignEntity campaign)? updateCampaign,
    TResult? Function(String campaignId)? deleteCampaign,
    TResult? Function(String campaignId, String status)? updateCampaignStatus,
    TResult? Function()? loadCategories,
    TResult? Function(String campaignId, int limit)? loadDonations,
    TResult? Function(DonationEntity donation)? createDonation,
    TResult? Function(String campaignId, bool includeReplies)? loadComments,
    TResult? Function(CampaignCommentEntity comment)? addComment,
    TResult? Function(String campaignId, String commentId)? deleteComment,
    TResult? Function(String parentId)? loadCommentReplies,
    TResult? Function(WithdrawalEntity withdrawal)? requestWithdrawal,
    TResult? Function(String campaignId)? loadWithdrawals,
    TResult? Function()? clearTransient,
  }) {
    return createCampaign?.call(campaign);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? categoryId, int limit)? loadCampaigns,
    TResult Function(String? categoryId, int limit)? refreshCampaigns,
    TResult Function(String query, String? categoryId, int limit)?
        searchCampaigns,
    TResult Function(String campaignId)? getCampaignDetail,
    TResult Function(CampaignEntity campaign)? createCampaign,
    TResult Function(CampaignEntity campaign)? updateCampaign,
    TResult Function(String campaignId)? deleteCampaign,
    TResult Function(String campaignId, String status)? updateCampaignStatus,
    TResult Function()? loadCategories,
    TResult Function(String campaignId, int limit)? loadDonations,
    TResult Function(DonationEntity donation)? createDonation,
    TResult Function(String campaignId, bool includeReplies)? loadComments,
    TResult Function(CampaignCommentEntity comment)? addComment,
    TResult Function(String campaignId, String commentId)? deleteComment,
    TResult Function(String parentId)? loadCommentReplies,
    TResult Function(WithdrawalEntity withdrawal)? requestWithdrawal,
    TResult Function(String campaignId)? loadWithdrawals,
    TResult Function()? clearTransient,
    required TResult orElse(),
  }) {
    if (createCampaign != null) {
      return createCampaign(campaign);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCampaignsEvent value) loadCampaigns,
    required TResult Function(RefreshCampaignsEvent value) refreshCampaigns,
    required TResult Function(SearchCampaignsEvent value) searchCampaigns,
    required TResult Function(GetCampaignDetailEvent value) getCampaignDetail,
    required TResult Function(CreateCampaignEvent value) createCampaign,
    required TResult Function(UpdateCampaignEvent value) updateCampaign,
    required TResult Function(DeleteCampaignEvent value) deleteCampaign,
    required TResult Function(UpdateCampaignStatusEvent value)
        updateCampaignStatus,
    required TResult Function(LoadCategoriesEvent value) loadCategories,
    required TResult Function(LoadDonationsEvent value) loadDonations,
    required TResult Function(CreateDonationEvent value) createDonation,
    required TResult Function(LoadCommentsEvent value) loadComments,
    required TResult Function(AddCommentEvent value) addComment,
    required TResult Function(DeleteCommentEvent value) deleteComment,
    required TResult Function(LoadCommentRepliesEvent value) loadCommentReplies,
    required TResult Function(RequestWithdrawalEvent value) requestWithdrawal,
    required TResult Function(LoadWithdrawalsEvent value) loadWithdrawals,
    required TResult Function(ClearCampaignTransientEvent value) clearTransient,
  }) {
    return createCampaign(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCampaignsEvent value)? loadCampaigns,
    TResult? Function(RefreshCampaignsEvent value)? refreshCampaigns,
    TResult? Function(SearchCampaignsEvent value)? searchCampaigns,
    TResult? Function(GetCampaignDetailEvent value)? getCampaignDetail,
    TResult? Function(CreateCampaignEvent value)? createCampaign,
    TResult? Function(UpdateCampaignEvent value)? updateCampaign,
    TResult? Function(DeleteCampaignEvent value)? deleteCampaign,
    TResult? Function(UpdateCampaignStatusEvent value)? updateCampaignStatus,
    TResult? Function(LoadCategoriesEvent value)? loadCategories,
    TResult? Function(LoadDonationsEvent value)? loadDonations,
    TResult? Function(CreateDonationEvent value)? createDonation,
    TResult? Function(LoadCommentsEvent value)? loadComments,
    TResult? Function(AddCommentEvent value)? addComment,
    TResult? Function(DeleteCommentEvent value)? deleteComment,
    TResult? Function(LoadCommentRepliesEvent value)? loadCommentReplies,
    TResult? Function(RequestWithdrawalEvent value)? requestWithdrawal,
    TResult? Function(LoadWithdrawalsEvent value)? loadWithdrawals,
    TResult? Function(ClearCampaignTransientEvent value)? clearTransient,
  }) {
    return createCampaign?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCampaignsEvent value)? loadCampaigns,
    TResult Function(RefreshCampaignsEvent value)? refreshCampaigns,
    TResult Function(SearchCampaignsEvent value)? searchCampaigns,
    TResult Function(GetCampaignDetailEvent value)? getCampaignDetail,
    TResult Function(CreateCampaignEvent value)? createCampaign,
    TResult Function(UpdateCampaignEvent value)? updateCampaign,
    TResult Function(DeleteCampaignEvent value)? deleteCampaign,
    TResult Function(UpdateCampaignStatusEvent value)? updateCampaignStatus,
    TResult Function(LoadCategoriesEvent value)? loadCategories,
    TResult Function(LoadDonationsEvent value)? loadDonations,
    TResult Function(CreateDonationEvent value)? createDonation,
    TResult Function(LoadCommentsEvent value)? loadComments,
    TResult Function(AddCommentEvent value)? addComment,
    TResult Function(DeleteCommentEvent value)? deleteComment,
    TResult Function(LoadCommentRepliesEvent value)? loadCommentReplies,
    TResult Function(RequestWithdrawalEvent value)? requestWithdrawal,
    TResult Function(LoadWithdrawalsEvent value)? loadWithdrawals,
    TResult Function(ClearCampaignTransientEvent value)? clearTransient,
    required TResult orElse(),
  }) {
    if (createCampaign != null) {
      return createCampaign(this);
    }
    return orElse();
  }
}

abstract class CreateCampaignEvent implements CampaignEvent {
  const factory CreateCampaignEvent({required final CampaignEntity campaign}) =
      _$CreateCampaignEventImpl;

  CampaignEntity get campaign;

  /// Create a copy of CampaignEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateCampaignEventImplCopyWith<_$CreateCampaignEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCampaignEventImplCopyWith<$Res> {
  factory _$$UpdateCampaignEventImplCopyWith(_$UpdateCampaignEventImpl value,
          $Res Function(_$UpdateCampaignEventImpl) then) =
      __$$UpdateCampaignEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CampaignEntity campaign});

  $CampaignEntityCopyWith<$Res> get campaign;
}

/// @nodoc
class __$$UpdateCampaignEventImplCopyWithImpl<$Res>
    extends _$CampaignEventCopyWithImpl<$Res, _$UpdateCampaignEventImpl>
    implements _$$UpdateCampaignEventImplCopyWith<$Res> {
  __$$UpdateCampaignEventImplCopyWithImpl(_$UpdateCampaignEventImpl _value,
      $Res Function(_$UpdateCampaignEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CampaignEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? campaign = null,
  }) {
    return _then(_$UpdateCampaignEventImpl(
      campaign: null == campaign
          ? _value.campaign
          : campaign // ignore: cast_nullable_to_non_nullable
              as CampaignEntity,
    ));
  }

  /// Create a copy of CampaignEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CampaignEntityCopyWith<$Res> get campaign {
    return $CampaignEntityCopyWith<$Res>(_value.campaign, (value) {
      return _then(_value.copyWith(campaign: value));
    });
  }
}

/// @nodoc

class _$UpdateCampaignEventImpl implements UpdateCampaignEvent {
  const _$UpdateCampaignEventImpl({required this.campaign});

  @override
  final CampaignEntity campaign;

  @override
  String toString() {
    return 'CampaignEvent.updateCampaign(campaign: $campaign)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCampaignEventImpl &&
            (identical(other.campaign, campaign) ||
                other.campaign == campaign));
  }

  @override
  int get hashCode => Object.hash(runtimeType, campaign);

  /// Create a copy of CampaignEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCampaignEventImplCopyWith<_$UpdateCampaignEventImpl> get copyWith =>
      __$$UpdateCampaignEventImplCopyWithImpl<_$UpdateCampaignEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? categoryId, int limit) loadCampaigns,
    required TResult Function(String? categoryId, int limit) refreshCampaigns,
    required TResult Function(String query, String? categoryId, int limit)
        searchCampaigns,
    required TResult Function(String campaignId) getCampaignDetail,
    required TResult Function(CampaignEntity campaign) createCampaign,
    required TResult Function(CampaignEntity campaign) updateCampaign,
    required TResult Function(String campaignId) deleteCampaign,
    required TResult Function(String campaignId, String status)
        updateCampaignStatus,
    required TResult Function() loadCategories,
    required TResult Function(String campaignId, int limit) loadDonations,
    required TResult Function(DonationEntity donation) createDonation,
    required TResult Function(String campaignId, bool includeReplies)
        loadComments,
    required TResult Function(CampaignCommentEntity comment) addComment,
    required TResult Function(String campaignId, String commentId)
        deleteComment,
    required TResult Function(String parentId) loadCommentReplies,
    required TResult Function(WithdrawalEntity withdrawal) requestWithdrawal,
    required TResult Function(String campaignId) loadWithdrawals,
    required TResult Function() clearTransient,
  }) {
    return updateCampaign(campaign);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? categoryId, int limit)? loadCampaigns,
    TResult? Function(String? categoryId, int limit)? refreshCampaigns,
    TResult? Function(String query, String? categoryId, int limit)?
        searchCampaigns,
    TResult? Function(String campaignId)? getCampaignDetail,
    TResult? Function(CampaignEntity campaign)? createCampaign,
    TResult? Function(CampaignEntity campaign)? updateCampaign,
    TResult? Function(String campaignId)? deleteCampaign,
    TResult? Function(String campaignId, String status)? updateCampaignStatus,
    TResult? Function()? loadCategories,
    TResult? Function(String campaignId, int limit)? loadDonations,
    TResult? Function(DonationEntity donation)? createDonation,
    TResult? Function(String campaignId, bool includeReplies)? loadComments,
    TResult? Function(CampaignCommentEntity comment)? addComment,
    TResult? Function(String campaignId, String commentId)? deleteComment,
    TResult? Function(String parentId)? loadCommentReplies,
    TResult? Function(WithdrawalEntity withdrawal)? requestWithdrawal,
    TResult? Function(String campaignId)? loadWithdrawals,
    TResult? Function()? clearTransient,
  }) {
    return updateCampaign?.call(campaign);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? categoryId, int limit)? loadCampaigns,
    TResult Function(String? categoryId, int limit)? refreshCampaigns,
    TResult Function(String query, String? categoryId, int limit)?
        searchCampaigns,
    TResult Function(String campaignId)? getCampaignDetail,
    TResult Function(CampaignEntity campaign)? createCampaign,
    TResult Function(CampaignEntity campaign)? updateCampaign,
    TResult Function(String campaignId)? deleteCampaign,
    TResult Function(String campaignId, String status)? updateCampaignStatus,
    TResult Function()? loadCategories,
    TResult Function(String campaignId, int limit)? loadDonations,
    TResult Function(DonationEntity donation)? createDonation,
    TResult Function(String campaignId, bool includeReplies)? loadComments,
    TResult Function(CampaignCommentEntity comment)? addComment,
    TResult Function(String campaignId, String commentId)? deleteComment,
    TResult Function(String parentId)? loadCommentReplies,
    TResult Function(WithdrawalEntity withdrawal)? requestWithdrawal,
    TResult Function(String campaignId)? loadWithdrawals,
    TResult Function()? clearTransient,
    required TResult orElse(),
  }) {
    if (updateCampaign != null) {
      return updateCampaign(campaign);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCampaignsEvent value) loadCampaigns,
    required TResult Function(RefreshCampaignsEvent value) refreshCampaigns,
    required TResult Function(SearchCampaignsEvent value) searchCampaigns,
    required TResult Function(GetCampaignDetailEvent value) getCampaignDetail,
    required TResult Function(CreateCampaignEvent value) createCampaign,
    required TResult Function(UpdateCampaignEvent value) updateCampaign,
    required TResult Function(DeleteCampaignEvent value) deleteCampaign,
    required TResult Function(UpdateCampaignStatusEvent value)
        updateCampaignStatus,
    required TResult Function(LoadCategoriesEvent value) loadCategories,
    required TResult Function(LoadDonationsEvent value) loadDonations,
    required TResult Function(CreateDonationEvent value) createDonation,
    required TResult Function(LoadCommentsEvent value) loadComments,
    required TResult Function(AddCommentEvent value) addComment,
    required TResult Function(DeleteCommentEvent value) deleteComment,
    required TResult Function(LoadCommentRepliesEvent value) loadCommentReplies,
    required TResult Function(RequestWithdrawalEvent value) requestWithdrawal,
    required TResult Function(LoadWithdrawalsEvent value) loadWithdrawals,
    required TResult Function(ClearCampaignTransientEvent value) clearTransient,
  }) {
    return updateCampaign(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCampaignsEvent value)? loadCampaigns,
    TResult? Function(RefreshCampaignsEvent value)? refreshCampaigns,
    TResult? Function(SearchCampaignsEvent value)? searchCampaigns,
    TResult? Function(GetCampaignDetailEvent value)? getCampaignDetail,
    TResult? Function(CreateCampaignEvent value)? createCampaign,
    TResult? Function(UpdateCampaignEvent value)? updateCampaign,
    TResult? Function(DeleteCampaignEvent value)? deleteCampaign,
    TResult? Function(UpdateCampaignStatusEvent value)? updateCampaignStatus,
    TResult? Function(LoadCategoriesEvent value)? loadCategories,
    TResult? Function(LoadDonationsEvent value)? loadDonations,
    TResult? Function(CreateDonationEvent value)? createDonation,
    TResult? Function(LoadCommentsEvent value)? loadComments,
    TResult? Function(AddCommentEvent value)? addComment,
    TResult? Function(DeleteCommentEvent value)? deleteComment,
    TResult? Function(LoadCommentRepliesEvent value)? loadCommentReplies,
    TResult? Function(RequestWithdrawalEvent value)? requestWithdrawal,
    TResult? Function(LoadWithdrawalsEvent value)? loadWithdrawals,
    TResult? Function(ClearCampaignTransientEvent value)? clearTransient,
  }) {
    return updateCampaign?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCampaignsEvent value)? loadCampaigns,
    TResult Function(RefreshCampaignsEvent value)? refreshCampaigns,
    TResult Function(SearchCampaignsEvent value)? searchCampaigns,
    TResult Function(GetCampaignDetailEvent value)? getCampaignDetail,
    TResult Function(CreateCampaignEvent value)? createCampaign,
    TResult Function(UpdateCampaignEvent value)? updateCampaign,
    TResult Function(DeleteCampaignEvent value)? deleteCampaign,
    TResult Function(UpdateCampaignStatusEvent value)? updateCampaignStatus,
    TResult Function(LoadCategoriesEvent value)? loadCategories,
    TResult Function(LoadDonationsEvent value)? loadDonations,
    TResult Function(CreateDonationEvent value)? createDonation,
    TResult Function(LoadCommentsEvent value)? loadComments,
    TResult Function(AddCommentEvent value)? addComment,
    TResult Function(DeleteCommentEvent value)? deleteComment,
    TResult Function(LoadCommentRepliesEvent value)? loadCommentReplies,
    TResult Function(RequestWithdrawalEvent value)? requestWithdrawal,
    TResult Function(LoadWithdrawalsEvent value)? loadWithdrawals,
    TResult Function(ClearCampaignTransientEvent value)? clearTransient,
    required TResult orElse(),
  }) {
    if (updateCampaign != null) {
      return updateCampaign(this);
    }
    return orElse();
  }
}

abstract class UpdateCampaignEvent implements CampaignEvent {
  const factory UpdateCampaignEvent({required final CampaignEntity campaign}) =
      _$UpdateCampaignEventImpl;

  CampaignEntity get campaign;

  /// Create a copy of CampaignEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateCampaignEventImplCopyWith<_$UpdateCampaignEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteCampaignEventImplCopyWith<$Res> {
  factory _$$DeleteCampaignEventImplCopyWith(_$DeleteCampaignEventImpl value,
          $Res Function(_$DeleteCampaignEventImpl) then) =
      __$$DeleteCampaignEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String campaignId});
}

/// @nodoc
class __$$DeleteCampaignEventImplCopyWithImpl<$Res>
    extends _$CampaignEventCopyWithImpl<$Res, _$DeleteCampaignEventImpl>
    implements _$$DeleteCampaignEventImplCopyWith<$Res> {
  __$$DeleteCampaignEventImplCopyWithImpl(_$DeleteCampaignEventImpl _value,
      $Res Function(_$DeleteCampaignEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CampaignEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? campaignId = null,
  }) {
    return _then(_$DeleteCampaignEventImpl(
      campaignId: null == campaignId
          ? _value.campaignId
          : campaignId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteCampaignEventImpl implements DeleteCampaignEvent {
  const _$DeleteCampaignEventImpl({required this.campaignId});

  @override
  final String campaignId;

  @override
  String toString() {
    return 'CampaignEvent.deleteCampaign(campaignId: $campaignId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCampaignEventImpl &&
            (identical(other.campaignId, campaignId) ||
                other.campaignId == campaignId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, campaignId);

  /// Create a copy of CampaignEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCampaignEventImplCopyWith<_$DeleteCampaignEventImpl> get copyWith =>
      __$$DeleteCampaignEventImplCopyWithImpl<_$DeleteCampaignEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? categoryId, int limit) loadCampaigns,
    required TResult Function(String? categoryId, int limit) refreshCampaigns,
    required TResult Function(String query, String? categoryId, int limit)
        searchCampaigns,
    required TResult Function(String campaignId) getCampaignDetail,
    required TResult Function(CampaignEntity campaign) createCampaign,
    required TResult Function(CampaignEntity campaign) updateCampaign,
    required TResult Function(String campaignId) deleteCampaign,
    required TResult Function(String campaignId, String status)
        updateCampaignStatus,
    required TResult Function() loadCategories,
    required TResult Function(String campaignId, int limit) loadDonations,
    required TResult Function(DonationEntity donation) createDonation,
    required TResult Function(String campaignId, bool includeReplies)
        loadComments,
    required TResult Function(CampaignCommentEntity comment) addComment,
    required TResult Function(String campaignId, String commentId)
        deleteComment,
    required TResult Function(String parentId) loadCommentReplies,
    required TResult Function(WithdrawalEntity withdrawal) requestWithdrawal,
    required TResult Function(String campaignId) loadWithdrawals,
    required TResult Function() clearTransient,
  }) {
    return deleteCampaign(campaignId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? categoryId, int limit)? loadCampaigns,
    TResult? Function(String? categoryId, int limit)? refreshCampaigns,
    TResult? Function(String query, String? categoryId, int limit)?
        searchCampaigns,
    TResult? Function(String campaignId)? getCampaignDetail,
    TResult? Function(CampaignEntity campaign)? createCampaign,
    TResult? Function(CampaignEntity campaign)? updateCampaign,
    TResult? Function(String campaignId)? deleteCampaign,
    TResult? Function(String campaignId, String status)? updateCampaignStatus,
    TResult? Function()? loadCategories,
    TResult? Function(String campaignId, int limit)? loadDonations,
    TResult? Function(DonationEntity donation)? createDonation,
    TResult? Function(String campaignId, bool includeReplies)? loadComments,
    TResult? Function(CampaignCommentEntity comment)? addComment,
    TResult? Function(String campaignId, String commentId)? deleteComment,
    TResult? Function(String parentId)? loadCommentReplies,
    TResult? Function(WithdrawalEntity withdrawal)? requestWithdrawal,
    TResult? Function(String campaignId)? loadWithdrawals,
    TResult? Function()? clearTransient,
  }) {
    return deleteCampaign?.call(campaignId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? categoryId, int limit)? loadCampaigns,
    TResult Function(String? categoryId, int limit)? refreshCampaigns,
    TResult Function(String query, String? categoryId, int limit)?
        searchCampaigns,
    TResult Function(String campaignId)? getCampaignDetail,
    TResult Function(CampaignEntity campaign)? createCampaign,
    TResult Function(CampaignEntity campaign)? updateCampaign,
    TResult Function(String campaignId)? deleteCampaign,
    TResult Function(String campaignId, String status)? updateCampaignStatus,
    TResult Function()? loadCategories,
    TResult Function(String campaignId, int limit)? loadDonations,
    TResult Function(DonationEntity donation)? createDonation,
    TResult Function(String campaignId, bool includeReplies)? loadComments,
    TResult Function(CampaignCommentEntity comment)? addComment,
    TResult Function(String campaignId, String commentId)? deleteComment,
    TResult Function(String parentId)? loadCommentReplies,
    TResult Function(WithdrawalEntity withdrawal)? requestWithdrawal,
    TResult Function(String campaignId)? loadWithdrawals,
    TResult Function()? clearTransient,
    required TResult orElse(),
  }) {
    if (deleteCampaign != null) {
      return deleteCampaign(campaignId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCampaignsEvent value) loadCampaigns,
    required TResult Function(RefreshCampaignsEvent value) refreshCampaigns,
    required TResult Function(SearchCampaignsEvent value) searchCampaigns,
    required TResult Function(GetCampaignDetailEvent value) getCampaignDetail,
    required TResult Function(CreateCampaignEvent value) createCampaign,
    required TResult Function(UpdateCampaignEvent value) updateCampaign,
    required TResult Function(DeleteCampaignEvent value) deleteCampaign,
    required TResult Function(UpdateCampaignStatusEvent value)
        updateCampaignStatus,
    required TResult Function(LoadCategoriesEvent value) loadCategories,
    required TResult Function(LoadDonationsEvent value) loadDonations,
    required TResult Function(CreateDonationEvent value) createDonation,
    required TResult Function(LoadCommentsEvent value) loadComments,
    required TResult Function(AddCommentEvent value) addComment,
    required TResult Function(DeleteCommentEvent value) deleteComment,
    required TResult Function(LoadCommentRepliesEvent value) loadCommentReplies,
    required TResult Function(RequestWithdrawalEvent value) requestWithdrawal,
    required TResult Function(LoadWithdrawalsEvent value) loadWithdrawals,
    required TResult Function(ClearCampaignTransientEvent value) clearTransient,
  }) {
    return deleteCampaign(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCampaignsEvent value)? loadCampaigns,
    TResult? Function(RefreshCampaignsEvent value)? refreshCampaigns,
    TResult? Function(SearchCampaignsEvent value)? searchCampaigns,
    TResult? Function(GetCampaignDetailEvent value)? getCampaignDetail,
    TResult? Function(CreateCampaignEvent value)? createCampaign,
    TResult? Function(UpdateCampaignEvent value)? updateCampaign,
    TResult? Function(DeleteCampaignEvent value)? deleteCampaign,
    TResult? Function(UpdateCampaignStatusEvent value)? updateCampaignStatus,
    TResult? Function(LoadCategoriesEvent value)? loadCategories,
    TResult? Function(LoadDonationsEvent value)? loadDonations,
    TResult? Function(CreateDonationEvent value)? createDonation,
    TResult? Function(LoadCommentsEvent value)? loadComments,
    TResult? Function(AddCommentEvent value)? addComment,
    TResult? Function(DeleteCommentEvent value)? deleteComment,
    TResult? Function(LoadCommentRepliesEvent value)? loadCommentReplies,
    TResult? Function(RequestWithdrawalEvent value)? requestWithdrawal,
    TResult? Function(LoadWithdrawalsEvent value)? loadWithdrawals,
    TResult? Function(ClearCampaignTransientEvent value)? clearTransient,
  }) {
    return deleteCampaign?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCampaignsEvent value)? loadCampaigns,
    TResult Function(RefreshCampaignsEvent value)? refreshCampaigns,
    TResult Function(SearchCampaignsEvent value)? searchCampaigns,
    TResult Function(GetCampaignDetailEvent value)? getCampaignDetail,
    TResult Function(CreateCampaignEvent value)? createCampaign,
    TResult Function(UpdateCampaignEvent value)? updateCampaign,
    TResult Function(DeleteCampaignEvent value)? deleteCampaign,
    TResult Function(UpdateCampaignStatusEvent value)? updateCampaignStatus,
    TResult Function(LoadCategoriesEvent value)? loadCategories,
    TResult Function(LoadDonationsEvent value)? loadDonations,
    TResult Function(CreateDonationEvent value)? createDonation,
    TResult Function(LoadCommentsEvent value)? loadComments,
    TResult Function(AddCommentEvent value)? addComment,
    TResult Function(DeleteCommentEvent value)? deleteComment,
    TResult Function(LoadCommentRepliesEvent value)? loadCommentReplies,
    TResult Function(RequestWithdrawalEvent value)? requestWithdrawal,
    TResult Function(LoadWithdrawalsEvent value)? loadWithdrawals,
    TResult Function(ClearCampaignTransientEvent value)? clearTransient,
    required TResult orElse(),
  }) {
    if (deleteCampaign != null) {
      return deleteCampaign(this);
    }
    return orElse();
  }
}

abstract class DeleteCampaignEvent implements CampaignEvent {
  const factory DeleteCampaignEvent({required final String campaignId}) =
      _$DeleteCampaignEventImpl;

  String get campaignId;

  /// Create a copy of CampaignEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteCampaignEventImplCopyWith<_$DeleteCampaignEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCampaignStatusEventImplCopyWith<$Res> {
  factory _$$UpdateCampaignStatusEventImplCopyWith(
          _$UpdateCampaignStatusEventImpl value,
          $Res Function(_$UpdateCampaignStatusEventImpl) then) =
      __$$UpdateCampaignStatusEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String campaignId, String status});
}

/// @nodoc
class __$$UpdateCampaignStatusEventImplCopyWithImpl<$Res>
    extends _$CampaignEventCopyWithImpl<$Res, _$UpdateCampaignStatusEventImpl>
    implements _$$UpdateCampaignStatusEventImplCopyWith<$Res> {
  __$$UpdateCampaignStatusEventImplCopyWithImpl(
      _$UpdateCampaignStatusEventImpl _value,
      $Res Function(_$UpdateCampaignStatusEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CampaignEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? campaignId = null,
    Object? status = null,
  }) {
    return _then(_$UpdateCampaignStatusEventImpl(
      campaignId: null == campaignId
          ? _value.campaignId
          : campaignId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateCampaignStatusEventImpl implements UpdateCampaignStatusEvent {
  const _$UpdateCampaignStatusEventImpl(
      {required this.campaignId, required this.status});

  @override
  final String campaignId;
  @override
  final String status;

  @override
  String toString() {
    return 'CampaignEvent.updateCampaignStatus(campaignId: $campaignId, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCampaignStatusEventImpl &&
            (identical(other.campaignId, campaignId) ||
                other.campaignId == campaignId) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, campaignId, status);

  /// Create a copy of CampaignEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCampaignStatusEventImplCopyWith<_$UpdateCampaignStatusEventImpl>
      get copyWith => __$$UpdateCampaignStatusEventImplCopyWithImpl<
          _$UpdateCampaignStatusEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? categoryId, int limit) loadCampaigns,
    required TResult Function(String? categoryId, int limit) refreshCampaigns,
    required TResult Function(String query, String? categoryId, int limit)
        searchCampaigns,
    required TResult Function(String campaignId) getCampaignDetail,
    required TResult Function(CampaignEntity campaign) createCampaign,
    required TResult Function(CampaignEntity campaign) updateCampaign,
    required TResult Function(String campaignId) deleteCampaign,
    required TResult Function(String campaignId, String status)
        updateCampaignStatus,
    required TResult Function() loadCategories,
    required TResult Function(String campaignId, int limit) loadDonations,
    required TResult Function(DonationEntity donation) createDonation,
    required TResult Function(String campaignId, bool includeReplies)
        loadComments,
    required TResult Function(CampaignCommentEntity comment) addComment,
    required TResult Function(String campaignId, String commentId)
        deleteComment,
    required TResult Function(String parentId) loadCommentReplies,
    required TResult Function(WithdrawalEntity withdrawal) requestWithdrawal,
    required TResult Function(String campaignId) loadWithdrawals,
    required TResult Function() clearTransient,
  }) {
    return updateCampaignStatus(campaignId, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? categoryId, int limit)? loadCampaigns,
    TResult? Function(String? categoryId, int limit)? refreshCampaigns,
    TResult? Function(String query, String? categoryId, int limit)?
        searchCampaigns,
    TResult? Function(String campaignId)? getCampaignDetail,
    TResult? Function(CampaignEntity campaign)? createCampaign,
    TResult? Function(CampaignEntity campaign)? updateCampaign,
    TResult? Function(String campaignId)? deleteCampaign,
    TResult? Function(String campaignId, String status)? updateCampaignStatus,
    TResult? Function()? loadCategories,
    TResult? Function(String campaignId, int limit)? loadDonations,
    TResult? Function(DonationEntity donation)? createDonation,
    TResult? Function(String campaignId, bool includeReplies)? loadComments,
    TResult? Function(CampaignCommentEntity comment)? addComment,
    TResult? Function(String campaignId, String commentId)? deleteComment,
    TResult? Function(String parentId)? loadCommentReplies,
    TResult? Function(WithdrawalEntity withdrawal)? requestWithdrawal,
    TResult? Function(String campaignId)? loadWithdrawals,
    TResult? Function()? clearTransient,
  }) {
    return updateCampaignStatus?.call(campaignId, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? categoryId, int limit)? loadCampaigns,
    TResult Function(String? categoryId, int limit)? refreshCampaigns,
    TResult Function(String query, String? categoryId, int limit)?
        searchCampaigns,
    TResult Function(String campaignId)? getCampaignDetail,
    TResult Function(CampaignEntity campaign)? createCampaign,
    TResult Function(CampaignEntity campaign)? updateCampaign,
    TResult Function(String campaignId)? deleteCampaign,
    TResult Function(String campaignId, String status)? updateCampaignStatus,
    TResult Function()? loadCategories,
    TResult Function(String campaignId, int limit)? loadDonations,
    TResult Function(DonationEntity donation)? createDonation,
    TResult Function(String campaignId, bool includeReplies)? loadComments,
    TResult Function(CampaignCommentEntity comment)? addComment,
    TResult Function(String campaignId, String commentId)? deleteComment,
    TResult Function(String parentId)? loadCommentReplies,
    TResult Function(WithdrawalEntity withdrawal)? requestWithdrawal,
    TResult Function(String campaignId)? loadWithdrawals,
    TResult Function()? clearTransient,
    required TResult orElse(),
  }) {
    if (updateCampaignStatus != null) {
      return updateCampaignStatus(campaignId, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCampaignsEvent value) loadCampaigns,
    required TResult Function(RefreshCampaignsEvent value) refreshCampaigns,
    required TResult Function(SearchCampaignsEvent value) searchCampaigns,
    required TResult Function(GetCampaignDetailEvent value) getCampaignDetail,
    required TResult Function(CreateCampaignEvent value) createCampaign,
    required TResult Function(UpdateCampaignEvent value) updateCampaign,
    required TResult Function(DeleteCampaignEvent value) deleteCampaign,
    required TResult Function(UpdateCampaignStatusEvent value)
        updateCampaignStatus,
    required TResult Function(LoadCategoriesEvent value) loadCategories,
    required TResult Function(LoadDonationsEvent value) loadDonations,
    required TResult Function(CreateDonationEvent value) createDonation,
    required TResult Function(LoadCommentsEvent value) loadComments,
    required TResult Function(AddCommentEvent value) addComment,
    required TResult Function(DeleteCommentEvent value) deleteComment,
    required TResult Function(LoadCommentRepliesEvent value) loadCommentReplies,
    required TResult Function(RequestWithdrawalEvent value) requestWithdrawal,
    required TResult Function(LoadWithdrawalsEvent value) loadWithdrawals,
    required TResult Function(ClearCampaignTransientEvent value) clearTransient,
  }) {
    return updateCampaignStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCampaignsEvent value)? loadCampaigns,
    TResult? Function(RefreshCampaignsEvent value)? refreshCampaigns,
    TResult? Function(SearchCampaignsEvent value)? searchCampaigns,
    TResult? Function(GetCampaignDetailEvent value)? getCampaignDetail,
    TResult? Function(CreateCampaignEvent value)? createCampaign,
    TResult? Function(UpdateCampaignEvent value)? updateCampaign,
    TResult? Function(DeleteCampaignEvent value)? deleteCampaign,
    TResult? Function(UpdateCampaignStatusEvent value)? updateCampaignStatus,
    TResult? Function(LoadCategoriesEvent value)? loadCategories,
    TResult? Function(LoadDonationsEvent value)? loadDonations,
    TResult? Function(CreateDonationEvent value)? createDonation,
    TResult? Function(LoadCommentsEvent value)? loadComments,
    TResult? Function(AddCommentEvent value)? addComment,
    TResult? Function(DeleteCommentEvent value)? deleteComment,
    TResult? Function(LoadCommentRepliesEvent value)? loadCommentReplies,
    TResult? Function(RequestWithdrawalEvent value)? requestWithdrawal,
    TResult? Function(LoadWithdrawalsEvent value)? loadWithdrawals,
    TResult? Function(ClearCampaignTransientEvent value)? clearTransient,
  }) {
    return updateCampaignStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCampaignsEvent value)? loadCampaigns,
    TResult Function(RefreshCampaignsEvent value)? refreshCampaigns,
    TResult Function(SearchCampaignsEvent value)? searchCampaigns,
    TResult Function(GetCampaignDetailEvent value)? getCampaignDetail,
    TResult Function(CreateCampaignEvent value)? createCampaign,
    TResult Function(UpdateCampaignEvent value)? updateCampaign,
    TResult Function(DeleteCampaignEvent value)? deleteCampaign,
    TResult Function(UpdateCampaignStatusEvent value)? updateCampaignStatus,
    TResult Function(LoadCategoriesEvent value)? loadCategories,
    TResult Function(LoadDonationsEvent value)? loadDonations,
    TResult Function(CreateDonationEvent value)? createDonation,
    TResult Function(LoadCommentsEvent value)? loadComments,
    TResult Function(AddCommentEvent value)? addComment,
    TResult Function(DeleteCommentEvent value)? deleteComment,
    TResult Function(LoadCommentRepliesEvent value)? loadCommentReplies,
    TResult Function(RequestWithdrawalEvent value)? requestWithdrawal,
    TResult Function(LoadWithdrawalsEvent value)? loadWithdrawals,
    TResult Function(ClearCampaignTransientEvent value)? clearTransient,
    required TResult orElse(),
  }) {
    if (updateCampaignStatus != null) {
      return updateCampaignStatus(this);
    }
    return orElse();
  }
}

abstract class UpdateCampaignStatusEvent implements CampaignEvent {
  const factory UpdateCampaignStatusEvent(
      {required final String campaignId,
      required final String status}) = _$UpdateCampaignStatusEventImpl;

  String get campaignId;
  String get status;

  /// Create a copy of CampaignEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateCampaignStatusEventImplCopyWith<_$UpdateCampaignStatusEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadCategoriesEventImplCopyWith<$Res> {
  factory _$$LoadCategoriesEventImplCopyWith(_$LoadCategoriesEventImpl value,
          $Res Function(_$LoadCategoriesEventImpl) then) =
      __$$LoadCategoriesEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadCategoriesEventImplCopyWithImpl<$Res>
    extends _$CampaignEventCopyWithImpl<$Res, _$LoadCategoriesEventImpl>
    implements _$$LoadCategoriesEventImplCopyWith<$Res> {
  __$$LoadCategoriesEventImplCopyWithImpl(_$LoadCategoriesEventImpl _value,
      $Res Function(_$LoadCategoriesEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CampaignEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadCategoriesEventImpl implements LoadCategoriesEvent {
  const _$LoadCategoriesEventImpl();

  @override
  String toString() {
    return 'CampaignEvent.loadCategories()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadCategoriesEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? categoryId, int limit) loadCampaigns,
    required TResult Function(String? categoryId, int limit) refreshCampaigns,
    required TResult Function(String query, String? categoryId, int limit)
        searchCampaigns,
    required TResult Function(String campaignId) getCampaignDetail,
    required TResult Function(CampaignEntity campaign) createCampaign,
    required TResult Function(CampaignEntity campaign) updateCampaign,
    required TResult Function(String campaignId) deleteCampaign,
    required TResult Function(String campaignId, String status)
        updateCampaignStatus,
    required TResult Function() loadCategories,
    required TResult Function(String campaignId, int limit) loadDonations,
    required TResult Function(DonationEntity donation) createDonation,
    required TResult Function(String campaignId, bool includeReplies)
        loadComments,
    required TResult Function(CampaignCommentEntity comment) addComment,
    required TResult Function(String campaignId, String commentId)
        deleteComment,
    required TResult Function(String parentId) loadCommentReplies,
    required TResult Function(WithdrawalEntity withdrawal) requestWithdrawal,
    required TResult Function(String campaignId) loadWithdrawals,
    required TResult Function() clearTransient,
  }) {
    return loadCategories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? categoryId, int limit)? loadCampaigns,
    TResult? Function(String? categoryId, int limit)? refreshCampaigns,
    TResult? Function(String query, String? categoryId, int limit)?
        searchCampaigns,
    TResult? Function(String campaignId)? getCampaignDetail,
    TResult? Function(CampaignEntity campaign)? createCampaign,
    TResult? Function(CampaignEntity campaign)? updateCampaign,
    TResult? Function(String campaignId)? deleteCampaign,
    TResult? Function(String campaignId, String status)? updateCampaignStatus,
    TResult? Function()? loadCategories,
    TResult? Function(String campaignId, int limit)? loadDonations,
    TResult? Function(DonationEntity donation)? createDonation,
    TResult? Function(String campaignId, bool includeReplies)? loadComments,
    TResult? Function(CampaignCommentEntity comment)? addComment,
    TResult? Function(String campaignId, String commentId)? deleteComment,
    TResult? Function(String parentId)? loadCommentReplies,
    TResult? Function(WithdrawalEntity withdrawal)? requestWithdrawal,
    TResult? Function(String campaignId)? loadWithdrawals,
    TResult? Function()? clearTransient,
  }) {
    return loadCategories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? categoryId, int limit)? loadCampaigns,
    TResult Function(String? categoryId, int limit)? refreshCampaigns,
    TResult Function(String query, String? categoryId, int limit)?
        searchCampaigns,
    TResult Function(String campaignId)? getCampaignDetail,
    TResult Function(CampaignEntity campaign)? createCampaign,
    TResult Function(CampaignEntity campaign)? updateCampaign,
    TResult Function(String campaignId)? deleteCampaign,
    TResult Function(String campaignId, String status)? updateCampaignStatus,
    TResult Function()? loadCategories,
    TResult Function(String campaignId, int limit)? loadDonations,
    TResult Function(DonationEntity donation)? createDonation,
    TResult Function(String campaignId, bool includeReplies)? loadComments,
    TResult Function(CampaignCommentEntity comment)? addComment,
    TResult Function(String campaignId, String commentId)? deleteComment,
    TResult Function(String parentId)? loadCommentReplies,
    TResult Function(WithdrawalEntity withdrawal)? requestWithdrawal,
    TResult Function(String campaignId)? loadWithdrawals,
    TResult Function()? clearTransient,
    required TResult orElse(),
  }) {
    if (loadCategories != null) {
      return loadCategories();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCampaignsEvent value) loadCampaigns,
    required TResult Function(RefreshCampaignsEvent value) refreshCampaigns,
    required TResult Function(SearchCampaignsEvent value) searchCampaigns,
    required TResult Function(GetCampaignDetailEvent value) getCampaignDetail,
    required TResult Function(CreateCampaignEvent value) createCampaign,
    required TResult Function(UpdateCampaignEvent value) updateCampaign,
    required TResult Function(DeleteCampaignEvent value) deleteCampaign,
    required TResult Function(UpdateCampaignStatusEvent value)
        updateCampaignStatus,
    required TResult Function(LoadCategoriesEvent value) loadCategories,
    required TResult Function(LoadDonationsEvent value) loadDonations,
    required TResult Function(CreateDonationEvent value) createDonation,
    required TResult Function(LoadCommentsEvent value) loadComments,
    required TResult Function(AddCommentEvent value) addComment,
    required TResult Function(DeleteCommentEvent value) deleteComment,
    required TResult Function(LoadCommentRepliesEvent value) loadCommentReplies,
    required TResult Function(RequestWithdrawalEvent value) requestWithdrawal,
    required TResult Function(LoadWithdrawalsEvent value) loadWithdrawals,
    required TResult Function(ClearCampaignTransientEvent value) clearTransient,
  }) {
    return loadCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCampaignsEvent value)? loadCampaigns,
    TResult? Function(RefreshCampaignsEvent value)? refreshCampaigns,
    TResult? Function(SearchCampaignsEvent value)? searchCampaigns,
    TResult? Function(GetCampaignDetailEvent value)? getCampaignDetail,
    TResult? Function(CreateCampaignEvent value)? createCampaign,
    TResult? Function(UpdateCampaignEvent value)? updateCampaign,
    TResult? Function(DeleteCampaignEvent value)? deleteCampaign,
    TResult? Function(UpdateCampaignStatusEvent value)? updateCampaignStatus,
    TResult? Function(LoadCategoriesEvent value)? loadCategories,
    TResult? Function(LoadDonationsEvent value)? loadDonations,
    TResult? Function(CreateDonationEvent value)? createDonation,
    TResult? Function(LoadCommentsEvent value)? loadComments,
    TResult? Function(AddCommentEvent value)? addComment,
    TResult? Function(DeleteCommentEvent value)? deleteComment,
    TResult? Function(LoadCommentRepliesEvent value)? loadCommentReplies,
    TResult? Function(RequestWithdrawalEvent value)? requestWithdrawal,
    TResult? Function(LoadWithdrawalsEvent value)? loadWithdrawals,
    TResult? Function(ClearCampaignTransientEvent value)? clearTransient,
  }) {
    return loadCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCampaignsEvent value)? loadCampaigns,
    TResult Function(RefreshCampaignsEvent value)? refreshCampaigns,
    TResult Function(SearchCampaignsEvent value)? searchCampaigns,
    TResult Function(GetCampaignDetailEvent value)? getCampaignDetail,
    TResult Function(CreateCampaignEvent value)? createCampaign,
    TResult Function(UpdateCampaignEvent value)? updateCampaign,
    TResult Function(DeleteCampaignEvent value)? deleteCampaign,
    TResult Function(UpdateCampaignStatusEvent value)? updateCampaignStatus,
    TResult Function(LoadCategoriesEvent value)? loadCategories,
    TResult Function(LoadDonationsEvent value)? loadDonations,
    TResult Function(CreateDonationEvent value)? createDonation,
    TResult Function(LoadCommentsEvent value)? loadComments,
    TResult Function(AddCommentEvent value)? addComment,
    TResult Function(DeleteCommentEvent value)? deleteComment,
    TResult Function(LoadCommentRepliesEvent value)? loadCommentReplies,
    TResult Function(RequestWithdrawalEvent value)? requestWithdrawal,
    TResult Function(LoadWithdrawalsEvent value)? loadWithdrawals,
    TResult Function(ClearCampaignTransientEvent value)? clearTransient,
    required TResult orElse(),
  }) {
    if (loadCategories != null) {
      return loadCategories(this);
    }
    return orElse();
  }
}

abstract class LoadCategoriesEvent implements CampaignEvent {
  const factory LoadCategoriesEvent() = _$LoadCategoriesEventImpl;
}

/// @nodoc
abstract class _$$LoadDonationsEventImplCopyWith<$Res> {
  factory _$$LoadDonationsEventImplCopyWith(_$LoadDonationsEventImpl value,
          $Res Function(_$LoadDonationsEventImpl) then) =
      __$$LoadDonationsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String campaignId, int limit});
}

/// @nodoc
class __$$LoadDonationsEventImplCopyWithImpl<$Res>
    extends _$CampaignEventCopyWithImpl<$Res, _$LoadDonationsEventImpl>
    implements _$$LoadDonationsEventImplCopyWith<$Res> {
  __$$LoadDonationsEventImplCopyWithImpl(_$LoadDonationsEventImpl _value,
      $Res Function(_$LoadDonationsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CampaignEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? campaignId = null,
    Object? limit = null,
  }) {
    return _then(_$LoadDonationsEventImpl(
      campaignId: null == campaignId
          ? _value.campaignId
          : campaignId // ignore: cast_nullable_to_non_nullable
              as String,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadDonationsEventImpl implements LoadDonationsEvent {
  const _$LoadDonationsEventImpl({required this.campaignId, this.limit = 50});

  @override
  final String campaignId;
  @override
  @JsonKey()
  final int limit;

  @override
  String toString() {
    return 'CampaignEvent.loadDonations(campaignId: $campaignId, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadDonationsEventImpl &&
            (identical(other.campaignId, campaignId) ||
                other.campaignId == campaignId) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, campaignId, limit);

  /// Create a copy of CampaignEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadDonationsEventImplCopyWith<_$LoadDonationsEventImpl> get copyWith =>
      __$$LoadDonationsEventImplCopyWithImpl<_$LoadDonationsEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? categoryId, int limit) loadCampaigns,
    required TResult Function(String? categoryId, int limit) refreshCampaigns,
    required TResult Function(String query, String? categoryId, int limit)
        searchCampaigns,
    required TResult Function(String campaignId) getCampaignDetail,
    required TResult Function(CampaignEntity campaign) createCampaign,
    required TResult Function(CampaignEntity campaign) updateCampaign,
    required TResult Function(String campaignId) deleteCampaign,
    required TResult Function(String campaignId, String status)
        updateCampaignStatus,
    required TResult Function() loadCategories,
    required TResult Function(String campaignId, int limit) loadDonations,
    required TResult Function(DonationEntity donation) createDonation,
    required TResult Function(String campaignId, bool includeReplies)
        loadComments,
    required TResult Function(CampaignCommentEntity comment) addComment,
    required TResult Function(String campaignId, String commentId)
        deleteComment,
    required TResult Function(String parentId) loadCommentReplies,
    required TResult Function(WithdrawalEntity withdrawal) requestWithdrawal,
    required TResult Function(String campaignId) loadWithdrawals,
    required TResult Function() clearTransient,
  }) {
    return loadDonations(campaignId, limit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? categoryId, int limit)? loadCampaigns,
    TResult? Function(String? categoryId, int limit)? refreshCampaigns,
    TResult? Function(String query, String? categoryId, int limit)?
        searchCampaigns,
    TResult? Function(String campaignId)? getCampaignDetail,
    TResult? Function(CampaignEntity campaign)? createCampaign,
    TResult? Function(CampaignEntity campaign)? updateCampaign,
    TResult? Function(String campaignId)? deleteCampaign,
    TResult? Function(String campaignId, String status)? updateCampaignStatus,
    TResult? Function()? loadCategories,
    TResult? Function(String campaignId, int limit)? loadDonations,
    TResult? Function(DonationEntity donation)? createDonation,
    TResult? Function(String campaignId, bool includeReplies)? loadComments,
    TResult? Function(CampaignCommentEntity comment)? addComment,
    TResult? Function(String campaignId, String commentId)? deleteComment,
    TResult? Function(String parentId)? loadCommentReplies,
    TResult? Function(WithdrawalEntity withdrawal)? requestWithdrawal,
    TResult? Function(String campaignId)? loadWithdrawals,
    TResult? Function()? clearTransient,
  }) {
    return loadDonations?.call(campaignId, limit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? categoryId, int limit)? loadCampaigns,
    TResult Function(String? categoryId, int limit)? refreshCampaigns,
    TResult Function(String query, String? categoryId, int limit)?
        searchCampaigns,
    TResult Function(String campaignId)? getCampaignDetail,
    TResult Function(CampaignEntity campaign)? createCampaign,
    TResult Function(CampaignEntity campaign)? updateCampaign,
    TResult Function(String campaignId)? deleteCampaign,
    TResult Function(String campaignId, String status)? updateCampaignStatus,
    TResult Function()? loadCategories,
    TResult Function(String campaignId, int limit)? loadDonations,
    TResult Function(DonationEntity donation)? createDonation,
    TResult Function(String campaignId, bool includeReplies)? loadComments,
    TResult Function(CampaignCommentEntity comment)? addComment,
    TResult Function(String campaignId, String commentId)? deleteComment,
    TResult Function(String parentId)? loadCommentReplies,
    TResult Function(WithdrawalEntity withdrawal)? requestWithdrawal,
    TResult Function(String campaignId)? loadWithdrawals,
    TResult Function()? clearTransient,
    required TResult orElse(),
  }) {
    if (loadDonations != null) {
      return loadDonations(campaignId, limit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCampaignsEvent value) loadCampaigns,
    required TResult Function(RefreshCampaignsEvent value) refreshCampaigns,
    required TResult Function(SearchCampaignsEvent value) searchCampaigns,
    required TResult Function(GetCampaignDetailEvent value) getCampaignDetail,
    required TResult Function(CreateCampaignEvent value) createCampaign,
    required TResult Function(UpdateCampaignEvent value) updateCampaign,
    required TResult Function(DeleteCampaignEvent value) deleteCampaign,
    required TResult Function(UpdateCampaignStatusEvent value)
        updateCampaignStatus,
    required TResult Function(LoadCategoriesEvent value) loadCategories,
    required TResult Function(LoadDonationsEvent value) loadDonations,
    required TResult Function(CreateDonationEvent value) createDonation,
    required TResult Function(LoadCommentsEvent value) loadComments,
    required TResult Function(AddCommentEvent value) addComment,
    required TResult Function(DeleteCommentEvent value) deleteComment,
    required TResult Function(LoadCommentRepliesEvent value) loadCommentReplies,
    required TResult Function(RequestWithdrawalEvent value) requestWithdrawal,
    required TResult Function(LoadWithdrawalsEvent value) loadWithdrawals,
    required TResult Function(ClearCampaignTransientEvent value) clearTransient,
  }) {
    return loadDonations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCampaignsEvent value)? loadCampaigns,
    TResult? Function(RefreshCampaignsEvent value)? refreshCampaigns,
    TResult? Function(SearchCampaignsEvent value)? searchCampaigns,
    TResult? Function(GetCampaignDetailEvent value)? getCampaignDetail,
    TResult? Function(CreateCampaignEvent value)? createCampaign,
    TResult? Function(UpdateCampaignEvent value)? updateCampaign,
    TResult? Function(DeleteCampaignEvent value)? deleteCampaign,
    TResult? Function(UpdateCampaignStatusEvent value)? updateCampaignStatus,
    TResult? Function(LoadCategoriesEvent value)? loadCategories,
    TResult? Function(LoadDonationsEvent value)? loadDonations,
    TResult? Function(CreateDonationEvent value)? createDonation,
    TResult? Function(LoadCommentsEvent value)? loadComments,
    TResult? Function(AddCommentEvent value)? addComment,
    TResult? Function(DeleteCommentEvent value)? deleteComment,
    TResult? Function(LoadCommentRepliesEvent value)? loadCommentReplies,
    TResult? Function(RequestWithdrawalEvent value)? requestWithdrawal,
    TResult? Function(LoadWithdrawalsEvent value)? loadWithdrawals,
    TResult? Function(ClearCampaignTransientEvent value)? clearTransient,
  }) {
    return loadDonations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCampaignsEvent value)? loadCampaigns,
    TResult Function(RefreshCampaignsEvent value)? refreshCampaigns,
    TResult Function(SearchCampaignsEvent value)? searchCampaigns,
    TResult Function(GetCampaignDetailEvent value)? getCampaignDetail,
    TResult Function(CreateCampaignEvent value)? createCampaign,
    TResult Function(UpdateCampaignEvent value)? updateCampaign,
    TResult Function(DeleteCampaignEvent value)? deleteCampaign,
    TResult Function(UpdateCampaignStatusEvent value)? updateCampaignStatus,
    TResult Function(LoadCategoriesEvent value)? loadCategories,
    TResult Function(LoadDonationsEvent value)? loadDonations,
    TResult Function(CreateDonationEvent value)? createDonation,
    TResult Function(LoadCommentsEvent value)? loadComments,
    TResult Function(AddCommentEvent value)? addComment,
    TResult Function(DeleteCommentEvent value)? deleteComment,
    TResult Function(LoadCommentRepliesEvent value)? loadCommentReplies,
    TResult Function(RequestWithdrawalEvent value)? requestWithdrawal,
    TResult Function(LoadWithdrawalsEvent value)? loadWithdrawals,
    TResult Function(ClearCampaignTransientEvent value)? clearTransient,
    required TResult orElse(),
  }) {
    if (loadDonations != null) {
      return loadDonations(this);
    }
    return orElse();
  }
}

abstract class LoadDonationsEvent implements CampaignEvent {
  const factory LoadDonationsEvent(
      {required final String campaignId,
      final int limit}) = _$LoadDonationsEventImpl;

  String get campaignId;
  int get limit;

  /// Create a copy of CampaignEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadDonationsEventImplCopyWith<_$LoadDonationsEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateDonationEventImplCopyWith<$Res> {
  factory _$$CreateDonationEventImplCopyWith(_$CreateDonationEventImpl value,
          $Res Function(_$CreateDonationEventImpl) then) =
      __$$CreateDonationEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DonationEntity donation});

  $DonationEntityCopyWith<$Res> get donation;
}

/// @nodoc
class __$$CreateDonationEventImplCopyWithImpl<$Res>
    extends _$CampaignEventCopyWithImpl<$Res, _$CreateDonationEventImpl>
    implements _$$CreateDonationEventImplCopyWith<$Res> {
  __$$CreateDonationEventImplCopyWithImpl(_$CreateDonationEventImpl _value,
      $Res Function(_$CreateDonationEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CampaignEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? donation = null,
  }) {
    return _then(_$CreateDonationEventImpl(
      donation: null == donation
          ? _value.donation
          : donation // ignore: cast_nullable_to_non_nullable
              as DonationEntity,
    ));
  }

  /// Create a copy of CampaignEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DonationEntityCopyWith<$Res> get donation {
    return $DonationEntityCopyWith<$Res>(_value.donation, (value) {
      return _then(_value.copyWith(donation: value));
    });
  }
}

/// @nodoc

class _$CreateDonationEventImpl implements CreateDonationEvent {
  const _$CreateDonationEventImpl({required this.donation});

  @override
  final DonationEntity donation;

  @override
  String toString() {
    return 'CampaignEvent.createDonation(donation: $donation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateDonationEventImpl &&
            (identical(other.donation, donation) ||
                other.donation == donation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, donation);

  /// Create a copy of CampaignEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateDonationEventImplCopyWith<_$CreateDonationEventImpl> get copyWith =>
      __$$CreateDonationEventImplCopyWithImpl<_$CreateDonationEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? categoryId, int limit) loadCampaigns,
    required TResult Function(String? categoryId, int limit) refreshCampaigns,
    required TResult Function(String query, String? categoryId, int limit)
        searchCampaigns,
    required TResult Function(String campaignId) getCampaignDetail,
    required TResult Function(CampaignEntity campaign) createCampaign,
    required TResult Function(CampaignEntity campaign) updateCampaign,
    required TResult Function(String campaignId) deleteCampaign,
    required TResult Function(String campaignId, String status)
        updateCampaignStatus,
    required TResult Function() loadCategories,
    required TResult Function(String campaignId, int limit) loadDonations,
    required TResult Function(DonationEntity donation) createDonation,
    required TResult Function(String campaignId, bool includeReplies)
        loadComments,
    required TResult Function(CampaignCommentEntity comment) addComment,
    required TResult Function(String campaignId, String commentId)
        deleteComment,
    required TResult Function(String parentId) loadCommentReplies,
    required TResult Function(WithdrawalEntity withdrawal) requestWithdrawal,
    required TResult Function(String campaignId) loadWithdrawals,
    required TResult Function() clearTransient,
  }) {
    return createDonation(donation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? categoryId, int limit)? loadCampaigns,
    TResult? Function(String? categoryId, int limit)? refreshCampaigns,
    TResult? Function(String query, String? categoryId, int limit)?
        searchCampaigns,
    TResult? Function(String campaignId)? getCampaignDetail,
    TResult? Function(CampaignEntity campaign)? createCampaign,
    TResult? Function(CampaignEntity campaign)? updateCampaign,
    TResult? Function(String campaignId)? deleteCampaign,
    TResult? Function(String campaignId, String status)? updateCampaignStatus,
    TResult? Function()? loadCategories,
    TResult? Function(String campaignId, int limit)? loadDonations,
    TResult? Function(DonationEntity donation)? createDonation,
    TResult? Function(String campaignId, bool includeReplies)? loadComments,
    TResult? Function(CampaignCommentEntity comment)? addComment,
    TResult? Function(String campaignId, String commentId)? deleteComment,
    TResult? Function(String parentId)? loadCommentReplies,
    TResult? Function(WithdrawalEntity withdrawal)? requestWithdrawal,
    TResult? Function(String campaignId)? loadWithdrawals,
    TResult? Function()? clearTransient,
  }) {
    return createDonation?.call(donation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? categoryId, int limit)? loadCampaigns,
    TResult Function(String? categoryId, int limit)? refreshCampaigns,
    TResult Function(String query, String? categoryId, int limit)?
        searchCampaigns,
    TResult Function(String campaignId)? getCampaignDetail,
    TResult Function(CampaignEntity campaign)? createCampaign,
    TResult Function(CampaignEntity campaign)? updateCampaign,
    TResult Function(String campaignId)? deleteCampaign,
    TResult Function(String campaignId, String status)? updateCampaignStatus,
    TResult Function()? loadCategories,
    TResult Function(String campaignId, int limit)? loadDonations,
    TResult Function(DonationEntity donation)? createDonation,
    TResult Function(String campaignId, bool includeReplies)? loadComments,
    TResult Function(CampaignCommentEntity comment)? addComment,
    TResult Function(String campaignId, String commentId)? deleteComment,
    TResult Function(String parentId)? loadCommentReplies,
    TResult Function(WithdrawalEntity withdrawal)? requestWithdrawal,
    TResult Function(String campaignId)? loadWithdrawals,
    TResult Function()? clearTransient,
    required TResult orElse(),
  }) {
    if (createDonation != null) {
      return createDonation(donation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCampaignsEvent value) loadCampaigns,
    required TResult Function(RefreshCampaignsEvent value) refreshCampaigns,
    required TResult Function(SearchCampaignsEvent value) searchCampaigns,
    required TResult Function(GetCampaignDetailEvent value) getCampaignDetail,
    required TResult Function(CreateCampaignEvent value) createCampaign,
    required TResult Function(UpdateCampaignEvent value) updateCampaign,
    required TResult Function(DeleteCampaignEvent value) deleteCampaign,
    required TResult Function(UpdateCampaignStatusEvent value)
        updateCampaignStatus,
    required TResult Function(LoadCategoriesEvent value) loadCategories,
    required TResult Function(LoadDonationsEvent value) loadDonations,
    required TResult Function(CreateDonationEvent value) createDonation,
    required TResult Function(LoadCommentsEvent value) loadComments,
    required TResult Function(AddCommentEvent value) addComment,
    required TResult Function(DeleteCommentEvent value) deleteComment,
    required TResult Function(LoadCommentRepliesEvent value) loadCommentReplies,
    required TResult Function(RequestWithdrawalEvent value) requestWithdrawal,
    required TResult Function(LoadWithdrawalsEvent value) loadWithdrawals,
    required TResult Function(ClearCampaignTransientEvent value) clearTransient,
  }) {
    return createDonation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCampaignsEvent value)? loadCampaigns,
    TResult? Function(RefreshCampaignsEvent value)? refreshCampaigns,
    TResult? Function(SearchCampaignsEvent value)? searchCampaigns,
    TResult? Function(GetCampaignDetailEvent value)? getCampaignDetail,
    TResult? Function(CreateCampaignEvent value)? createCampaign,
    TResult? Function(UpdateCampaignEvent value)? updateCampaign,
    TResult? Function(DeleteCampaignEvent value)? deleteCampaign,
    TResult? Function(UpdateCampaignStatusEvent value)? updateCampaignStatus,
    TResult? Function(LoadCategoriesEvent value)? loadCategories,
    TResult? Function(LoadDonationsEvent value)? loadDonations,
    TResult? Function(CreateDonationEvent value)? createDonation,
    TResult? Function(LoadCommentsEvent value)? loadComments,
    TResult? Function(AddCommentEvent value)? addComment,
    TResult? Function(DeleteCommentEvent value)? deleteComment,
    TResult? Function(LoadCommentRepliesEvent value)? loadCommentReplies,
    TResult? Function(RequestWithdrawalEvent value)? requestWithdrawal,
    TResult? Function(LoadWithdrawalsEvent value)? loadWithdrawals,
    TResult? Function(ClearCampaignTransientEvent value)? clearTransient,
  }) {
    return createDonation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCampaignsEvent value)? loadCampaigns,
    TResult Function(RefreshCampaignsEvent value)? refreshCampaigns,
    TResult Function(SearchCampaignsEvent value)? searchCampaigns,
    TResult Function(GetCampaignDetailEvent value)? getCampaignDetail,
    TResult Function(CreateCampaignEvent value)? createCampaign,
    TResult Function(UpdateCampaignEvent value)? updateCampaign,
    TResult Function(DeleteCampaignEvent value)? deleteCampaign,
    TResult Function(UpdateCampaignStatusEvent value)? updateCampaignStatus,
    TResult Function(LoadCategoriesEvent value)? loadCategories,
    TResult Function(LoadDonationsEvent value)? loadDonations,
    TResult Function(CreateDonationEvent value)? createDonation,
    TResult Function(LoadCommentsEvent value)? loadComments,
    TResult Function(AddCommentEvent value)? addComment,
    TResult Function(DeleteCommentEvent value)? deleteComment,
    TResult Function(LoadCommentRepliesEvent value)? loadCommentReplies,
    TResult Function(RequestWithdrawalEvent value)? requestWithdrawal,
    TResult Function(LoadWithdrawalsEvent value)? loadWithdrawals,
    TResult Function(ClearCampaignTransientEvent value)? clearTransient,
    required TResult orElse(),
  }) {
    if (createDonation != null) {
      return createDonation(this);
    }
    return orElse();
  }
}

abstract class CreateDonationEvent implements CampaignEvent {
  const factory CreateDonationEvent({required final DonationEntity donation}) =
      _$CreateDonationEventImpl;

  DonationEntity get donation;

  /// Create a copy of CampaignEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateDonationEventImplCopyWith<_$CreateDonationEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadCommentsEventImplCopyWith<$Res> {
  factory _$$LoadCommentsEventImplCopyWith(_$LoadCommentsEventImpl value,
          $Res Function(_$LoadCommentsEventImpl) then) =
      __$$LoadCommentsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String campaignId, bool includeReplies});
}

/// @nodoc
class __$$LoadCommentsEventImplCopyWithImpl<$Res>
    extends _$CampaignEventCopyWithImpl<$Res, _$LoadCommentsEventImpl>
    implements _$$LoadCommentsEventImplCopyWith<$Res> {
  __$$LoadCommentsEventImplCopyWithImpl(_$LoadCommentsEventImpl _value,
      $Res Function(_$LoadCommentsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CampaignEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? campaignId = null,
    Object? includeReplies = null,
  }) {
    return _then(_$LoadCommentsEventImpl(
      campaignId: null == campaignId
          ? _value.campaignId
          : campaignId // ignore: cast_nullable_to_non_nullable
              as String,
      includeReplies: null == includeReplies
          ? _value.includeReplies
          : includeReplies // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadCommentsEventImpl implements LoadCommentsEvent {
  const _$LoadCommentsEventImpl(
      {required this.campaignId, this.includeReplies = false});

  @override
  final String campaignId;
  @override
  @JsonKey()
  final bool includeReplies;

  @override
  String toString() {
    return 'CampaignEvent.loadComments(campaignId: $campaignId, includeReplies: $includeReplies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadCommentsEventImpl &&
            (identical(other.campaignId, campaignId) ||
                other.campaignId == campaignId) &&
            (identical(other.includeReplies, includeReplies) ||
                other.includeReplies == includeReplies));
  }

  @override
  int get hashCode => Object.hash(runtimeType, campaignId, includeReplies);

  /// Create a copy of CampaignEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadCommentsEventImplCopyWith<_$LoadCommentsEventImpl> get copyWith =>
      __$$LoadCommentsEventImplCopyWithImpl<_$LoadCommentsEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? categoryId, int limit) loadCampaigns,
    required TResult Function(String? categoryId, int limit) refreshCampaigns,
    required TResult Function(String query, String? categoryId, int limit)
        searchCampaigns,
    required TResult Function(String campaignId) getCampaignDetail,
    required TResult Function(CampaignEntity campaign) createCampaign,
    required TResult Function(CampaignEntity campaign) updateCampaign,
    required TResult Function(String campaignId) deleteCampaign,
    required TResult Function(String campaignId, String status)
        updateCampaignStatus,
    required TResult Function() loadCategories,
    required TResult Function(String campaignId, int limit) loadDonations,
    required TResult Function(DonationEntity donation) createDonation,
    required TResult Function(String campaignId, bool includeReplies)
        loadComments,
    required TResult Function(CampaignCommentEntity comment) addComment,
    required TResult Function(String campaignId, String commentId)
        deleteComment,
    required TResult Function(String parentId) loadCommentReplies,
    required TResult Function(WithdrawalEntity withdrawal) requestWithdrawal,
    required TResult Function(String campaignId) loadWithdrawals,
    required TResult Function() clearTransient,
  }) {
    return loadComments(campaignId, includeReplies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? categoryId, int limit)? loadCampaigns,
    TResult? Function(String? categoryId, int limit)? refreshCampaigns,
    TResult? Function(String query, String? categoryId, int limit)?
        searchCampaigns,
    TResult? Function(String campaignId)? getCampaignDetail,
    TResult? Function(CampaignEntity campaign)? createCampaign,
    TResult? Function(CampaignEntity campaign)? updateCampaign,
    TResult? Function(String campaignId)? deleteCampaign,
    TResult? Function(String campaignId, String status)? updateCampaignStatus,
    TResult? Function()? loadCategories,
    TResult? Function(String campaignId, int limit)? loadDonations,
    TResult? Function(DonationEntity donation)? createDonation,
    TResult? Function(String campaignId, bool includeReplies)? loadComments,
    TResult? Function(CampaignCommentEntity comment)? addComment,
    TResult? Function(String campaignId, String commentId)? deleteComment,
    TResult? Function(String parentId)? loadCommentReplies,
    TResult? Function(WithdrawalEntity withdrawal)? requestWithdrawal,
    TResult? Function(String campaignId)? loadWithdrawals,
    TResult? Function()? clearTransient,
  }) {
    return loadComments?.call(campaignId, includeReplies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? categoryId, int limit)? loadCampaigns,
    TResult Function(String? categoryId, int limit)? refreshCampaigns,
    TResult Function(String query, String? categoryId, int limit)?
        searchCampaigns,
    TResult Function(String campaignId)? getCampaignDetail,
    TResult Function(CampaignEntity campaign)? createCampaign,
    TResult Function(CampaignEntity campaign)? updateCampaign,
    TResult Function(String campaignId)? deleteCampaign,
    TResult Function(String campaignId, String status)? updateCampaignStatus,
    TResult Function()? loadCategories,
    TResult Function(String campaignId, int limit)? loadDonations,
    TResult Function(DonationEntity donation)? createDonation,
    TResult Function(String campaignId, bool includeReplies)? loadComments,
    TResult Function(CampaignCommentEntity comment)? addComment,
    TResult Function(String campaignId, String commentId)? deleteComment,
    TResult Function(String parentId)? loadCommentReplies,
    TResult Function(WithdrawalEntity withdrawal)? requestWithdrawal,
    TResult Function(String campaignId)? loadWithdrawals,
    TResult Function()? clearTransient,
    required TResult orElse(),
  }) {
    if (loadComments != null) {
      return loadComments(campaignId, includeReplies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCampaignsEvent value) loadCampaigns,
    required TResult Function(RefreshCampaignsEvent value) refreshCampaigns,
    required TResult Function(SearchCampaignsEvent value) searchCampaigns,
    required TResult Function(GetCampaignDetailEvent value) getCampaignDetail,
    required TResult Function(CreateCampaignEvent value) createCampaign,
    required TResult Function(UpdateCampaignEvent value) updateCampaign,
    required TResult Function(DeleteCampaignEvent value) deleteCampaign,
    required TResult Function(UpdateCampaignStatusEvent value)
        updateCampaignStatus,
    required TResult Function(LoadCategoriesEvent value) loadCategories,
    required TResult Function(LoadDonationsEvent value) loadDonations,
    required TResult Function(CreateDonationEvent value) createDonation,
    required TResult Function(LoadCommentsEvent value) loadComments,
    required TResult Function(AddCommentEvent value) addComment,
    required TResult Function(DeleteCommentEvent value) deleteComment,
    required TResult Function(LoadCommentRepliesEvent value) loadCommentReplies,
    required TResult Function(RequestWithdrawalEvent value) requestWithdrawal,
    required TResult Function(LoadWithdrawalsEvent value) loadWithdrawals,
    required TResult Function(ClearCampaignTransientEvent value) clearTransient,
  }) {
    return loadComments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCampaignsEvent value)? loadCampaigns,
    TResult? Function(RefreshCampaignsEvent value)? refreshCampaigns,
    TResult? Function(SearchCampaignsEvent value)? searchCampaigns,
    TResult? Function(GetCampaignDetailEvent value)? getCampaignDetail,
    TResult? Function(CreateCampaignEvent value)? createCampaign,
    TResult? Function(UpdateCampaignEvent value)? updateCampaign,
    TResult? Function(DeleteCampaignEvent value)? deleteCampaign,
    TResult? Function(UpdateCampaignStatusEvent value)? updateCampaignStatus,
    TResult? Function(LoadCategoriesEvent value)? loadCategories,
    TResult? Function(LoadDonationsEvent value)? loadDonations,
    TResult? Function(CreateDonationEvent value)? createDonation,
    TResult? Function(LoadCommentsEvent value)? loadComments,
    TResult? Function(AddCommentEvent value)? addComment,
    TResult? Function(DeleteCommentEvent value)? deleteComment,
    TResult? Function(LoadCommentRepliesEvent value)? loadCommentReplies,
    TResult? Function(RequestWithdrawalEvent value)? requestWithdrawal,
    TResult? Function(LoadWithdrawalsEvent value)? loadWithdrawals,
    TResult? Function(ClearCampaignTransientEvent value)? clearTransient,
  }) {
    return loadComments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCampaignsEvent value)? loadCampaigns,
    TResult Function(RefreshCampaignsEvent value)? refreshCampaigns,
    TResult Function(SearchCampaignsEvent value)? searchCampaigns,
    TResult Function(GetCampaignDetailEvent value)? getCampaignDetail,
    TResult Function(CreateCampaignEvent value)? createCampaign,
    TResult Function(UpdateCampaignEvent value)? updateCampaign,
    TResult Function(DeleteCampaignEvent value)? deleteCampaign,
    TResult Function(UpdateCampaignStatusEvent value)? updateCampaignStatus,
    TResult Function(LoadCategoriesEvent value)? loadCategories,
    TResult Function(LoadDonationsEvent value)? loadDonations,
    TResult Function(CreateDonationEvent value)? createDonation,
    TResult Function(LoadCommentsEvent value)? loadComments,
    TResult Function(AddCommentEvent value)? addComment,
    TResult Function(DeleteCommentEvent value)? deleteComment,
    TResult Function(LoadCommentRepliesEvent value)? loadCommentReplies,
    TResult Function(RequestWithdrawalEvent value)? requestWithdrawal,
    TResult Function(LoadWithdrawalsEvent value)? loadWithdrawals,
    TResult Function(ClearCampaignTransientEvent value)? clearTransient,
    required TResult orElse(),
  }) {
    if (loadComments != null) {
      return loadComments(this);
    }
    return orElse();
  }
}

abstract class LoadCommentsEvent implements CampaignEvent {
  const factory LoadCommentsEvent(
      {required final String campaignId,
      final bool includeReplies}) = _$LoadCommentsEventImpl;

  String get campaignId;
  bool get includeReplies;

  /// Create a copy of CampaignEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadCommentsEventImplCopyWith<_$LoadCommentsEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddCommentEventImplCopyWith<$Res> {
  factory _$$AddCommentEventImplCopyWith(_$AddCommentEventImpl value,
          $Res Function(_$AddCommentEventImpl) then) =
      __$$AddCommentEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CampaignCommentEntity comment});

  $CampaignCommentEntityCopyWith<$Res> get comment;
}

/// @nodoc
class __$$AddCommentEventImplCopyWithImpl<$Res>
    extends _$CampaignEventCopyWithImpl<$Res, _$AddCommentEventImpl>
    implements _$$AddCommentEventImplCopyWith<$Res> {
  __$$AddCommentEventImplCopyWithImpl(
      _$AddCommentEventImpl _value, $Res Function(_$AddCommentEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CampaignEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comment = null,
  }) {
    return _then(_$AddCommentEventImpl(
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as CampaignCommentEntity,
    ));
  }

  /// Create a copy of CampaignEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CampaignCommentEntityCopyWith<$Res> get comment {
    return $CampaignCommentEntityCopyWith<$Res>(_value.comment, (value) {
      return _then(_value.copyWith(comment: value));
    });
  }
}

/// @nodoc

class _$AddCommentEventImpl implements AddCommentEvent {
  const _$AddCommentEventImpl({required this.comment});

  @override
  final CampaignCommentEntity comment;

  @override
  String toString() {
    return 'CampaignEvent.addComment(comment: $comment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCommentEventImpl &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, comment);

  /// Create a copy of CampaignEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCommentEventImplCopyWith<_$AddCommentEventImpl> get copyWith =>
      __$$AddCommentEventImplCopyWithImpl<_$AddCommentEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? categoryId, int limit) loadCampaigns,
    required TResult Function(String? categoryId, int limit) refreshCampaigns,
    required TResult Function(String query, String? categoryId, int limit)
        searchCampaigns,
    required TResult Function(String campaignId) getCampaignDetail,
    required TResult Function(CampaignEntity campaign) createCampaign,
    required TResult Function(CampaignEntity campaign) updateCampaign,
    required TResult Function(String campaignId) deleteCampaign,
    required TResult Function(String campaignId, String status)
        updateCampaignStatus,
    required TResult Function() loadCategories,
    required TResult Function(String campaignId, int limit) loadDonations,
    required TResult Function(DonationEntity donation) createDonation,
    required TResult Function(String campaignId, bool includeReplies)
        loadComments,
    required TResult Function(CampaignCommentEntity comment) addComment,
    required TResult Function(String campaignId, String commentId)
        deleteComment,
    required TResult Function(String parentId) loadCommentReplies,
    required TResult Function(WithdrawalEntity withdrawal) requestWithdrawal,
    required TResult Function(String campaignId) loadWithdrawals,
    required TResult Function() clearTransient,
  }) {
    return addComment(comment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? categoryId, int limit)? loadCampaigns,
    TResult? Function(String? categoryId, int limit)? refreshCampaigns,
    TResult? Function(String query, String? categoryId, int limit)?
        searchCampaigns,
    TResult? Function(String campaignId)? getCampaignDetail,
    TResult? Function(CampaignEntity campaign)? createCampaign,
    TResult? Function(CampaignEntity campaign)? updateCampaign,
    TResult? Function(String campaignId)? deleteCampaign,
    TResult? Function(String campaignId, String status)? updateCampaignStatus,
    TResult? Function()? loadCategories,
    TResult? Function(String campaignId, int limit)? loadDonations,
    TResult? Function(DonationEntity donation)? createDonation,
    TResult? Function(String campaignId, bool includeReplies)? loadComments,
    TResult? Function(CampaignCommentEntity comment)? addComment,
    TResult? Function(String campaignId, String commentId)? deleteComment,
    TResult? Function(String parentId)? loadCommentReplies,
    TResult? Function(WithdrawalEntity withdrawal)? requestWithdrawal,
    TResult? Function(String campaignId)? loadWithdrawals,
    TResult? Function()? clearTransient,
  }) {
    return addComment?.call(comment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? categoryId, int limit)? loadCampaigns,
    TResult Function(String? categoryId, int limit)? refreshCampaigns,
    TResult Function(String query, String? categoryId, int limit)?
        searchCampaigns,
    TResult Function(String campaignId)? getCampaignDetail,
    TResult Function(CampaignEntity campaign)? createCampaign,
    TResult Function(CampaignEntity campaign)? updateCampaign,
    TResult Function(String campaignId)? deleteCampaign,
    TResult Function(String campaignId, String status)? updateCampaignStatus,
    TResult Function()? loadCategories,
    TResult Function(String campaignId, int limit)? loadDonations,
    TResult Function(DonationEntity donation)? createDonation,
    TResult Function(String campaignId, bool includeReplies)? loadComments,
    TResult Function(CampaignCommentEntity comment)? addComment,
    TResult Function(String campaignId, String commentId)? deleteComment,
    TResult Function(String parentId)? loadCommentReplies,
    TResult Function(WithdrawalEntity withdrawal)? requestWithdrawal,
    TResult Function(String campaignId)? loadWithdrawals,
    TResult Function()? clearTransient,
    required TResult orElse(),
  }) {
    if (addComment != null) {
      return addComment(comment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCampaignsEvent value) loadCampaigns,
    required TResult Function(RefreshCampaignsEvent value) refreshCampaigns,
    required TResult Function(SearchCampaignsEvent value) searchCampaigns,
    required TResult Function(GetCampaignDetailEvent value) getCampaignDetail,
    required TResult Function(CreateCampaignEvent value) createCampaign,
    required TResult Function(UpdateCampaignEvent value) updateCampaign,
    required TResult Function(DeleteCampaignEvent value) deleteCampaign,
    required TResult Function(UpdateCampaignStatusEvent value)
        updateCampaignStatus,
    required TResult Function(LoadCategoriesEvent value) loadCategories,
    required TResult Function(LoadDonationsEvent value) loadDonations,
    required TResult Function(CreateDonationEvent value) createDonation,
    required TResult Function(LoadCommentsEvent value) loadComments,
    required TResult Function(AddCommentEvent value) addComment,
    required TResult Function(DeleteCommentEvent value) deleteComment,
    required TResult Function(LoadCommentRepliesEvent value) loadCommentReplies,
    required TResult Function(RequestWithdrawalEvent value) requestWithdrawal,
    required TResult Function(LoadWithdrawalsEvent value) loadWithdrawals,
    required TResult Function(ClearCampaignTransientEvent value) clearTransient,
  }) {
    return addComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCampaignsEvent value)? loadCampaigns,
    TResult? Function(RefreshCampaignsEvent value)? refreshCampaigns,
    TResult? Function(SearchCampaignsEvent value)? searchCampaigns,
    TResult? Function(GetCampaignDetailEvent value)? getCampaignDetail,
    TResult? Function(CreateCampaignEvent value)? createCampaign,
    TResult? Function(UpdateCampaignEvent value)? updateCampaign,
    TResult? Function(DeleteCampaignEvent value)? deleteCampaign,
    TResult? Function(UpdateCampaignStatusEvent value)? updateCampaignStatus,
    TResult? Function(LoadCategoriesEvent value)? loadCategories,
    TResult? Function(LoadDonationsEvent value)? loadDonations,
    TResult? Function(CreateDonationEvent value)? createDonation,
    TResult? Function(LoadCommentsEvent value)? loadComments,
    TResult? Function(AddCommentEvent value)? addComment,
    TResult? Function(DeleteCommentEvent value)? deleteComment,
    TResult? Function(LoadCommentRepliesEvent value)? loadCommentReplies,
    TResult? Function(RequestWithdrawalEvent value)? requestWithdrawal,
    TResult? Function(LoadWithdrawalsEvent value)? loadWithdrawals,
    TResult? Function(ClearCampaignTransientEvent value)? clearTransient,
  }) {
    return addComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCampaignsEvent value)? loadCampaigns,
    TResult Function(RefreshCampaignsEvent value)? refreshCampaigns,
    TResult Function(SearchCampaignsEvent value)? searchCampaigns,
    TResult Function(GetCampaignDetailEvent value)? getCampaignDetail,
    TResult Function(CreateCampaignEvent value)? createCampaign,
    TResult Function(UpdateCampaignEvent value)? updateCampaign,
    TResult Function(DeleteCampaignEvent value)? deleteCampaign,
    TResult Function(UpdateCampaignStatusEvent value)? updateCampaignStatus,
    TResult Function(LoadCategoriesEvent value)? loadCategories,
    TResult Function(LoadDonationsEvent value)? loadDonations,
    TResult Function(CreateDonationEvent value)? createDonation,
    TResult Function(LoadCommentsEvent value)? loadComments,
    TResult Function(AddCommentEvent value)? addComment,
    TResult Function(DeleteCommentEvent value)? deleteComment,
    TResult Function(LoadCommentRepliesEvent value)? loadCommentReplies,
    TResult Function(RequestWithdrawalEvent value)? requestWithdrawal,
    TResult Function(LoadWithdrawalsEvent value)? loadWithdrawals,
    TResult Function(ClearCampaignTransientEvent value)? clearTransient,
    required TResult orElse(),
  }) {
    if (addComment != null) {
      return addComment(this);
    }
    return orElse();
  }
}

abstract class AddCommentEvent implements CampaignEvent {
  const factory AddCommentEvent(
      {required final CampaignCommentEntity comment}) = _$AddCommentEventImpl;

  CampaignCommentEntity get comment;

  /// Create a copy of CampaignEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddCommentEventImplCopyWith<_$AddCommentEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteCommentEventImplCopyWith<$Res> {
  factory _$$DeleteCommentEventImplCopyWith(_$DeleteCommentEventImpl value,
          $Res Function(_$DeleteCommentEventImpl) then) =
      __$$DeleteCommentEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String campaignId, String commentId});
}

/// @nodoc
class __$$DeleteCommentEventImplCopyWithImpl<$Res>
    extends _$CampaignEventCopyWithImpl<$Res, _$DeleteCommentEventImpl>
    implements _$$DeleteCommentEventImplCopyWith<$Res> {
  __$$DeleteCommentEventImplCopyWithImpl(_$DeleteCommentEventImpl _value,
      $Res Function(_$DeleteCommentEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CampaignEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? campaignId = null,
    Object? commentId = null,
  }) {
    return _then(_$DeleteCommentEventImpl(
      campaignId: null == campaignId
          ? _value.campaignId
          : campaignId // ignore: cast_nullable_to_non_nullable
              as String,
      commentId: null == commentId
          ? _value.commentId
          : commentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteCommentEventImpl implements DeleteCommentEvent {
  const _$DeleteCommentEventImpl(
      {required this.campaignId, required this.commentId});

  @override
  final String campaignId;
  @override
  final String commentId;

  @override
  String toString() {
    return 'CampaignEvent.deleteComment(campaignId: $campaignId, commentId: $commentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCommentEventImpl &&
            (identical(other.campaignId, campaignId) ||
                other.campaignId == campaignId) &&
            (identical(other.commentId, commentId) ||
                other.commentId == commentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, campaignId, commentId);

  /// Create a copy of CampaignEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCommentEventImplCopyWith<_$DeleteCommentEventImpl> get copyWith =>
      __$$DeleteCommentEventImplCopyWithImpl<_$DeleteCommentEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? categoryId, int limit) loadCampaigns,
    required TResult Function(String? categoryId, int limit) refreshCampaigns,
    required TResult Function(String query, String? categoryId, int limit)
        searchCampaigns,
    required TResult Function(String campaignId) getCampaignDetail,
    required TResult Function(CampaignEntity campaign) createCampaign,
    required TResult Function(CampaignEntity campaign) updateCampaign,
    required TResult Function(String campaignId) deleteCampaign,
    required TResult Function(String campaignId, String status)
        updateCampaignStatus,
    required TResult Function() loadCategories,
    required TResult Function(String campaignId, int limit) loadDonations,
    required TResult Function(DonationEntity donation) createDonation,
    required TResult Function(String campaignId, bool includeReplies)
        loadComments,
    required TResult Function(CampaignCommentEntity comment) addComment,
    required TResult Function(String campaignId, String commentId)
        deleteComment,
    required TResult Function(String parentId) loadCommentReplies,
    required TResult Function(WithdrawalEntity withdrawal) requestWithdrawal,
    required TResult Function(String campaignId) loadWithdrawals,
    required TResult Function() clearTransient,
  }) {
    return deleteComment(campaignId, commentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? categoryId, int limit)? loadCampaigns,
    TResult? Function(String? categoryId, int limit)? refreshCampaigns,
    TResult? Function(String query, String? categoryId, int limit)?
        searchCampaigns,
    TResult? Function(String campaignId)? getCampaignDetail,
    TResult? Function(CampaignEntity campaign)? createCampaign,
    TResult? Function(CampaignEntity campaign)? updateCampaign,
    TResult? Function(String campaignId)? deleteCampaign,
    TResult? Function(String campaignId, String status)? updateCampaignStatus,
    TResult? Function()? loadCategories,
    TResult? Function(String campaignId, int limit)? loadDonations,
    TResult? Function(DonationEntity donation)? createDonation,
    TResult? Function(String campaignId, bool includeReplies)? loadComments,
    TResult? Function(CampaignCommentEntity comment)? addComment,
    TResult? Function(String campaignId, String commentId)? deleteComment,
    TResult? Function(String parentId)? loadCommentReplies,
    TResult? Function(WithdrawalEntity withdrawal)? requestWithdrawal,
    TResult? Function(String campaignId)? loadWithdrawals,
    TResult? Function()? clearTransient,
  }) {
    return deleteComment?.call(campaignId, commentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? categoryId, int limit)? loadCampaigns,
    TResult Function(String? categoryId, int limit)? refreshCampaigns,
    TResult Function(String query, String? categoryId, int limit)?
        searchCampaigns,
    TResult Function(String campaignId)? getCampaignDetail,
    TResult Function(CampaignEntity campaign)? createCampaign,
    TResult Function(CampaignEntity campaign)? updateCampaign,
    TResult Function(String campaignId)? deleteCampaign,
    TResult Function(String campaignId, String status)? updateCampaignStatus,
    TResult Function()? loadCategories,
    TResult Function(String campaignId, int limit)? loadDonations,
    TResult Function(DonationEntity donation)? createDonation,
    TResult Function(String campaignId, bool includeReplies)? loadComments,
    TResult Function(CampaignCommentEntity comment)? addComment,
    TResult Function(String campaignId, String commentId)? deleteComment,
    TResult Function(String parentId)? loadCommentReplies,
    TResult Function(WithdrawalEntity withdrawal)? requestWithdrawal,
    TResult Function(String campaignId)? loadWithdrawals,
    TResult Function()? clearTransient,
    required TResult orElse(),
  }) {
    if (deleteComment != null) {
      return deleteComment(campaignId, commentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCampaignsEvent value) loadCampaigns,
    required TResult Function(RefreshCampaignsEvent value) refreshCampaigns,
    required TResult Function(SearchCampaignsEvent value) searchCampaigns,
    required TResult Function(GetCampaignDetailEvent value) getCampaignDetail,
    required TResult Function(CreateCampaignEvent value) createCampaign,
    required TResult Function(UpdateCampaignEvent value) updateCampaign,
    required TResult Function(DeleteCampaignEvent value) deleteCampaign,
    required TResult Function(UpdateCampaignStatusEvent value)
        updateCampaignStatus,
    required TResult Function(LoadCategoriesEvent value) loadCategories,
    required TResult Function(LoadDonationsEvent value) loadDonations,
    required TResult Function(CreateDonationEvent value) createDonation,
    required TResult Function(LoadCommentsEvent value) loadComments,
    required TResult Function(AddCommentEvent value) addComment,
    required TResult Function(DeleteCommentEvent value) deleteComment,
    required TResult Function(LoadCommentRepliesEvent value) loadCommentReplies,
    required TResult Function(RequestWithdrawalEvent value) requestWithdrawal,
    required TResult Function(LoadWithdrawalsEvent value) loadWithdrawals,
    required TResult Function(ClearCampaignTransientEvent value) clearTransient,
  }) {
    return deleteComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCampaignsEvent value)? loadCampaigns,
    TResult? Function(RefreshCampaignsEvent value)? refreshCampaigns,
    TResult? Function(SearchCampaignsEvent value)? searchCampaigns,
    TResult? Function(GetCampaignDetailEvent value)? getCampaignDetail,
    TResult? Function(CreateCampaignEvent value)? createCampaign,
    TResult? Function(UpdateCampaignEvent value)? updateCampaign,
    TResult? Function(DeleteCampaignEvent value)? deleteCampaign,
    TResult? Function(UpdateCampaignStatusEvent value)? updateCampaignStatus,
    TResult? Function(LoadCategoriesEvent value)? loadCategories,
    TResult? Function(LoadDonationsEvent value)? loadDonations,
    TResult? Function(CreateDonationEvent value)? createDonation,
    TResult? Function(LoadCommentsEvent value)? loadComments,
    TResult? Function(AddCommentEvent value)? addComment,
    TResult? Function(DeleteCommentEvent value)? deleteComment,
    TResult? Function(LoadCommentRepliesEvent value)? loadCommentReplies,
    TResult? Function(RequestWithdrawalEvent value)? requestWithdrawal,
    TResult? Function(LoadWithdrawalsEvent value)? loadWithdrawals,
    TResult? Function(ClearCampaignTransientEvent value)? clearTransient,
  }) {
    return deleteComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCampaignsEvent value)? loadCampaigns,
    TResult Function(RefreshCampaignsEvent value)? refreshCampaigns,
    TResult Function(SearchCampaignsEvent value)? searchCampaigns,
    TResult Function(GetCampaignDetailEvent value)? getCampaignDetail,
    TResult Function(CreateCampaignEvent value)? createCampaign,
    TResult Function(UpdateCampaignEvent value)? updateCampaign,
    TResult Function(DeleteCampaignEvent value)? deleteCampaign,
    TResult Function(UpdateCampaignStatusEvent value)? updateCampaignStatus,
    TResult Function(LoadCategoriesEvent value)? loadCategories,
    TResult Function(LoadDonationsEvent value)? loadDonations,
    TResult Function(CreateDonationEvent value)? createDonation,
    TResult Function(LoadCommentsEvent value)? loadComments,
    TResult Function(AddCommentEvent value)? addComment,
    TResult Function(DeleteCommentEvent value)? deleteComment,
    TResult Function(LoadCommentRepliesEvent value)? loadCommentReplies,
    TResult Function(RequestWithdrawalEvent value)? requestWithdrawal,
    TResult Function(LoadWithdrawalsEvent value)? loadWithdrawals,
    TResult Function(ClearCampaignTransientEvent value)? clearTransient,
    required TResult orElse(),
  }) {
    if (deleteComment != null) {
      return deleteComment(this);
    }
    return orElse();
  }
}

abstract class DeleteCommentEvent implements CampaignEvent {
  const factory DeleteCommentEvent(
      {required final String campaignId,
      required final String commentId}) = _$DeleteCommentEventImpl;

  String get campaignId;
  String get commentId;

  /// Create a copy of CampaignEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteCommentEventImplCopyWith<_$DeleteCommentEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadCommentRepliesEventImplCopyWith<$Res> {
  factory _$$LoadCommentRepliesEventImplCopyWith(
          _$LoadCommentRepliesEventImpl value,
          $Res Function(_$LoadCommentRepliesEventImpl) then) =
      __$$LoadCommentRepliesEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String parentId});
}

/// @nodoc
class __$$LoadCommentRepliesEventImplCopyWithImpl<$Res>
    extends _$CampaignEventCopyWithImpl<$Res, _$LoadCommentRepliesEventImpl>
    implements _$$LoadCommentRepliesEventImplCopyWith<$Res> {
  __$$LoadCommentRepliesEventImplCopyWithImpl(
      _$LoadCommentRepliesEventImpl _value,
      $Res Function(_$LoadCommentRepliesEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CampaignEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parentId = null,
  }) {
    return _then(_$LoadCommentRepliesEventImpl(
      parentId: null == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadCommentRepliesEventImpl implements LoadCommentRepliesEvent {
  const _$LoadCommentRepliesEventImpl({required this.parentId});

  @override
  final String parentId;

  @override
  String toString() {
    return 'CampaignEvent.loadCommentReplies(parentId: $parentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadCommentRepliesEventImpl &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, parentId);

  /// Create a copy of CampaignEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadCommentRepliesEventImplCopyWith<_$LoadCommentRepliesEventImpl>
      get copyWith => __$$LoadCommentRepliesEventImplCopyWithImpl<
          _$LoadCommentRepliesEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? categoryId, int limit) loadCampaigns,
    required TResult Function(String? categoryId, int limit) refreshCampaigns,
    required TResult Function(String query, String? categoryId, int limit)
        searchCampaigns,
    required TResult Function(String campaignId) getCampaignDetail,
    required TResult Function(CampaignEntity campaign) createCampaign,
    required TResult Function(CampaignEntity campaign) updateCampaign,
    required TResult Function(String campaignId) deleteCampaign,
    required TResult Function(String campaignId, String status)
        updateCampaignStatus,
    required TResult Function() loadCategories,
    required TResult Function(String campaignId, int limit) loadDonations,
    required TResult Function(DonationEntity donation) createDonation,
    required TResult Function(String campaignId, bool includeReplies)
        loadComments,
    required TResult Function(CampaignCommentEntity comment) addComment,
    required TResult Function(String campaignId, String commentId)
        deleteComment,
    required TResult Function(String parentId) loadCommentReplies,
    required TResult Function(WithdrawalEntity withdrawal) requestWithdrawal,
    required TResult Function(String campaignId) loadWithdrawals,
    required TResult Function() clearTransient,
  }) {
    return loadCommentReplies(parentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? categoryId, int limit)? loadCampaigns,
    TResult? Function(String? categoryId, int limit)? refreshCampaigns,
    TResult? Function(String query, String? categoryId, int limit)?
        searchCampaigns,
    TResult? Function(String campaignId)? getCampaignDetail,
    TResult? Function(CampaignEntity campaign)? createCampaign,
    TResult? Function(CampaignEntity campaign)? updateCampaign,
    TResult? Function(String campaignId)? deleteCampaign,
    TResult? Function(String campaignId, String status)? updateCampaignStatus,
    TResult? Function()? loadCategories,
    TResult? Function(String campaignId, int limit)? loadDonations,
    TResult? Function(DonationEntity donation)? createDonation,
    TResult? Function(String campaignId, bool includeReplies)? loadComments,
    TResult? Function(CampaignCommentEntity comment)? addComment,
    TResult? Function(String campaignId, String commentId)? deleteComment,
    TResult? Function(String parentId)? loadCommentReplies,
    TResult? Function(WithdrawalEntity withdrawal)? requestWithdrawal,
    TResult? Function(String campaignId)? loadWithdrawals,
    TResult? Function()? clearTransient,
  }) {
    return loadCommentReplies?.call(parentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? categoryId, int limit)? loadCampaigns,
    TResult Function(String? categoryId, int limit)? refreshCampaigns,
    TResult Function(String query, String? categoryId, int limit)?
        searchCampaigns,
    TResult Function(String campaignId)? getCampaignDetail,
    TResult Function(CampaignEntity campaign)? createCampaign,
    TResult Function(CampaignEntity campaign)? updateCampaign,
    TResult Function(String campaignId)? deleteCampaign,
    TResult Function(String campaignId, String status)? updateCampaignStatus,
    TResult Function()? loadCategories,
    TResult Function(String campaignId, int limit)? loadDonations,
    TResult Function(DonationEntity donation)? createDonation,
    TResult Function(String campaignId, bool includeReplies)? loadComments,
    TResult Function(CampaignCommentEntity comment)? addComment,
    TResult Function(String campaignId, String commentId)? deleteComment,
    TResult Function(String parentId)? loadCommentReplies,
    TResult Function(WithdrawalEntity withdrawal)? requestWithdrawal,
    TResult Function(String campaignId)? loadWithdrawals,
    TResult Function()? clearTransient,
    required TResult orElse(),
  }) {
    if (loadCommentReplies != null) {
      return loadCommentReplies(parentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCampaignsEvent value) loadCampaigns,
    required TResult Function(RefreshCampaignsEvent value) refreshCampaigns,
    required TResult Function(SearchCampaignsEvent value) searchCampaigns,
    required TResult Function(GetCampaignDetailEvent value) getCampaignDetail,
    required TResult Function(CreateCampaignEvent value) createCampaign,
    required TResult Function(UpdateCampaignEvent value) updateCampaign,
    required TResult Function(DeleteCampaignEvent value) deleteCampaign,
    required TResult Function(UpdateCampaignStatusEvent value)
        updateCampaignStatus,
    required TResult Function(LoadCategoriesEvent value) loadCategories,
    required TResult Function(LoadDonationsEvent value) loadDonations,
    required TResult Function(CreateDonationEvent value) createDonation,
    required TResult Function(LoadCommentsEvent value) loadComments,
    required TResult Function(AddCommentEvent value) addComment,
    required TResult Function(DeleteCommentEvent value) deleteComment,
    required TResult Function(LoadCommentRepliesEvent value) loadCommentReplies,
    required TResult Function(RequestWithdrawalEvent value) requestWithdrawal,
    required TResult Function(LoadWithdrawalsEvent value) loadWithdrawals,
    required TResult Function(ClearCampaignTransientEvent value) clearTransient,
  }) {
    return loadCommentReplies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCampaignsEvent value)? loadCampaigns,
    TResult? Function(RefreshCampaignsEvent value)? refreshCampaigns,
    TResult? Function(SearchCampaignsEvent value)? searchCampaigns,
    TResult? Function(GetCampaignDetailEvent value)? getCampaignDetail,
    TResult? Function(CreateCampaignEvent value)? createCampaign,
    TResult? Function(UpdateCampaignEvent value)? updateCampaign,
    TResult? Function(DeleteCampaignEvent value)? deleteCampaign,
    TResult? Function(UpdateCampaignStatusEvent value)? updateCampaignStatus,
    TResult? Function(LoadCategoriesEvent value)? loadCategories,
    TResult? Function(LoadDonationsEvent value)? loadDonations,
    TResult? Function(CreateDonationEvent value)? createDonation,
    TResult? Function(LoadCommentsEvent value)? loadComments,
    TResult? Function(AddCommentEvent value)? addComment,
    TResult? Function(DeleteCommentEvent value)? deleteComment,
    TResult? Function(LoadCommentRepliesEvent value)? loadCommentReplies,
    TResult? Function(RequestWithdrawalEvent value)? requestWithdrawal,
    TResult? Function(LoadWithdrawalsEvent value)? loadWithdrawals,
    TResult? Function(ClearCampaignTransientEvent value)? clearTransient,
  }) {
    return loadCommentReplies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCampaignsEvent value)? loadCampaigns,
    TResult Function(RefreshCampaignsEvent value)? refreshCampaigns,
    TResult Function(SearchCampaignsEvent value)? searchCampaigns,
    TResult Function(GetCampaignDetailEvent value)? getCampaignDetail,
    TResult Function(CreateCampaignEvent value)? createCampaign,
    TResult Function(UpdateCampaignEvent value)? updateCampaign,
    TResult Function(DeleteCampaignEvent value)? deleteCampaign,
    TResult Function(UpdateCampaignStatusEvent value)? updateCampaignStatus,
    TResult Function(LoadCategoriesEvent value)? loadCategories,
    TResult Function(LoadDonationsEvent value)? loadDonations,
    TResult Function(CreateDonationEvent value)? createDonation,
    TResult Function(LoadCommentsEvent value)? loadComments,
    TResult Function(AddCommentEvent value)? addComment,
    TResult Function(DeleteCommentEvent value)? deleteComment,
    TResult Function(LoadCommentRepliesEvent value)? loadCommentReplies,
    TResult Function(RequestWithdrawalEvent value)? requestWithdrawal,
    TResult Function(LoadWithdrawalsEvent value)? loadWithdrawals,
    TResult Function(ClearCampaignTransientEvent value)? clearTransient,
    required TResult orElse(),
  }) {
    if (loadCommentReplies != null) {
      return loadCommentReplies(this);
    }
    return orElse();
  }
}

abstract class LoadCommentRepliesEvent implements CampaignEvent {
  const factory LoadCommentRepliesEvent({required final String parentId}) =
      _$LoadCommentRepliesEventImpl;

  String get parentId;

  /// Create a copy of CampaignEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadCommentRepliesEventImplCopyWith<_$LoadCommentRepliesEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RequestWithdrawalEventImplCopyWith<$Res> {
  factory _$$RequestWithdrawalEventImplCopyWith(
          _$RequestWithdrawalEventImpl value,
          $Res Function(_$RequestWithdrawalEventImpl) then) =
      __$$RequestWithdrawalEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WithdrawalEntity withdrawal});

  $WithdrawalEntityCopyWith<$Res> get withdrawal;
}

/// @nodoc
class __$$RequestWithdrawalEventImplCopyWithImpl<$Res>
    extends _$CampaignEventCopyWithImpl<$Res, _$RequestWithdrawalEventImpl>
    implements _$$RequestWithdrawalEventImplCopyWith<$Res> {
  __$$RequestWithdrawalEventImplCopyWithImpl(
      _$RequestWithdrawalEventImpl _value,
      $Res Function(_$RequestWithdrawalEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CampaignEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? withdrawal = null,
  }) {
    return _then(_$RequestWithdrawalEventImpl(
      withdrawal: null == withdrawal
          ? _value.withdrawal
          : withdrawal // ignore: cast_nullable_to_non_nullable
              as WithdrawalEntity,
    ));
  }

  /// Create a copy of CampaignEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WithdrawalEntityCopyWith<$Res> get withdrawal {
    return $WithdrawalEntityCopyWith<$Res>(_value.withdrawal, (value) {
      return _then(_value.copyWith(withdrawal: value));
    });
  }
}

/// @nodoc

class _$RequestWithdrawalEventImpl implements RequestWithdrawalEvent {
  const _$RequestWithdrawalEventImpl({required this.withdrawal});

  @override
  final WithdrawalEntity withdrawal;

  @override
  String toString() {
    return 'CampaignEvent.requestWithdrawal(withdrawal: $withdrawal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestWithdrawalEventImpl &&
            (identical(other.withdrawal, withdrawal) ||
                other.withdrawal == withdrawal));
  }

  @override
  int get hashCode => Object.hash(runtimeType, withdrawal);

  /// Create a copy of CampaignEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestWithdrawalEventImplCopyWith<_$RequestWithdrawalEventImpl>
      get copyWith => __$$RequestWithdrawalEventImplCopyWithImpl<
          _$RequestWithdrawalEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? categoryId, int limit) loadCampaigns,
    required TResult Function(String? categoryId, int limit) refreshCampaigns,
    required TResult Function(String query, String? categoryId, int limit)
        searchCampaigns,
    required TResult Function(String campaignId) getCampaignDetail,
    required TResult Function(CampaignEntity campaign) createCampaign,
    required TResult Function(CampaignEntity campaign) updateCampaign,
    required TResult Function(String campaignId) deleteCampaign,
    required TResult Function(String campaignId, String status)
        updateCampaignStatus,
    required TResult Function() loadCategories,
    required TResult Function(String campaignId, int limit) loadDonations,
    required TResult Function(DonationEntity donation) createDonation,
    required TResult Function(String campaignId, bool includeReplies)
        loadComments,
    required TResult Function(CampaignCommentEntity comment) addComment,
    required TResult Function(String campaignId, String commentId)
        deleteComment,
    required TResult Function(String parentId) loadCommentReplies,
    required TResult Function(WithdrawalEntity withdrawal) requestWithdrawal,
    required TResult Function(String campaignId) loadWithdrawals,
    required TResult Function() clearTransient,
  }) {
    return requestWithdrawal(withdrawal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? categoryId, int limit)? loadCampaigns,
    TResult? Function(String? categoryId, int limit)? refreshCampaigns,
    TResult? Function(String query, String? categoryId, int limit)?
        searchCampaigns,
    TResult? Function(String campaignId)? getCampaignDetail,
    TResult? Function(CampaignEntity campaign)? createCampaign,
    TResult? Function(CampaignEntity campaign)? updateCampaign,
    TResult? Function(String campaignId)? deleteCampaign,
    TResult? Function(String campaignId, String status)? updateCampaignStatus,
    TResult? Function()? loadCategories,
    TResult? Function(String campaignId, int limit)? loadDonations,
    TResult? Function(DonationEntity donation)? createDonation,
    TResult? Function(String campaignId, bool includeReplies)? loadComments,
    TResult? Function(CampaignCommentEntity comment)? addComment,
    TResult? Function(String campaignId, String commentId)? deleteComment,
    TResult? Function(String parentId)? loadCommentReplies,
    TResult? Function(WithdrawalEntity withdrawal)? requestWithdrawal,
    TResult? Function(String campaignId)? loadWithdrawals,
    TResult? Function()? clearTransient,
  }) {
    return requestWithdrawal?.call(withdrawal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? categoryId, int limit)? loadCampaigns,
    TResult Function(String? categoryId, int limit)? refreshCampaigns,
    TResult Function(String query, String? categoryId, int limit)?
        searchCampaigns,
    TResult Function(String campaignId)? getCampaignDetail,
    TResult Function(CampaignEntity campaign)? createCampaign,
    TResult Function(CampaignEntity campaign)? updateCampaign,
    TResult Function(String campaignId)? deleteCampaign,
    TResult Function(String campaignId, String status)? updateCampaignStatus,
    TResult Function()? loadCategories,
    TResult Function(String campaignId, int limit)? loadDonations,
    TResult Function(DonationEntity donation)? createDonation,
    TResult Function(String campaignId, bool includeReplies)? loadComments,
    TResult Function(CampaignCommentEntity comment)? addComment,
    TResult Function(String campaignId, String commentId)? deleteComment,
    TResult Function(String parentId)? loadCommentReplies,
    TResult Function(WithdrawalEntity withdrawal)? requestWithdrawal,
    TResult Function(String campaignId)? loadWithdrawals,
    TResult Function()? clearTransient,
    required TResult orElse(),
  }) {
    if (requestWithdrawal != null) {
      return requestWithdrawal(withdrawal);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCampaignsEvent value) loadCampaigns,
    required TResult Function(RefreshCampaignsEvent value) refreshCampaigns,
    required TResult Function(SearchCampaignsEvent value) searchCampaigns,
    required TResult Function(GetCampaignDetailEvent value) getCampaignDetail,
    required TResult Function(CreateCampaignEvent value) createCampaign,
    required TResult Function(UpdateCampaignEvent value) updateCampaign,
    required TResult Function(DeleteCampaignEvent value) deleteCampaign,
    required TResult Function(UpdateCampaignStatusEvent value)
        updateCampaignStatus,
    required TResult Function(LoadCategoriesEvent value) loadCategories,
    required TResult Function(LoadDonationsEvent value) loadDonations,
    required TResult Function(CreateDonationEvent value) createDonation,
    required TResult Function(LoadCommentsEvent value) loadComments,
    required TResult Function(AddCommentEvent value) addComment,
    required TResult Function(DeleteCommentEvent value) deleteComment,
    required TResult Function(LoadCommentRepliesEvent value) loadCommentReplies,
    required TResult Function(RequestWithdrawalEvent value) requestWithdrawal,
    required TResult Function(LoadWithdrawalsEvent value) loadWithdrawals,
    required TResult Function(ClearCampaignTransientEvent value) clearTransient,
  }) {
    return requestWithdrawal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCampaignsEvent value)? loadCampaigns,
    TResult? Function(RefreshCampaignsEvent value)? refreshCampaigns,
    TResult? Function(SearchCampaignsEvent value)? searchCampaigns,
    TResult? Function(GetCampaignDetailEvent value)? getCampaignDetail,
    TResult? Function(CreateCampaignEvent value)? createCampaign,
    TResult? Function(UpdateCampaignEvent value)? updateCampaign,
    TResult? Function(DeleteCampaignEvent value)? deleteCampaign,
    TResult? Function(UpdateCampaignStatusEvent value)? updateCampaignStatus,
    TResult? Function(LoadCategoriesEvent value)? loadCategories,
    TResult? Function(LoadDonationsEvent value)? loadDonations,
    TResult? Function(CreateDonationEvent value)? createDonation,
    TResult? Function(LoadCommentsEvent value)? loadComments,
    TResult? Function(AddCommentEvent value)? addComment,
    TResult? Function(DeleteCommentEvent value)? deleteComment,
    TResult? Function(LoadCommentRepliesEvent value)? loadCommentReplies,
    TResult? Function(RequestWithdrawalEvent value)? requestWithdrawal,
    TResult? Function(LoadWithdrawalsEvent value)? loadWithdrawals,
    TResult? Function(ClearCampaignTransientEvent value)? clearTransient,
  }) {
    return requestWithdrawal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCampaignsEvent value)? loadCampaigns,
    TResult Function(RefreshCampaignsEvent value)? refreshCampaigns,
    TResult Function(SearchCampaignsEvent value)? searchCampaigns,
    TResult Function(GetCampaignDetailEvent value)? getCampaignDetail,
    TResult Function(CreateCampaignEvent value)? createCampaign,
    TResult Function(UpdateCampaignEvent value)? updateCampaign,
    TResult Function(DeleteCampaignEvent value)? deleteCampaign,
    TResult Function(UpdateCampaignStatusEvent value)? updateCampaignStatus,
    TResult Function(LoadCategoriesEvent value)? loadCategories,
    TResult Function(LoadDonationsEvent value)? loadDonations,
    TResult Function(CreateDonationEvent value)? createDonation,
    TResult Function(LoadCommentsEvent value)? loadComments,
    TResult Function(AddCommentEvent value)? addComment,
    TResult Function(DeleteCommentEvent value)? deleteComment,
    TResult Function(LoadCommentRepliesEvent value)? loadCommentReplies,
    TResult Function(RequestWithdrawalEvent value)? requestWithdrawal,
    TResult Function(LoadWithdrawalsEvent value)? loadWithdrawals,
    TResult Function(ClearCampaignTransientEvent value)? clearTransient,
    required TResult orElse(),
  }) {
    if (requestWithdrawal != null) {
      return requestWithdrawal(this);
    }
    return orElse();
  }
}

abstract class RequestWithdrawalEvent implements CampaignEvent {
  const factory RequestWithdrawalEvent(
          {required final WithdrawalEntity withdrawal}) =
      _$RequestWithdrawalEventImpl;

  WithdrawalEntity get withdrawal;

  /// Create a copy of CampaignEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestWithdrawalEventImplCopyWith<_$RequestWithdrawalEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadWithdrawalsEventImplCopyWith<$Res> {
  factory _$$LoadWithdrawalsEventImplCopyWith(_$LoadWithdrawalsEventImpl value,
          $Res Function(_$LoadWithdrawalsEventImpl) then) =
      __$$LoadWithdrawalsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String campaignId});
}

/// @nodoc
class __$$LoadWithdrawalsEventImplCopyWithImpl<$Res>
    extends _$CampaignEventCopyWithImpl<$Res, _$LoadWithdrawalsEventImpl>
    implements _$$LoadWithdrawalsEventImplCopyWith<$Res> {
  __$$LoadWithdrawalsEventImplCopyWithImpl(_$LoadWithdrawalsEventImpl _value,
      $Res Function(_$LoadWithdrawalsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CampaignEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? campaignId = null,
  }) {
    return _then(_$LoadWithdrawalsEventImpl(
      campaignId: null == campaignId
          ? _value.campaignId
          : campaignId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadWithdrawalsEventImpl implements LoadWithdrawalsEvent {
  const _$LoadWithdrawalsEventImpl({required this.campaignId});

  @override
  final String campaignId;

  @override
  String toString() {
    return 'CampaignEvent.loadWithdrawals(campaignId: $campaignId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadWithdrawalsEventImpl &&
            (identical(other.campaignId, campaignId) ||
                other.campaignId == campaignId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, campaignId);

  /// Create a copy of CampaignEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadWithdrawalsEventImplCopyWith<_$LoadWithdrawalsEventImpl>
      get copyWith =>
          __$$LoadWithdrawalsEventImplCopyWithImpl<_$LoadWithdrawalsEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? categoryId, int limit) loadCampaigns,
    required TResult Function(String? categoryId, int limit) refreshCampaigns,
    required TResult Function(String query, String? categoryId, int limit)
        searchCampaigns,
    required TResult Function(String campaignId) getCampaignDetail,
    required TResult Function(CampaignEntity campaign) createCampaign,
    required TResult Function(CampaignEntity campaign) updateCampaign,
    required TResult Function(String campaignId) deleteCampaign,
    required TResult Function(String campaignId, String status)
        updateCampaignStatus,
    required TResult Function() loadCategories,
    required TResult Function(String campaignId, int limit) loadDonations,
    required TResult Function(DonationEntity donation) createDonation,
    required TResult Function(String campaignId, bool includeReplies)
        loadComments,
    required TResult Function(CampaignCommentEntity comment) addComment,
    required TResult Function(String campaignId, String commentId)
        deleteComment,
    required TResult Function(String parentId) loadCommentReplies,
    required TResult Function(WithdrawalEntity withdrawal) requestWithdrawal,
    required TResult Function(String campaignId) loadWithdrawals,
    required TResult Function() clearTransient,
  }) {
    return loadWithdrawals(campaignId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? categoryId, int limit)? loadCampaigns,
    TResult? Function(String? categoryId, int limit)? refreshCampaigns,
    TResult? Function(String query, String? categoryId, int limit)?
        searchCampaigns,
    TResult? Function(String campaignId)? getCampaignDetail,
    TResult? Function(CampaignEntity campaign)? createCampaign,
    TResult? Function(CampaignEntity campaign)? updateCampaign,
    TResult? Function(String campaignId)? deleteCampaign,
    TResult? Function(String campaignId, String status)? updateCampaignStatus,
    TResult? Function()? loadCategories,
    TResult? Function(String campaignId, int limit)? loadDonations,
    TResult? Function(DonationEntity donation)? createDonation,
    TResult? Function(String campaignId, bool includeReplies)? loadComments,
    TResult? Function(CampaignCommentEntity comment)? addComment,
    TResult? Function(String campaignId, String commentId)? deleteComment,
    TResult? Function(String parentId)? loadCommentReplies,
    TResult? Function(WithdrawalEntity withdrawal)? requestWithdrawal,
    TResult? Function(String campaignId)? loadWithdrawals,
    TResult? Function()? clearTransient,
  }) {
    return loadWithdrawals?.call(campaignId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? categoryId, int limit)? loadCampaigns,
    TResult Function(String? categoryId, int limit)? refreshCampaigns,
    TResult Function(String query, String? categoryId, int limit)?
        searchCampaigns,
    TResult Function(String campaignId)? getCampaignDetail,
    TResult Function(CampaignEntity campaign)? createCampaign,
    TResult Function(CampaignEntity campaign)? updateCampaign,
    TResult Function(String campaignId)? deleteCampaign,
    TResult Function(String campaignId, String status)? updateCampaignStatus,
    TResult Function()? loadCategories,
    TResult Function(String campaignId, int limit)? loadDonations,
    TResult Function(DonationEntity donation)? createDonation,
    TResult Function(String campaignId, bool includeReplies)? loadComments,
    TResult Function(CampaignCommentEntity comment)? addComment,
    TResult Function(String campaignId, String commentId)? deleteComment,
    TResult Function(String parentId)? loadCommentReplies,
    TResult Function(WithdrawalEntity withdrawal)? requestWithdrawal,
    TResult Function(String campaignId)? loadWithdrawals,
    TResult Function()? clearTransient,
    required TResult orElse(),
  }) {
    if (loadWithdrawals != null) {
      return loadWithdrawals(campaignId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCampaignsEvent value) loadCampaigns,
    required TResult Function(RefreshCampaignsEvent value) refreshCampaigns,
    required TResult Function(SearchCampaignsEvent value) searchCampaigns,
    required TResult Function(GetCampaignDetailEvent value) getCampaignDetail,
    required TResult Function(CreateCampaignEvent value) createCampaign,
    required TResult Function(UpdateCampaignEvent value) updateCampaign,
    required TResult Function(DeleteCampaignEvent value) deleteCampaign,
    required TResult Function(UpdateCampaignStatusEvent value)
        updateCampaignStatus,
    required TResult Function(LoadCategoriesEvent value) loadCategories,
    required TResult Function(LoadDonationsEvent value) loadDonations,
    required TResult Function(CreateDonationEvent value) createDonation,
    required TResult Function(LoadCommentsEvent value) loadComments,
    required TResult Function(AddCommentEvent value) addComment,
    required TResult Function(DeleteCommentEvent value) deleteComment,
    required TResult Function(LoadCommentRepliesEvent value) loadCommentReplies,
    required TResult Function(RequestWithdrawalEvent value) requestWithdrawal,
    required TResult Function(LoadWithdrawalsEvent value) loadWithdrawals,
    required TResult Function(ClearCampaignTransientEvent value) clearTransient,
  }) {
    return loadWithdrawals(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCampaignsEvent value)? loadCampaigns,
    TResult? Function(RefreshCampaignsEvent value)? refreshCampaigns,
    TResult? Function(SearchCampaignsEvent value)? searchCampaigns,
    TResult? Function(GetCampaignDetailEvent value)? getCampaignDetail,
    TResult? Function(CreateCampaignEvent value)? createCampaign,
    TResult? Function(UpdateCampaignEvent value)? updateCampaign,
    TResult? Function(DeleteCampaignEvent value)? deleteCampaign,
    TResult? Function(UpdateCampaignStatusEvent value)? updateCampaignStatus,
    TResult? Function(LoadCategoriesEvent value)? loadCategories,
    TResult? Function(LoadDonationsEvent value)? loadDonations,
    TResult? Function(CreateDonationEvent value)? createDonation,
    TResult? Function(LoadCommentsEvent value)? loadComments,
    TResult? Function(AddCommentEvent value)? addComment,
    TResult? Function(DeleteCommentEvent value)? deleteComment,
    TResult? Function(LoadCommentRepliesEvent value)? loadCommentReplies,
    TResult? Function(RequestWithdrawalEvent value)? requestWithdrawal,
    TResult? Function(LoadWithdrawalsEvent value)? loadWithdrawals,
    TResult? Function(ClearCampaignTransientEvent value)? clearTransient,
  }) {
    return loadWithdrawals?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCampaignsEvent value)? loadCampaigns,
    TResult Function(RefreshCampaignsEvent value)? refreshCampaigns,
    TResult Function(SearchCampaignsEvent value)? searchCampaigns,
    TResult Function(GetCampaignDetailEvent value)? getCampaignDetail,
    TResult Function(CreateCampaignEvent value)? createCampaign,
    TResult Function(UpdateCampaignEvent value)? updateCampaign,
    TResult Function(DeleteCampaignEvent value)? deleteCampaign,
    TResult Function(UpdateCampaignStatusEvent value)? updateCampaignStatus,
    TResult Function(LoadCategoriesEvent value)? loadCategories,
    TResult Function(LoadDonationsEvent value)? loadDonations,
    TResult Function(CreateDonationEvent value)? createDonation,
    TResult Function(LoadCommentsEvent value)? loadComments,
    TResult Function(AddCommentEvent value)? addComment,
    TResult Function(DeleteCommentEvent value)? deleteComment,
    TResult Function(LoadCommentRepliesEvent value)? loadCommentReplies,
    TResult Function(RequestWithdrawalEvent value)? requestWithdrawal,
    TResult Function(LoadWithdrawalsEvent value)? loadWithdrawals,
    TResult Function(ClearCampaignTransientEvent value)? clearTransient,
    required TResult orElse(),
  }) {
    if (loadWithdrawals != null) {
      return loadWithdrawals(this);
    }
    return orElse();
  }
}

abstract class LoadWithdrawalsEvent implements CampaignEvent {
  const factory LoadWithdrawalsEvent({required final String campaignId}) =
      _$LoadWithdrawalsEventImpl;

  String get campaignId;

  /// Create a copy of CampaignEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadWithdrawalsEventImplCopyWith<_$LoadWithdrawalsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearCampaignTransientEventImplCopyWith<$Res> {
  factory _$$ClearCampaignTransientEventImplCopyWith(
          _$ClearCampaignTransientEventImpl value,
          $Res Function(_$ClearCampaignTransientEventImpl) then) =
      __$$ClearCampaignTransientEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearCampaignTransientEventImplCopyWithImpl<$Res>
    extends _$CampaignEventCopyWithImpl<$Res, _$ClearCampaignTransientEventImpl>
    implements _$$ClearCampaignTransientEventImplCopyWith<$Res> {
  __$$ClearCampaignTransientEventImplCopyWithImpl(
      _$ClearCampaignTransientEventImpl _value,
      $Res Function(_$ClearCampaignTransientEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CampaignEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearCampaignTransientEventImpl implements ClearCampaignTransientEvent {
  const _$ClearCampaignTransientEventImpl();

  @override
  String toString() {
    return 'CampaignEvent.clearTransient()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearCampaignTransientEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? categoryId, int limit) loadCampaigns,
    required TResult Function(String? categoryId, int limit) refreshCampaigns,
    required TResult Function(String query, String? categoryId, int limit)
        searchCampaigns,
    required TResult Function(String campaignId) getCampaignDetail,
    required TResult Function(CampaignEntity campaign) createCampaign,
    required TResult Function(CampaignEntity campaign) updateCampaign,
    required TResult Function(String campaignId) deleteCampaign,
    required TResult Function(String campaignId, String status)
        updateCampaignStatus,
    required TResult Function() loadCategories,
    required TResult Function(String campaignId, int limit) loadDonations,
    required TResult Function(DonationEntity donation) createDonation,
    required TResult Function(String campaignId, bool includeReplies)
        loadComments,
    required TResult Function(CampaignCommentEntity comment) addComment,
    required TResult Function(String campaignId, String commentId)
        deleteComment,
    required TResult Function(String parentId) loadCommentReplies,
    required TResult Function(WithdrawalEntity withdrawal) requestWithdrawal,
    required TResult Function(String campaignId) loadWithdrawals,
    required TResult Function() clearTransient,
  }) {
    return clearTransient();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? categoryId, int limit)? loadCampaigns,
    TResult? Function(String? categoryId, int limit)? refreshCampaigns,
    TResult? Function(String query, String? categoryId, int limit)?
        searchCampaigns,
    TResult? Function(String campaignId)? getCampaignDetail,
    TResult? Function(CampaignEntity campaign)? createCampaign,
    TResult? Function(CampaignEntity campaign)? updateCampaign,
    TResult? Function(String campaignId)? deleteCampaign,
    TResult? Function(String campaignId, String status)? updateCampaignStatus,
    TResult? Function()? loadCategories,
    TResult? Function(String campaignId, int limit)? loadDonations,
    TResult? Function(DonationEntity donation)? createDonation,
    TResult? Function(String campaignId, bool includeReplies)? loadComments,
    TResult? Function(CampaignCommentEntity comment)? addComment,
    TResult? Function(String campaignId, String commentId)? deleteComment,
    TResult? Function(String parentId)? loadCommentReplies,
    TResult? Function(WithdrawalEntity withdrawal)? requestWithdrawal,
    TResult? Function(String campaignId)? loadWithdrawals,
    TResult? Function()? clearTransient,
  }) {
    return clearTransient?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? categoryId, int limit)? loadCampaigns,
    TResult Function(String? categoryId, int limit)? refreshCampaigns,
    TResult Function(String query, String? categoryId, int limit)?
        searchCampaigns,
    TResult Function(String campaignId)? getCampaignDetail,
    TResult Function(CampaignEntity campaign)? createCampaign,
    TResult Function(CampaignEntity campaign)? updateCampaign,
    TResult Function(String campaignId)? deleteCampaign,
    TResult Function(String campaignId, String status)? updateCampaignStatus,
    TResult Function()? loadCategories,
    TResult Function(String campaignId, int limit)? loadDonations,
    TResult Function(DonationEntity donation)? createDonation,
    TResult Function(String campaignId, bool includeReplies)? loadComments,
    TResult Function(CampaignCommentEntity comment)? addComment,
    TResult Function(String campaignId, String commentId)? deleteComment,
    TResult Function(String parentId)? loadCommentReplies,
    TResult Function(WithdrawalEntity withdrawal)? requestWithdrawal,
    TResult Function(String campaignId)? loadWithdrawals,
    TResult Function()? clearTransient,
    required TResult orElse(),
  }) {
    if (clearTransient != null) {
      return clearTransient();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCampaignsEvent value) loadCampaigns,
    required TResult Function(RefreshCampaignsEvent value) refreshCampaigns,
    required TResult Function(SearchCampaignsEvent value) searchCampaigns,
    required TResult Function(GetCampaignDetailEvent value) getCampaignDetail,
    required TResult Function(CreateCampaignEvent value) createCampaign,
    required TResult Function(UpdateCampaignEvent value) updateCampaign,
    required TResult Function(DeleteCampaignEvent value) deleteCampaign,
    required TResult Function(UpdateCampaignStatusEvent value)
        updateCampaignStatus,
    required TResult Function(LoadCategoriesEvent value) loadCategories,
    required TResult Function(LoadDonationsEvent value) loadDonations,
    required TResult Function(CreateDonationEvent value) createDonation,
    required TResult Function(LoadCommentsEvent value) loadComments,
    required TResult Function(AddCommentEvent value) addComment,
    required TResult Function(DeleteCommentEvent value) deleteComment,
    required TResult Function(LoadCommentRepliesEvent value) loadCommentReplies,
    required TResult Function(RequestWithdrawalEvent value) requestWithdrawal,
    required TResult Function(LoadWithdrawalsEvent value) loadWithdrawals,
    required TResult Function(ClearCampaignTransientEvent value) clearTransient,
  }) {
    return clearTransient(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCampaignsEvent value)? loadCampaigns,
    TResult? Function(RefreshCampaignsEvent value)? refreshCampaigns,
    TResult? Function(SearchCampaignsEvent value)? searchCampaigns,
    TResult? Function(GetCampaignDetailEvent value)? getCampaignDetail,
    TResult? Function(CreateCampaignEvent value)? createCampaign,
    TResult? Function(UpdateCampaignEvent value)? updateCampaign,
    TResult? Function(DeleteCampaignEvent value)? deleteCampaign,
    TResult? Function(UpdateCampaignStatusEvent value)? updateCampaignStatus,
    TResult? Function(LoadCategoriesEvent value)? loadCategories,
    TResult? Function(LoadDonationsEvent value)? loadDonations,
    TResult? Function(CreateDonationEvent value)? createDonation,
    TResult? Function(LoadCommentsEvent value)? loadComments,
    TResult? Function(AddCommentEvent value)? addComment,
    TResult? Function(DeleteCommentEvent value)? deleteComment,
    TResult? Function(LoadCommentRepliesEvent value)? loadCommentReplies,
    TResult? Function(RequestWithdrawalEvent value)? requestWithdrawal,
    TResult? Function(LoadWithdrawalsEvent value)? loadWithdrawals,
    TResult? Function(ClearCampaignTransientEvent value)? clearTransient,
  }) {
    return clearTransient?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCampaignsEvent value)? loadCampaigns,
    TResult Function(RefreshCampaignsEvent value)? refreshCampaigns,
    TResult Function(SearchCampaignsEvent value)? searchCampaigns,
    TResult Function(GetCampaignDetailEvent value)? getCampaignDetail,
    TResult Function(CreateCampaignEvent value)? createCampaign,
    TResult Function(UpdateCampaignEvent value)? updateCampaign,
    TResult Function(DeleteCampaignEvent value)? deleteCampaign,
    TResult Function(UpdateCampaignStatusEvent value)? updateCampaignStatus,
    TResult Function(LoadCategoriesEvent value)? loadCategories,
    TResult Function(LoadDonationsEvent value)? loadDonations,
    TResult Function(CreateDonationEvent value)? createDonation,
    TResult Function(LoadCommentsEvent value)? loadComments,
    TResult Function(AddCommentEvent value)? addComment,
    TResult Function(DeleteCommentEvent value)? deleteComment,
    TResult Function(LoadCommentRepliesEvent value)? loadCommentReplies,
    TResult Function(RequestWithdrawalEvent value)? requestWithdrawal,
    TResult Function(LoadWithdrawalsEvent value)? loadWithdrawals,
    TResult Function(ClearCampaignTransientEvent value)? clearTransient,
    required TResult orElse(),
  }) {
    if (clearTransient != null) {
      return clearTransient(this);
    }
    return orElse();
  }
}

abstract class ClearCampaignTransientEvent implements CampaignEvent {
  const factory ClearCampaignTransientEvent() =
      _$ClearCampaignTransientEventImpl;
}
