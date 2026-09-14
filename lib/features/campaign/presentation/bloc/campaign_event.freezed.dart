// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaign_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CampaignEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CampaignEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CampaignEvent()';
}


}

/// @nodoc
class $CampaignEventCopyWith<$Res>  {
$CampaignEventCopyWith(CampaignEvent _, $Res Function(CampaignEvent) __);
}


/// Adds pattern-matching-related methods to [CampaignEvent].
extension CampaignEventPatterns on CampaignEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadCampaignsEvent value)?  loadCampaigns,TResult Function( RefreshCampaignsEvent value)?  refreshCampaigns,TResult Function( SearchCampaignsEvent value)?  searchCampaigns,TResult Function( GetCampaignDetailEvent value)?  getCampaignDetail,TResult Function( CreateCampaignEvent value)?  createCampaign,TResult Function( UpdateCampaignEvent value)?  updateCampaign,TResult Function( DeleteCampaignEvent value)?  deleteCampaign,TResult Function( UpdateCampaignStatusEvent value)?  updateCampaignStatus,TResult Function( LoadCategoriesEvent value)?  loadCategories,TResult Function( LoadDonationsEvent value)?  loadDonations,TResult Function( CreateDonationEvent value)?  createDonation,TResult Function( LoadCommentsEvent value)?  loadComments,TResult Function( AddCommentEvent value)?  addComment,TResult Function( DeleteCommentEvent value)?  deleteComment,TResult Function( LoadCommentRepliesEvent value)?  loadCommentReplies,TResult Function( RequestWithdrawalEvent value)?  requestWithdrawal,TResult Function( LoadWithdrawalsEvent value)?  loadWithdrawals,TResult Function( LoadCampaignTransparencyDataEvent value)?  loadCampaignTransparencyData,TResult Function( LoadCampaignUpdatesEvent value)?  loadCampaignUpdates,TResult Function( LoadUserCampaignsEvent value)?  loadUserCampaigns,TResult Function( LoadUserDonationsEvent value)?  loadUserDonations,TResult Function( UpdateCampaignBankDetailsEvent value)?  updateCampaignBankDetails,TResult Function( ProcessDonationEvent value)?  processDonation,TResult Function( ClearCampaignTransientEvent value)?  clearTransient,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadCampaignsEvent() when loadCampaigns != null:
return loadCampaigns(_that);case RefreshCampaignsEvent() when refreshCampaigns != null:
return refreshCampaigns(_that);case SearchCampaignsEvent() when searchCampaigns != null:
return searchCampaigns(_that);case GetCampaignDetailEvent() when getCampaignDetail != null:
return getCampaignDetail(_that);case CreateCampaignEvent() when createCampaign != null:
return createCampaign(_that);case UpdateCampaignEvent() when updateCampaign != null:
return updateCampaign(_that);case DeleteCampaignEvent() when deleteCampaign != null:
return deleteCampaign(_that);case UpdateCampaignStatusEvent() when updateCampaignStatus != null:
return updateCampaignStatus(_that);case LoadCategoriesEvent() when loadCategories != null:
return loadCategories(_that);case LoadDonationsEvent() when loadDonations != null:
return loadDonations(_that);case CreateDonationEvent() when createDonation != null:
return createDonation(_that);case LoadCommentsEvent() when loadComments != null:
return loadComments(_that);case AddCommentEvent() when addComment != null:
return addComment(_that);case DeleteCommentEvent() when deleteComment != null:
return deleteComment(_that);case LoadCommentRepliesEvent() when loadCommentReplies != null:
return loadCommentReplies(_that);case RequestWithdrawalEvent() when requestWithdrawal != null:
return requestWithdrawal(_that);case LoadWithdrawalsEvent() when loadWithdrawals != null:
return loadWithdrawals(_that);case LoadCampaignTransparencyDataEvent() when loadCampaignTransparencyData != null:
return loadCampaignTransparencyData(_that);case LoadCampaignUpdatesEvent() when loadCampaignUpdates != null:
return loadCampaignUpdates(_that);case LoadUserCampaignsEvent() when loadUserCampaigns != null:
return loadUserCampaigns(_that);case LoadUserDonationsEvent() when loadUserDonations != null:
return loadUserDonations(_that);case UpdateCampaignBankDetailsEvent() when updateCampaignBankDetails != null:
return updateCampaignBankDetails(_that);case ProcessDonationEvent() when processDonation != null:
return processDonation(_that);case ClearCampaignTransientEvent() when clearTransient != null:
return clearTransient(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadCampaignsEvent value)  loadCampaigns,required TResult Function( RefreshCampaignsEvent value)  refreshCampaigns,required TResult Function( SearchCampaignsEvent value)  searchCampaigns,required TResult Function( GetCampaignDetailEvent value)  getCampaignDetail,required TResult Function( CreateCampaignEvent value)  createCampaign,required TResult Function( UpdateCampaignEvent value)  updateCampaign,required TResult Function( DeleteCampaignEvent value)  deleteCampaign,required TResult Function( UpdateCampaignStatusEvent value)  updateCampaignStatus,required TResult Function( LoadCategoriesEvent value)  loadCategories,required TResult Function( LoadDonationsEvent value)  loadDonations,required TResult Function( CreateDonationEvent value)  createDonation,required TResult Function( LoadCommentsEvent value)  loadComments,required TResult Function( AddCommentEvent value)  addComment,required TResult Function( DeleteCommentEvent value)  deleteComment,required TResult Function( LoadCommentRepliesEvent value)  loadCommentReplies,required TResult Function( RequestWithdrawalEvent value)  requestWithdrawal,required TResult Function( LoadWithdrawalsEvent value)  loadWithdrawals,required TResult Function( LoadCampaignTransparencyDataEvent value)  loadCampaignTransparencyData,required TResult Function( LoadCampaignUpdatesEvent value)  loadCampaignUpdates,required TResult Function( LoadUserCampaignsEvent value)  loadUserCampaigns,required TResult Function( LoadUserDonationsEvent value)  loadUserDonations,required TResult Function( UpdateCampaignBankDetailsEvent value)  updateCampaignBankDetails,required TResult Function( ProcessDonationEvent value)  processDonation,required TResult Function( ClearCampaignTransientEvent value)  clearTransient,}){
final _that = this;
switch (_that) {
case LoadCampaignsEvent():
return loadCampaigns(_that);case RefreshCampaignsEvent():
return refreshCampaigns(_that);case SearchCampaignsEvent():
return searchCampaigns(_that);case GetCampaignDetailEvent():
return getCampaignDetail(_that);case CreateCampaignEvent():
return createCampaign(_that);case UpdateCampaignEvent():
return updateCampaign(_that);case DeleteCampaignEvent():
return deleteCampaign(_that);case UpdateCampaignStatusEvent():
return updateCampaignStatus(_that);case LoadCategoriesEvent():
return loadCategories(_that);case LoadDonationsEvent():
return loadDonations(_that);case CreateDonationEvent():
return createDonation(_that);case LoadCommentsEvent():
return loadComments(_that);case AddCommentEvent():
return addComment(_that);case DeleteCommentEvent():
return deleteComment(_that);case LoadCommentRepliesEvent():
return loadCommentReplies(_that);case RequestWithdrawalEvent():
return requestWithdrawal(_that);case LoadWithdrawalsEvent():
return loadWithdrawals(_that);case LoadCampaignTransparencyDataEvent():
return loadCampaignTransparencyData(_that);case LoadCampaignUpdatesEvent():
return loadCampaignUpdates(_that);case LoadUserCampaignsEvent():
return loadUserCampaigns(_that);case LoadUserDonationsEvent():
return loadUserDonations(_that);case UpdateCampaignBankDetailsEvent():
return updateCampaignBankDetails(_that);case ProcessDonationEvent():
return processDonation(_that);case ClearCampaignTransientEvent():
return clearTransient(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadCampaignsEvent value)?  loadCampaigns,TResult? Function( RefreshCampaignsEvent value)?  refreshCampaigns,TResult? Function( SearchCampaignsEvent value)?  searchCampaigns,TResult? Function( GetCampaignDetailEvent value)?  getCampaignDetail,TResult? Function( CreateCampaignEvent value)?  createCampaign,TResult? Function( UpdateCampaignEvent value)?  updateCampaign,TResult? Function( DeleteCampaignEvent value)?  deleteCampaign,TResult? Function( UpdateCampaignStatusEvent value)?  updateCampaignStatus,TResult? Function( LoadCategoriesEvent value)?  loadCategories,TResult? Function( LoadDonationsEvent value)?  loadDonations,TResult? Function( CreateDonationEvent value)?  createDonation,TResult? Function( LoadCommentsEvent value)?  loadComments,TResult? Function( AddCommentEvent value)?  addComment,TResult? Function( DeleteCommentEvent value)?  deleteComment,TResult? Function( LoadCommentRepliesEvent value)?  loadCommentReplies,TResult? Function( RequestWithdrawalEvent value)?  requestWithdrawal,TResult? Function( LoadWithdrawalsEvent value)?  loadWithdrawals,TResult? Function( LoadCampaignTransparencyDataEvent value)?  loadCampaignTransparencyData,TResult? Function( LoadCampaignUpdatesEvent value)?  loadCampaignUpdates,TResult? Function( LoadUserCampaignsEvent value)?  loadUserCampaigns,TResult? Function( LoadUserDonationsEvent value)?  loadUserDonations,TResult? Function( UpdateCampaignBankDetailsEvent value)?  updateCampaignBankDetails,TResult? Function( ProcessDonationEvent value)?  processDonation,TResult? Function( ClearCampaignTransientEvent value)?  clearTransient,}){
final _that = this;
switch (_that) {
case LoadCampaignsEvent() when loadCampaigns != null:
return loadCampaigns(_that);case RefreshCampaignsEvent() when refreshCampaigns != null:
return refreshCampaigns(_that);case SearchCampaignsEvent() when searchCampaigns != null:
return searchCampaigns(_that);case GetCampaignDetailEvent() when getCampaignDetail != null:
return getCampaignDetail(_that);case CreateCampaignEvent() when createCampaign != null:
return createCampaign(_that);case UpdateCampaignEvent() when updateCampaign != null:
return updateCampaign(_that);case DeleteCampaignEvent() when deleteCampaign != null:
return deleteCampaign(_that);case UpdateCampaignStatusEvent() when updateCampaignStatus != null:
return updateCampaignStatus(_that);case LoadCategoriesEvent() when loadCategories != null:
return loadCategories(_that);case LoadDonationsEvent() when loadDonations != null:
return loadDonations(_that);case CreateDonationEvent() when createDonation != null:
return createDonation(_that);case LoadCommentsEvent() when loadComments != null:
return loadComments(_that);case AddCommentEvent() when addComment != null:
return addComment(_that);case DeleteCommentEvent() when deleteComment != null:
return deleteComment(_that);case LoadCommentRepliesEvent() when loadCommentReplies != null:
return loadCommentReplies(_that);case RequestWithdrawalEvent() when requestWithdrawal != null:
return requestWithdrawal(_that);case LoadWithdrawalsEvent() when loadWithdrawals != null:
return loadWithdrawals(_that);case LoadCampaignTransparencyDataEvent() when loadCampaignTransparencyData != null:
return loadCampaignTransparencyData(_that);case LoadCampaignUpdatesEvent() when loadCampaignUpdates != null:
return loadCampaignUpdates(_that);case LoadUserCampaignsEvent() when loadUserCampaigns != null:
return loadUserCampaigns(_that);case LoadUserDonationsEvent() when loadUserDonations != null:
return loadUserDonations(_that);case UpdateCampaignBankDetailsEvent() when updateCampaignBankDetails != null:
return updateCampaignBankDetails(_that);case ProcessDonationEvent() when processDonation != null:
return processDonation(_that);case ClearCampaignTransientEvent() when clearTransient != null:
return clearTransient(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String? categoryId,  int limit)?  loadCampaigns,TResult Function( String? categoryId,  int limit)?  refreshCampaigns,TResult Function( String query,  String? categoryId,  int limit)?  searchCampaigns,TResult Function( String campaignId)?  getCampaignDetail,TResult Function( CampaignEntity campaign)?  createCampaign,TResult Function( CampaignEntity campaign)?  updateCampaign,TResult Function( String campaignId)?  deleteCampaign,TResult Function( String campaignId,  String status)?  updateCampaignStatus,TResult Function()?  loadCategories,TResult Function( String campaignId,  int limit)?  loadDonations,TResult Function( DonationEntity donation)?  createDonation,TResult Function( String campaignId,  bool includeReplies)?  loadComments,TResult Function( CampaignCommentEntity comment)?  addComment,TResult Function( String campaignId,  String commentId)?  deleteComment,TResult Function( String parentId)?  loadCommentReplies,TResult Function( WithdrawalEntity withdrawal)?  requestWithdrawal,TResult Function( String campaignId)?  loadWithdrawals,TResult Function( String campaignId)?  loadCampaignTransparencyData,TResult Function( String campaignId)?  loadCampaignUpdates,TResult Function( String userId)?  loadUserCampaigns,TResult Function( String userId,  int limit)?  loadUserDonations,TResult Function( String campaignId,  String bankName,  String accountNumber,  String accountHolder)?  updateCampaignBankDetails,TResult Function( String campaignId,  String userId,  double amount,  String? message,  bool isAnonymous)?  processDonation,TResult Function()?  clearTransient,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadCampaignsEvent() when loadCampaigns != null:
return loadCampaigns(_that.categoryId,_that.limit);case RefreshCampaignsEvent() when refreshCampaigns != null:
return refreshCampaigns(_that.categoryId,_that.limit);case SearchCampaignsEvent() when searchCampaigns != null:
return searchCampaigns(_that.query,_that.categoryId,_that.limit);case GetCampaignDetailEvent() when getCampaignDetail != null:
return getCampaignDetail(_that.campaignId);case CreateCampaignEvent() when createCampaign != null:
return createCampaign(_that.campaign);case UpdateCampaignEvent() when updateCampaign != null:
return updateCampaign(_that.campaign);case DeleteCampaignEvent() when deleteCampaign != null:
return deleteCampaign(_that.campaignId);case UpdateCampaignStatusEvent() when updateCampaignStatus != null:
return updateCampaignStatus(_that.campaignId,_that.status);case LoadCategoriesEvent() when loadCategories != null:
return loadCategories();case LoadDonationsEvent() when loadDonations != null:
return loadDonations(_that.campaignId,_that.limit);case CreateDonationEvent() when createDonation != null:
return createDonation(_that.donation);case LoadCommentsEvent() when loadComments != null:
return loadComments(_that.campaignId,_that.includeReplies);case AddCommentEvent() when addComment != null:
return addComment(_that.comment);case DeleteCommentEvent() when deleteComment != null:
return deleteComment(_that.campaignId,_that.commentId);case LoadCommentRepliesEvent() when loadCommentReplies != null:
return loadCommentReplies(_that.parentId);case RequestWithdrawalEvent() when requestWithdrawal != null:
return requestWithdrawal(_that.withdrawal);case LoadWithdrawalsEvent() when loadWithdrawals != null:
return loadWithdrawals(_that.campaignId);case LoadCampaignTransparencyDataEvent() when loadCampaignTransparencyData != null:
return loadCampaignTransparencyData(_that.campaignId);case LoadCampaignUpdatesEvent() when loadCampaignUpdates != null:
return loadCampaignUpdates(_that.campaignId);case LoadUserCampaignsEvent() when loadUserCampaigns != null:
return loadUserCampaigns(_that.userId);case LoadUserDonationsEvent() when loadUserDonations != null:
return loadUserDonations(_that.userId,_that.limit);case UpdateCampaignBankDetailsEvent() when updateCampaignBankDetails != null:
return updateCampaignBankDetails(_that.campaignId,_that.bankName,_that.accountNumber,_that.accountHolder);case ProcessDonationEvent() when processDonation != null:
return processDonation(_that.campaignId,_that.userId,_that.amount,_that.message,_that.isAnonymous);case ClearCampaignTransientEvent() when clearTransient != null:
return clearTransient();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String? categoryId,  int limit)  loadCampaigns,required TResult Function( String? categoryId,  int limit)  refreshCampaigns,required TResult Function( String query,  String? categoryId,  int limit)  searchCampaigns,required TResult Function( String campaignId)  getCampaignDetail,required TResult Function( CampaignEntity campaign)  createCampaign,required TResult Function( CampaignEntity campaign)  updateCampaign,required TResult Function( String campaignId)  deleteCampaign,required TResult Function( String campaignId,  String status)  updateCampaignStatus,required TResult Function()  loadCategories,required TResult Function( String campaignId,  int limit)  loadDonations,required TResult Function( DonationEntity donation)  createDonation,required TResult Function( String campaignId,  bool includeReplies)  loadComments,required TResult Function( CampaignCommentEntity comment)  addComment,required TResult Function( String campaignId,  String commentId)  deleteComment,required TResult Function( String parentId)  loadCommentReplies,required TResult Function( WithdrawalEntity withdrawal)  requestWithdrawal,required TResult Function( String campaignId)  loadWithdrawals,required TResult Function( String campaignId)  loadCampaignTransparencyData,required TResult Function( String campaignId)  loadCampaignUpdates,required TResult Function( String userId)  loadUserCampaigns,required TResult Function( String userId,  int limit)  loadUserDonations,required TResult Function( String campaignId,  String bankName,  String accountNumber,  String accountHolder)  updateCampaignBankDetails,required TResult Function( String campaignId,  String userId,  double amount,  String? message,  bool isAnonymous)  processDonation,required TResult Function()  clearTransient,}) {final _that = this;
switch (_that) {
case LoadCampaignsEvent():
return loadCampaigns(_that.categoryId,_that.limit);case RefreshCampaignsEvent():
return refreshCampaigns(_that.categoryId,_that.limit);case SearchCampaignsEvent():
return searchCampaigns(_that.query,_that.categoryId,_that.limit);case GetCampaignDetailEvent():
return getCampaignDetail(_that.campaignId);case CreateCampaignEvent():
return createCampaign(_that.campaign);case UpdateCampaignEvent():
return updateCampaign(_that.campaign);case DeleteCampaignEvent():
return deleteCampaign(_that.campaignId);case UpdateCampaignStatusEvent():
return updateCampaignStatus(_that.campaignId,_that.status);case LoadCategoriesEvent():
return loadCategories();case LoadDonationsEvent():
return loadDonations(_that.campaignId,_that.limit);case CreateDonationEvent():
return createDonation(_that.donation);case LoadCommentsEvent():
return loadComments(_that.campaignId,_that.includeReplies);case AddCommentEvent():
return addComment(_that.comment);case DeleteCommentEvent():
return deleteComment(_that.campaignId,_that.commentId);case LoadCommentRepliesEvent():
return loadCommentReplies(_that.parentId);case RequestWithdrawalEvent():
return requestWithdrawal(_that.withdrawal);case LoadWithdrawalsEvent():
return loadWithdrawals(_that.campaignId);case LoadCampaignTransparencyDataEvent():
return loadCampaignTransparencyData(_that.campaignId);case LoadCampaignUpdatesEvent():
return loadCampaignUpdates(_that.campaignId);case LoadUserCampaignsEvent():
return loadUserCampaigns(_that.userId);case LoadUserDonationsEvent():
return loadUserDonations(_that.userId,_that.limit);case UpdateCampaignBankDetailsEvent():
return updateCampaignBankDetails(_that.campaignId,_that.bankName,_that.accountNumber,_that.accountHolder);case ProcessDonationEvent():
return processDonation(_that.campaignId,_that.userId,_that.amount,_that.message,_that.isAnonymous);case ClearCampaignTransientEvent():
return clearTransient();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String? categoryId,  int limit)?  loadCampaigns,TResult? Function( String? categoryId,  int limit)?  refreshCampaigns,TResult? Function( String query,  String? categoryId,  int limit)?  searchCampaigns,TResult? Function( String campaignId)?  getCampaignDetail,TResult? Function( CampaignEntity campaign)?  createCampaign,TResult? Function( CampaignEntity campaign)?  updateCampaign,TResult? Function( String campaignId)?  deleteCampaign,TResult? Function( String campaignId,  String status)?  updateCampaignStatus,TResult? Function()?  loadCategories,TResult? Function( String campaignId,  int limit)?  loadDonations,TResult? Function( DonationEntity donation)?  createDonation,TResult? Function( String campaignId,  bool includeReplies)?  loadComments,TResult? Function( CampaignCommentEntity comment)?  addComment,TResult? Function( String campaignId,  String commentId)?  deleteComment,TResult? Function( String parentId)?  loadCommentReplies,TResult? Function( WithdrawalEntity withdrawal)?  requestWithdrawal,TResult? Function( String campaignId)?  loadWithdrawals,TResult? Function( String campaignId)?  loadCampaignTransparencyData,TResult? Function( String campaignId)?  loadCampaignUpdates,TResult? Function( String userId)?  loadUserCampaigns,TResult? Function( String userId,  int limit)?  loadUserDonations,TResult? Function( String campaignId,  String bankName,  String accountNumber,  String accountHolder)?  updateCampaignBankDetails,TResult? Function( String campaignId,  String userId,  double amount,  String? message,  bool isAnonymous)?  processDonation,TResult? Function()?  clearTransient,}) {final _that = this;
switch (_that) {
case LoadCampaignsEvent() when loadCampaigns != null:
return loadCampaigns(_that.categoryId,_that.limit);case RefreshCampaignsEvent() when refreshCampaigns != null:
return refreshCampaigns(_that.categoryId,_that.limit);case SearchCampaignsEvent() when searchCampaigns != null:
return searchCampaigns(_that.query,_that.categoryId,_that.limit);case GetCampaignDetailEvent() when getCampaignDetail != null:
return getCampaignDetail(_that.campaignId);case CreateCampaignEvent() when createCampaign != null:
return createCampaign(_that.campaign);case UpdateCampaignEvent() when updateCampaign != null:
return updateCampaign(_that.campaign);case DeleteCampaignEvent() when deleteCampaign != null:
return deleteCampaign(_that.campaignId);case UpdateCampaignStatusEvent() when updateCampaignStatus != null:
return updateCampaignStatus(_that.campaignId,_that.status);case LoadCategoriesEvent() when loadCategories != null:
return loadCategories();case LoadDonationsEvent() when loadDonations != null:
return loadDonations(_that.campaignId,_that.limit);case CreateDonationEvent() when createDonation != null:
return createDonation(_that.donation);case LoadCommentsEvent() when loadComments != null:
return loadComments(_that.campaignId,_that.includeReplies);case AddCommentEvent() when addComment != null:
return addComment(_that.comment);case DeleteCommentEvent() when deleteComment != null:
return deleteComment(_that.campaignId,_that.commentId);case LoadCommentRepliesEvent() when loadCommentReplies != null:
return loadCommentReplies(_that.parentId);case RequestWithdrawalEvent() when requestWithdrawal != null:
return requestWithdrawal(_that.withdrawal);case LoadWithdrawalsEvent() when loadWithdrawals != null:
return loadWithdrawals(_that.campaignId);case LoadCampaignTransparencyDataEvent() when loadCampaignTransparencyData != null:
return loadCampaignTransparencyData(_that.campaignId);case LoadCampaignUpdatesEvent() when loadCampaignUpdates != null:
return loadCampaignUpdates(_that.campaignId);case LoadUserCampaignsEvent() when loadUserCampaigns != null:
return loadUserCampaigns(_that.userId);case LoadUserDonationsEvent() when loadUserDonations != null:
return loadUserDonations(_that.userId,_that.limit);case UpdateCampaignBankDetailsEvent() when updateCampaignBankDetails != null:
return updateCampaignBankDetails(_that.campaignId,_that.bankName,_that.accountNumber,_that.accountHolder);case ProcessDonationEvent() when processDonation != null:
return processDonation(_that.campaignId,_that.userId,_that.amount,_that.message,_that.isAnonymous);case ClearCampaignTransientEvent() when clearTransient != null:
return clearTransient();case _:
  return null;

}
}

}

/// @nodoc


class LoadCampaignsEvent implements CampaignEvent {
  const LoadCampaignsEvent({this.categoryId, this.limit = 20});
  

 final  String? categoryId;
@JsonKey() final  int limit;

/// Create a copy of CampaignEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadCampaignsEventCopyWith<LoadCampaignsEvent> get copyWith => _$LoadCampaignsEventCopyWithImpl<LoadCampaignsEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadCampaignsEvent&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,categoryId,limit);

@override
String toString() {
  return 'CampaignEvent.loadCampaigns(categoryId: $categoryId, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $LoadCampaignsEventCopyWith<$Res> implements $CampaignEventCopyWith<$Res> {
  factory $LoadCampaignsEventCopyWith(LoadCampaignsEvent value, $Res Function(LoadCampaignsEvent) _then) = _$LoadCampaignsEventCopyWithImpl;
@useResult
$Res call({
 String? categoryId, int limit
});




}
/// @nodoc
class _$LoadCampaignsEventCopyWithImpl<$Res>
    implements $LoadCampaignsEventCopyWith<$Res> {
  _$LoadCampaignsEventCopyWithImpl(this._self, this._then);

  final LoadCampaignsEvent _self;
  final $Res Function(LoadCampaignsEvent) _then;

/// Create a copy of CampaignEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? categoryId = freezed,Object? limit = null,}) {
  return _then(LoadCampaignsEvent(
categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class RefreshCampaignsEvent implements CampaignEvent {
  const RefreshCampaignsEvent({this.categoryId, this.limit = 20});
  

 final  String? categoryId;
@JsonKey() final  int limit;

/// Create a copy of CampaignEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RefreshCampaignsEventCopyWith<RefreshCampaignsEvent> get copyWith => _$RefreshCampaignsEventCopyWithImpl<RefreshCampaignsEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefreshCampaignsEvent&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,categoryId,limit);

@override
String toString() {
  return 'CampaignEvent.refreshCampaigns(categoryId: $categoryId, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $RefreshCampaignsEventCopyWith<$Res> implements $CampaignEventCopyWith<$Res> {
  factory $RefreshCampaignsEventCopyWith(RefreshCampaignsEvent value, $Res Function(RefreshCampaignsEvent) _then) = _$RefreshCampaignsEventCopyWithImpl;
@useResult
$Res call({
 String? categoryId, int limit
});




}
/// @nodoc
class _$RefreshCampaignsEventCopyWithImpl<$Res>
    implements $RefreshCampaignsEventCopyWith<$Res> {
  _$RefreshCampaignsEventCopyWithImpl(this._self, this._then);

  final RefreshCampaignsEvent _self;
  final $Res Function(RefreshCampaignsEvent) _then;

/// Create a copy of CampaignEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? categoryId = freezed,Object? limit = null,}) {
  return _then(RefreshCampaignsEvent(
categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class SearchCampaignsEvent implements CampaignEvent {
  const SearchCampaignsEvent({required this.query, this.categoryId, this.limit = 20});
  

 final  String query;
 final  String? categoryId;
@JsonKey() final  int limit;

/// Create a copy of CampaignEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchCampaignsEventCopyWith<SearchCampaignsEvent> get copyWith => _$SearchCampaignsEventCopyWithImpl<SearchCampaignsEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchCampaignsEvent&&(identical(other.query, query) || other.query == query)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,query,categoryId,limit);

@override
String toString() {
  return 'CampaignEvent.searchCampaigns(query: $query, categoryId: $categoryId, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $SearchCampaignsEventCopyWith<$Res> implements $CampaignEventCopyWith<$Res> {
  factory $SearchCampaignsEventCopyWith(SearchCampaignsEvent value, $Res Function(SearchCampaignsEvent) _then) = _$SearchCampaignsEventCopyWithImpl;
@useResult
$Res call({
 String query, String? categoryId, int limit
});




}
/// @nodoc
class _$SearchCampaignsEventCopyWithImpl<$Res>
    implements $SearchCampaignsEventCopyWith<$Res> {
  _$SearchCampaignsEventCopyWithImpl(this._self, this._then);

  final SearchCampaignsEvent _self;
  final $Res Function(SearchCampaignsEvent) _then;

/// Create a copy of CampaignEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,Object? categoryId = freezed,Object? limit = null,}) {
  return _then(SearchCampaignsEvent(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String?,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class GetCampaignDetailEvent implements CampaignEvent {
  const GetCampaignDetailEvent({required this.campaignId});
  

 final  String campaignId;

/// Create a copy of CampaignEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetCampaignDetailEventCopyWith<GetCampaignDetailEvent> get copyWith => _$GetCampaignDetailEventCopyWithImpl<GetCampaignDetailEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetCampaignDetailEvent&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId));
}


@override
int get hashCode => Object.hash(runtimeType,campaignId);

@override
String toString() {
  return 'CampaignEvent.getCampaignDetail(campaignId: $campaignId)';
}


}

/// @nodoc
abstract mixin class $GetCampaignDetailEventCopyWith<$Res> implements $CampaignEventCopyWith<$Res> {
  factory $GetCampaignDetailEventCopyWith(GetCampaignDetailEvent value, $Res Function(GetCampaignDetailEvent) _then) = _$GetCampaignDetailEventCopyWithImpl;
@useResult
$Res call({
 String campaignId
});




}
/// @nodoc
class _$GetCampaignDetailEventCopyWithImpl<$Res>
    implements $GetCampaignDetailEventCopyWith<$Res> {
  _$GetCampaignDetailEventCopyWithImpl(this._self, this._then);

  final GetCampaignDetailEvent _self;
  final $Res Function(GetCampaignDetailEvent) _then;

/// Create a copy of CampaignEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? campaignId = null,}) {
  return _then(GetCampaignDetailEvent(
campaignId: null == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CreateCampaignEvent implements CampaignEvent {
  const CreateCampaignEvent({required this.campaign});
  

 final  CampaignEntity campaign;

/// Create a copy of CampaignEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateCampaignEventCopyWith<CreateCampaignEvent> get copyWith => _$CreateCampaignEventCopyWithImpl<CreateCampaignEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateCampaignEvent&&(identical(other.campaign, campaign) || other.campaign == campaign));
}


@override
int get hashCode => Object.hash(runtimeType,campaign);

@override
String toString() {
  return 'CampaignEvent.createCampaign(campaign: $campaign)';
}


}

/// @nodoc
abstract mixin class $CreateCampaignEventCopyWith<$Res> implements $CampaignEventCopyWith<$Res> {
  factory $CreateCampaignEventCopyWith(CreateCampaignEvent value, $Res Function(CreateCampaignEvent) _then) = _$CreateCampaignEventCopyWithImpl;
@useResult
$Res call({
 CampaignEntity campaign
});


$CampaignEntityCopyWith<$Res> get campaign;

}
/// @nodoc
class _$CreateCampaignEventCopyWithImpl<$Res>
    implements $CreateCampaignEventCopyWith<$Res> {
  _$CreateCampaignEventCopyWithImpl(this._self, this._then);

  final CreateCampaignEvent _self;
  final $Res Function(CreateCampaignEvent) _then;

/// Create a copy of CampaignEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? campaign = null,}) {
  return _then(CreateCampaignEvent(
campaign: null == campaign ? _self.campaign : campaign // ignore: cast_nullable_to_non_nullable
as CampaignEntity,
  ));
}

/// Create a copy of CampaignEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CampaignEntityCopyWith<$Res> get campaign {
  
  return $CampaignEntityCopyWith<$Res>(_self.campaign, (value) {
    return _then(_self.copyWith(campaign: value));
  });
}
}

/// @nodoc


class UpdateCampaignEvent implements CampaignEvent {
  const UpdateCampaignEvent({required this.campaign});
  

 final  CampaignEntity campaign;

/// Create a copy of CampaignEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateCampaignEventCopyWith<UpdateCampaignEvent> get copyWith => _$UpdateCampaignEventCopyWithImpl<UpdateCampaignEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateCampaignEvent&&(identical(other.campaign, campaign) || other.campaign == campaign));
}


@override
int get hashCode => Object.hash(runtimeType,campaign);

@override
String toString() {
  return 'CampaignEvent.updateCampaign(campaign: $campaign)';
}


}

/// @nodoc
abstract mixin class $UpdateCampaignEventCopyWith<$Res> implements $CampaignEventCopyWith<$Res> {
  factory $UpdateCampaignEventCopyWith(UpdateCampaignEvent value, $Res Function(UpdateCampaignEvent) _then) = _$UpdateCampaignEventCopyWithImpl;
@useResult
$Res call({
 CampaignEntity campaign
});


$CampaignEntityCopyWith<$Res> get campaign;

}
/// @nodoc
class _$UpdateCampaignEventCopyWithImpl<$Res>
    implements $UpdateCampaignEventCopyWith<$Res> {
  _$UpdateCampaignEventCopyWithImpl(this._self, this._then);

  final UpdateCampaignEvent _self;
  final $Res Function(UpdateCampaignEvent) _then;

/// Create a copy of CampaignEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? campaign = null,}) {
  return _then(UpdateCampaignEvent(
campaign: null == campaign ? _self.campaign : campaign // ignore: cast_nullable_to_non_nullable
as CampaignEntity,
  ));
}

/// Create a copy of CampaignEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CampaignEntityCopyWith<$Res> get campaign {
  
  return $CampaignEntityCopyWith<$Res>(_self.campaign, (value) {
    return _then(_self.copyWith(campaign: value));
  });
}
}

/// @nodoc


class DeleteCampaignEvent implements CampaignEvent {
  const DeleteCampaignEvent({required this.campaignId});
  

 final  String campaignId;

/// Create a copy of CampaignEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteCampaignEventCopyWith<DeleteCampaignEvent> get copyWith => _$DeleteCampaignEventCopyWithImpl<DeleteCampaignEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteCampaignEvent&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId));
}


@override
int get hashCode => Object.hash(runtimeType,campaignId);

@override
String toString() {
  return 'CampaignEvent.deleteCampaign(campaignId: $campaignId)';
}


}

/// @nodoc
abstract mixin class $DeleteCampaignEventCopyWith<$Res> implements $CampaignEventCopyWith<$Res> {
  factory $DeleteCampaignEventCopyWith(DeleteCampaignEvent value, $Res Function(DeleteCampaignEvent) _then) = _$DeleteCampaignEventCopyWithImpl;
@useResult
$Res call({
 String campaignId
});




}
/// @nodoc
class _$DeleteCampaignEventCopyWithImpl<$Res>
    implements $DeleteCampaignEventCopyWith<$Res> {
  _$DeleteCampaignEventCopyWithImpl(this._self, this._then);

  final DeleteCampaignEvent _self;
  final $Res Function(DeleteCampaignEvent) _then;

/// Create a copy of CampaignEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? campaignId = null,}) {
  return _then(DeleteCampaignEvent(
campaignId: null == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UpdateCampaignStatusEvent implements CampaignEvent {
  const UpdateCampaignStatusEvent({required this.campaignId, required this.status});
  

 final  String campaignId;
 final  String status;

/// Create a copy of CampaignEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateCampaignStatusEventCopyWith<UpdateCampaignStatusEvent> get copyWith => _$UpdateCampaignStatusEventCopyWithImpl<UpdateCampaignStatusEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateCampaignStatusEvent&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,campaignId,status);

@override
String toString() {
  return 'CampaignEvent.updateCampaignStatus(campaignId: $campaignId, status: $status)';
}


}

/// @nodoc
abstract mixin class $UpdateCampaignStatusEventCopyWith<$Res> implements $CampaignEventCopyWith<$Res> {
  factory $UpdateCampaignStatusEventCopyWith(UpdateCampaignStatusEvent value, $Res Function(UpdateCampaignStatusEvent) _then) = _$UpdateCampaignStatusEventCopyWithImpl;
@useResult
$Res call({
 String campaignId, String status
});




}
/// @nodoc
class _$UpdateCampaignStatusEventCopyWithImpl<$Res>
    implements $UpdateCampaignStatusEventCopyWith<$Res> {
  _$UpdateCampaignStatusEventCopyWithImpl(this._self, this._then);

  final UpdateCampaignStatusEvent _self;
  final $Res Function(UpdateCampaignStatusEvent) _then;

/// Create a copy of CampaignEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? campaignId = null,Object? status = null,}) {
  return _then(UpdateCampaignStatusEvent(
campaignId: null == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoadCategoriesEvent implements CampaignEvent {
  const LoadCategoriesEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadCategoriesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CampaignEvent.loadCategories()';
}


}




/// @nodoc


class LoadDonationsEvent implements CampaignEvent {
  const LoadDonationsEvent({required this.campaignId, this.limit = 50});
  

 final  String campaignId;
@JsonKey() final  int limit;

/// Create a copy of CampaignEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadDonationsEventCopyWith<LoadDonationsEvent> get copyWith => _$LoadDonationsEventCopyWithImpl<LoadDonationsEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadDonationsEvent&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,campaignId,limit);

@override
String toString() {
  return 'CampaignEvent.loadDonations(campaignId: $campaignId, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $LoadDonationsEventCopyWith<$Res> implements $CampaignEventCopyWith<$Res> {
  factory $LoadDonationsEventCopyWith(LoadDonationsEvent value, $Res Function(LoadDonationsEvent) _then) = _$LoadDonationsEventCopyWithImpl;
@useResult
$Res call({
 String campaignId, int limit
});




}
/// @nodoc
class _$LoadDonationsEventCopyWithImpl<$Res>
    implements $LoadDonationsEventCopyWith<$Res> {
  _$LoadDonationsEventCopyWithImpl(this._self, this._then);

  final LoadDonationsEvent _self;
  final $Res Function(LoadDonationsEvent) _then;

/// Create a copy of CampaignEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? campaignId = null,Object? limit = null,}) {
  return _then(LoadDonationsEvent(
campaignId: null == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class CreateDonationEvent implements CampaignEvent {
  const CreateDonationEvent({required this.donation});
  

 final  DonationEntity donation;

/// Create a copy of CampaignEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateDonationEventCopyWith<CreateDonationEvent> get copyWith => _$CreateDonationEventCopyWithImpl<CreateDonationEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateDonationEvent&&(identical(other.donation, donation) || other.donation == donation));
}


@override
int get hashCode => Object.hash(runtimeType,donation);

@override
String toString() {
  return 'CampaignEvent.createDonation(donation: $donation)';
}


}

/// @nodoc
abstract mixin class $CreateDonationEventCopyWith<$Res> implements $CampaignEventCopyWith<$Res> {
  factory $CreateDonationEventCopyWith(CreateDonationEvent value, $Res Function(CreateDonationEvent) _then) = _$CreateDonationEventCopyWithImpl;
@useResult
$Res call({
 DonationEntity donation
});


$DonationEntityCopyWith<$Res> get donation;

}
/// @nodoc
class _$CreateDonationEventCopyWithImpl<$Res>
    implements $CreateDonationEventCopyWith<$Res> {
  _$CreateDonationEventCopyWithImpl(this._self, this._then);

  final CreateDonationEvent _self;
  final $Res Function(CreateDonationEvent) _then;

/// Create a copy of CampaignEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? donation = null,}) {
  return _then(CreateDonationEvent(
donation: null == donation ? _self.donation : donation // ignore: cast_nullable_to_non_nullable
as DonationEntity,
  ));
}

/// Create a copy of CampaignEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DonationEntityCopyWith<$Res> get donation {
  
  return $DonationEntityCopyWith<$Res>(_self.donation, (value) {
    return _then(_self.copyWith(donation: value));
  });
}
}

/// @nodoc


class LoadCommentsEvent implements CampaignEvent {
  const LoadCommentsEvent({required this.campaignId, this.includeReplies = false});
  

 final  String campaignId;
@JsonKey() final  bool includeReplies;

/// Create a copy of CampaignEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadCommentsEventCopyWith<LoadCommentsEvent> get copyWith => _$LoadCommentsEventCopyWithImpl<LoadCommentsEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadCommentsEvent&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.includeReplies, includeReplies) || other.includeReplies == includeReplies));
}


@override
int get hashCode => Object.hash(runtimeType,campaignId,includeReplies);

@override
String toString() {
  return 'CampaignEvent.loadComments(campaignId: $campaignId, includeReplies: $includeReplies)';
}


}

/// @nodoc
abstract mixin class $LoadCommentsEventCopyWith<$Res> implements $CampaignEventCopyWith<$Res> {
  factory $LoadCommentsEventCopyWith(LoadCommentsEvent value, $Res Function(LoadCommentsEvent) _then) = _$LoadCommentsEventCopyWithImpl;
@useResult
$Res call({
 String campaignId, bool includeReplies
});




}
/// @nodoc
class _$LoadCommentsEventCopyWithImpl<$Res>
    implements $LoadCommentsEventCopyWith<$Res> {
  _$LoadCommentsEventCopyWithImpl(this._self, this._then);

  final LoadCommentsEvent _self;
  final $Res Function(LoadCommentsEvent) _then;

/// Create a copy of CampaignEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? campaignId = null,Object? includeReplies = null,}) {
  return _then(LoadCommentsEvent(
campaignId: null == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String,includeReplies: null == includeReplies ? _self.includeReplies : includeReplies // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class AddCommentEvent implements CampaignEvent {
  const AddCommentEvent({required this.comment});
  

 final  CampaignCommentEntity comment;

/// Create a copy of CampaignEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddCommentEventCopyWith<AddCommentEvent> get copyWith => _$AddCommentEventCopyWithImpl<AddCommentEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddCommentEvent&&(identical(other.comment, comment) || other.comment == comment));
}


@override
int get hashCode => Object.hash(runtimeType,comment);

@override
String toString() {
  return 'CampaignEvent.addComment(comment: $comment)';
}


}

/// @nodoc
abstract mixin class $AddCommentEventCopyWith<$Res> implements $CampaignEventCopyWith<$Res> {
  factory $AddCommentEventCopyWith(AddCommentEvent value, $Res Function(AddCommentEvent) _then) = _$AddCommentEventCopyWithImpl;
@useResult
$Res call({
 CampaignCommentEntity comment
});


$CampaignCommentEntityCopyWith<$Res> get comment;

}
/// @nodoc
class _$AddCommentEventCopyWithImpl<$Res>
    implements $AddCommentEventCopyWith<$Res> {
  _$AddCommentEventCopyWithImpl(this._self, this._then);

  final AddCommentEvent _self;
  final $Res Function(AddCommentEvent) _then;

/// Create a copy of CampaignEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? comment = null,}) {
  return _then(AddCommentEvent(
comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as CampaignCommentEntity,
  ));
}

/// Create a copy of CampaignEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CampaignCommentEntityCopyWith<$Res> get comment {
  
  return $CampaignCommentEntityCopyWith<$Res>(_self.comment, (value) {
    return _then(_self.copyWith(comment: value));
  });
}
}

/// @nodoc


class DeleteCommentEvent implements CampaignEvent {
  const DeleteCommentEvent({required this.campaignId, required this.commentId});
  

 final  String campaignId;
 final  String commentId;

/// Create a copy of CampaignEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteCommentEventCopyWith<DeleteCommentEvent> get copyWith => _$DeleteCommentEventCopyWithImpl<DeleteCommentEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteCommentEvent&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.commentId, commentId) || other.commentId == commentId));
}


@override
int get hashCode => Object.hash(runtimeType,campaignId,commentId);

@override
String toString() {
  return 'CampaignEvent.deleteComment(campaignId: $campaignId, commentId: $commentId)';
}


}

/// @nodoc
abstract mixin class $DeleteCommentEventCopyWith<$Res> implements $CampaignEventCopyWith<$Res> {
  factory $DeleteCommentEventCopyWith(DeleteCommentEvent value, $Res Function(DeleteCommentEvent) _then) = _$DeleteCommentEventCopyWithImpl;
@useResult
$Res call({
 String campaignId, String commentId
});




}
/// @nodoc
class _$DeleteCommentEventCopyWithImpl<$Res>
    implements $DeleteCommentEventCopyWith<$Res> {
  _$DeleteCommentEventCopyWithImpl(this._self, this._then);

  final DeleteCommentEvent _self;
  final $Res Function(DeleteCommentEvent) _then;

/// Create a copy of CampaignEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? campaignId = null,Object? commentId = null,}) {
  return _then(DeleteCommentEvent(
campaignId: null == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String,commentId: null == commentId ? _self.commentId : commentId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoadCommentRepliesEvent implements CampaignEvent {
  const LoadCommentRepliesEvent({required this.parentId});
  

 final  String parentId;

/// Create a copy of CampaignEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadCommentRepliesEventCopyWith<LoadCommentRepliesEvent> get copyWith => _$LoadCommentRepliesEventCopyWithImpl<LoadCommentRepliesEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadCommentRepliesEvent&&(identical(other.parentId, parentId) || other.parentId == parentId));
}


@override
int get hashCode => Object.hash(runtimeType,parentId);

@override
String toString() {
  return 'CampaignEvent.loadCommentReplies(parentId: $parentId)';
}


}

/// @nodoc
abstract mixin class $LoadCommentRepliesEventCopyWith<$Res> implements $CampaignEventCopyWith<$Res> {
  factory $LoadCommentRepliesEventCopyWith(LoadCommentRepliesEvent value, $Res Function(LoadCommentRepliesEvent) _then) = _$LoadCommentRepliesEventCopyWithImpl;
@useResult
$Res call({
 String parentId
});




}
/// @nodoc
class _$LoadCommentRepliesEventCopyWithImpl<$Res>
    implements $LoadCommentRepliesEventCopyWith<$Res> {
  _$LoadCommentRepliesEventCopyWithImpl(this._self, this._then);

  final LoadCommentRepliesEvent _self;
  final $Res Function(LoadCommentRepliesEvent) _then;

/// Create a copy of CampaignEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? parentId = null,}) {
  return _then(LoadCommentRepliesEvent(
parentId: null == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class RequestWithdrawalEvent implements CampaignEvent {
  const RequestWithdrawalEvent({required this.withdrawal});
  

 final  WithdrawalEntity withdrawal;

/// Create a copy of CampaignEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestWithdrawalEventCopyWith<RequestWithdrawalEvent> get copyWith => _$RequestWithdrawalEventCopyWithImpl<RequestWithdrawalEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestWithdrawalEvent&&(identical(other.withdrawal, withdrawal) || other.withdrawal == withdrawal));
}


@override
int get hashCode => Object.hash(runtimeType,withdrawal);

@override
String toString() {
  return 'CampaignEvent.requestWithdrawal(withdrawal: $withdrawal)';
}


}

/// @nodoc
abstract mixin class $RequestWithdrawalEventCopyWith<$Res> implements $CampaignEventCopyWith<$Res> {
  factory $RequestWithdrawalEventCopyWith(RequestWithdrawalEvent value, $Res Function(RequestWithdrawalEvent) _then) = _$RequestWithdrawalEventCopyWithImpl;
@useResult
$Res call({
 WithdrawalEntity withdrawal
});


$WithdrawalEntityCopyWith<$Res> get withdrawal;

}
/// @nodoc
class _$RequestWithdrawalEventCopyWithImpl<$Res>
    implements $RequestWithdrawalEventCopyWith<$Res> {
  _$RequestWithdrawalEventCopyWithImpl(this._self, this._then);

  final RequestWithdrawalEvent _self;
  final $Res Function(RequestWithdrawalEvent) _then;

/// Create a copy of CampaignEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? withdrawal = null,}) {
  return _then(RequestWithdrawalEvent(
withdrawal: null == withdrawal ? _self.withdrawal : withdrawal // ignore: cast_nullable_to_non_nullable
as WithdrawalEntity,
  ));
}

/// Create a copy of CampaignEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WithdrawalEntityCopyWith<$Res> get withdrawal {
  
  return $WithdrawalEntityCopyWith<$Res>(_self.withdrawal, (value) {
    return _then(_self.copyWith(withdrawal: value));
  });
}
}

/// @nodoc


class LoadWithdrawalsEvent implements CampaignEvent {
  const LoadWithdrawalsEvent({required this.campaignId});
  

 final  String campaignId;

/// Create a copy of CampaignEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadWithdrawalsEventCopyWith<LoadWithdrawalsEvent> get copyWith => _$LoadWithdrawalsEventCopyWithImpl<LoadWithdrawalsEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadWithdrawalsEvent&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId));
}


@override
int get hashCode => Object.hash(runtimeType,campaignId);

@override
String toString() {
  return 'CampaignEvent.loadWithdrawals(campaignId: $campaignId)';
}


}

/// @nodoc
abstract mixin class $LoadWithdrawalsEventCopyWith<$Res> implements $CampaignEventCopyWith<$Res> {
  factory $LoadWithdrawalsEventCopyWith(LoadWithdrawalsEvent value, $Res Function(LoadWithdrawalsEvent) _then) = _$LoadWithdrawalsEventCopyWithImpl;
@useResult
$Res call({
 String campaignId
});




}
/// @nodoc
class _$LoadWithdrawalsEventCopyWithImpl<$Res>
    implements $LoadWithdrawalsEventCopyWith<$Res> {
  _$LoadWithdrawalsEventCopyWithImpl(this._self, this._then);

  final LoadWithdrawalsEvent _self;
  final $Res Function(LoadWithdrawalsEvent) _then;

/// Create a copy of CampaignEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? campaignId = null,}) {
  return _then(LoadWithdrawalsEvent(
campaignId: null == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoadCampaignTransparencyDataEvent implements CampaignEvent {
  const LoadCampaignTransparencyDataEvent({required this.campaignId});
  

 final  String campaignId;

/// Create a copy of CampaignEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadCampaignTransparencyDataEventCopyWith<LoadCampaignTransparencyDataEvent> get copyWith => _$LoadCampaignTransparencyDataEventCopyWithImpl<LoadCampaignTransparencyDataEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadCampaignTransparencyDataEvent&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId));
}


@override
int get hashCode => Object.hash(runtimeType,campaignId);

@override
String toString() {
  return 'CampaignEvent.loadCampaignTransparencyData(campaignId: $campaignId)';
}


}

/// @nodoc
abstract mixin class $LoadCampaignTransparencyDataEventCopyWith<$Res> implements $CampaignEventCopyWith<$Res> {
  factory $LoadCampaignTransparencyDataEventCopyWith(LoadCampaignTransparencyDataEvent value, $Res Function(LoadCampaignTransparencyDataEvent) _then) = _$LoadCampaignTransparencyDataEventCopyWithImpl;
@useResult
$Res call({
 String campaignId
});




}
/// @nodoc
class _$LoadCampaignTransparencyDataEventCopyWithImpl<$Res>
    implements $LoadCampaignTransparencyDataEventCopyWith<$Res> {
  _$LoadCampaignTransparencyDataEventCopyWithImpl(this._self, this._then);

  final LoadCampaignTransparencyDataEvent _self;
  final $Res Function(LoadCampaignTransparencyDataEvent) _then;

/// Create a copy of CampaignEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? campaignId = null,}) {
  return _then(LoadCampaignTransparencyDataEvent(
campaignId: null == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoadCampaignUpdatesEvent implements CampaignEvent {
  const LoadCampaignUpdatesEvent({required this.campaignId});
  

 final  String campaignId;

/// Create a copy of CampaignEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadCampaignUpdatesEventCopyWith<LoadCampaignUpdatesEvent> get copyWith => _$LoadCampaignUpdatesEventCopyWithImpl<LoadCampaignUpdatesEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadCampaignUpdatesEvent&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId));
}


@override
int get hashCode => Object.hash(runtimeType,campaignId);

@override
String toString() {
  return 'CampaignEvent.loadCampaignUpdates(campaignId: $campaignId)';
}


}

/// @nodoc
abstract mixin class $LoadCampaignUpdatesEventCopyWith<$Res> implements $CampaignEventCopyWith<$Res> {
  factory $LoadCampaignUpdatesEventCopyWith(LoadCampaignUpdatesEvent value, $Res Function(LoadCampaignUpdatesEvent) _then) = _$LoadCampaignUpdatesEventCopyWithImpl;
@useResult
$Res call({
 String campaignId
});




}
/// @nodoc
class _$LoadCampaignUpdatesEventCopyWithImpl<$Res>
    implements $LoadCampaignUpdatesEventCopyWith<$Res> {
  _$LoadCampaignUpdatesEventCopyWithImpl(this._self, this._then);

  final LoadCampaignUpdatesEvent _self;
  final $Res Function(LoadCampaignUpdatesEvent) _then;

/// Create a copy of CampaignEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? campaignId = null,}) {
  return _then(LoadCampaignUpdatesEvent(
campaignId: null == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoadUserCampaignsEvent implements CampaignEvent {
  const LoadUserCampaignsEvent({required this.userId});
  

 final  String userId;

/// Create a copy of CampaignEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadUserCampaignsEventCopyWith<LoadUserCampaignsEvent> get copyWith => _$LoadUserCampaignsEventCopyWithImpl<LoadUserCampaignsEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadUserCampaignsEvent&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'CampaignEvent.loadUserCampaigns(userId: $userId)';
}


}

/// @nodoc
abstract mixin class $LoadUserCampaignsEventCopyWith<$Res> implements $CampaignEventCopyWith<$Res> {
  factory $LoadUserCampaignsEventCopyWith(LoadUserCampaignsEvent value, $Res Function(LoadUserCampaignsEvent) _then) = _$LoadUserCampaignsEventCopyWithImpl;
@useResult
$Res call({
 String userId
});




}
/// @nodoc
class _$LoadUserCampaignsEventCopyWithImpl<$Res>
    implements $LoadUserCampaignsEventCopyWith<$Res> {
  _$LoadUserCampaignsEventCopyWithImpl(this._self, this._then);

  final LoadUserCampaignsEvent _self;
  final $Res Function(LoadUserCampaignsEvent) _then;

/// Create a copy of CampaignEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(LoadUserCampaignsEvent(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoadUserDonationsEvent implements CampaignEvent {
  const LoadUserDonationsEvent({required this.userId, this.limit = 50});
  

 final  String userId;
@JsonKey() final  int limit;

/// Create a copy of CampaignEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadUserDonationsEventCopyWith<LoadUserDonationsEvent> get copyWith => _$LoadUserDonationsEventCopyWithImpl<LoadUserDonationsEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadUserDonationsEvent&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode => Object.hash(runtimeType,userId,limit);

@override
String toString() {
  return 'CampaignEvent.loadUserDonations(userId: $userId, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $LoadUserDonationsEventCopyWith<$Res> implements $CampaignEventCopyWith<$Res> {
  factory $LoadUserDonationsEventCopyWith(LoadUserDonationsEvent value, $Res Function(LoadUserDonationsEvent) _then) = _$LoadUserDonationsEventCopyWithImpl;
@useResult
$Res call({
 String userId, int limit
});




}
/// @nodoc
class _$LoadUserDonationsEventCopyWithImpl<$Res>
    implements $LoadUserDonationsEventCopyWith<$Res> {
  _$LoadUserDonationsEventCopyWithImpl(this._self, this._then);

  final LoadUserDonationsEvent _self;
  final $Res Function(LoadUserDonationsEvent) _then;

/// Create a copy of CampaignEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? limit = null,}) {
  return _then(LoadUserDonationsEvent(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class UpdateCampaignBankDetailsEvent implements CampaignEvent {
  const UpdateCampaignBankDetailsEvent({required this.campaignId, required this.bankName, required this.accountNumber, required this.accountHolder});
  

 final  String campaignId;
 final  String bankName;
 final  String accountNumber;
 final  String accountHolder;

/// Create a copy of CampaignEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateCampaignBankDetailsEventCopyWith<UpdateCampaignBankDetailsEvent> get copyWith => _$UpdateCampaignBankDetailsEventCopyWithImpl<UpdateCampaignBankDetailsEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateCampaignBankDetailsEvent&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.bankName, bankName) || other.bankName == bankName)&&(identical(other.accountNumber, accountNumber) || other.accountNumber == accountNumber)&&(identical(other.accountHolder, accountHolder) || other.accountHolder == accountHolder));
}


@override
int get hashCode => Object.hash(runtimeType,campaignId,bankName,accountNumber,accountHolder);

@override
String toString() {
  return 'CampaignEvent.updateCampaignBankDetails(campaignId: $campaignId, bankName: $bankName, accountNumber: $accountNumber, accountHolder: $accountHolder)';
}


}

/// @nodoc
abstract mixin class $UpdateCampaignBankDetailsEventCopyWith<$Res> implements $CampaignEventCopyWith<$Res> {
  factory $UpdateCampaignBankDetailsEventCopyWith(UpdateCampaignBankDetailsEvent value, $Res Function(UpdateCampaignBankDetailsEvent) _then) = _$UpdateCampaignBankDetailsEventCopyWithImpl;
@useResult
$Res call({
 String campaignId, String bankName, String accountNumber, String accountHolder
});




}
/// @nodoc
class _$UpdateCampaignBankDetailsEventCopyWithImpl<$Res>
    implements $UpdateCampaignBankDetailsEventCopyWith<$Res> {
  _$UpdateCampaignBankDetailsEventCopyWithImpl(this._self, this._then);

  final UpdateCampaignBankDetailsEvent _self;
  final $Res Function(UpdateCampaignBankDetailsEvent) _then;

/// Create a copy of CampaignEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? campaignId = null,Object? bankName = null,Object? accountNumber = null,Object? accountHolder = null,}) {
  return _then(UpdateCampaignBankDetailsEvent(
campaignId: null == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String,bankName: null == bankName ? _self.bankName : bankName // ignore: cast_nullable_to_non_nullable
as String,accountNumber: null == accountNumber ? _self.accountNumber : accountNumber // ignore: cast_nullable_to_non_nullable
as String,accountHolder: null == accountHolder ? _self.accountHolder : accountHolder // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ProcessDonationEvent implements CampaignEvent {
  const ProcessDonationEvent({required this.campaignId, required this.userId, required this.amount, this.message, this.isAnonymous = false});
  

 final  String campaignId;
 final  String userId;
 final  double amount;
 final  String? message;
@JsonKey() final  bool isAnonymous;

/// Create a copy of CampaignEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProcessDonationEventCopyWith<ProcessDonationEvent> get copyWith => _$ProcessDonationEventCopyWithImpl<ProcessDonationEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProcessDonationEvent&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.message, message) || other.message == message)&&(identical(other.isAnonymous, isAnonymous) || other.isAnonymous == isAnonymous));
}


@override
int get hashCode => Object.hash(runtimeType,campaignId,userId,amount,message,isAnonymous);

@override
String toString() {
  return 'CampaignEvent.processDonation(campaignId: $campaignId, userId: $userId, amount: $amount, message: $message, isAnonymous: $isAnonymous)';
}


}

/// @nodoc
abstract mixin class $ProcessDonationEventCopyWith<$Res> implements $CampaignEventCopyWith<$Res> {
  factory $ProcessDonationEventCopyWith(ProcessDonationEvent value, $Res Function(ProcessDonationEvent) _then) = _$ProcessDonationEventCopyWithImpl;
@useResult
$Res call({
 String campaignId, String userId, double amount, String? message, bool isAnonymous
});




}
/// @nodoc
class _$ProcessDonationEventCopyWithImpl<$Res>
    implements $ProcessDonationEventCopyWith<$Res> {
  _$ProcessDonationEventCopyWithImpl(this._self, this._then);

  final ProcessDonationEvent _self;
  final $Res Function(ProcessDonationEvent) _then;

/// Create a copy of CampaignEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? campaignId = null,Object? userId = null,Object? amount = null,Object? message = freezed,Object? isAnonymous = null,}) {
  return _then(ProcessDonationEvent(
campaignId: null == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,isAnonymous: null == isAnonymous ? _self.isAnonymous : isAnonymous // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class ClearCampaignTransientEvent implements CampaignEvent {
  const ClearCampaignTransientEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClearCampaignTransientEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CampaignEvent.clearTransient()';
}


}




// dart format on
