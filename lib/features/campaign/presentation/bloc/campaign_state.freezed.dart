// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaign_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CampaignState {

// Campaign list
 List<CampaignEntity> get campaigns; bool get isLoadingCampaigns; bool get isRefreshingCampaigns; String? get errorCampaigns;// Single campaign detail
 CampaignEntity? get selectedCampaign; bool get isLoadingCampaignDetail; String? get errorCampaignDetail;// Categories
 List<CampaignCategoryEntity> get categories; bool get isLoadingCategories; String? get errorCategories;// Search results
 List<CampaignEntity> get searchResults; bool get isSearching; String? get errorSearch;// Donations for current campaign
 List<DonationEntity> get donations; bool get isLoadingDonations; String? get errorDonations;// Comments for current campaign
 List<CampaignCommentEntity> get comments; bool get isLoadingComments; String? get errorComments;// Withdrawals for current campaign
 List<WithdrawalEntity> get withdrawals; bool get isLoadingWithdrawals; String? get errorWithdrawals;// Transparency Data
 List<CampaignDocumentEntity> get campaignDocuments; bool get isLoadingDocuments; String? get errorDocuments; List<CampaignMilestoneEntity> get campaignMilestones; bool get isLoadingMilestones; String? get errorMilestones; List<CampaignFundBreakdownEntity> get campaignFundBreakdown; bool get isLoadingFundBreakdown; String? get errorFundBreakdown; List<CampaignProofItemEntity> get campaignProofItems; bool get isLoadingProofItems; String? get errorProofItems;// Campaign Updates
 List<CampaignUpdateEntity> get campaignUpdates; bool get isLoadingUpdates; String? get errorUpdates;// User's own campaigns (for My Campaigns screen)
 List<CampaignEntity> get userCampaigns; bool get isLoadingUserCampaigns; String? get errorUserCampaigns;// User's donations (for My Donations screen)
 List<DonationEntity> get userDonations; bool get isLoadingUserDonations; String? get errorUserDonations;// Mutating operations
 bool get isCreatingCampaign; String? get errorCreateCampaign; bool get isUpdatingCampaign; String? get errorUpdateCampaign; bool get isDeletingCampaign; String? get errorDeleteCampaign; bool get isPerformingDonation; String? get errorDonation; bool get isRequestingWithdrawal; String? get errorWithdrawal; bool get isUpdatingBankDetails; String? get errorBankDetails;// Generic UI message
 String? get message;
/// Create a copy of CampaignState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CampaignStateCopyWith<CampaignState> get copyWith => _$CampaignStateCopyWithImpl<CampaignState>(this as CampaignState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CampaignState&&const DeepCollectionEquality().equals(other.campaigns, campaigns)&&(identical(other.isLoadingCampaigns, isLoadingCampaigns) || other.isLoadingCampaigns == isLoadingCampaigns)&&(identical(other.isRefreshingCampaigns, isRefreshingCampaigns) || other.isRefreshingCampaigns == isRefreshingCampaigns)&&(identical(other.errorCampaigns, errorCampaigns) || other.errorCampaigns == errorCampaigns)&&(identical(other.selectedCampaign, selectedCampaign) || other.selectedCampaign == selectedCampaign)&&(identical(other.isLoadingCampaignDetail, isLoadingCampaignDetail) || other.isLoadingCampaignDetail == isLoadingCampaignDetail)&&(identical(other.errorCampaignDetail, errorCampaignDetail) || other.errorCampaignDetail == errorCampaignDetail)&&const DeepCollectionEquality().equals(other.categories, categories)&&(identical(other.isLoadingCategories, isLoadingCategories) || other.isLoadingCategories == isLoadingCategories)&&(identical(other.errorCategories, errorCategories) || other.errorCategories == errorCategories)&&const DeepCollectionEquality().equals(other.searchResults, searchResults)&&(identical(other.isSearching, isSearching) || other.isSearching == isSearching)&&(identical(other.errorSearch, errorSearch) || other.errorSearch == errorSearch)&&const DeepCollectionEquality().equals(other.donations, donations)&&(identical(other.isLoadingDonations, isLoadingDonations) || other.isLoadingDonations == isLoadingDonations)&&(identical(other.errorDonations, errorDonations) || other.errorDonations == errorDonations)&&const DeepCollectionEquality().equals(other.comments, comments)&&(identical(other.isLoadingComments, isLoadingComments) || other.isLoadingComments == isLoadingComments)&&(identical(other.errorComments, errorComments) || other.errorComments == errorComments)&&const DeepCollectionEquality().equals(other.withdrawals, withdrawals)&&(identical(other.isLoadingWithdrawals, isLoadingWithdrawals) || other.isLoadingWithdrawals == isLoadingWithdrawals)&&(identical(other.errorWithdrawals, errorWithdrawals) || other.errorWithdrawals == errorWithdrawals)&&const DeepCollectionEquality().equals(other.campaignDocuments, campaignDocuments)&&(identical(other.isLoadingDocuments, isLoadingDocuments) || other.isLoadingDocuments == isLoadingDocuments)&&(identical(other.errorDocuments, errorDocuments) || other.errorDocuments == errorDocuments)&&const DeepCollectionEquality().equals(other.campaignMilestones, campaignMilestones)&&(identical(other.isLoadingMilestones, isLoadingMilestones) || other.isLoadingMilestones == isLoadingMilestones)&&(identical(other.errorMilestones, errorMilestones) || other.errorMilestones == errorMilestones)&&const DeepCollectionEquality().equals(other.campaignFundBreakdown, campaignFundBreakdown)&&(identical(other.isLoadingFundBreakdown, isLoadingFundBreakdown) || other.isLoadingFundBreakdown == isLoadingFundBreakdown)&&(identical(other.errorFundBreakdown, errorFundBreakdown) || other.errorFundBreakdown == errorFundBreakdown)&&const DeepCollectionEquality().equals(other.campaignProofItems, campaignProofItems)&&(identical(other.isLoadingProofItems, isLoadingProofItems) || other.isLoadingProofItems == isLoadingProofItems)&&(identical(other.errorProofItems, errorProofItems) || other.errorProofItems == errorProofItems)&&const DeepCollectionEquality().equals(other.campaignUpdates, campaignUpdates)&&(identical(other.isLoadingUpdates, isLoadingUpdates) || other.isLoadingUpdates == isLoadingUpdates)&&(identical(other.errorUpdates, errorUpdates) || other.errorUpdates == errorUpdates)&&const DeepCollectionEquality().equals(other.userCampaigns, userCampaigns)&&(identical(other.isLoadingUserCampaigns, isLoadingUserCampaigns) || other.isLoadingUserCampaigns == isLoadingUserCampaigns)&&(identical(other.errorUserCampaigns, errorUserCampaigns) || other.errorUserCampaigns == errorUserCampaigns)&&const DeepCollectionEquality().equals(other.userDonations, userDonations)&&(identical(other.isLoadingUserDonations, isLoadingUserDonations) || other.isLoadingUserDonations == isLoadingUserDonations)&&(identical(other.errorUserDonations, errorUserDonations) || other.errorUserDonations == errorUserDonations)&&(identical(other.isCreatingCampaign, isCreatingCampaign) || other.isCreatingCampaign == isCreatingCampaign)&&(identical(other.errorCreateCampaign, errorCreateCampaign) || other.errorCreateCampaign == errorCreateCampaign)&&(identical(other.isUpdatingCampaign, isUpdatingCampaign) || other.isUpdatingCampaign == isUpdatingCampaign)&&(identical(other.errorUpdateCampaign, errorUpdateCampaign) || other.errorUpdateCampaign == errorUpdateCampaign)&&(identical(other.isDeletingCampaign, isDeletingCampaign) || other.isDeletingCampaign == isDeletingCampaign)&&(identical(other.errorDeleteCampaign, errorDeleteCampaign) || other.errorDeleteCampaign == errorDeleteCampaign)&&(identical(other.isPerformingDonation, isPerformingDonation) || other.isPerformingDonation == isPerformingDonation)&&(identical(other.errorDonation, errorDonation) || other.errorDonation == errorDonation)&&(identical(other.isRequestingWithdrawal, isRequestingWithdrawal) || other.isRequestingWithdrawal == isRequestingWithdrawal)&&(identical(other.errorWithdrawal, errorWithdrawal) || other.errorWithdrawal == errorWithdrawal)&&(identical(other.isUpdatingBankDetails, isUpdatingBankDetails) || other.isUpdatingBankDetails == isUpdatingBankDetails)&&(identical(other.errorBankDetails, errorBankDetails) || other.errorBankDetails == errorBankDetails)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hashAll([runtimeType,const DeepCollectionEquality().hash(campaigns),isLoadingCampaigns,isRefreshingCampaigns,errorCampaigns,selectedCampaign,isLoadingCampaignDetail,errorCampaignDetail,const DeepCollectionEquality().hash(categories),isLoadingCategories,errorCategories,const DeepCollectionEquality().hash(searchResults),isSearching,errorSearch,const DeepCollectionEquality().hash(donations),isLoadingDonations,errorDonations,const DeepCollectionEquality().hash(comments),isLoadingComments,errorComments,const DeepCollectionEquality().hash(withdrawals),isLoadingWithdrawals,errorWithdrawals,const DeepCollectionEquality().hash(campaignDocuments),isLoadingDocuments,errorDocuments,const DeepCollectionEquality().hash(campaignMilestones),isLoadingMilestones,errorMilestones,const DeepCollectionEquality().hash(campaignFundBreakdown),isLoadingFundBreakdown,errorFundBreakdown,const DeepCollectionEquality().hash(campaignProofItems),isLoadingProofItems,errorProofItems,const DeepCollectionEquality().hash(campaignUpdates),isLoadingUpdates,errorUpdates,const DeepCollectionEquality().hash(userCampaigns),isLoadingUserCampaigns,errorUserCampaigns,const DeepCollectionEquality().hash(userDonations),isLoadingUserDonations,errorUserDonations,isCreatingCampaign,errorCreateCampaign,isUpdatingCampaign,errorUpdateCampaign,isDeletingCampaign,errorDeleteCampaign,isPerformingDonation,errorDonation,isRequestingWithdrawal,errorWithdrawal,isUpdatingBankDetails,errorBankDetails,message]);

@override
String toString() {
  return 'CampaignState(campaigns: $campaigns, isLoadingCampaigns: $isLoadingCampaigns, isRefreshingCampaigns: $isRefreshingCampaigns, errorCampaigns: $errorCampaigns, selectedCampaign: $selectedCampaign, isLoadingCampaignDetail: $isLoadingCampaignDetail, errorCampaignDetail: $errorCampaignDetail, categories: $categories, isLoadingCategories: $isLoadingCategories, errorCategories: $errorCategories, searchResults: $searchResults, isSearching: $isSearching, errorSearch: $errorSearch, donations: $donations, isLoadingDonations: $isLoadingDonations, errorDonations: $errorDonations, comments: $comments, isLoadingComments: $isLoadingComments, errorComments: $errorComments, withdrawals: $withdrawals, isLoadingWithdrawals: $isLoadingWithdrawals, errorWithdrawals: $errorWithdrawals, campaignDocuments: $campaignDocuments, isLoadingDocuments: $isLoadingDocuments, errorDocuments: $errorDocuments, campaignMilestones: $campaignMilestones, isLoadingMilestones: $isLoadingMilestones, errorMilestones: $errorMilestones, campaignFundBreakdown: $campaignFundBreakdown, isLoadingFundBreakdown: $isLoadingFundBreakdown, errorFundBreakdown: $errorFundBreakdown, campaignProofItems: $campaignProofItems, isLoadingProofItems: $isLoadingProofItems, errorProofItems: $errorProofItems, campaignUpdates: $campaignUpdates, isLoadingUpdates: $isLoadingUpdates, errorUpdates: $errorUpdates, userCampaigns: $userCampaigns, isLoadingUserCampaigns: $isLoadingUserCampaigns, errorUserCampaigns: $errorUserCampaigns, userDonations: $userDonations, isLoadingUserDonations: $isLoadingUserDonations, errorUserDonations: $errorUserDonations, isCreatingCampaign: $isCreatingCampaign, errorCreateCampaign: $errorCreateCampaign, isUpdatingCampaign: $isUpdatingCampaign, errorUpdateCampaign: $errorUpdateCampaign, isDeletingCampaign: $isDeletingCampaign, errorDeleteCampaign: $errorDeleteCampaign, isPerformingDonation: $isPerformingDonation, errorDonation: $errorDonation, isRequestingWithdrawal: $isRequestingWithdrawal, errorWithdrawal: $errorWithdrawal, isUpdatingBankDetails: $isUpdatingBankDetails, errorBankDetails: $errorBankDetails, message: $message)';
}


}

/// @nodoc
abstract mixin class $CampaignStateCopyWith<$Res>  {
  factory $CampaignStateCopyWith(CampaignState value, $Res Function(CampaignState) _then) = _$CampaignStateCopyWithImpl;
@useResult
$Res call({
 List<CampaignEntity> campaigns, bool isLoadingCampaigns, bool isRefreshingCampaigns, String? errorCampaigns, CampaignEntity? selectedCampaign, bool isLoadingCampaignDetail, String? errorCampaignDetail, List<CampaignCategoryEntity> categories, bool isLoadingCategories, String? errorCategories, List<CampaignEntity> searchResults, bool isSearching, String? errorSearch, List<DonationEntity> donations, bool isLoadingDonations, String? errorDonations, List<CampaignCommentEntity> comments, bool isLoadingComments, String? errorComments, List<WithdrawalEntity> withdrawals, bool isLoadingWithdrawals, String? errorWithdrawals, List<CampaignDocumentEntity> campaignDocuments, bool isLoadingDocuments, String? errorDocuments, List<CampaignMilestoneEntity> campaignMilestones, bool isLoadingMilestones, String? errorMilestones, List<CampaignFundBreakdownEntity> campaignFundBreakdown, bool isLoadingFundBreakdown, String? errorFundBreakdown, List<CampaignProofItemEntity> campaignProofItems, bool isLoadingProofItems, String? errorProofItems, List<CampaignUpdateEntity> campaignUpdates, bool isLoadingUpdates, String? errorUpdates, List<CampaignEntity> userCampaigns, bool isLoadingUserCampaigns, String? errorUserCampaigns, List<DonationEntity> userDonations, bool isLoadingUserDonations, String? errorUserDonations, bool isCreatingCampaign, String? errorCreateCampaign, bool isUpdatingCampaign, String? errorUpdateCampaign, bool isDeletingCampaign, String? errorDeleteCampaign, bool isPerformingDonation, String? errorDonation, bool isRequestingWithdrawal, String? errorWithdrawal, bool isUpdatingBankDetails, String? errorBankDetails, String? message
});


$CampaignEntityCopyWith<$Res>? get selectedCampaign;

}
/// @nodoc
class _$CampaignStateCopyWithImpl<$Res>
    implements $CampaignStateCopyWith<$Res> {
  _$CampaignStateCopyWithImpl(this._self, this._then);

  final CampaignState _self;
  final $Res Function(CampaignState) _then;

/// Create a copy of CampaignState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? campaigns = null,Object? isLoadingCampaigns = null,Object? isRefreshingCampaigns = null,Object? errorCampaigns = freezed,Object? selectedCampaign = freezed,Object? isLoadingCampaignDetail = null,Object? errorCampaignDetail = freezed,Object? categories = null,Object? isLoadingCategories = null,Object? errorCategories = freezed,Object? searchResults = null,Object? isSearching = null,Object? errorSearch = freezed,Object? donations = null,Object? isLoadingDonations = null,Object? errorDonations = freezed,Object? comments = null,Object? isLoadingComments = null,Object? errorComments = freezed,Object? withdrawals = null,Object? isLoadingWithdrawals = null,Object? errorWithdrawals = freezed,Object? campaignDocuments = null,Object? isLoadingDocuments = null,Object? errorDocuments = freezed,Object? campaignMilestones = null,Object? isLoadingMilestones = null,Object? errorMilestones = freezed,Object? campaignFundBreakdown = null,Object? isLoadingFundBreakdown = null,Object? errorFundBreakdown = freezed,Object? campaignProofItems = null,Object? isLoadingProofItems = null,Object? errorProofItems = freezed,Object? campaignUpdates = null,Object? isLoadingUpdates = null,Object? errorUpdates = freezed,Object? userCampaigns = null,Object? isLoadingUserCampaigns = null,Object? errorUserCampaigns = freezed,Object? userDonations = null,Object? isLoadingUserDonations = null,Object? errorUserDonations = freezed,Object? isCreatingCampaign = null,Object? errorCreateCampaign = freezed,Object? isUpdatingCampaign = null,Object? errorUpdateCampaign = freezed,Object? isDeletingCampaign = null,Object? errorDeleteCampaign = freezed,Object? isPerformingDonation = null,Object? errorDonation = freezed,Object? isRequestingWithdrawal = null,Object? errorWithdrawal = freezed,Object? isUpdatingBankDetails = null,Object? errorBankDetails = freezed,Object? message = freezed,}) {
  return _then(_self.copyWith(
campaigns: null == campaigns ? _self.campaigns : campaigns // ignore: cast_nullable_to_non_nullable
as List<CampaignEntity>,isLoadingCampaigns: null == isLoadingCampaigns ? _self.isLoadingCampaigns : isLoadingCampaigns // ignore: cast_nullable_to_non_nullable
as bool,isRefreshingCampaigns: null == isRefreshingCampaigns ? _self.isRefreshingCampaigns : isRefreshingCampaigns // ignore: cast_nullable_to_non_nullable
as bool,errorCampaigns: freezed == errorCampaigns ? _self.errorCampaigns : errorCampaigns // ignore: cast_nullable_to_non_nullable
as String?,selectedCampaign: freezed == selectedCampaign ? _self.selectedCampaign : selectedCampaign // ignore: cast_nullable_to_non_nullable
as CampaignEntity?,isLoadingCampaignDetail: null == isLoadingCampaignDetail ? _self.isLoadingCampaignDetail : isLoadingCampaignDetail // ignore: cast_nullable_to_non_nullable
as bool,errorCampaignDetail: freezed == errorCampaignDetail ? _self.errorCampaignDetail : errorCampaignDetail // ignore: cast_nullable_to_non_nullable
as String?,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<CampaignCategoryEntity>,isLoadingCategories: null == isLoadingCategories ? _self.isLoadingCategories : isLoadingCategories // ignore: cast_nullable_to_non_nullable
as bool,errorCategories: freezed == errorCategories ? _self.errorCategories : errorCategories // ignore: cast_nullable_to_non_nullable
as String?,searchResults: null == searchResults ? _self.searchResults : searchResults // ignore: cast_nullable_to_non_nullable
as List<CampaignEntity>,isSearching: null == isSearching ? _self.isSearching : isSearching // ignore: cast_nullable_to_non_nullable
as bool,errorSearch: freezed == errorSearch ? _self.errorSearch : errorSearch // ignore: cast_nullable_to_non_nullable
as String?,donations: null == donations ? _self.donations : donations // ignore: cast_nullable_to_non_nullable
as List<DonationEntity>,isLoadingDonations: null == isLoadingDonations ? _self.isLoadingDonations : isLoadingDonations // ignore: cast_nullable_to_non_nullable
as bool,errorDonations: freezed == errorDonations ? _self.errorDonations : errorDonations // ignore: cast_nullable_to_non_nullable
as String?,comments: null == comments ? _self.comments : comments // ignore: cast_nullable_to_non_nullable
as List<CampaignCommentEntity>,isLoadingComments: null == isLoadingComments ? _self.isLoadingComments : isLoadingComments // ignore: cast_nullable_to_non_nullable
as bool,errorComments: freezed == errorComments ? _self.errorComments : errorComments // ignore: cast_nullable_to_non_nullable
as String?,withdrawals: null == withdrawals ? _self.withdrawals : withdrawals // ignore: cast_nullable_to_non_nullable
as List<WithdrawalEntity>,isLoadingWithdrawals: null == isLoadingWithdrawals ? _self.isLoadingWithdrawals : isLoadingWithdrawals // ignore: cast_nullable_to_non_nullable
as bool,errorWithdrawals: freezed == errorWithdrawals ? _self.errorWithdrawals : errorWithdrawals // ignore: cast_nullable_to_non_nullable
as String?,campaignDocuments: null == campaignDocuments ? _self.campaignDocuments : campaignDocuments // ignore: cast_nullable_to_non_nullable
as List<CampaignDocumentEntity>,isLoadingDocuments: null == isLoadingDocuments ? _self.isLoadingDocuments : isLoadingDocuments // ignore: cast_nullable_to_non_nullable
as bool,errorDocuments: freezed == errorDocuments ? _self.errorDocuments : errorDocuments // ignore: cast_nullable_to_non_nullable
as String?,campaignMilestones: null == campaignMilestones ? _self.campaignMilestones : campaignMilestones // ignore: cast_nullable_to_non_nullable
as List<CampaignMilestoneEntity>,isLoadingMilestones: null == isLoadingMilestones ? _self.isLoadingMilestones : isLoadingMilestones // ignore: cast_nullable_to_non_nullable
as bool,errorMilestones: freezed == errorMilestones ? _self.errorMilestones : errorMilestones // ignore: cast_nullable_to_non_nullable
as String?,campaignFundBreakdown: null == campaignFundBreakdown ? _self.campaignFundBreakdown : campaignFundBreakdown // ignore: cast_nullable_to_non_nullable
as List<CampaignFundBreakdownEntity>,isLoadingFundBreakdown: null == isLoadingFundBreakdown ? _self.isLoadingFundBreakdown : isLoadingFundBreakdown // ignore: cast_nullable_to_non_nullable
as bool,errorFundBreakdown: freezed == errorFundBreakdown ? _self.errorFundBreakdown : errorFundBreakdown // ignore: cast_nullable_to_non_nullable
as String?,campaignProofItems: null == campaignProofItems ? _self.campaignProofItems : campaignProofItems // ignore: cast_nullable_to_non_nullable
as List<CampaignProofItemEntity>,isLoadingProofItems: null == isLoadingProofItems ? _self.isLoadingProofItems : isLoadingProofItems // ignore: cast_nullable_to_non_nullable
as bool,errorProofItems: freezed == errorProofItems ? _self.errorProofItems : errorProofItems // ignore: cast_nullable_to_non_nullable
as String?,campaignUpdates: null == campaignUpdates ? _self.campaignUpdates : campaignUpdates // ignore: cast_nullable_to_non_nullable
as List<CampaignUpdateEntity>,isLoadingUpdates: null == isLoadingUpdates ? _self.isLoadingUpdates : isLoadingUpdates // ignore: cast_nullable_to_non_nullable
as bool,errorUpdates: freezed == errorUpdates ? _self.errorUpdates : errorUpdates // ignore: cast_nullable_to_non_nullable
as String?,userCampaigns: null == userCampaigns ? _self.userCampaigns : userCampaigns // ignore: cast_nullable_to_non_nullable
as List<CampaignEntity>,isLoadingUserCampaigns: null == isLoadingUserCampaigns ? _self.isLoadingUserCampaigns : isLoadingUserCampaigns // ignore: cast_nullable_to_non_nullable
as bool,errorUserCampaigns: freezed == errorUserCampaigns ? _self.errorUserCampaigns : errorUserCampaigns // ignore: cast_nullable_to_non_nullable
as String?,userDonations: null == userDonations ? _self.userDonations : userDonations // ignore: cast_nullable_to_non_nullable
as List<DonationEntity>,isLoadingUserDonations: null == isLoadingUserDonations ? _self.isLoadingUserDonations : isLoadingUserDonations // ignore: cast_nullable_to_non_nullable
as bool,errorUserDonations: freezed == errorUserDonations ? _self.errorUserDonations : errorUserDonations // ignore: cast_nullable_to_non_nullable
as String?,isCreatingCampaign: null == isCreatingCampaign ? _self.isCreatingCampaign : isCreatingCampaign // ignore: cast_nullable_to_non_nullable
as bool,errorCreateCampaign: freezed == errorCreateCampaign ? _self.errorCreateCampaign : errorCreateCampaign // ignore: cast_nullable_to_non_nullable
as String?,isUpdatingCampaign: null == isUpdatingCampaign ? _self.isUpdatingCampaign : isUpdatingCampaign // ignore: cast_nullable_to_non_nullable
as bool,errorUpdateCampaign: freezed == errorUpdateCampaign ? _self.errorUpdateCampaign : errorUpdateCampaign // ignore: cast_nullable_to_non_nullable
as String?,isDeletingCampaign: null == isDeletingCampaign ? _self.isDeletingCampaign : isDeletingCampaign // ignore: cast_nullable_to_non_nullable
as bool,errorDeleteCampaign: freezed == errorDeleteCampaign ? _self.errorDeleteCampaign : errorDeleteCampaign // ignore: cast_nullable_to_non_nullable
as String?,isPerformingDonation: null == isPerformingDonation ? _self.isPerformingDonation : isPerformingDonation // ignore: cast_nullable_to_non_nullable
as bool,errorDonation: freezed == errorDonation ? _self.errorDonation : errorDonation // ignore: cast_nullable_to_non_nullable
as String?,isRequestingWithdrawal: null == isRequestingWithdrawal ? _self.isRequestingWithdrawal : isRequestingWithdrawal // ignore: cast_nullable_to_non_nullable
as bool,errorWithdrawal: freezed == errorWithdrawal ? _self.errorWithdrawal : errorWithdrawal // ignore: cast_nullable_to_non_nullable
as String?,isUpdatingBankDetails: null == isUpdatingBankDetails ? _self.isUpdatingBankDetails : isUpdatingBankDetails // ignore: cast_nullable_to_non_nullable
as bool,errorBankDetails: freezed == errorBankDetails ? _self.errorBankDetails : errorBankDetails // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of CampaignState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CampaignEntityCopyWith<$Res>? get selectedCampaign {
    if (_self.selectedCampaign == null) {
    return null;
  }

  return $CampaignEntityCopyWith<$Res>(_self.selectedCampaign!, (value) {
    return _then(_self.copyWith(selectedCampaign: value));
  });
}
}


/// Adds pattern-matching-related methods to [CampaignState].
extension CampaignStatePatterns on CampaignState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CampaignState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CampaignState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CampaignState value)  $default,){
final _that = this;
switch (_that) {
case _CampaignState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CampaignState value)?  $default,){
final _that = this;
switch (_that) {
case _CampaignState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CampaignEntity> campaigns,  bool isLoadingCampaigns,  bool isRefreshingCampaigns,  String? errorCampaigns,  CampaignEntity? selectedCampaign,  bool isLoadingCampaignDetail,  String? errorCampaignDetail,  List<CampaignCategoryEntity> categories,  bool isLoadingCategories,  String? errorCategories,  List<CampaignEntity> searchResults,  bool isSearching,  String? errorSearch,  List<DonationEntity> donations,  bool isLoadingDonations,  String? errorDonations,  List<CampaignCommentEntity> comments,  bool isLoadingComments,  String? errorComments,  List<WithdrawalEntity> withdrawals,  bool isLoadingWithdrawals,  String? errorWithdrawals,  List<CampaignDocumentEntity> campaignDocuments,  bool isLoadingDocuments,  String? errorDocuments,  List<CampaignMilestoneEntity> campaignMilestones,  bool isLoadingMilestones,  String? errorMilestones,  List<CampaignFundBreakdownEntity> campaignFundBreakdown,  bool isLoadingFundBreakdown,  String? errorFundBreakdown,  List<CampaignProofItemEntity> campaignProofItems,  bool isLoadingProofItems,  String? errorProofItems,  List<CampaignUpdateEntity> campaignUpdates,  bool isLoadingUpdates,  String? errorUpdates,  List<CampaignEntity> userCampaigns,  bool isLoadingUserCampaigns,  String? errorUserCampaigns,  List<DonationEntity> userDonations,  bool isLoadingUserDonations,  String? errorUserDonations,  bool isCreatingCampaign,  String? errorCreateCampaign,  bool isUpdatingCampaign,  String? errorUpdateCampaign,  bool isDeletingCampaign,  String? errorDeleteCampaign,  bool isPerformingDonation,  String? errorDonation,  bool isRequestingWithdrawal,  String? errorWithdrawal,  bool isUpdatingBankDetails,  String? errorBankDetails,  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CampaignState() when $default != null:
return $default(_that.campaigns,_that.isLoadingCampaigns,_that.isRefreshingCampaigns,_that.errorCampaigns,_that.selectedCampaign,_that.isLoadingCampaignDetail,_that.errorCampaignDetail,_that.categories,_that.isLoadingCategories,_that.errorCategories,_that.searchResults,_that.isSearching,_that.errorSearch,_that.donations,_that.isLoadingDonations,_that.errorDonations,_that.comments,_that.isLoadingComments,_that.errorComments,_that.withdrawals,_that.isLoadingWithdrawals,_that.errorWithdrawals,_that.campaignDocuments,_that.isLoadingDocuments,_that.errorDocuments,_that.campaignMilestones,_that.isLoadingMilestones,_that.errorMilestones,_that.campaignFundBreakdown,_that.isLoadingFundBreakdown,_that.errorFundBreakdown,_that.campaignProofItems,_that.isLoadingProofItems,_that.errorProofItems,_that.campaignUpdates,_that.isLoadingUpdates,_that.errorUpdates,_that.userCampaigns,_that.isLoadingUserCampaigns,_that.errorUserCampaigns,_that.userDonations,_that.isLoadingUserDonations,_that.errorUserDonations,_that.isCreatingCampaign,_that.errorCreateCampaign,_that.isUpdatingCampaign,_that.errorUpdateCampaign,_that.isDeletingCampaign,_that.errorDeleteCampaign,_that.isPerformingDonation,_that.errorDonation,_that.isRequestingWithdrawal,_that.errorWithdrawal,_that.isUpdatingBankDetails,_that.errorBankDetails,_that.message);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CampaignEntity> campaigns,  bool isLoadingCampaigns,  bool isRefreshingCampaigns,  String? errorCampaigns,  CampaignEntity? selectedCampaign,  bool isLoadingCampaignDetail,  String? errorCampaignDetail,  List<CampaignCategoryEntity> categories,  bool isLoadingCategories,  String? errorCategories,  List<CampaignEntity> searchResults,  bool isSearching,  String? errorSearch,  List<DonationEntity> donations,  bool isLoadingDonations,  String? errorDonations,  List<CampaignCommentEntity> comments,  bool isLoadingComments,  String? errorComments,  List<WithdrawalEntity> withdrawals,  bool isLoadingWithdrawals,  String? errorWithdrawals,  List<CampaignDocumentEntity> campaignDocuments,  bool isLoadingDocuments,  String? errorDocuments,  List<CampaignMilestoneEntity> campaignMilestones,  bool isLoadingMilestones,  String? errorMilestones,  List<CampaignFundBreakdownEntity> campaignFundBreakdown,  bool isLoadingFundBreakdown,  String? errorFundBreakdown,  List<CampaignProofItemEntity> campaignProofItems,  bool isLoadingProofItems,  String? errorProofItems,  List<CampaignUpdateEntity> campaignUpdates,  bool isLoadingUpdates,  String? errorUpdates,  List<CampaignEntity> userCampaigns,  bool isLoadingUserCampaigns,  String? errorUserCampaigns,  List<DonationEntity> userDonations,  bool isLoadingUserDonations,  String? errorUserDonations,  bool isCreatingCampaign,  String? errorCreateCampaign,  bool isUpdatingCampaign,  String? errorUpdateCampaign,  bool isDeletingCampaign,  String? errorDeleteCampaign,  bool isPerformingDonation,  String? errorDonation,  bool isRequestingWithdrawal,  String? errorWithdrawal,  bool isUpdatingBankDetails,  String? errorBankDetails,  String? message)  $default,) {final _that = this;
switch (_that) {
case _CampaignState():
return $default(_that.campaigns,_that.isLoadingCampaigns,_that.isRefreshingCampaigns,_that.errorCampaigns,_that.selectedCampaign,_that.isLoadingCampaignDetail,_that.errorCampaignDetail,_that.categories,_that.isLoadingCategories,_that.errorCategories,_that.searchResults,_that.isSearching,_that.errorSearch,_that.donations,_that.isLoadingDonations,_that.errorDonations,_that.comments,_that.isLoadingComments,_that.errorComments,_that.withdrawals,_that.isLoadingWithdrawals,_that.errorWithdrawals,_that.campaignDocuments,_that.isLoadingDocuments,_that.errorDocuments,_that.campaignMilestones,_that.isLoadingMilestones,_that.errorMilestones,_that.campaignFundBreakdown,_that.isLoadingFundBreakdown,_that.errorFundBreakdown,_that.campaignProofItems,_that.isLoadingProofItems,_that.errorProofItems,_that.campaignUpdates,_that.isLoadingUpdates,_that.errorUpdates,_that.userCampaigns,_that.isLoadingUserCampaigns,_that.errorUserCampaigns,_that.userDonations,_that.isLoadingUserDonations,_that.errorUserDonations,_that.isCreatingCampaign,_that.errorCreateCampaign,_that.isUpdatingCampaign,_that.errorUpdateCampaign,_that.isDeletingCampaign,_that.errorDeleteCampaign,_that.isPerformingDonation,_that.errorDonation,_that.isRequestingWithdrawal,_that.errorWithdrawal,_that.isUpdatingBankDetails,_that.errorBankDetails,_that.message);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CampaignEntity> campaigns,  bool isLoadingCampaigns,  bool isRefreshingCampaigns,  String? errorCampaigns,  CampaignEntity? selectedCampaign,  bool isLoadingCampaignDetail,  String? errorCampaignDetail,  List<CampaignCategoryEntity> categories,  bool isLoadingCategories,  String? errorCategories,  List<CampaignEntity> searchResults,  bool isSearching,  String? errorSearch,  List<DonationEntity> donations,  bool isLoadingDonations,  String? errorDonations,  List<CampaignCommentEntity> comments,  bool isLoadingComments,  String? errorComments,  List<WithdrawalEntity> withdrawals,  bool isLoadingWithdrawals,  String? errorWithdrawals,  List<CampaignDocumentEntity> campaignDocuments,  bool isLoadingDocuments,  String? errorDocuments,  List<CampaignMilestoneEntity> campaignMilestones,  bool isLoadingMilestones,  String? errorMilestones,  List<CampaignFundBreakdownEntity> campaignFundBreakdown,  bool isLoadingFundBreakdown,  String? errorFundBreakdown,  List<CampaignProofItemEntity> campaignProofItems,  bool isLoadingProofItems,  String? errorProofItems,  List<CampaignUpdateEntity> campaignUpdates,  bool isLoadingUpdates,  String? errorUpdates,  List<CampaignEntity> userCampaigns,  bool isLoadingUserCampaigns,  String? errorUserCampaigns,  List<DonationEntity> userDonations,  bool isLoadingUserDonations,  String? errorUserDonations,  bool isCreatingCampaign,  String? errorCreateCampaign,  bool isUpdatingCampaign,  String? errorUpdateCampaign,  bool isDeletingCampaign,  String? errorDeleteCampaign,  bool isPerformingDonation,  String? errorDonation,  bool isRequestingWithdrawal,  String? errorWithdrawal,  bool isUpdatingBankDetails,  String? errorBankDetails,  String? message)?  $default,) {final _that = this;
switch (_that) {
case _CampaignState() when $default != null:
return $default(_that.campaigns,_that.isLoadingCampaigns,_that.isRefreshingCampaigns,_that.errorCampaigns,_that.selectedCampaign,_that.isLoadingCampaignDetail,_that.errorCampaignDetail,_that.categories,_that.isLoadingCategories,_that.errorCategories,_that.searchResults,_that.isSearching,_that.errorSearch,_that.donations,_that.isLoadingDonations,_that.errorDonations,_that.comments,_that.isLoadingComments,_that.errorComments,_that.withdrawals,_that.isLoadingWithdrawals,_that.errorWithdrawals,_that.campaignDocuments,_that.isLoadingDocuments,_that.errorDocuments,_that.campaignMilestones,_that.isLoadingMilestones,_that.errorMilestones,_that.campaignFundBreakdown,_that.isLoadingFundBreakdown,_that.errorFundBreakdown,_that.campaignProofItems,_that.isLoadingProofItems,_that.errorProofItems,_that.campaignUpdates,_that.isLoadingUpdates,_that.errorUpdates,_that.userCampaigns,_that.isLoadingUserCampaigns,_that.errorUserCampaigns,_that.userDonations,_that.isLoadingUserDonations,_that.errorUserDonations,_that.isCreatingCampaign,_that.errorCreateCampaign,_that.isUpdatingCampaign,_that.errorUpdateCampaign,_that.isDeletingCampaign,_that.errorDeleteCampaign,_that.isPerformingDonation,_that.errorDonation,_that.isRequestingWithdrawal,_that.errorWithdrawal,_that.isUpdatingBankDetails,_that.errorBankDetails,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _CampaignState implements CampaignState {
  const _CampaignState({final  List<CampaignEntity> campaigns = const <CampaignEntity>[], this.isLoadingCampaigns = false, this.isRefreshingCampaigns = false, this.errorCampaigns, this.selectedCampaign, this.isLoadingCampaignDetail = false, this.errorCampaignDetail, final  List<CampaignCategoryEntity> categories = const <CampaignCategoryEntity>[], this.isLoadingCategories = false, this.errorCategories, final  List<CampaignEntity> searchResults = const <CampaignEntity>[], this.isSearching = false, this.errorSearch, final  List<DonationEntity> donations = const <DonationEntity>[], this.isLoadingDonations = false, this.errorDonations, final  List<CampaignCommentEntity> comments = const <CampaignCommentEntity>[], this.isLoadingComments = false, this.errorComments, final  List<WithdrawalEntity> withdrawals = const <WithdrawalEntity>[], this.isLoadingWithdrawals = false, this.errorWithdrawals, final  List<CampaignDocumentEntity> campaignDocuments = const <CampaignDocumentEntity>[], this.isLoadingDocuments = false, this.errorDocuments, final  List<CampaignMilestoneEntity> campaignMilestones = const <CampaignMilestoneEntity>[], this.isLoadingMilestones = false, this.errorMilestones, final  List<CampaignFundBreakdownEntity> campaignFundBreakdown = const <CampaignFundBreakdownEntity>[], this.isLoadingFundBreakdown = false, this.errorFundBreakdown, final  List<CampaignProofItemEntity> campaignProofItems = const <CampaignProofItemEntity>[], this.isLoadingProofItems = false, this.errorProofItems, final  List<CampaignUpdateEntity> campaignUpdates = const <CampaignUpdateEntity>[], this.isLoadingUpdates = false, this.errorUpdates, final  List<CampaignEntity> userCampaigns = const <CampaignEntity>[], this.isLoadingUserCampaigns = false, this.errorUserCampaigns, final  List<DonationEntity> userDonations = const <DonationEntity>[], this.isLoadingUserDonations = false, this.errorUserDonations, this.isCreatingCampaign = false, this.errorCreateCampaign, this.isUpdatingCampaign = false, this.errorUpdateCampaign, this.isDeletingCampaign = false, this.errorDeleteCampaign, this.isPerformingDonation = false, this.errorDonation, this.isRequestingWithdrawal = false, this.errorWithdrawal, this.isUpdatingBankDetails = false, this.errorBankDetails, this.message}): _campaigns = campaigns,_categories = categories,_searchResults = searchResults,_donations = donations,_comments = comments,_withdrawals = withdrawals,_campaignDocuments = campaignDocuments,_campaignMilestones = campaignMilestones,_campaignFundBreakdown = campaignFundBreakdown,_campaignProofItems = campaignProofItems,_campaignUpdates = campaignUpdates,_userCampaigns = userCampaigns,_userDonations = userDonations;
  

// Campaign list
 final  List<CampaignEntity> _campaigns;
// Campaign list
@override@JsonKey() List<CampaignEntity> get campaigns {
  if (_campaigns is EqualUnmodifiableListView) return _campaigns;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_campaigns);
}

@override@JsonKey() final  bool isLoadingCampaigns;
@override@JsonKey() final  bool isRefreshingCampaigns;
@override final  String? errorCampaigns;
// Single campaign detail
@override final  CampaignEntity? selectedCampaign;
@override@JsonKey() final  bool isLoadingCampaignDetail;
@override final  String? errorCampaignDetail;
// Categories
 final  List<CampaignCategoryEntity> _categories;
// Categories
@override@JsonKey() List<CampaignCategoryEntity> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@override@JsonKey() final  bool isLoadingCategories;
@override final  String? errorCategories;
// Search results
 final  List<CampaignEntity> _searchResults;
// Search results
@override@JsonKey() List<CampaignEntity> get searchResults {
  if (_searchResults is EqualUnmodifiableListView) return _searchResults;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_searchResults);
}

@override@JsonKey() final  bool isSearching;
@override final  String? errorSearch;
// Donations for current campaign
 final  List<DonationEntity> _donations;
// Donations for current campaign
@override@JsonKey() List<DonationEntity> get donations {
  if (_donations is EqualUnmodifiableListView) return _donations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_donations);
}

@override@JsonKey() final  bool isLoadingDonations;
@override final  String? errorDonations;
// Comments for current campaign
 final  List<CampaignCommentEntity> _comments;
// Comments for current campaign
@override@JsonKey() List<CampaignCommentEntity> get comments {
  if (_comments is EqualUnmodifiableListView) return _comments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_comments);
}

@override@JsonKey() final  bool isLoadingComments;
@override final  String? errorComments;
// Withdrawals for current campaign
 final  List<WithdrawalEntity> _withdrawals;
// Withdrawals for current campaign
@override@JsonKey() List<WithdrawalEntity> get withdrawals {
  if (_withdrawals is EqualUnmodifiableListView) return _withdrawals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_withdrawals);
}

@override@JsonKey() final  bool isLoadingWithdrawals;
@override final  String? errorWithdrawals;
// Transparency Data
 final  List<CampaignDocumentEntity> _campaignDocuments;
// Transparency Data
@override@JsonKey() List<CampaignDocumentEntity> get campaignDocuments {
  if (_campaignDocuments is EqualUnmodifiableListView) return _campaignDocuments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_campaignDocuments);
}

@override@JsonKey() final  bool isLoadingDocuments;
@override final  String? errorDocuments;
 final  List<CampaignMilestoneEntity> _campaignMilestones;
@override@JsonKey() List<CampaignMilestoneEntity> get campaignMilestones {
  if (_campaignMilestones is EqualUnmodifiableListView) return _campaignMilestones;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_campaignMilestones);
}

@override@JsonKey() final  bool isLoadingMilestones;
@override final  String? errorMilestones;
 final  List<CampaignFundBreakdownEntity> _campaignFundBreakdown;
@override@JsonKey() List<CampaignFundBreakdownEntity> get campaignFundBreakdown {
  if (_campaignFundBreakdown is EqualUnmodifiableListView) return _campaignFundBreakdown;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_campaignFundBreakdown);
}

@override@JsonKey() final  bool isLoadingFundBreakdown;
@override final  String? errorFundBreakdown;
 final  List<CampaignProofItemEntity> _campaignProofItems;
@override@JsonKey() List<CampaignProofItemEntity> get campaignProofItems {
  if (_campaignProofItems is EqualUnmodifiableListView) return _campaignProofItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_campaignProofItems);
}

@override@JsonKey() final  bool isLoadingProofItems;
@override final  String? errorProofItems;
// Campaign Updates
 final  List<CampaignUpdateEntity> _campaignUpdates;
// Campaign Updates
@override@JsonKey() List<CampaignUpdateEntity> get campaignUpdates {
  if (_campaignUpdates is EqualUnmodifiableListView) return _campaignUpdates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_campaignUpdates);
}

@override@JsonKey() final  bool isLoadingUpdates;
@override final  String? errorUpdates;
// User's own campaigns (for My Campaigns screen)
 final  List<CampaignEntity> _userCampaigns;
// User's own campaigns (for My Campaigns screen)
@override@JsonKey() List<CampaignEntity> get userCampaigns {
  if (_userCampaigns is EqualUnmodifiableListView) return _userCampaigns;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_userCampaigns);
}

@override@JsonKey() final  bool isLoadingUserCampaigns;
@override final  String? errorUserCampaigns;
// User's donations (for My Donations screen)
 final  List<DonationEntity> _userDonations;
// User's donations (for My Donations screen)
@override@JsonKey() List<DonationEntity> get userDonations {
  if (_userDonations is EqualUnmodifiableListView) return _userDonations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_userDonations);
}

@override@JsonKey() final  bool isLoadingUserDonations;
@override final  String? errorUserDonations;
// Mutating operations
@override@JsonKey() final  bool isCreatingCampaign;
@override final  String? errorCreateCampaign;
@override@JsonKey() final  bool isUpdatingCampaign;
@override final  String? errorUpdateCampaign;
@override@JsonKey() final  bool isDeletingCampaign;
@override final  String? errorDeleteCampaign;
@override@JsonKey() final  bool isPerformingDonation;
@override final  String? errorDonation;
@override@JsonKey() final  bool isRequestingWithdrawal;
@override final  String? errorWithdrawal;
@override@JsonKey() final  bool isUpdatingBankDetails;
@override final  String? errorBankDetails;
// Generic UI message
@override final  String? message;

/// Create a copy of CampaignState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CampaignStateCopyWith<_CampaignState> get copyWith => __$CampaignStateCopyWithImpl<_CampaignState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CampaignState&&const DeepCollectionEquality().equals(other._campaigns, _campaigns)&&(identical(other.isLoadingCampaigns, isLoadingCampaigns) || other.isLoadingCampaigns == isLoadingCampaigns)&&(identical(other.isRefreshingCampaigns, isRefreshingCampaigns) || other.isRefreshingCampaigns == isRefreshingCampaigns)&&(identical(other.errorCampaigns, errorCampaigns) || other.errorCampaigns == errorCampaigns)&&(identical(other.selectedCampaign, selectedCampaign) || other.selectedCampaign == selectedCampaign)&&(identical(other.isLoadingCampaignDetail, isLoadingCampaignDetail) || other.isLoadingCampaignDetail == isLoadingCampaignDetail)&&(identical(other.errorCampaignDetail, errorCampaignDetail) || other.errorCampaignDetail == errorCampaignDetail)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.isLoadingCategories, isLoadingCategories) || other.isLoadingCategories == isLoadingCategories)&&(identical(other.errorCategories, errorCategories) || other.errorCategories == errorCategories)&&const DeepCollectionEquality().equals(other._searchResults, _searchResults)&&(identical(other.isSearching, isSearching) || other.isSearching == isSearching)&&(identical(other.errorSearch, errorSearch) || other.errorSearch == errorSearch)&&const DeepCollectionEquality().equals(other._donations, _donations)&&(identical(other.isLoadingDonations, isLoadingDonations) || other.isLoadingDonations == isLoadingDonations)&&(identical(other.errorDonations, errorDonations) || other.errorDonations == errorDonations)&&const DeepCollectionEquality().equals(other._comments, _comments)&&(identical(other.isLoadingComments, isLoadingComments) || other.isLoadingComments == isLoadingComments)&&(identical(other.errorComments, errorComments) || other.errorComments == errorComments)&&const DeepCollectionEquality().equals(other._withdrawals, _withdrawals)&&(identical(other.isLoadingWithdrawals, isLoadingWithdrawals) || other.isLoadingWithdrawals == isLoadingWithdrawals)&&(identical(other.errorWithdrawals, errorWithdrawals) || other.errorWithdrawals == errorWithdrawals)&&const DeepCollectionEquality().equals(other._campaignDocuments, _campaignDocuments)&&(identical(other.isLoadingDocuments, isLoadingDocuments) || other.isLoadingDocuments == isLoadingDocuments)&&(identical(other.errorDocuments, errorDocuments) || other.errorDocuments == errorDocuments)&&const DeepCollectionEquality().equals(other._campaignMilestones, _campaignMilestones)&&(identical(other.isLoadingMilestones, isLoadingMilestones) || other.isLoadingMilestones == isLoadingMilestones)&&(identical(other.errorMilestones, errorMilestones) || other.errorMilestones == errorMilestones)&&const DeepCollectionEquality().equals(other._campaignFundBreakdown, _campaignFundBreakdown)&&(identical(other.isLoadingFundBreakdown, isLoadingFundBreakdown) || other.isLoadingFundBreakdown == isLoadingFundBreakdown)&&(identical(other.errorFundBreakdown, errorFundBreakdown) || other.errorFundBreakdown == errorFundBreakdown)&&const DeepCollectionEquality().equals(other._campaignProofItems, _campaignProofItems)&&(identical(other.isLoadingProofItems, isLoadingProofItems) || other.isLoadingProofItems == isLoadingProofItems)&&(identical(other.errorProofItems, errorProofItems) || other.errorProofItems == errorProofItems)&&const DeepCollectionEquality().equals(other._campaignUpdates, _campaignUpdates)&&(identical(other.isLoadingUpdates, isLoadingUpdates) || other.isLoadingUpdates == isLoadingUpdates)&&(identical(other.errorUpdates, errorUpdates) || other.errorUpdates == errorUpdates)&&const DeepCollectionEquality().equals(other._userCampaigns, _userCampaigns)&&(identical(other.isLoadingUserCampaigns, isLoadingUserCampaigns) || other.isLoadingUserCampaigns == isLoadingUserCampaigns)&&(identical(other.errorUserCampaigns, errorUserCampaigns) || other.errorUserCampaigns == errorUserCampaigns)&&const DeepCollectionEquality().equals(other._userDonations, _userDonations)&&(identical(other.isLoadingUserDonations, isLoadingUserDonations) || other.isLoadingUserDonations == isLoadingUserDonations)&&(identical(other.errorUserDonations, errorUserDonations) || other.errorUserDonations == errorUserDonations)&&(identical(other.isCreatingCampaign, isCreatingCampaign) || other.isCreatingCampaign == isCreatingCampaign)&&(identical(other.errorCreateCampaign, errorCreateCampaign) || other.errorCreateCampaign == errorCreateCampaign)&&(identical(other.isUpdatingCampaign, isUpdatingCampaign) || other.isUpdatingCampaign == isUpdatingCampaign)&&(identical(other.errorUpdateCampaign, errorUpdateCampaign) || other.errorUpdateCampaign == errorUpdateCampaign)&&(identical(other.isDeletingCampaign, isDeletingCampaign) || other.isDeletingCampaign == isDeletingCampaign)&&(identical(other.errorDeleteCampaign, errorDeleteCampaign) || other.errorDeleteCampaign == errorDeleteCampaign)&&(identical(other.isPerformingDonation, isPerformingDonation) || other.isPerformingDonation == isPerformingDonation)&&(identical(other.errorDonation, errorDonation) || other.errorDonation == errorDonation)&&(identical(other.isRequestingWithdrawal, isRequestingWithdrawal) || other.isRequestingWithdrawal == isRequestingWithdrawal)&&(identical(other.errorWithdrawal, errorWithdrawal) || other.errorWithdrawal == errorWithdrawal)&&(identical(other.isUpdatingBankDetails, isUpdatingBankDetails) || other.isUpdatingBankDetails == isUpdatingBankDetails)&&(identical(other.errorBankDetails, errorBankDetails) || other.errorBankDetails == errorBankDetails)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hashAll([runtimeType,const DeepCollectionEquality().hash(_campaigns),isLoadingCampaigns,isRefreshingCampaigns,errorCampaigns,selectedCampaign,isLoadingCampaignDetail,errorCampaignDetail,const DeepCollectionEquality().hash(_categories),isLoadingCategories,errorCategories,const DeepCollectionEquality().hash(_searchResults),isSearching,errorSearch,const DeepCollectionEquality().hash(_donations),isLoadingDonations,errorDonations,const DeepCollectionEquality().hash(_comments),isLoadingComments,errorComments,const DeepCollectionEquality().hash(_withdrawals),isLoadingWithdrawals,errorWithdrawals,const DeepCollectionEquality().hash(_campaignDocuments),isLoadingDocuments,errorDocuments,const DeepCollectionEquality().hash(_campaignMilestones),isLoadingMilestones,errorMilestones,const DeepCollectionEquality().hash(_campaignFundBreakdown),isLoadingFundBreakdown,errorFundBreakdown,const DeepCollectionEquality().hash(_campaignProofItems),isLoadingProofItems,errorProofItems,const DeepCollectionEquality().hash(_campaignUpdates),isLoadingUpdates,errorUpdates,const DeepCollectionEquality().hash(_userCampaigns),isLoadingUserCampaigns,errorUserCampaigns,const DeepCollectionEquality().hash(_userDonations),isLoadingUserDonations,errorUserDonations,isCreatingCampaign,errorCreateCampaign,isUpdatingCampaign,errorUpdateCampaign,isDeletingCampaign,errorDeleteCampaign,isPerformingDonation,errorDonation,isRequestingWithdrawal,errorWithdrawal,isUpdatingBankDetails,errorBankDetails,message]);

@override
String toString() {
  return 'CampaignState(campaigns: $campaigns, isLoadingCampaigns: $isLoadingCampaigns, isRefreshingCampaigns: $isRefreshingCampaigns, errorCampaigns: $errorCampaigns, selectedCampaign: $selectedCampaign, isLoadingCampaignDetail: $isLoadingCampaignDetail, errorCampaignDetail: $errorCampaignDetail, categories: $categories, isLoadingCategories: $isLoadingCategories, errorCategories: $errorCategories, searchResults: $searchResults, isSearching: $isSearching, errorSearch: $errorSearch, donations: $donations, isLoadingDonations: $isLoadingDonations, errorDonations: $errorDonations, comments: $comments, isLoadingComments: $isLoadingComments, errorComments: $errorComments, withdrawals: $withdrawals, isLoadingWithdrawals: $isLoadingWithdrawals, errorWithdrawals: $errorWithdrawals, campaignDocuments: $campaignDocuments, isLoadingDocuments: $isLoadingDocuments, errorDocuments: $errorDocuments, campaignMilestones: $campaignMilestones, isLoadingMilestones: $isLoadingMilestones, errorMilestones: $errorMilestones, campaignFundBreakdown: $campaignFundBreakdown, isLoadingFundBreakdown: $isLoadingFundBreakdown, errorFundBreakdown: $errorFundBreakdown, campaignProofItems: $campaignProofItems, isLoadingProofItems: $isLoadingProofItems, errorProofItems: $errorProofItems, campaignUpdates: $campaignUpdates, isLoadingUpdates: $isLoadingUpdates, errorUpdates: $errorUpdates, userCampaigns: $userCampaigns, isLoadingUserCampaigns: $isLoadingUserCampaigns, errorUserCampaigns: $errorUserCampaigns, userDonations: $userDonations, isLoadingUserDonations: $isLoadingUserDonations, errorUserDonations: $errorUserDonations, isCreatingCampaign: $isCreatingCampaign, errorCreateCampaign: $errorCreateCampaign, isUpdatingCampaign: $isUpdatingCampaign, errorUpdateCampaign: $errorUpdateCampaign, isDeletingCampaign: $isDeletingCampaign, errorDeleteCampaign: $errorDeleteCampaign, isPerformingDonation: $isPerformingDonation, errorDonation: $errorDonation, isRequestingWithdrawal: $isRequestingWithdrawal, errorWithdrawal: $errorWithdrawal, isUpdatingBankDetails: $isUpdatingBankDetails, errorBankDetails: $errorBankDetails, message: $message)';
}


}

/// @nodoc
abstract mixin class _$CampaignStateCopyWith<$Res> implements $CampaignStateCopyWith<$Res> {
  factory _$CampaignStateCopyWith(_CampaignState value, $Res Function(_CampaignState) _then) = __$CampaignStateCopyWithImpl;
@override @useResult
$Res call({
 List<CampaignEntity> campaigns, bool isLoadingCampaigns, bool isRefreshingCampaigns, String? errorCampaigns, CampaignEntity? selectedCampaign, bool isLoadingCampaignDetail, String? errorCampaignDetail, List<CampaignCategoryEntity> categories, bool isLoadingCategories, String? errorCategories, List<CampaignEntity> searchResults, bool isSearching, String? errorSearch, List<DonationEntity> donations, bool isLoadingDonations, String? errorDonations, List<CampaignCommentEntity> comments, bool isLoadingComments, String? errorComments, List<WithdrawalEntity> withdrawals, bool isLoadingWithdrawals, String? errorWithdrawals, List<CampaignDocumentEntity> campaignDocuments, bool isLoadingDocuments, String? errorDocuments, List<CampaignMilestoneEntity> campaignMilestones, bool isLoadingMilestones, String? errorMilestones, List<CampaignFundBreakdownEntity> campaignFundBreakdown, bool isLoadingFundBreakdown, String? errorFundBreakdown, List<CampaignProofItemEntity> campaignProofItems, bool isLoadingProofItems, String? errorProofItems, List<CampaignUpdateEntity> campaignUpdates, bool isLoadingUpdates, String? errorUpdates, List<CampaignEntity> userCampaigns, bool isLoadingUserCampaigns, String? errorUserCampaigns, List<DonationEntity> userDonations, bool isLoadingUserDonations, String? errorUserDonations, bool isCreatingCampaign, String? errorCreateCampaign, bool isUpdatingCampaign, String? errorUpdateCampaign, bool isDeletingCampaign, String? errorDeleteCampaign, bool isPerformingDonation, String? errorDonation, bool isRequestingWithdrawal, String? errorWithdrawal, bool isUpdatingBankDetails, String? errorBankDetails, String? message
});


@override $CampaignEntityCopyWith<$Res>? get selectedCampaign;

}
/// @nodoc
class __$CampaignStateCopyWithImpl<$Res>
    implements _$CampaignStateCopyWith<$Res> {
  __$CampaignStateCopyWithImpl(this._self, this._then);

  final _CampaignState _self;
  final $Res Function(_CampaignState) _then;

/// Create a copy of CampaignState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? campaigns = null,Object? isLoadingCampaigns = null,Object? isRefreshingCampaigns = null,Object? errorCampaigns = freezed,Object? selectedCampaign = freezed,Object? isLoadingCampaignDetail = null,Object? errorCampaignDetail = freezed,Object? categories = null,Object? isLoadingCategories = null,Object? errorCategories = freezed,Object? searchResults = null,Object? isSearching = null,Object? errorSearch = freezed,Object? donations = null,Object? isLoadingDonations = null,Object? errorDonations = freezed,Object? comments = null,Object? isLoadingComments = null,Object? errorComments = freezed,Object? withdrawals = null,Object? isLoadingWithdrawals = null,Object? errorWithdrawals = freezed,Object? campaignDocuments = null,Object? isLoadingDocuments = null,Object? errorDocuments = freezed,Object? campaignMilestones = null,Object? isLoadingMilestones = null,Object? errorMilestones = freezed,Object? campaignFundBreakdown = null,Object? isLoadingFundBreakdown = null,Object? errorFundBreakdown = freezed,Object? campaignProofItems = null,Object? isLoadingProofItems = null,Object? errorProofItems = freezed,Object? campaignUpdates = null,Object? isLoadingUpdates = null,Object? errorUpdates = freezed,Object? userCampaigns = null,Object? isLoadingUserCampaigns = null,Object? errorUserCampaigns = freezed,Object? userDonations = null,Object? isLoadingUserDonations = null,Object? errorUserDonations = freezed,Object? isCreatingCampaign = null,Object? errorCreateCampaign = freezed,Object? isUpdatingCampaign = null,Object? errorUpdateCampaign = freezed,Object? isDeletingCampaign = null,Object? errorDeleteCampaign = freezed,Object? isPerformingDonation = null,Object? errorDonation = freezed,Object? isRequestingWithdrawal = null,Object? errorWithdrawal = freezed,Object? isUpdatingBankDetails = null,Object? errorBankDetails = freezed,Object? message = freezed,}) {
  return _then(_CampaignState(
campaigns: null == campaigns ? _self._campaigns : campaigns // ignore: cast_nullable_to_non_nullable
as List<CampaignEntity>,isLoadingCampaigns: null == isLoadingCampaigns ? _self.isLoadingCampaigns : isLoadingCampaigns // ignore: cast_nullable_to_non_nullable
as bool,isRefreshingCampaigns: null == isRefreshingCampaigns ? _self.isRefreshingCampaigns : isRefreshingCampaigns // ignore: cast_nullable_to_non_nullable
as bool,errorCampaigns: freezed == errorCampaigns ? _self.errorCampaigns : errorCampaigns // ignore: cast_nullable_to_non_nullable
as String?,selectedCampaign: freezed == selectedCampaign ? _self.selectedCampaign : selectedCampaign // ignore: cast_nullable_to_non_nullable
as CampaignEntity?,isLoadingCampaignDetail: null == isLoadingCampaignDetail ? _self.isLoadingCampaignDetail : isLoadingCampaignDetail // ignore: cast_nullable_to_non_nullable
as bool,errorCampaignDetail: freezed == errorCampaignDetail ? _self.errorCampaignDetail : errorCampaignDetail // ignore: cast_nullable_to_non_nullable
as String?,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<CampaignCategoryEntity>,isLoadingCategories: null == isLoadingCategories ? _self.isLoadingCategories : isLoadingCategories // ignore: cast_nullable_to_non_nullable
as bool,errorCategories: freezed == errorCategories ? _self.errorCategories : errorCategories // ignore: cast_nullable_to_non_nullable
as String?,searchResults: null == searchResults ? _self._searchResults : searchResults // ignore: cast_nullable_to_non_nullable
as List<CampaignEntity>,isSearching: null == isSearching ? _self.isSearching : isSearching // ignore: cast_nullable_to_non_nullable
as bool,errorSearch: freezed == errorSearch ? _self.errorSearch : errorSearch // ignore: cast_nullable_to_non_nullable
as String?,donations: null == donations ? _self._donations : donations // ignore: cast_nullable_to_non_nullable
as List<DonationEntity>,isLoadingDonations: null == isLoadingDonations ? _self.isLoadingDonations : isLoadingDonations // ignore: cast_nullable_to_non_nullable
as bool,errorDonations: freezed == errorDonations ? _self.errorDonations : errorDonations // ignore: cast_nullable_to_non_nullable
as String?,comments: null == comments ? _self._comments : comments // ignore: cast_nullable_to_non_nullable
as List<CampaignCommentEntity>,isLoadingComments: null == isLoadingComments ? _self.isLoadingComments : isLoadingComments // ignore: cast_nullable_to_non_nullable
as bool,errorComments: freezed == errorComments ? _self.errorComments : errorComments // ignore: cast_nullable_to_non_nullable
as String?,withdrawals: null == withdrawals ? _self._withdrawals : withdrawals // ignore: cast_nullable_to_non_nullable
as List<WithdrawalEntity>,isLoadingWithdrawals: null == isLoadingWithdrawals ? _self.isLoadingWithdrawals : isLoadingWithdrawals // ignore: cast_nullable_to_non_nullable
as bool,errorWithdrawals: freezed == errorWithdrawals ? _self.errorWithdrawals : errorWithdrawals // ignore: cast_nullable_to_non_nullable
as String?,campaignDocuments: null == campaignDocuments ? _self._campaignDocuments : campaignDocuments // ignore: cast_nullable_to_non_nullable
as List<CampaignDocumentEntity>,isLoadingDocuments: null == isLoadingDocuments ? _self.isLoadingDocuments : isLoadingDocuments // ignore: cast_nullable_to_non_nullable
as bool,errorDocuments: freezed == errorDocuments ? _self.errorDocuments : errorDocuments // ignore: cast_nullable_to_non_nullable
as String?,campaignMilestones: null == campaignMilestones ? _self._campaignMilestones : campaignMilestones // ignore: cast_nullable_to_non_nullable
as List<CampaignMilestoneEntity>,isLoadingMilestones: null == isLoadingMilestones ? _self.isLoadingMilestones : isLoadingMilestones // ignore: cast_nullable_to_non_nullable
as bool,errorMilestones: freezed == errorMilestones ? _self.errorMilestones : errorMilestones // ignore: cast_nullable_to_non_nullable
as String?,campaignFundBreakdown: null == campaignFundBreakdown ? _self._campaignFundBreakdown : campaignFundBreakdown // ignore: cast_nullable_to_non_nullable
as List<CampaignFundBreakdownEntity>,isLoadingFundBreakdown: null == isLoadingFundBreakdown ? _self.isLoadingFundBreakdown : isLoadingFundBreakdown // ignore: cast_nullable_to_non_nullable
as bool,errorFundBreakdown: freezed == errorFundBreakdown ? _self.errorFundBreakdown : errorFundBreakdown // ignore: cast_nullable_to_non_nullable
as String?,campaignProofItems: null == campaignProofItems ? _self._campaignProofItems : campaignProofItems // ignore: cast_nullable_to_non_nullable
as List<CampaignProofItemEntity>,isLoadingProofItems: null == isLoadingProofItems ? _self.isLoadingProofItems : isLoadingProofItems // ignore: cast_nullable_to_non_nullable
as bool,errorProofItems: freezed == errorProofItems ? _self.errorProofItems : errorProofItems // ignore: cast_nullable_to_non_nullable
as String?,campaignUpdates: null == campaignUpdates ? _self._campaignUpdates : campaignUpdates // ignore: cast_nullable_to_non_nullable
as List<CampaignUpdateEntity>,isLoadingUpdates: null == isLoadingUpdates ? _self.isLoadingUpdates : isLoadingUpdates // ignore: cast_nullable_to_non_nullable
as bool,errorUpdates: freezed == errorUpdates ? _self.errorUpdates : errorUpdates // ignore: cast_nullable_to_non_nullable
as String?,userCampaigns: null == userCampaigns ? _self._userCampaigns : userCampaigns // ignore: cast_nullable_to_non_nullable
as List<CampaignEntity>,isLoadingUserCampaigns: null == isLoadingUserCampaigns ? _self.isLoadingUserCampaigns : isLoadingUserCampaigns // ignore: cast_nullable_to_non_nullable
as bool,errorUserCampaigns: freezed == errorUserCampaigns ? _self.errorUserCampaigns : errorUserCampaigns // ignore: cast_nullable_to_non_nullable
as String?,userDonations: null == userDonations ? _self._userDonations : userDonations // ignore: cast_nullable_to_non_nullable
as List<DonationEntity>,isLoadingUserDonations: null == isLoadingUserDonations ? _self.isLoadingUserDonations : isLoadingUserDonations // ignore: cast_nullable_to_non_nullable
as bool,errorUserDonations: freezed == errorUserDonations ? _self.errorUserDonations : errorUserDonations // ignore: cast_nullable_to_non_nullable
as String?,isCreatingCampaign: null == isCreatingCampaign ? _self.isCreatingCampaign : isCreatingCampaign // ignore: cast_nullable_to_non_nullable
as bool,errorCreateCampaign: freezed == errorCreateCampaign ? _self.errorCreateCampaign : errorCreateCampaign // ignore: cast_nullable_to_non_nullable
as String?,isUpdatingCampaign: null == isUpdatingCampaign ? _self.isUpdatingCampaign : isUpdatingCampaign // ignore: cast_nullable_to_non_nullable
as bool,errorUpdateCampaign: freezed == errorUpdateCampaign ? _self.errorUpdateCampaign : errorUpdateCampaign // ignore: cast_nullable_to_non_nullable
as String?,isDeletingCampaign: null == isDeletingCampaign ? _self.isDeletingCampaign : isDeletingCampaign // ignore: cast_nullable_to_non_nullable
as bool,errorDeleteCampaign: freezed == errorDeleteCampaign ? _self.errorDeleteCampaign : errorDeleteCampaign // ignore: cast_nullable_to_non_nullable
as String?,isPerformingDonation: null == isPerformingDonation ? _self.isPerformingDonation : isPerformingDonation // ignore: cast_nullable_to_non_nullable
as bool,errorDonation: freezed == errorDonation ? _self.errorDonation : errorDonation // ignore: cast_nullable_to_non_nullable
as String?,isRequestingWithdrawal: null == isRequestingWithdrawal ? _self.isRequestingWithdrawal : isRequestingWithdrawal // ignore: cast_nullable_to_non_nullable
as bool,errorWithdrawal: freezed == errorWithdrawal ? _self.errorWithdrawal : errorWithdrawal // ignore: cast_nullable_to_non_nullable
as String?,isUpdatingBankDetails: null == isUpdatingBankDetails ? _self.isUpdatingBankDetails : isUpdatingBankDetails // ignore: cast_nullable_to_non_nullable
as bool,errorBankDetails: freezed == errorBankDetails ? _self.errorBankDetails : errorBankDetails // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of CampaignState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CampaignEntityCopyWith<$Res>? get selectedCampaign {
    if (_self.selectedCampaign == null) {
    return null;
  }

  return $CampaignEntityCopyWith<$Res>(_self.selectedCampaign!, (value) {
    return _then(_self.copyWith(selectedCampaign: value));
  });
}
}

// dart format on
