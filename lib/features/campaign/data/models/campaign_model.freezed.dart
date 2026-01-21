// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaign_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CampaignModel _$CampaignModelFromJson(Map<String, dynamic> json) {
  return _CampaignModel.fromJson(json);
}

/// @nodoc
mixin _$CampaignModel {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  String? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'cover_image_url')
  String? get coverImageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'target_amount')
  double get targetAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount_raised')
  double get amountRaised => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_balance')
  double get currentBalance => throw _privateConstructorUsedError;
  @JsonKey(name: 'donor_count')
  int get donorCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_verified')
  bool get isVerified => throw _privateConstructorUsedError;
  @JsonKey(name: 'location_city')
  String? get locationCity => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  DateTime? get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'completed_at')
  DateTime? get completedAt =>
      throw _privateConstructorUsedError; // Joined from user_profiles (read-only)
  @JsonKey(name: 'organizer_username')
  String? get organizerUsername => throw _privateConstructorUsedError;
  @JsonKey(name: 'organizer_avatar_url')
  String? get organizerAvatarUrl =>
      throw _privateConstructorUsedError; // Joined from campaign_categories (read-only)
  @JsonKey(name: 'category_name')
  String? get categoryName => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_slug')
  String? get categorySlug =>
      throw _privateConstructorUsedError; // Bank details for withdrawal processing
  @JsonKey(name: 'withdrawal_bank_name')
  String? get withdrawalBankName => throw _privateConstructorUsedError;
  @JsonKey(name: 'withdrawal_account_number')
  String? get withdrawalAccountNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'withdrawal_account_holder')
  String? get withdrawalAccountHolder => throw _privateConstructorUsedError;

  /// Serializes this CampaignModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CampaignModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CampaignModelCopyWith<CampaignModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CampaignModelCopyWith<$Res> {
  factory $CampaignModelCopyWith(
          CampaignModel value, $Res Function(CampaignModel) then) =
      _$CampaignModelCopyWithImpl<$Res, CampaignModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'category_id') String? categoryId,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'cover_image_url') String? coverImageUrl,
      @JsonKey(name: 'target_amount') double targetAmount,
      @JsonKey(name: 'amount_raised') double amountRaised,
      @JsonKey(name: 'current_balance') double currentBalance,
      @JsonKey(name: 'donor_count') int donorCount,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'is_verified') bool isVerified,
      @JsonKey(name: 'location_city') String? locationCity,
      @JsonKey(name: 'end_date') DateTime? endDate,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'completed_at') DateTime? completedAt,
      @JsonKey(name: 'organizer_username') String? organizerUsername,
      @JsonKey(name: 'organizer_avatar_url') String? organizerAvatarUrl,
      @JsonKey(name: 'category_name') String? categoryName,
      @JsonKey(name: 'category_slug') String? categorySlug,
      @JsonKey(name: 'withdrawal_bank_name') String? withdrawalBankName,
      @JsonKey(name: 'withdrawal_account_number')
      String? withdrawalAccountNumber,
      @JsonKey(name: 'withdrawal_account_holder')
      String? withdrawalAccountHolder});
}

/// @nodoc
class _$CampaignModelCopyWithImpl<$Res, $Val extends CampaignModel>
    implements $CampaignModelCopyWith<$Res> {
  _$CampaignModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CampaignModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? categoryId = freezed,
    Object? title = null,
    Object? description = null,
    Object? coverImageUrl = freezed,
    Object? targetAmount = null,
    Object? amountRaised = null,
    Object? currentBalance = null,
    Object? donorCount = null,
    Object? status = null,
    Object? isVerified = null,
    Object? locationCity = freezed,
    Object? endDate = freezed,
    Object? createdAt = null,
    Object? updatedAt = freezed,
    Object? completedAt = freezed,
    Object? organizerUsername = freezed,
    Object? organizerAvatarUrl = freezed,
    Object? categoryName = freezed,
    Object? categorySlug = freezed,
    Object? withdrawalBankName = freezed,
    Object? withdrawalAccountNumber = freezed,
    Object? withdrawalAccountHolder = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      coverImageUrl: freezed == coverImageUrl
          ? _value.coverImageUrl
          : coverImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      targetAmount: null == targetAmount
          ? _value.targetAmount
          : targetAmount // ignore: cast_nullable_to_non_nullable
              as double,
      amountRaised: null == amountRaised
          ? _value.amountRaised
          : amountRaised // ignore: cast_nullable_to_non_nullable
              as double,
      currentBalance: null == currentBalance
          ? _value.currentBalance
          : currentBalance // ignore: cast_nullable_to_non_nullable
              as double,
      donorCount: null == donorCount
          ? _value.donorCount
          : donorCount // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      locationCity: freezed == locationCity
          ? _value.locationCity
          : locationCity // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      organizerUsername: freezed == organizerUsername
          ? _value.organizerUsername
          : organizerUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      organizerAvatarUrl: freezed == organizerAvatarUrl
          ? _value.organizerAvatarUrl
          : organizerAvatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      categorySlug: freezed == categorySlug
          ? _value.categorySlug
          : categorySlug // ignore: cast_nullable_to_non_nullable
              as String?,
      withdrawalBankName: freezed == withdrawalBankName
          ? _value.withdrawalBankName
          : withdrawalBankName // ignore: cast_nullable_to_non_nullable
              as String?,
      withdrawalAccountNumber: freezed == withdrawalAccountNumber
          ? _value.withdrawalAccountNumber
          : withdrawalAccountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      withdrawalAccountHolder: freezed == withdrawalAccountHolder
          ? _value.withdrawalAccountHolder
          : withdrawalAccountHolder // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CampaignModelImplCopyWith<$Res>
    implements $CampaignModelCopyWith<$Res> {
  factory _$$CampaignModelImplCopyWith(
          _$CampaignModelImpl value, $Res Function(_$CampaignModelImpl) then) =
      __$$CampaignModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'category_id') String? categoryId,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'cover_image_url') String? coverImageUrl,
      @JsonKey(name: 'target_amount') double targetAmount,
      @JsonKey(name: 'amount_raised') double amountRaised,
      @JsonKey(name: 'current_balance') double currentBalance,
      @JsonKey(name: 'donor_count') int donorCount,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'is_verified') bool isVerified,
      @JsonKey(name: 'location_city') String? locationCity,
      @JsonKey(name: 'end_date') DateTime? endDate,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'completed_at') DateTime? completedAt,
      @JsonKey(name: 'organizer_username') String? organizerUsername,
      @JsonKey(name: 'organizer_avatar_url') String? organizerAvatarUrl,
      @JsonKey(name: 'category_name') String? categoryName,
      @JsonKey(name: 'category_slug') String? categorySlug,
      @JsonKey(name: 'withdrawal_bank_name') String? withdrawalBankName,
      @JsonKey(name: 'withdrawal_account_number')
      String? withdrawalAccountNumber,
      @JsonKey(name: 'withdrawal_account_holder')
      String? withdrawalAccountHolder});
}

/// @nodoc
class __$$CampaignModelImplCopyWithImpl<$Res>
    extends _$CampaignModelCopyWithImpl<$Res, _$CampaignModelImpl>
    implements _$$CampaignModelImplCopyWith<$Res> {
  __$$CampaignModelImplCopyWithImpl(
      _$CampaignModelImpl _value, $Res Function(_$CampaignModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CampaignModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? categoryId = freezed,
    Object? title = null,
    Object? description = null,
    Object? coverImageUrl = freezed,
    Object? targetAmount = null,
    Object? amountRaised = null,
    Object? currentBalance = null,
    Object? donorCount = null,
    Object? status = null,
    Object? isVerified = null,
    Object? locationCity = freezed,
    Object? endDate = freezed,
    Object? createdAt = null,
    Object? updatedAt = freezed,
    Object? completedAt = freezed,
    Object? organizerUsername = freezed,
    Object? organizerAvatarUrl = freezed,
    Object? categoryName = freezed,
    Object? categorySlug = freezed,
    Object? withdrawalBankName = freezed,
    Object? withdrawalAccountNumber = freezed,
    Object? withdrawalAccountHolder = freezed,
  }) {
    return _then(_$CampaignModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      coverImageUrl: freezed == coverImageUrl
          ? _value.coverImageUrl
          : coverImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      targetAmount: null == targetAmount
          ? _value.targetAmount
          : targetAmount // ignore: cast_nullable_to_non_nullable
              as double,
      amountRaised: null == amountRaised
          ? _value.amountRaised
          : amountRaised // ignore: cast_nullable_to_non_nullable
              as double,
      currentBalance: null == currentBalance
          ? _value.currentBalance
          : currentBalance // ignore: cast_nullable_to_non_nullable
              as double,
      donorCount: null == donorCount
          ? _value.donorCount
          : donorCount // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      locationCity: freezed == locationCity
          ? _value.locationCity
          : locationCity // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      organizerUsername: freezed == organizerUsername
          ? _value.organizerUsername
          : organizerUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      organizerAvatarUrl: freezed == organizerAvatarUrl
          ? _value.organizerAvatarUrl
          : organizerAvatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      categorySlug: freezed == categorySlug
          ? _value.categorySlug
          : categorySlug // ignore: cast_nullable_to_non_nullable
              as String?,
      withdrawalBankName: freezed == withdrawalBankName
          ? _value.withdrawalBankName
          : withdrawalBankName // ignore: cast_nullable_to_non_nullable
              as String?,
      withdrawalAccountNumber: freezed == withdrawalAccountNumber
          ? _value.withdrawalAccountNumber
          : withdrawalAccountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      withdrawalAccountHolder: freezed == withdrawalAccountHolder
          ? _value.withdrawalAccountHolder
          : withdrawalAccountHolder // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CampaignModelImpl extends _CampaignModel {
  const _$CampaignModelImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'category_id') this.categoryId,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'cover_image_url') this.coverImageUrl,
      @JsonKey(name: 'target_amount') required this.targetAmount,
      @JsonKey(name: 'amount_raised') this.amountRaised = 0,
      @JsonKey(name: 'current_balance') this.currentBalance = 0,
      @JsonKey(name: 'donor_count') this.donorCount = 0,
      @JsonKey(name: 'status') this.status = 'active',
      @JsonKey(name: 'is_verified') this.isVerified = false,
      @JsonKey(name: 'location_city') this.locationCity,
      @JsonKey(name: 'end_date') this.endDate,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'completed_at') this.completedAt,
      @JsonKey(name: 'organizer_username') this.organizerUsername,
      @JsonKey(name: 'organizer_avatar_url') this.organizerAvatarUrl,
      @JsonKey(name: 'category_name') this.categoryName,
      @JsonKey(name: 'category_slug') this.categorySlug,
      @JsonKey(name: 'withdrawal_bank_name') this.withdrawalBankName,
      @JsonKey(name: 'withdrawal_account_number') this.withdrawalAccountNumber,
      @JsonKey(name: 'withdrawal_account_holder') this.withdrawalAccountHolder})
      : super._();

  factory _$CampaignModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CampaignModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'category_id')
  final String? categoryId;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'cover_image_url')
  final String? coverImageUrl;
  @override
  @JsonKey(name: 'target_amount')
  final double targetAmount;
  @override
  @JsonKey(name: 'amount_raised')
  final double amountRaised;
  @override
  @JsonKey(name: 'current_balance')
  final double currentBalance;
  @override
  @JsonKey(name: 'donor_count')
  final int donorCount;
  @override
  @JsonKey(name: 'status')
  final String status;
  @override
  @JsonKey(name: 'is_verified')
  final bool isVerified;
  @override
  @JsonKey(name: 'location_city')
  final String? locationCity;
  @override
  @JsonKey(name: 'end_date')
  final DateTime? endDate;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'completed_at')
  final DateTime? completedAt;
// Joined from user_profiles (read-only)
  @override
  @JsonKey(name: 'organizer_username')
  final String? organizerUsername;
  @override
  @JsonKey(name: 'organizer_avatar_url')
  final String? organizerAvatarUrl;
// Joined from campaign_categories (read-only)
  @override
  @JsonKey(name: 'category_name')
  final String? categoryName;
  @override
  @JsonKey(name: 'category_slug')
  final String? categorySlug;
// Bank details for withdrawal processing
  @override
  @JsonKey(name: 'withdrawal_bank_name')
  final String? withdrawalBankName;
  @override
  @JsonKey(name: 'withdrawal_account_number')
  final String? withdrawalAccountNumber;
  @override
  @JsonKey(name: 'withdrawal_account_holder')
  final String? withdrawalAccountHolder;

  @override
  String toString() {
    return 'CampaignModel(id: $id, userId: $userId, categoryId: $categoryId, title: $title, description: $description, coverImageUrl: $coverImageUrl, targetAmount: $targetAmount, amountRaised: $amountRaised, currentBalance: $currentBalance, donorCount: $donorCount, status: $status, isVerified: $isVerified, locationCity: $locationCity, endDate: $endDate, createdAt: $createdAt, updatedAt: $updatedAt, completedAt: $completedAt, organizerUsername: $organizerUsername, organizerAvatarUrl: $organizerAvatarUrl, categoryName: $categoryName, categorySlug: $categorySlug, withdrawalBankName: $withdrawalBankName, withdrawalAccountNumber: $withdrawalAccountNumber, withdrawalAccountHolder: $withdrawalAccountHolder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CampaignModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.coverImageUrl, coverImageUrl) ||
                other.coverImageUrl == coverImageUrl) &&
            (identical(other.targetAmount, targetAmount) ||
                other.targetAmount == targetAmount) &&
            (identical(other.amountRaised, amountRaised) ||
                other.amountRaised == amountRaised) &&
            (identical(other.currentBalance, currentBalance) ||
                other.currentBalance == currentBalance) &&
            (identical(other.donorCount, donorCount) ||
                other.donorCount == donorCount) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.locationCity, locationCity) ||
                other.locationCity == locationCity) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            (identical(other.organizerUsername, organizerUsername) ||
                other.organizerUsername == organizerUsername) &&
            (identical(other.organizerAvatarUrl, organizerAvatarUrl) ||
                other.organizerAvatarUrl == organizerAvatarUrl) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.categorySlug, categorySlug) ||
                other.categorySlug == categorySlug) &&
            (identical(other.withdrawalBankName, withdrawalBankName) ||
                other.withdrawalBankName == withdrawalBankName) &&
            (identical(
                    other.withdrawalAccountNumber, withdrawalAccountNumber) ||
                other.withdrawalAccountNumber == withdrawalAccountNumber) &&
            (identical(
                    other.withdrawalAccountHolder, withdrawalAccountHolder) ||
                other.withdrawalAccountHolder == withdrawalAccountHolder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        userId,
        categoryId,
        title,
        description,
        coverImageUrl,
        targetAmount,
        amountRaised,
        currentBalance,
        donorCount,
        status,
        isVerified,
        locationCity,
        endDate,
        createdAt,
        updatedAt,
        completedAt,
        organizerUsername,
        organizerAvatarUrl,
        categoryName,
        categorySlug,
        withdrawalBankName,
        withdrawalAccountNumber,
        withdrawalAccountHolder
      ]);

  /// Create a copy of CampaignModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CampaignModelImplCopyWith<_$CampaignModelImpl> get copyWith =>
      __$$CampaignModelImplCopyWithImpl<_$CampaignModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CampaignModelImplToJson(
      this,
    );
  }
}

abstract class _CampaignModel extends CampaignModel {
  const factory _CampaignModel(
      {@JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'user_id') required final String userId,
      @JsonKey(name: 'category_id') final String? categoryId,
      @JsonKey(name: 'title') required final String title,
      @JsonKey(name: 'description') required final String description,
      @JsonKey(name: 'cover_image_url') final String? coverImageUrl,
      @JsonKey(name: 'target_amount') required final double targetAmount,
      @JsonKey(name: 'amount_raised') final double amountRaised,
      @JsonKey(name: 'current_balance') final double currentBalance,
      @JsonKey(name: 'donor_count') final int donorCount,
      @JsonKey(name: 'status') final String status,
      @JsonKey(name: 'is_verified') final bool isVerified,
      @JsonKey(name: 'location_city') final String? locationCity,
      @JsonKey(name: 'end_date') final DateTime? endDate,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      @JsonKey(name: 'completed_at') final DateTime? completedAt,
      @JsonKey(name: 'organizer_username') final String? organizerUsername,
      @JsonKey(name: 'organizer_avatar_url') final String? organizerAvatarUrl,
      @JsonKey(name: 'category_name') final String? categoryName,
      @JsonKey(name: 'category_slug') final String? categorySlug,
      @JsonKey(name: 'withdrawal_bank_name') final String? withdrawalBankName,
      @JsonKey(name: 'withdrawal_account_number')
      final String? withdrawalAccountNumber,
      @JsonKey(name: 'withdrawal_account_holder')
      final String? withdrawalAccountHolder}) = _$CampaignModelImpl;
  const _CampaignModel._() : super._();

  factory _CampaignModel.fromJson(Map<String, dynamic> json) =
      _$CampaignModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'category_id')
  String? get categoryId;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'cover_image_url')
  String? get coverImageUrl;
  @override
  @JsonKey(name: 'target_amount')
  double get targetAmount;
  @override
  @JsonKey(name: 'amount_raised')
  double get amountRaised;
  @override
  @JsonKey(name: 'current_balance')
  double get currentBalance;
  @override
  @JsonKey(name: 'donor_count')
  int get donorCount;
  @override
  @JsonKey(name: 'status')
  String get status;
  @override
  @JsonKey(name: 'is_verified')
  bool get isVerified;
  @override
  @JsonKey(name: 'location_city')
  String? get locationCity;
  @override
  @JsonKey(name: 'end_date')
  DateTime? get endDate;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'completed_at')
  DateTime? get completedAt; // Joined from user_profiles (read-only)
  @override
  @JsonKey(name: 'organizer_username')
  String? get organizerUsername;
  @override
  @JsonKey(name: 'organizer_avatar_url')
  String? get organizerAvatarUrl; // Joined from campaign_categories (read-only)
  @override
  @JsonKey(name: 'category_name')
  String? get categoryName;
  @override
  @JsonKey(name: 'category_slug')
  String? get categorySlug; // Bank details for withdrawal processing
  @override
  @JsonKey(name: 'withdrawal_bank_name')
  String? get withdrawalBankName;
  @override
  @JsonKey(name: 'withdrawal_account_number')
  String? get withdrawalAccountNumber;
  @override
  @JsonKey(name: 'withdrawal_account_holder')
  String? get withdrawalAccountHolder;

  /// Create a copy of CampaignModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CampaignModelImplCopyWith<_$CampaignModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
