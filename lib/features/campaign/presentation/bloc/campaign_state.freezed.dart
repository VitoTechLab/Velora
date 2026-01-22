// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaign_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CampaignState {
// Campaign list
  List<CampaignEntity> get campaigns => throw _privateConstructorUsedError;
  bool get isLoadingCampaigns => throw _privateConstructorUsedError;
  bool get isRefreshingCampaigns => throw _privateConstructorUsedError;
  String? get errorCampaigns =>
      throw _privateConstructorUsedError; // Single campaign detail
  CampaignEntity? get selectedCampaign => throw _privateConstructorUsedError;
  bool get isLoadingCampaignDetail => throw _privateConstructorUsedError;
  String? get errorCampaignDetail =>
      throw _privateConstructorUsedError; // Categories
  List<CampaignCategoryEntity> get categories =>
      throw _privateConstructorUsedError;
  bool get isLoadingCategories => throw _privateConstructorUsedError;
  String? get errorCategories =>
      throw _privateConstructorUsedError; // Search results
  List<CampaignEntity> get searchResults => throw _privateConstructorUsedError;
  bool get isSearching => throw _privateConstructorUsedError;
  String? get errorSearch =>
      throw _privateConstructorUsedError; // Donations for current campaign
  List<DonationEntity> get donations => throw _privateConstructorUsedError;
  bool get isLoadingDonations => throw _privateConstructorUsedError;
  String? get errorDonations =>
      throw _privateConstructorUsedError; // Comments for current campaign
  List<CampaignCommentEntity> get comments =>
      throw _privateConstructorUsedError;
  bool get isLoadingComments => throw _privateConstructorUsedError;
  String? get errorComments =>
      throw _privateConstructorUsedError; // Withdrawals for current campaign
  List<WithdrawalEntity> get withdrawals => throw _privateConstructorUsedError;
  bool get isLoadingWithdrawals => throw _privateConstructorUsedError;
  String? get errorWithdrawals =>
      throw _privateConstructorUsedError; // Transparency Data
  List<CampaignDocumentEntity> get campaignDocuments =>
      throw _privateConstructorUsedError;
  bool get isLoadingDocuments => throw _privateConstructorUsedError;
  String? get errorDocuments => throw _privateConstructorUsedError;
  List<CampaignMilestoneEntity> get campaignMilestones =>
      throw _privateConstructorUsedError;
  bool get isLoadingMilestones => throw _privateConstructorUsedError;
  String? get errorMilestones => throw _privateConstructorUsedError;
  List<CampaignFundBreakdownEntity> get campaignFundBreakdown =>
      throw _privateConstructorUsedError;
  bool get isLoadingFundBreakdown => throw _privateConstructorUsedError;
  String? get errorFundBreakdown => throw _privateConstructorUsedError;
  List<CampaignProofItemEntity> get campaignProofItems =>
      throw _privateConstructorUsedError;
  bool get isLoadingProofItems => throw _privateConstructorUsedError;
  String? get errorProofItems =>
      throw _privateConstructorUsedError; // Campaign Updates
  List<CampaignUpdateEntity> get campaignUpdates =>
      throw _privateConstructorUsedError;
  bool get isLoadingUpdates => throw _privateConstructorUsedError;
  String? get errorUpdates =>
      throw _privateConstructorUsedError; // User's own campaigns (for My Campaigns screen)
  List<CampaignEntity> get userCampaigns => throw _privateConstructorUsedError;
  bool get isLoadingUserCampaigns => throw _privateConstructorUsedError;
  String? get errorUserCampaigns =>
      throw _privateConstructorUsedError; // User's donations (for My Donations screen)
  List<DonationEntity> get userDonations => throw _privateConstructorUsedError;
  bool get isLoadingUserDonations => throw _privateConstructorUsedError;
  String? get errorUserDonations =>
      throw _privateConstructorUsedError; // Mutating operations
  bool get isCreatingCampaign => throw _privateConstructorUsedError;
  String? get errorCreateCampaign => throw _privateConstructorUsedError;
  bool get isUpdatingCampaign => throw _privateConstructorUsedError;
  String? get errorUpdateCampaign => throw _privateConstructorUsedError;
  bool get isDeletingCampaign => throw _privateConstructorUsedError;
  String? get errorDeleteCampaign => throw _privateConstructorUsedError;
  bool get isPerformingDonation => throw _privateConstructorUsedError;
  String? get errorDonation => throw _privateConstructorUsedError;
  bool get isRequestingWithdrawal => throw _privateConstructorUsedError;
  String? get errorWithdrawal => throw _privateConstructorUsedError;
  bool get isUpdatingBankDetails => throw _privateConstructorUsedError;
  String? get errorBankDetails =>
      throw _privateConstructorUsedError; // Generic UI message
  String? get message => throw _privateConstructorUsedError;

  /// Create a copy of CampaignState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CampaignStateCopyWith<CampaignState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CampaignStateCopyWith<$Res> {
  factory $CampaignStateCopyWith(
          CampaignState value, $Res Function(CampaignState) then) =
      _$CampaignStateCopyWithImpl<$Res, CampaignState>;
  @useResult
  $Res call(
      {List<CampaignEntity> campaigns,
      bool isLoadingCampaigns,
      bool isRefreshingCampaigns,
      String? errorCampaigns,
      CampaignEntity? selectedCampaign,
      bool isLoadingCampaignDetail,
      String? errorCampaignDetail,
      List<CampaignCategoryEntity> categories,
      bool isLoadingCategories,
      String? errorCategories,
      List<CampaignEntity> searchResults,
      bool isSearching,
      String? errorSearch,
      List<DonationEntity> donations,
      bool isLoadingDonations,
      String? errorDonations,
      List<CampaignCommentEntity> comments,
      bool isLoadingComments,
      String? errorComments,
      List<WithdrawalEntity> withdrawals,
      bool isLoadingWithdrawals,
      String? errorWithdrawals,
      List<CampaignDocumentEntity> campaignDocuments,
      bool isLoadingDocuments,
      String? errorDocuments,
      List<CampaignMilestoneEntity> campaignMilestones,
      bool isLoadingMilestones,
      String? errorMilestones,
      List<CampaignFundBreakdownEntity> campaignFundBreakdown,
      bool isLoadingFundBreakdown,
      String? errorFundBreakdown,
      List<CampaignProofItemEntity> campaignProofItems,
      bool isLoadingProofItems,
      String? errorProofItems,
      List<CampaignUpdateEntity> campaignUpdates,
      bool isLoadingUpdates,
      String? errorUpdates,
      List<CampaignEntity> userCampaigns,
      bool isLoadingUserCampaigns,
      String? errorUserCampaigns,
      List<DonationEntity> userDonations,
      bool isLoadingUserDonations,
      String? errorUserDonations,
      bool isCreatingCampaign,
      String? errorCreateCampaign,
      bool isUpdatingCampaign,
      String? errorUpdateCampaign,
      bool isDeletingCampaign,
      String? errorDeleteCampaign,
      bool isPerformingDonation,
      String? errorDonation,
      bool isRequestingWithdrawal,
      String? errorWithdrawal,
      bool isUpdatingBankDetails,
      String? errorBankDetails,
      String? message});

  $CampaignEntityCopyWith<$Res>? get selectedCampaign;
}

/// @nodoc
class _$CampaignStateCopyWithImpl<$Res, $Val extends CampaignState>
    implements $CampaignStateCopyWith<$Res> {
  _$CampaignStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CampaignState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? campaigns = null,
    Object? isLoadingCampaigns = null,
    Object? isRefreshingCampaigns = null,
    Object? errorCampaigns = freezed,
    Object? selectedCampaign = freezed,
    Object? isLoadingCampaignDetail = null,
    Object? errorCampaignDetail = freezed,
    Object? categories = null,
    Object? isLoadingCategories = null,
    Object? errorCategories = freezed,
    Object? searchResults = null,
    Object? isSearching = null,
    Object? errorSearch = freezed,
    Object? donations = null,
    Object? isLoadingDonations = null,
    Object? errorDonations = freezed,
    Object? comments = null,
    Object? isLoadingComments = null,
    Object? errorComments = freezed,
    Object? withdrawals = null,
    Object? isLoadingWithdrawals = null,
    Object? errorWithdrawals = freezed,
    Object? campaignDocuments = null,
    Object? isLoadingDocuments = null,
    Object? errorDocuments = freezed,
    Object? campaignMilestones = null,
    Object? isLoadingMilestones = null,
    Object? errorMilestones = freezed,
    Object? campaignFundBreakdown = null,
    Object? isLoadingFundBreakdown = null,
    Object? errorFundBreakdown = freezed,
    Object? campaignProofItems = null,
    Object? isLoadingProofItems = null,
    Object? errorProofItems = freezed,
    Object? campaignUpdates = null,
    Object? isLoadingUpdates = null,
    Object? errorUpdates = freezed,
    Object? userCampaigns = null,
    Object? isLoadingUserCampaigns = null,
    Object? errorUserCampaigns = freezed,
    Object? userDonations = null,
    Object? isLoadingUserDonations = null,
    Object? errorUserDonations = freezed,
    Object? isCreatingCampaign = null,
    Object? errorCreateCampaign = freezed,
    Object? isUpdatingCampaign = null,
    Object? errorUpdateCampaign = freezed,
    Object? isDeletingCampaign = null,
    Object? errorDeleteCampaign = freezed,
    Object? isPerformingDonation = null,
    Object? errorDonation = freezed,
    Object? isRequestingWithdrawal = null,
    Object? errorWithdrawal = freezed,
    Object? isUpdatingBankDetails = null,
    Object? errorBankDetails = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      campaigns: null == campaigns
          ? _value.campaigns
          : campaigns // ignore: cast_nullable_to_non_nullable
              as List<CampaignEntity>,
      isLoadingCampaigns: null == isLoadingCampaigns
          ? _value.isLoadingCampaigns
          : isLoadingCampaigns // ignore: cast_nullable_to_non_nullable
              as bool,
      isRefreshingCampaigns: null == isRefreshingCampaigns
          ? _value.isRefreshingCampaigns
          : isRefreshingCampaigns // ignore: cast_nullable_to_non_nullable
              as bool,
      errorCampaigns: freezed == errorCampaigns
          ? _value.errorCampaigns
          : errorCampaigns // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedCampaign: freezed == selectedCampaign
          ? _value.selectedCampaign
          : selectedCampaign // ignore: cast_nullable_to_non_nullable
              as CampaignEntity?,
      isLoadingCampaignDetail: null == isLoadingCampaignDetail
          ? _value.isLoadingCampaignDetail
          : isLoadingCampaignDetail // ignore: cast_nullable_to_non_nullable
              as bool,
      errorCampaignDetail: freezed == errorCampaignDetail
          ? _value.errorCampaignDetail
          : errorCampaignDetail // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CampaignCategoryEntity>,
      isLoadingCategories: null == isLoadingCategories
          ? _value.isLoadingCategories
          : isLoadingCategories // ignore: cast_nullable_to_non_nullable
              as bool,
      errorCategories: freezed == errorCategories
          ? _value.errorCategories
          : errorCategories // ignore: cast_nullable_to_non_nullable
              as String?,
      searchResults: null == searchResults
          ? _value.searchResults
          : searchResults // ignore: cast_nullable_to_non_nullable
              as List<CampaignEntity>,
      isSearching: null == isSearching
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool,
      errorSearch: freezed == errorSearch
          ? _value.errorSearch
          : errorSearch // ignore: cast_nullable_to_non_nullable
              as String?,
      donations: null == donations
          ? _value.donations
          : donations // ignore: cast_nullable_to_non_nullable
              as List<DonationEntity>,
      isLoadingDonations: null == isLoadingDonations
          ? _value.isLoadingDonations
          : isLoadingDonations // ignore: cast_nullable_to_non_nullable
              as bool,
      errorDonations: freezed == errorDonations
          ? _value.errorDonations
          : errorDonations // ignore: cast_nullable_to_non_nullable
              as String?,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CampaignCommentEntity>,
      isLoadingComments: null == isLoadingComments
          ? _value.isLoadingComments
          : isLoadingComments // ignore: cast_nullable_to_non_nullable
              as bool,
      errorComments: freezed == errorComments
          ? _value.errorComments
          : errorComments // ignore: cast_nullable_to_non_nullable
              as String?,
      withdrawals: null == withdrawals
          ? _value.withdrawals
          : withdrawals // ignore: cast_nullable_to_non_nullable
              as List<WithdrawalEntity>,
      isLoadingWithdrawals: null == isLoadingWithdrawals
          ? _value.isLoadingWithdrawals
          : isLoadingWithdrawals // ignore: cast_nullable_to_non_nullable
              as bool,
      errorWithdrawals: freezed == errorWithdrawals
          ? _value.errorWithdrawals
          : errorWithdrawals // ignore: cast_nullable_to_non_nullable
              as String?,
      campaignDocuments: null == campaignDocuments
          ? _value.campaignDocuments
          : campaignDocuments // ignore: cast_nullable_to_non_nullable
              as List<CampaignDocumentEntity>,
      isLoadingDocuments: null == isLoadingDocuments
          ? _value.isLoadingDocuments
          : isLoadingDocuments // ignore: cast_nullable_to_non_nullable
              as bool,
      errorDocuments: freezed == errorDocuments
          ? _value.errorDocuments
          : errorDocuments // ignore: cast_nullable_to_non_nullable
              as String?,
      campaignMilestones: null == campaignMilestones
          ? _value.campaignMilestones
          : campaignMilestones // ignore: cast_nullable_to_non_nullable
              as List<CampaignMilestoneEntity>,
      isLoadingMilestones: null == isLoadingMilestones
          ? _value.isLoadingMilestones
          : isLoadingMilestones // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMilestones: freezed == errorMilestones
          ? _value.errorMilestones
          : errorMilestones // ignore: cast_nullable_to_non_nullable
              as String?,
      campaignFundBreakdown: null == campaignFundBreakdown
          ? _value.campaignFundBreakdown
          : campaignFundBreakdown // ignore: cast_nullable_to_non_nullable
              as List<CampaignFundBreakdownEntity>,
      isLoadingFundBreakdown: null == isLoadingFundBreakdown
          ? _value.isLoadingFundBreakdown
          : isLoadingFundBreakdown // ignore: cast_nullable_to_non_nullable
              as bool,
      errorFundBreakdown: freezed == errorFundBreakdown
          ? _value.errorFundBreakdown
          : errorFundBreakdown // ignore: cast_nullable_to_non_nullable
              as String?,
      campaignProofItems: null == campaignProofItems
          ? _value.campaignProofItems
          : campaignProofItems // ignore: cast_nullable_to_non_nullable
              as List<CampaignProofItemEntity>,
      isLoadingProofItems: null == isLoadingProofItems
          ? _value.isLoadingProofItems
          : isLoadingProofItems // ignore: cast_nullable_to_non_nullable
              as bool,
      errorProofItems: freezed == errorProofItems
          ? _value.errorProofItems
          : errorProofItems // ignore: cast_nullable_to_non_nullable
              as String?,
      campaignUpdates: null == campaignUpdates
          ? _value.campaignUpdates
          : campaignUpdates // ignore: cast_nullable_to_non_nullable
              as List<CampaignUpdateEntity>,
      isLoadingUpdates: null == isLoadingUpdates
          ? _value.isLoadingUpdates
          : isLoadingUpdates // ignore: cast_nullable_to_non_nullable
              as bool,
      errorUpdates: freezed == errorUpdates
          ? _value.errorUpdates
          : errorUpdates // ignore: cast_nullable_to_non_nullable
              as String?,
      userCampaigns: null == userCampaigns
          ? _value.userCampaigns
          : userCampaigns // ignore: cast_nullable_to_non_nullable
              as List<CampaignEntity>,
      isLoadingUserCampaigns: null == isLoadingUserCampaigns
          ? _value.isLoadingUserCampaigns
          : isLoadingUserCampaigns // ignore: cast_nullable_to_non_nullable
              as bool,
      errorUserCampaigns: freezed == errorUserCampaigns
          ? _value.errorUserCampaigns
          : errorUserCampaigns // ignore: cast_nullable_to_non_nullable
              as String?,
      userDonations: null == userDonations
          ? _value.userDonations
          : userDonations // ignore: cast_nullable_to_non_nullable
              as List<DonationEntity>,
      isLoadingUserDonations: null == isLoadingUserDonations
          ? _value.isLoadingUserDonations
          : isLoadingUserDonations // ignore: cast_nullable_to_non_nullable
              as bool,
      errorUserDonations: freezed == errorUserDonations
          ? _value.errorUserDonations
          : errorUserDonations // ignore: cast_nullable_to_non_nullable
              as String?,
      isCreatingCampaign: null == isCreatingCampaign
          ? _value.isCreatingCampaign
          : isCreatingCampaign // ignore: cast_nullable_to_non_nullable
              as bool,
      errorCreateCampaign: freezed == errorCreateCampaign
          ? _value.errorCreateCampaign
          : errorCreateCampaign // ignore: cast_nullable_to_non_nullable
              as String?,
      isUpdatingCampaign: null == isUpdatingCampaign
          ? _value.isUpdatingCampaign
          : isUpdatingCampaign // ignore: cast_nullable_to_non_nullable
              as bool,
      errorUpdateCampaign: freezed == errorUpdateCampaign
          ? _value.errorUpdateCampaign
          : errorUpdateCampaign // ignore: cast_nullable_to_non_nullable
              as String?,
      isDeletingCampaign: null == isDeletingCampaign
          ? _value.isDeletingCampaign
          : isDeletingCampaign // ignore: cast_nullable_to_non_nullable
              as bool,
      errorDeleteCampaign: freezed == errorDeleteCampaign
          ? _value.errorDeleteCampaign
          : errorDeleteCampaign // ignore: cast_nullable_to_non_nullable
              as String?,
      isPerformingDonation: null == isPerformingDonation
          ? _value.isPerformingDonation
          : isPerformingDonation // ignore: cast_nullable_to_non_nullable
              as bool,
      errorDonation: freezed == errorDonation
          ? _value.errorDonation
          : errorDonation // ignore: cast_nullable_to_non_nullable
              as String?,
      isRequestingWithdrawal: null == isRequestingWithdrawal
          ? _value.isRequestingWithdrawal
          : isRequestingWithdrawal // ignore: cast_nullable_to_non_nullable
              as bool,
      errorWithdrawal: freezed == errorWithdrawal
          ? _value.errorWithdrawal
          : errorWithdrawal // ignore: cast_nullable_to_non_nullable
              as String?,
      isUpdatingBankDetails: null == isUpdatingBankDetails
          ? _value.isUpdatingBankDetails
          : isUpdatingBankDetails // ignore: cast_nullable_to_non_nullable
              as bool,
      errorBankDetails: freezed == errorBankDetails
          ? _value.errorBankDetails
          : errorBankDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of CampaignState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CampaignEntityCopyWith<$Res>? get selectedCampaign {
    if (_value.selectedCampaign == null) {
      return null;
    }

    return $CampaignEntityCopyWith<$Res>(_value.selectedCampaign!, (value) {
      return _then(_value.copyWith(selectedCampaign: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CampaignStateImplCopyWith<$Res>
    implements $CampaignStateCopyWith<$Res> {
  factory _$$CampaignStateImplCopyWith(
          _$CampaignStateImpl value, $Res Function(_$CampaignStateImpl) then) =
      __$$CampaignStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CampaignEntity> campaigns,
      bool isLoadingCampaigns,
      bool isRefreshingCampaigns,
      String? errorCampaigns,
      CampaignEntity? selectedCampaign,
      bool isLoadingCampaignDetail,
      String? errorCampaignDetail,
      List<CampaignCategoryEntity> categories,
      bool isLoadingCategories,
      String? errorCategories,
      List<CampaignEntity> searchResults,
      bool isSearching,
      String? errorSearch,
      List<DonationEntity> donations,
      bool isLoadingDonations,
      String? errorDonations,
      List<CampaignCommentEntity> comments,
      bool isLoadingComments,
      String? errorComments,
      List<WithdrawalEntity> withdrawals,
      bool isLoadingWithdrawals,
      String? errorWithdrawals,
      List<CampaignDocumentEntity> campaignDocuments,
      bool isLoadingDocuments,
      String? errorDocuments,
      List<CampaignMilestoneEntity> campaignMilestones,
      bool isLoadingMilestones,
      String? errorMilestones,
      List<CampaignFundBreakdownEntity> campaignFundBreakdown,
      bool isLoadingFundBreakdown,
      String? errorFundBreakdown,
      List<CampaignProofItemEntity> campaignProofItems,
      bool isLoadingProofItems,
      String? errorProofItems,
      List<CampaignUpdateEntity> campaignUpdates,
      bool isLoadingUpdates,
      String? errorUpdates,
      List<CampaignEntity> userCampaigns,
      bool isLoadingUserCampaigns,
      String? errorUserCampaigns,
      List<DonationEntity> userDonations,
      bool isLoadingUserDonations,
      String? errorUserDonations,
      bool isCreatingCampaign,
      String? errorCreateCampaign,
      bool isUpdatingCampaign,
      String? errorUpdateCampaign,
      bool isDeletingCampaign,
      String? errorDeleteCampaign,
      bool isPerformingDonation,
      String? errorDonation,
      bool isRequestingWithdrawal,
      String? errorWithdrawal,
      bool isUpdatingBankDetails,
      String? errorBankDetails,
      String? message});

  @override
  $CampaignEntityCopyWith<$Res>? get selectedCampaign;
}

/// @nodoc
class __$$CampaignStateImplCopyWithImpl<$Res>
    extends _$CampaignStateCopyWithImpl<$Res, _$CampaignStateImpl>
    implements _$$CampaignStateImplCopyWith<$Res> {
  __$$CampaignStateImplCopyWithImpl(
      _$CampaignStateImpl _value, $Res Function(_$CampaignStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CampaignState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? campaigns = null,
    Object? isLoadingCampaigns = null,
    Object? isRefreshingCampaigns = null,
    Object? errorCampaigns = freezed,
    Object? selectedCampaign = freezed,
    Object? isLoadingCampaignDetail = null,
    Object? errorCampaignDetail = freezed,
    Object? categories = null,
    Object? isLoadingCategories = null,
    Object? errorCategories = freezed,
    Object? searchResults = null,
    Object? isSearching = null,
    Object? errorSearch = freezed,
    Object? donations = null,
    Object? isLoadingDonations = null,
    Object? errorDonations = freezed,
    Object? comments = null,
    Object? isLoadingComments = null,
    Object? errorComments = freezed,
    Object? withdrawals = null,
    Object? isLoadingWithdrawals = null,
    Object? errorWithdrawals = freezed,
    Object? campaignDocuments = null,
    Object? isLoadingDocuments = null,
    Object? errorDocuments = freezed,
    Object? campaignMilestones = null,
    Object? isLoadingMilestones = null,
    Object? errorMilestones = freezed,
    Object? campaignFundBreakdown = null,
    Object? isLoadingFundBreakdown = null,
    Object? errorFundBreakdown = freezed,
    Object? campaignProofItems = null,
    Object? isLoadingProofItems = null,
    Object? errorProofItems = freezed,
    Object? campaignUpdates = null,
    Object? isLoadingUpdates = null,
    Object? errorUpdates = freezed,
    Object? userCampaigns = null,
    Object? isLoadingUserCampaigns = null,
    Object? errorUserCampaigns = freezed,
    Object? userDonations = null,
    Object? isLoadingUserDonations = null,
    Object? errorUserDonations = freezed,
    Object? isCreatingCampaign = null,
    Object? errorCreateCampaign = freezed,
    Object? isUpdatingCampaign = null,
    Object? errorUpdateCampaign = freezed,
    Object? isDeletingCampaign = null,
    Object? errorDeleteCampaign = freezed,
    Object? isPerformingDonation = null,
    Object? errorDonation = freezed,
    Object? isRequestingWithdrawal = null,
    Object? errorWithdrawal = freezed,
    Object? isUpdatingBankDetails = null,
    Object? errorBankDetails = freezed,
    Object? message = freezed,
  }) {
    return _then(_$CampaignStateImpl(
      campaigns: null == campaigns
          ? _value._campaigns
          : campaigns // ignore: cast_nullable_to_non_nullable
              as List<CampaignEntity>,
      isLoadingCampaigns: null == isLoadingCampaigns
          ? _value.isLoadingCampaigns
          : isLoadingCampaigns // ignore: cast_nullable_to_non_nullable
              as bool,
      isRefreshingCampaigns: null == isRefreshingCampaigns
          ? _value.isRefreshingCampaigns
          : isRefreshingCampaigns // ignore: cast_nullable_to_non_nullable
              as bool,
      errorCampaigns: freezed == errorCampaigns
          ? _value.errorCampaigns
          : errorCampaigns // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedCampaign: freezed == selectedCampaign
          ? _value.selectedCampaign
          : selectedCampaign // ignore: cast_nullable_to_non_nullable
              as CampaignEntity?,
      isLoadingCampaignDetail: null == isLoadingCampaignDetail
          ? _value.isLoadingCampaignDetail
          : isLoadingCampaignDetail // ignore: cast_nullable_to_non_nullable
              as bool,
      errorCampaignDetail: freezed == errorCampaignDetail
          ? _value.errorCampaignDetail
          : errorCampaignDetail // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CampaignCategoryEntity>,
      isLoadingCategories: null == isLoadingCategories
          ? _value.isLoadingCategories
          : isLoadingCategories // ignore: cast_nullable_to_non_nullable
              as bool,
      errorCategories: freezed == errorCategories
          ? _value.errorCategories
          : errorCategories // ignore: cast_nullable_to_non_nullable
              as String?,
      searchResults: null == searchResults
          ? _value._searchResults
          : searchResults // ignore: cast_nullable_to_non_nullable
              as List<CampaignEntity>,
      isSearching: null == isSearching
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool,
      errorSearch: freezed == errorSearch
          ? _value.errorSearch
          : errorSearch // ignore: cast_nullable_to_non_nullable
              as String?,
      donations: null == donations
          ? _value._donations
          : donations // ignore: cast_nullable_to_non_nullable
              as List<DonationEntity>,
      isLoadingDonations: null == isLoadingDonations
          ? _value.isLoadingDonations
          : isLoadingDonations // ignore: cast_nullable_to_non_nullable
              as bool,
      errorDonations: freezed == errorDonations
          ? _value.errorDonations
          : errorDonations // ignore: cast_nullable_to_non_nullable
              as String?,
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CampaignCommentEntity>,
      isLoadingComments: null == isLoadingComments
          ? _value.isLoadingComments
          : isLoadingComments // ignore: cast_nullable_to_non_nullable
              as bool,
      errorComments: freezed == errorComments
          ? _value.errorComments
          : errorComments // ignore: cast_nullable_to_non_nullable
              as String?,
      withdrawals: null == withdrawals
          ? _value._withdrawals
          : withdrawals // ignore: cast_nullable_to_non_nullable
              as List<WithdrawalEntity>,
      isLoadingWithdrawals: null == isLoadingWithdrawals
          ? _value.isLoadingWithdrawals
          : isLoadingWithdrawals // ignore: cast_nullable_to_non_nullable
              as bool,
      errorWithdrawals: freezed == errorWithdrawals
          ? _value.errorWithdrawals
          : errorWithdrawals // ignore: cast_nullable_to_non_nullable
              as String?,
      campaignDocuments: null == campaignDocuments
          ? _value._campaignDocuments
          : campaignDocuments // ignore: cast_nullable_to_non_nullable
              as List<CampaignDocumentEntity>,
      isLoadingDocuments: null == isLoadingDocuments
          ? _value.isLoadingDocuments
          : isLoadingDocuments // ignore: cast_nullable_to_non_nullable
              as bool,
      errorDocuments: freezed == errorDocuments
          ? _value.errorDocuments
          : errorDocuments // ignore: cast_nullable_to_non_nullable
              as String?,
      campaignMilestones: null == campaignMilestones
          ? _value._campaignMilestones
          : campaignMilestones // ignore: cast_nullable_to_non_nullable
              as List<CampaignMilestoneEntity>,
      isLoadingMilestones: null == isLoadingMilestones
          ? _value.isLoadingMilestones
          : isLoadingMilestones // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMilestones: freezed == errorMilestones
          ? _value.errorMilestones
          : errorMilestones // ignore: cast_nullable_to_non_nullable
              as String?,
      campaignFundBreakdown: null == campaignFundBreakdown
          ? _value._campaignFundBreakdown
          : campaignFundBreakdown // ignore: cast_nullable_to_non_nullable
              as List<CampaignFundBreakdownEntity>,
      isLoadingFundBreakdown: null == isLoadingFundBreakdown
          ? _value.isLoadingFundBreakdown
          : isLoadingFundBreakdown // ignore: cast_nullable_to_non_nullable
              as bool,
      errorFundBreakdown: freezed == errorFundBreakdown
          ? _value.errorFundBreakdown
          : errorFundBreakdown // ignore: cast_nullable_to_non_nullable
              as String?,
      campaignProofItems: null == campaignProofItems
          ? _value._campaignProofItems
          : campaignProofItems // ignore: cast_nullable_to_non_nullable
              as List<CampaignProofItemEntity>,
      isLoadingProofItems: null == isLoadingProofItems
          ? _value.isLoadingProofItems
          : isLoadingProofItems // ignore: cast_nullable_to_non_nullable
              as bool,
      errorProofItems: freezed == errorProofItems
          ? _value.errorProofItems
          : errorProofItems // ignore: cast_nullable_to_non_nullable
              as String?,
      campaignUpdates: null == campaignUpdates
          ? _value._campaignUpdates
          : campaignUpdates // ignore: cast_nullable_to_non_nullable
              as List<CampaignUpdateEntity>,
      isLoadingUpdates: null == isLoadingUpdates
          ? _value.isLoadingUpdates
          : isLoadingUpdates // ignore: cast_nullable_to_non_nullable
              as bool,
      errorUpdates: freezed == errorUpdates
          ? _value.errorUpdates
          : errorUpdates // ignore: cast_nullable_to_non_nullable
              as String?,
      userCampaigns: null == userCampaigns
          ? _value._userCampaigns
          : userCampaigns // ignore: cast_nullable_to_non_nullable
              as List<CampaignEntity>,
      isLoadingUserCampaigns: null == isLoadingUserCampaigns
          ? _value.isLoadingUserCampaigns
          : isLoadingUserCampaigns // ignore: cast_nullable_to_non_nullable
              as bool,
      errorUserCampaigns: freezed == errorUserCampaigns
          ? _value.errorUserCampaigns
          : errorUserCampaigns // ignore: cast_nullable_to_non_nullable
              as String?,
      userDonations: null == userDonations
          ? _value._userDonations
          : userDonations // ignore: cast_nullable_to_non_nullable
              as List<DonationEntity>,
      isLoadingUserDonations: null == isLoadingUserDonations
          ? _value.isLoadingUserDonations
          : isLoadingUserDonations // ignore: cast_nullable_to_non_nullable
              as bool,
      errorUserDonations: freezed == errorUserDonations
          ? _value.errorUserDonations
          : errorUserDonations // ignore: cast_nullable_to_non_nullable
              as String?,
      isCreatingCampaign: null == isCreatingCampaign
          ? _value.isCreatingCampaign
          : isCreatingCampaign // ignore: cast_nullable_to_non_nullable
              as bool,
      errorCreateCampaign: freezed == errorCreateCampaign
          ? _value.errorCreateCampaign
          : errorCreateCampaign // ignore: cast_nullable_to_non_nullable
              as String?,
      isUpdatingCampaign: null == isUpdatingCampaign
          ? _value.isUpdatingCampaign
          : isUpdatingCampaign // ignore: cast_nullable_to_non_nullable
              as bool,
      errorUpdateCampaign: freezed == errorUpdateCampaign
          ? _value.errorUpdateCampaign
          : errorUpdateCampaign // ignore: cast_nullable_to_non_nullable
              as String?,
      isDeletingCampaign: null == isDeletingCampaign
          ? _value.isDeletingCampaign
          : isDeletingCampaign // ignore: cast_nullable_to_non_nullable
              as bool,
      errorDeleteCampaign: freezed == errorDeleteCampaign
          ? _value.errorDeleteCampaign
          : errorDeleteCampaign // ignore: cast_nullable_to_non_nullable
              as String?,
      isPerformingDonation: null == isPerformingDonation
          ? _value.isPerformingDonation
          : isPerformingDonation // ignore: cast_nullable_to_non_nullable
              as bool,
      errorDonation: freezed == errorDonation
          ? _value.errorDonation
          : errorDonation // ignore: cast_nullable_to_non_nullable
              as String?,
      isRequestingWithdrawal: null == isRequestingWithdrawal
          ? _value.isRequestingWithdrawal
          : isRequestingWithdrawal // ignore: cast_nullable_to_non_nullable
              as bool,
      errorWithdrawal: freezed == errorWithdrawal
          ? _value.errorWithdrawal
          : errorWithdrawal // ignore: cast_nullable_to_non_nullable
              as String?,
      isUpdatingBankDetails: null == isUpdatingBankDetails
          ? _value.isUpdatingBankDetails
          : isUpdatingBankDetails // ignore: cast_nullable_to_non_nullable
              as bool,
      errorBankDetails: freezed == errorBankDetails
          ? _value.errorBankDetails
          : errorBankDetails // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CampaignStateImpl implements _CampaignState {
  const _$CampaignStateImpl(
      {final List<CampaignEntity> campaigns = const <CampaignEntity>[],
      this.isLoadingCampaigns = false,
      this.isRefreshingCampaigns = false,
      this.errorCampaigns,
      this.selectedCampaign,
      this.isLoadingCampaignDetail = false,
      this.errorCampaignDetail,
      final List<CampaignCategoryEntity> categories =
          const <CampaignCategoryEntity>[],
      this.isLoadingCategories = false,
      this.errorCategories,
      final List<CampaignEntity> searchResults = const <CampaignEntity>[],
      this.isSearching = false,
      this.errorSearch,
      final List<DonationEntity> donations = const <DonationEntity>[],
      this.isLoadingDonations = false,
      this.errorDonations,
      final List<CampaignCommentEntity> comments =
          const <CampaignCommentEntity>[],
      this.isLoadingComments = false,
      this.errorComments,
      final List<WithdrawalEntity> withdrawals = const <WithdrawalEntity>[],
      this.isLoadingWithdrawals = false,
      this.errorWithdrawals,
      final List<CampaignDocumentEntity> campaignDocuments =
          const <CampaignDocumentEntity>[],
      this.isLoadingDocuments = false,
      this.errorDocuments,
      final List<CampaignMilestoneEntity> campaignMilestones =
          const <CampaignMilestoneEntity>[],
      this.isLoadingMilestones = false,
      this.errorMilestones,
      final List<CampaignFundBreakdownEntity> campaignFundBreakdown =
          const <CampaignFundBreakdownEntity>[],
      this.isLoadingFundBreakdown = false,
      this.errorFundBreakdown,
      final List<CampaignProofItemEntity> campaignProofItems =
          const <CampaignProofItemEntity>[],
      this.isLoadingProofItems = false,
      this.errorProofItems,
      final List<CampaignUpdateEntity> campaignUpdates =
          const <CampaignUpdateEntity>[],
      this.isLoadingUpdates = false,
      this.errorUpdates,
      final List<CampaignEntity> userCampaigns = const <CampaignEntity>[],
      this.isLoadingUserCampaigns = false,
      this.errorUserCampaigns,
      final List<DonationEntity> userDonations = const <DonationEntity>[],
      this.isLoadingUserDonations = false,
      this.errorUserDonations,
      this.isCreatingCampaign = false,
      this.errorCreateCampaign,
      this.isUpdatingCampaign = false,
      this.errorUpdateCampaign,
      this.isDeletingCampaign = false,
      this.errorDeleteCampaign,
      this.isPerformingDonation = false,
      this.errorDonation,
      this.isRequestingWithdrawal = false,
      this.errorWithdrawal,
      this.isUpdatingBankDetails = false,
      this.errorBankDetails,
      this.message})
      : _campaigns = campaigns,
        _categories = categories,
        _searchResults = searchResults,
        _donations = donations,
        _comments = comments,
        _withdrawals = withdrawals,
        _campaignDocuments = campaignDocuments,
        _campaignMilestones = campaignMilestones,
        _campaignFundBreakdown = campaignFundBreakdown,
        _campaignProofItems = campaignProofItems,
        _campaignUpdates = campaignUpdates,
        _userCampaigns = userCampaigns,
        _userDonations = userDonations;

// Campaign list
  final List<CampaignEntity> _campaigns;
// Campaign list
  @override
  @JsonKey()
  List<CampaignEntity> get campaigns {
    if (_campaigns is EqualUnmodifiableListView) return _campaigns;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_campaigns);
  }

  @override
  @JsonKey()
  final bool isLoadingCampaigns;
  @override
  @JsonKey()
  final bool isRefreshingCampaigns;
  @override
  final String? errorCampaigns;
// Single campaign detail
  @override
  final CampaignEntity? selectedCampaign;
  @override
  @JsonKey()
  final bool isLoadingCampaignDetail;
  @override
  final String? errorCampaignDetail;
// Categories
  final List<CampaignCategoryEntity> _categories;
// Categories
  @override
  @JsonKey()
  List<CampaignCategoryEntity> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  @JsonKey()
  final bool isLoadingCategories;
  @override
  final String? errorCategories;
// Search results
  final List<CampaignEntity> _searchResults;
// Search results
  @override
  @JsonKey()
  List<CampaignEntity> get searchResults {
    if (_searchResults is EqualUnmodifiableListView) return _searchResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchResults);
  }

  @override
  @JsonKey()
  final bool isSearching;
  @override
  final String? errorSearch;
// Donations for current campaign
  final List<DonationEntity> _donations;
// Donations for current campaign
  @override
  @JsonKey()
  List<DonationEntity> get donations {
    if (_donations is EqualUnmodifiableListView) return _donations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_donations);
  }

  @override
  @JsonKey()
  final bool isLoadingDonations;
  @override
  final String? errorDonations;
// Comments for current campaign
  final List<CampaignCommentEntity> _comments;
// Comments for current campaign
  @override
  @JsonKey()
  List<CampaignCommentEntity> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  @JsonKey()
  final bool isLoadingComments;
  @override
  final String? errorComments;
// Withdrawals for current campaign
  final List<WithdrawalEntity> _withdrawals;
// Withdrawals for current campaign
  @override
  @JsonKey()
  List<WithdrawalEntity> get withdrawals {
    if (_withdrawals is EqualUnmodifiableListView) return _withdrawals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_withdrawals);
  }

  @override
  @JsonKey()
  final bool isLoadingWithdrawals;
  @override
  final String? errorWithdrawals;
// Transparency Data
  final List<CampaignDocumentEntity> _campaignDocuments;
// Transparency Data
  @override
  @JsonKey()
  List<CampaignDocumentEntity> get campaignDocuments {
    if (_campaignDocuments is EqualUnmodifiableListView)
      return _campaignDocuments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_campaignDocuments);
  }

  @override
  @JsonKey()
  final bool isLoadingDocuments;
  @override
  final String? errorDocuments;
  final List<CampaignMilestoneEntity> _campaignMilestones;
  @override
  @JsonKey()
  List<CampaignMilestoneEntity> get campaignMilestones {
    if (_campaignMilestones is EqualUnmodifiableListView)
      return _campaignMilestones;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_campaignMilestones);
  }

  @override
  @JsonKey()
  final bool isLoadingMilestones;
  @override
  final String? errorMilestones;
  final List<CampaignFundBreakdownEntity> _campaignFundBreakdown;
  @override
  @JsonKey()
  List<CampaignFundBreakdownEntity> get campaignFundBreakdown {
    if (_campaignFundBreakdown is EqualUnmodifiableListView)
      return _campaignFundBreakdown;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_campaignFundBreakdown);
  }

  @override
  @JsonKey()
  final bool isLoadingFundBreakdown;
  @override
  final String? errorFundBreakdown;
  final List<CampaignProofItemEntity> _campaignProofItems;
  @override
  @JsonKey()
  List<CampaignProofItemEntity> get campaignProofItems {
    if (_campaignProofItems is EqualUnmodifiableListView)
      return _campaignProofItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_campaignProofItems);
  }

  @override
  @JsonKey()
  final bool isLoadingProofItems;
  @override
  final String? errorProofItems;
// Campaign Updates
  final List<CampaignUpdateEntity> _campaignUpdates;
// Campaign Updates
  @override
  @JsonKey()
  List<CampaignUpdateEntity> get campaignUpdates {
    if (_campaignUpdates is EqualUnmodifiableListView) return _campaignUpdates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_campaignUpdates);
  }

  @override
  @JsonKey()
  final bool isLoadingUpdates;
  @override
  final String? errorUpdates;
// User's own campaigns (for My Campaigns screen)
  final List<CampaignEntity> _userCampaigns;
// User's own campaigns (for My Campaigns screen)
  @override
  @JsonKey()
  List<CampaignEntity> get userCampaigns {
    if (_userCampaigns is EqualUnmodifiableListView) return _userCampaigns;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userCampaigns);
  }

  @override
  @JsonKey()
  final bool isLoadingUserCampaigns;
  @override
  final String? errorUserCampaigns;
// User's donations (for My Donations screen)
  final List<DonationEntity> _userDonations;
// User's donations (for My Donations screen)
  @override
  @JsonKey()
  List<DonationEntity> get userDonations {
    if (_userDonations is EqualUnmodifiableListView) return _userDonations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userDonations);
  }

  @override
  @JsonKey()
  final bool isLoadingUserDonations;
  @override
  final String? errorUserDonations;
// Mutating operations
  @override
  @JsonKey()
  final bool isCreatingCampaign;
  @override
  final String? errorCreateCampaign;
  @override
  @JsonKey()
  final bool isUpdatingCampaign;
  @override
  final String? errorUpdateCampaign;
  @override
  @JsonKey()
  final bool isDeletingCampaign;
  @override
  final String? errorDeleteCampaign;
  @override
  @JsonKey()
  final bool isPerformingDonation;
  @override
  final String? errorDonation;
  @override
  @JsonKey()
  final bool isRequestingWithdrawal;
  @override
  final String? errorWithdrawal;
  @override
  @JsonKey()
  final bool isUpdatingBankDetails;
  @override
  final String? errorBankDetails;
// Generic UI message
  @override
  final String? message;

  @override
  String toString() {
    return 'CampaignState(campaigns: $campaigns, isLoadingCampaigns: $isLoadingCampaigns, isRefreshingCampaigns: $isRefreshingCampaigns, errorCampaigns: $errorCampaigns, selectedCampaign: $selectedCampaign, isLoadingCampaignDetail: $isLoadingCampaignDetail, errorCampaignDetail: $errorCampaignDetail, categories: $categories, isLoadingCategories: $isLoadingCategories, errorCategories: $errorCategories, searchResults: $searchResults, isSearching: $isSearching, errorSearch: $errorSearch, donations: $donations, isLoadingDonations: $isLoadingDonations, errorDonations: $errorDonations, comments: $comments, isLoadingComments: $isLoadingComments, errorComments: $errorComments, withdrawals: $withdrawals, isLoadingWithdrawals: $isLoadingWithdrawals, errorWithdrawals: $errorWithdrawals, campaignDocuments: $campaignDocuments, isLoadingDocuments: $isLoadingDocuments, errorDocuments: $errorDocuments, campaignMilestones: $campaignMilestones, isLoadingMilestones: $isLoadingMilestones, errorMilestones: $errorMilestones, campaignFundBreakdown: $campaignFundBreakdown, isLoadingFundBreakdown: $isLoadingFundBreakdown, errorFundBreakdown: $errorFundBreakdown, campaignProofItems: $campaignProofItems, isLoadingProofItems: $isLoadingProofItems, errorProofItems: $errorProofItems, campaignUpdates: $campaignUpdates, isLoadingUpdates: $isLoadingUpdates, errorUpdates: $errorUpdates, userCampaigns: $userCampaigns, isLoadingUserCampaigns: $isLoadingUserCampaigns, errorUserCampaigns: $errorUserCampaigns, userDonations: $userDonations, isLoadingUserDonations: $isLoadingUserDonations, errorUserDonations: $errorUserDonations, isCreatingCampaign: $isCreatingCampaign, errorCreateCampaign: $errorCreateCampaign, isUpdatingCampaign: $isUpdatingCampaign, errorUpdateCampaign: $errorUpdateCampaign, isDeletingCampaign: $isDeletingCampaign, errorDeleteCampaign: $errorDeleteCampaign, isPerformingDonation: $isPerformingDonation, errorDonation: $errorDonation, isRequestingWithdrawal: $isRequestingWithdrawal, errorWithdrawal: $errorWithdrawal, isUpdatingBankDetails: $isUpdatingBankDetails, errorBankDetails: $errorBankDetails, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CampaignStateImpl &&
            const DeepCollectionEquality()
                .equals(other._campaigns, _campaigns) &&
            (identical(other.isLoadingCampaigns, isLoadingCampaigns) ||
                other.isLoadingCampaigns == isLoadingCampaigns) &&
            (identical(other.isRefreshingCampaigns, isRefreshingCampaigns) ||
                other.isRefreshingCampaigns == isRefreshingCampaigns) &&
            (identical(other.errorCampaigns, errorCampaigns) ||
                other.errorCampaigns == errorCampaigns) &&
            (identical(other.selectedCampaign, selectedCampaign) ||
                other.selectedCampaign == selectedCampaign) &&
            (identical(other.isLoadingCampaignDetail, isLoadingCampaignDetail) ||
                other.isLoadingCampaignDetail == isLoadingCampaignDetail) &&
            (identical(other.errorCampaignDetail, errorCampaignDetail) ||
                other.errorCampaignDetail == errorCampaignDetail) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.isLoadingCategories, isLoadingCategories) ||
                other.isLoadingCategories == isLoadingCategories) &&
            (identical(other.errorCategories, errorCategories) ||
                other.errorCategories == errorCategories) &&
            const DeepCollectionEquality()
                .equals(other._searchResults, _searchResults) &&
            (identical(other.isSearching, isSearching) ||
                other.isSearching == isSearching) &&
            (identical(other.errorSearch, errorSearch) ||
                other.errorSearch == errorSearch) &&
            const DeepCollectionEquality()
                .equals(other._donations, _donations) &&
            (identical(other.isLoadingDonations, isLoadingDonations) ||
                other.isLoadingDonations == isLoadingDonations) &&
            (identical(other.errorDonations, errorDonations) ||
                other.errorDonations == errorDonations) &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            (identical(other.isLoadingComments, isLoadingComments) ||
                other.isLoadingComments == isLoadingComments) &&
            (identical(other.errorComments, errorComments) ||
                other.errorComments == errorComments) &&
            const DeepCollectionEquality()
                .equals(other._withdrawals, _withdrawals) &&
            (identical(other.isLoadingWithdrawals, isLoadingWithdrawals) ||
                other.isLoadingWithdrawals == isLoadingWithdrawals) &&
            (identical(other.errorWithdrawals, errorWithdrawals) ||
                other.errorWithdrawals == errorWithdrawals) &&
            const DeepCollectionEquality()
                .equals(other._campaignDocuments, _campaignDocuments) &&
            (identical(other.isLoadingDocuments, isLoadingDocuments) ||
                other.isLoadingDocuments == isLoadingDocuments) &&
            (identical(other.errorDocuments, errorDocuments) ||
                other.errorDocuments == errorDocuments) &&
            const DeepCollectionEquality()
                .equals(other._campaignMilestones, _campaignMilestones) &&
            (identical(other.isLoadingMilestones, isLoadingMilestones) ||
                other.isLoadingMilestones == isLoadingMilestones) &&
            (identical(other.errorMilestones, errorMilestones) ||
                other.errorMilestones == errorMilestones) &&
            const DeepCollectionEquality()
                .equals(other._campaignFundBreakdown, _campaignFundBreakdown) &&
            (identical(other.isLoadingFundBreakdown, isLoadingFundBreakdown) ||
                other.isLoadingFundBreakdown == isLoadingFundBreakdown) &&
            (identical(other.errorFundBreakdown, errorFundBreakdown) ||
                other.errorFundBreakdown == errorFundBreakdown) &&
            const DeepCollectionEquality()
                .equals(other._campaignProofItems, _campaignProofItems) &&
            (identical(other.isLoadingProofItems, isLoadingProofItems) ||
                other.isLoadingProofItems == isLoadingProofItems) &&
            (identical(other.errorProofItems, errorProofItems) || other.errorProofItems == errorProofItems) &&
            const DeepCollectionEquality().equals(other._campaignUpdates, _campaignUpdates) &&
            (identical(other.isLoadingUpdates, isLoadingUpdates) || other.isLoadingUpdates == isLoadingUpdates) &&
            (identical(other.errorUpdates, errorUpdates) || other.errorUpdates == errorUpdates) &&
            const DeepCollectionEquality().equals(other._userCampaigns, _userCampaigns) &&
            (identical(other.isLoadingUserCampaigns, isLoadingUserCampaigns) || other.isLoadingUserCampaigns == isLoadingUserCampaigns) &&
            (identical(other.errorUserCampaigns, errorUserCampaigns) || other.errorUserCampaigns == errorUserCampaigns) &&
            const DeepCollectionEquality().equals(other._userDonations, _userDonations) &&
            (identical(other.isLoadingUserDonations, isLoadingUserDonations) || other.isLoadingUserDonations == isLoadingUserDonations) &&
            (identical(other.errorUserDonations, errorUserDonations) || other.errorUserDonations == errorUserDonations) &&
            (identical(other.isCreatingCampaign, isCreatingCampaign) || other.isCreatingCampaign == isCreatingCampaign) &&
            (identical(other.errorCreateCampaign, errorCreateCampaign) || other.errorCreateCampaign == errorCreateCampaign) &&
            (identical(other.isUpdatingCampaign, isUpdatingCampaign) || other.isUpdatingCampaign == isUpdatingCampaign) &&
            (identical(other.errorUpdateCampaign, errorUpdateCampaign) || other.errorUpdateCampaign == errorUpdateCampaign) &&
            (identical(other.isDeletingCampaign, isDeletingCampaign) || other.isDeletingCampaign == isDeletingCampaign) &&
            (identical(other.errorDeleteCampaign, errorDeleteCampaign) || other.errorDeleteCampaign == errorDeleteCampaign) &&
            (identical(other.isPerformingDonation, isPerformingDonation) || other.isPerformingDonation == isPerformingDonation) &&
            (identical(other.errorDonation, errorDonation) || other.errorDonation == errorDonation) &&
            (identical(other.isRequestingWithdrawal, isRequestingWithdrawal) || other.isRequestingWithdrawal == isRequestingWithdrawal) &&
            (identical(other.errorWithdrawal, errorWithdrawal) || other.errorWithdrawal == errorWithdrawal) &&
            (identical(other.isUpdatingBankDetails, isUpdatingBankDetails) || other.isUpdatingBankDetails == isUpdatingBankDetails) &&
            (identical(other.errorBankDetails, errorBankDetails) || other.errorBankDetails == errorBankDetails) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(_campaigns),
        isLoadingCampaigns,
        isRefreshingCampaigns,
        errorCampaigns,
        selectedCampaign,
        isLoadingCampaignDetail,
        errorCampaignDetail,
        const DeepCollectionEquality().hash(_categories),
        isLoadingCategories,
        errorCategories,
        const DeepCollectionEquality().hash(_searchResults),
        isSearching,
        errorSearch,
        const DeepCollectionEquality().hash(_donations),
        isLoadingDonations,
        errorDonations,
        const DeepCollectionEquality().hash(_comments),
        isLoadingComments,
        errorComments,
        const DeepCollectionEquality().hash(_withdrawals),
        isLoadingWithdrawals,
        errorWithdrawals,
        const DeepCollectionEquality().hash(_campaignDocuments),
        isLoadingDocuments,
        errorDocuments,
        const DeepCollectionEquality().hash(_campaignMilestones),
        isLoadingMilestones,
        errorMilestones,
        const DeepCollectionEquality().hash(_campaignFundBreakdown),
        isLoadingFundBreakdown,
        errorFundBreakdown,
        const DeepCollectionEquality().hash(_campaignProofItems),
        isLoadingProofItems,
        errorProofItems,
        const DeepCollectionEquality().hash(_campaignUpdates),
        isLoadingUpdates,
        errorUpdates,
        const DeepCollectionEquality().hash(_userCampaigns),
        isLoadingUserCampaigns,
        errorUserCampaigns,
        const DeepCollectionEquality().hash(_userDonations),
        isLoadingUserDonations,
        errorUserDonations,
        isCreatingCampaign,
        errorCreateCampaign,
        isUpdatingCampaign,
        errorUpdateCampaign,
        isDeletingCampaign,
        errorDeleteCampaign,
        isPerformingDonation,
        errorDonation,
        isRequestingWithdrawal,
        errorWithdrawal,
        isUpdatingBankDetails,
        errorBankDetails,
        message
      ]);

  /// Create a copy of CampaignState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CampaignStateImplCopyWith<_$CampaignStateImpl> get copyWith =>
      __$$CampaignStateImplCopyWithImpl<_$CampaignStateImpl>(this, _$identity);
}

abstract class _CampaignState implements CampaignState {
  const factory _CampaignState(
      {final List<CampaignEntity> campaigns,
      final bool isLoadingCampaigns,
      final bool isRefreshingCampaigns,
      final String? errorCampaigns,
      final CampaignEntity? selectedCampaign,
      final bool isLoadingCampaignDetail,
      final String? errorCampaignDetail,
      final List<CampaignCategoryEntity> categories,
      final bool isLoadingCategories,
      final String? errorCategories,
      final List<CampaignEntity> searchResults,
      final bool isSearching,
      final String? errorSearch,
      final List<DonationEntity> donations,
      final bool isLoadingDonations,
      final String? errorDonations,
      final List<CampaignCommentEntity> comments,
      final bool isLoadingComments,
      final String? errorComments,
      final List<WithdrawalEntity> withdrawals,
      final bool isLoadingWithdrawals,
      final String? errorWithdrawals,
      final List<CampaignDocumentEntity> campaignDocuments,
      final bool isLoadingDocuments,
      final String? errorDocuments,
      final List<CampaignMilestoneEntity> campaignMilestones,
      final bool isLoadingMilestones,
      final String? errorMilestones,
      final List<CampaignFundBreakdownEntity> campaignFundBreakdown,
      final bool isLoadingFundBreakdown,
      final String? errorFundBreakdown,
      final List<CampaignProofItemEntity> campaignProofItems,
      final bool isLoadingProofItems,
      final String? errorProofItems,
      final List<CampaignUpdateEntity> campaignUpdates,
      final bool isLoadingUpdates,
      final String? errorUpdates,
      final List<CampaignEntity> userCampaigns,
      final bool isLoadingUserCampaigns,
      final String? errorUserCampaigns,
      final List<DonationEntity> userDonations,
      final bool isLoadingUserDonations,
      final String? errorUserDonations,
      final bool isCreatingCampaign,
      final String? errorCreateCampaign,
      final bool isUpdatingCampaign,
      final String? errorUpdateCampaign,
      final bool isDeletingCampaign,
      final String? errorDeleteCampaign,
      final bool isPerformingDonation,
      final String? errorDonation,
      final bool isRequestingWithdrawal,
      final String? errorWithdrawal,
      final bool isUpdatingBankDetails,
      final String? errorBankDetails,
      final String? message}) = _$CampaignStateImpl;

// Campaign list
  @override
  List<CampaignEntity> get campaigns;
  @override
  bool get isLoadingCampaigns;
  @override
  bool get isRefreshingCampaigns;
  @override
  String? get errorCampaigns; // Single campaign detail
  @override
  CampaignEntity? get selectedCampaign;
  @override
  bool get isLoadingCampaignDetail;
  @override
  String? get errorCampaignDetail; // Categories
  @override
  List<CampaignCategoryEntity> get categories;
  @override
  bool get isLoadingCategories;
  @override
  String? get errorCategories; // Search results
  @override
  List<CampaignEntity> get searchResults;
  @override
  bool get isSearching;
  @override
  String? get errorSearch; // Donations for current campaign
  @override
  List<DonationEntity> get donations;
  @override
  bool get isLoadingDonations;
  @override
  String? get errorDonations; // Comments for current campaign
  @override
  List<CampaignCommentEntity> get comments;
  @override
  bool get isLoadingComments;
  @override
  String? get errorComments; // Withdrawals for current campaign
  @override
  List<WithdrawalEntity> get withdrawals;
  @override
  bool get isLoadingWithdrawals;
  @override
  String? get errorWithdrawals; // Transparency Data
  @override
  List<CampaignDocumentEntity> get campaignDocuments;
  @override
  bool get isLoadingDocuments;
  @override
  String? get errorDocuments;
  @override
  List<CampaignMilestoneEntity> get campaignMilestones;
  @override
  bool get isLoadingMilestones;
  @override
  String? get errorMilestones;
  @override
  List<CampaignFundBreakdownEntity> get campaignFundBreakdown;
  @override
  bool get isLoadingFundBreakdown;
  @override
  String? get errorFundBreakdown;
  @override
  List<CampaignProofItemEntity> get campaignProofItems;
  @override
  bool get isLoadingProofItems;
  @override
  String? get errorProofItems; // Campaign Updates
  @override
  List<CampaignUpdateEntity> get campaignUpdates;
  @override
  bool get isLoadingUpdates;
  @override
  String? get errorUpdates; // User's own campaigns (for My Campaigns screen)
  @override
  List<CampaignEntity> get userCampaigns;
  @override
  bool get isLoadingUserCampaigns;
  @override
  String? get errorUserCampaigns; // User's donations (for My Donations screen)
  @override
  List<DonationEntity> get userDonations;
  @override
  bool get isLoadingUserDonations;
  @override
  String? get errorUserDonations; // Mutating operations
  @override
  bool get isCreatingCampaign;
  @override
  String? get errorCreateCampaign;
  @override
  bool get isUpdatingCampaign;
  @override
  String? get errorUpdateCampaign;
  @override
  bool get isDeletingCampaign;
  @override
  String? get errorDeleteCampaign;
  @override
  bool get isPerformingDonation;
  @override
  String? get errorDonation;
  @override
  bool get isRequestingWithdrawal;
  @override
  String? get errorWithdrawal;
  @override
  bool get isUpdatingBankDetails;
  @override
  String? get errorBankDetails; // Generic UI message
  @override
  String? get message;

  /// Create a copy of CampaignState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CampaignStateImplCopyWith<_$CampaignStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
