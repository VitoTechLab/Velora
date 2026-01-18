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
  String? get errorWithdrawal =>
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
      List<DonationEntity> donations,
      bool isLoadingDonations,
      String? errorDonations,
      List<CampaignCommentEntity> comments,
      bool isLoadingComments,
      String? errorComments,
      List<WithdrawalEntity> withdrawals,
      bool isLoadingWithdrawals,
      String? errorWithdrawals,
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
    Object? donations = null,
    Object? isLoadingDonations = null,
    Object? errorDonations = freezed,
    Object? comments = null,
    Object? isLoadingComments = null,
    Object? errorComments = freezed,
    Object? withdrawals = null,
    Object? isLoadingWithdrawals = null,
    Object? errorWithdrawals = freezed,
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
      List<DonationEntity> donations,
      bool isLoadingDonations,
      String? errorDonations,
      List<CampaignCommentEntity> comments,
      bool isLoadingComments,
      String? errorComments,
      List<WithdrawalEntity> withdrawals,
      bool isLoadingWithdrawals,
      String? errorWithdrawals,
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
    Object? donations = null,
    Object? isLoadingDonations = null,
    Object? errorDonations = freezed,
    Object? comments = null,
    Object? isLoadingComments = null,
    Object? errorComments = freezed,
    Object? withdrawals = null,
    Object? isLoadingWithdrawals = null,
    Object? errorWithdrawals = freezed,
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
      this.message})
      : _campaigns = campaigns,
        _categories = categories,
        _donations = donations,
        _comments = comments,
        _withdrawals = withdrawals;

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
// Generic UI message
  @override
  final String? message;

  @override
  String toString() {
    return 'CampaignState(campaigns: $campaigns, isLoadingCampaigns: $isLoadingCampaigns, isRefreshingCampaigns: $isRefreshingCampaigns, errorCampaigns: $errorCampaigns, selectedCampaign: $selectedCampaign, isLoadingCampaignDetail: $isLoadingCampaignDetail, errorCampaignDetail: $errorCampaignDetail, categories: $categories, isLoadingCategories: $isLoadingCategories, errorCategories: $errorCategories, donations: $donations, isLoadingDonations: $isLoadingDonations, errorDonations: $errorDonations, comments: $comments, isLoadingComments: $isLoadingComments, errorComments: $errorComments, withdrawals: $withdrawals, isLoadingWithdrawals: $isLoadingWithdrawals, errorWithdrawals: $errorWithdrawals, isCreatingCampaign: $isCreatingCampaign, errorCreateCampaign: $errorCreateCampaign, isUpdatingCampaign: $isUpdatingCampaign, errorUpdateCampaign: $errorUpdateCampaign, isDeletingCampaign: $isDeletingCampaign, errorDeleteCampaign: $errorDeleteCampaign, isPerformingDonation: $isPerformingDonation, errorDonation: $errorDonation, isRequestingWithdrawal: $isRequestingWithdrawal, errorWithdrawal: $errorWithdrawal, message: $message)';
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
            (identical(
                    other.isLoadingCampaignDetail, isLoadingCampaignDetail) ||
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
            (identical(other.isCreatingCampaign, isCreatingCampaign) ||
                other.isCreatingCampaign == isCreatingCampaign) &&
            (identical(other.errorCreateCampaign, errorCreateCampaign) ||
                other.errorCreateCampaign == errorCreateCampaign) &&
            (identical(other.isUpdatingCampaign, isUpdatingCampaign) ||
                other.isUpdatingCampaign == isUpdatingCampaign) &&
            (identical(other.errorUpdateCampaign, errorUpdateCampaign) ||
                other.errorUpdateCampaign == errorUpdateCampaign) &&
            (identical(other.isDeletingCampaign, isDeletingCampaign) ||
                other.isDeletingCampaign == isDeletingCampaign) &&
            (identical(other.errorDeleteCampaign, errorDeleteCampaign) ||
                other.errorDeleteCampaign == errorDeleteCampaign) &&
            (identical(other.isPerformingDonation, isPerformingDonation) ||
                other.isPerformingDonation == isPerformingDonation) &&
            (identical(other.errorDonation, errorDonation) ||
                other.errorDonation == errorDonation) &&
            (identical(other.isRequestingWithdrawal, isRequestingWithdrawal) ||
                other.isRequestingWithdrawal == isRequestingWithdrawal) &&
            (identical(other.errorWithdrawal, errorWithdrawal) ||
                other.errorWithdrawal == errorWithdrawal) &&
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
        const DeepCollectionEquality().hash(_donations),
        isLoadingDonations,
        errorDonations,
        const DeepCollectionEquality().hash(_comments),
        isLoadingComments,
        errorComments,
        const DeepCollectionEquality().hash(_withdrawals),
        isLoadingWithdrawals,
        errorWithdrawals,
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
      final List<DonationEntity> donations,
      final bool isLoadingDonations,
      final String? errorDonations,
      final List<CampaignCommentEntity> comments,
      final bool isLoadingComments,
      final String? errorComments,
      final List<WithdrawalEntity> withdrawals,
      final bool isLoadingWithdrawals,
      final String? errorWithdrawals,
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
  String? get errorCategories; // Donations for current campaign
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
  String? get errorWithdrawals; // Mutating operations
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
  String? get errorWithdrawal; // Generic UI message
  @override
  String? get message;

  /// Create a copy of CampaignState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CampaignStateImplCopyWith<_$CampaignStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
