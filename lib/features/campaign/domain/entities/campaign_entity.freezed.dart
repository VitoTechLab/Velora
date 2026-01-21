// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaign_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CampaignEntity {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String? get categoryId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String? get coverImageUrl => throw _privateConstructorUsedError;
  double get targetAmount => throw _privateConstructorUsedError;
  double get amountRaised => throw _privateConstructorUsedError;
  double get currentBalance => throw _privateConstructorUsedError;
  int get donorCount => throw _privateConstructorUsedError;
  CampaignStatus get status => throw _privateConstructorUsedError;
  bool get isVerified => throw _privateConstructorUsedError;
  String? get locationCity => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  DateTime? get completedAt =>
      throw _privateConstructorUsedError; // Joined from user_profiles (read-only)
  String? get organizerUsername => throw _privateConstructorUsedError;
  String? get organizerAvatarUrl =>
      throw _privateConstructorUsedError; // Joined from campaign_categories (read-only)
  String? get categoryName => throw _privateConstructorUsedError;
  String? get categorySlug => throw _privateConstructorUsedError;

  /// Create a copy of CampaignEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CampaignEntityCopyWith<CampaignEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CampaignEntityCopyWith<$Res> {
  factory $CampaignEntityCopyWith(
          CampaignEntity value, $Res Function(CampaignEntity) then) =
      _$CampaignEntityCopyWithImpl<$Res, CampaignEntity>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String? categoryId,
      String title,
      String description,
      String? coverImageUrl,
      double targetAmount,
      double amountRaised,
      double currentBalance,
      int donorCount,
      CampaignStatus status,
      bool isVerified,
      String? locationCity,
      DateTime? endDate,
      DateTime createdAt,
      DateTime? updatedAt,
      DateTime? completedAt,
      String? organizerUsername,
      String? organizerAvatarUrl,
      String? categoryName,
      String? categorySlug});
}

/// @nodoc
class _$CampaignEntityCopyWithImpl<$Res, $Val extends CampaignEntity>
    implements $CampaignEntityCopyWith<$Res> {
  _$CampaignEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CampaignEntity
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
              as CampaignStatus,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CampaignEntityImplCopyWith<$Res>
    implements $CampaignEntityCopyWith<$Res> {
  factory _$$CampaignEntityImplCopyWith(_$CampaignEntityImpl value,
          $Res Function(_$CampaignEntityImpl) then) =
      __$$CampaignEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String? categoryId,
      String title,
      String description,
      String? coverImageUrl,
      double targetAmount,
      double amountRaised,
      double currentBalance,
      int donorCount,
      CampaignStatus status,
      bool isVerified,
      String? locationCity,
      DateTime? endDate,
      DateTime createdAt,
      DateTime? updatedAt,
      DateTime? completedAt,
      String? organizerUsername,
      String? organizerAvatarUrl,
      String? categoryName,
      String? categorySlug});
}

/// @nodoc
class __$$CampaignEntityImplCopyWithImpl<$Res>
    extends _$CampaignEntityCopyWithImpl<$Res, _$CampaignEntityImpl>
    implements _$$CampaignEntityImplCopyWith<$Res> {
  __$$CampaignEntityImplCopyWithImpl(
      _$CampaignEntityImpl _value, $Res Function(_$CampaignEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of CampaignEntity
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
  }) {
    return _then(_$CampaignEntityImpl(
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
              as CampaignStatus,
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
    ));
  }
}

/// @nodoc

class _$CampaignEntityImpl extends _CampaignEntity {
  const _$CampaignEntityImpl(
      {required this.id,
      required this.userId,
      this.categoryId,
      required this.title,
      required this.description,
      this.coverImageUrl,
      required this.targetAmount,
      this.amountRaised = 0,
      this.currentBalance = 0,
      this.donorCount = 0,
      this.status = CampaignStatus.active,
      this.isVerified = false,
      this.locationCity,
      this.endDate,
      required this.createdAt,
      this.updatedAt,
      this.completedAt,
      this.organizerUsername,
      this.organizerAvatarUrl,
      this.categoryName,
      this.categorySlug})
      : super._();

  @override
  final String id;
  @override
  final String userId;
  @override
  final String? categoryId;
  @override
  final String title;
  @override
  final String description;
  @override
  final String? coverImageUrl;
  @override
  final double targetAmount;
  @override
  @JsonKey()
  final double amountRaised;
  @override
  @JsonKey()
  final double currentBalance;
  @override
  @JsonKey()
  final int donorCount;
  @override
  @JsonKey()
  final CampaignStatus status;
  @override
  @JsonKey()
  final bool isVerified;
  @override
  final String? locationCity;
  @override
  final DateTime? endDate;
  @override
  final DateTime createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? completedAt;
// Joined from user_profiles (read-only)
  @override
  final String? organizerUsername;
  @override
  final String? organizerAvatarUrl;
// Joined from campaign_categories (read-only)
  @override
  final String? categoryName;
  @override
  final String? categorySlug;

  @override
  String toString() {
    return 'CampaignEntity(id: $id, userId: $userId, categoryId: $categoryId, title: $title, description: $description, coverImageUrl: $coverImageUrl, targetAmount: $targetAmount, amountRaised: $amountRaised, currentBalance: $currentBalance, donorCount: $donorCount, status: $status, isVerified: $isVerified, locationCity: $locationCity, endDate: $endDate, createdAt: $createdAt, updatedAt: $updatedAt, completedAt: $completedAt, organizerUsername: $organizerUsername, organizerAvatarUrl: $organizerAvatarUrl, categoryName: $categoryName, categorySlug: $categorySlug)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CampaignEntityImpl &&
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
                other.categorySlug == categorySlug));
  }

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
        categorySlug
      ]);

  /// Create a copy of CampaignEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CampaignEntityImplCopyWith<_$CampaignEntityImpl> get copyWith =>
      __$$CampaignEntityImplCopyWithImpl<_$CampaignEntityImpl>(
          this, _$identity);
}

abstract class _CampaignEntity extends CampaignEntity {
  const factory _CampaignEntity(
      {required final String id,
      required final String userId,
      final String? categoryId,
      required final String title,
      required final String description,
      final String? coverImageUrl,
      required final double targetAmount,
      final double amountRaised,
      final double currentBalance,
      final int donorCount,
      final CampaignStatus status,
      final bool isVerified,
      final String? locationCity,
      final DateTime? endDate,
      required final DateTime createdAt,
      final DateTime? updatedAt,
      final DateTime? completedAt,
      final String? organizerUsername,
      final String? organizerAvatarUrl,
      final String? categoryName,
      final String? categorySlug}) = _$CampaignEntityImpl;
  const _CampaignEntity._() : super._();

  @override
  String get id;
  @override
  String get userId;
  @override
  String? get categoryId;
  @override
  String get title;
  @override
  String get description;
  @override
  String? get coverImageUrl;
  @override
  double get targetAmount;
  @override
  double get amountRaised;
  @override
  double get currentBalance;
  @override
  int get donorCount;
  @override
  CampaignStatus get status;
  @override
  bool get isVerified;
  @override
  String? get locationCity;
  @override
  DateTime? get endDate;
  @override
  DateTime get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  DateTime? get completedAt; // Joined from user_profiles (read-only)
  @override
  String? get organizerUsername;
  @override
  String? get organizerAvatarUrl; // Joined from campaign_categories (read-only)
  @override
  String? get categoryName;
  @override
  String? get categorySlug;

  /// Create a copy of CampaignEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CampaignEntityImplCopyWith<_$CampaignEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
