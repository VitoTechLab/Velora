// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'donation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DonationModel _$DonationModelFromJson(Map<String, dynamic> json) {
  return _DonationModel.fromJson(json);
}

/// @nodoc
mixin _$DonationModel {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'campaign_id')
  String get campaignId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount_total')
  double get amountTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'platform_fee_percent')
  double get platformFeePercent => throw _privateConstructorUsedError;
  @JsonKey(name: 'platform_fee_amount')
  double? get platformFeeAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount_net')
  double? get amountNet => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_anonymous')
  bool get isAnonymous => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_status')
  String get paymentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_id')
  String? get paymentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt =>
      throw _privateConstructorUsedError; // Joined from user_profiles (read-only)
  @JsonKey(name: 'donor_username')
  String? get donorUsername => throw _privateConstructorUsedError;
  @JsonKey(name: 'donor_display_name')
  String? get donorDisplayName => throw _privateConstructorUsedError;
  @JsonKey(name: 'donor_avatar_url')
  String? get donorAvatarUrl =>
      throw _privateConstructorUsedError; // Joined from campaigns (read-only)
  @JsonKey(name: 'campaign_title', readValue: _readCampaignTitle)
  String? get campaignTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'campaign_image_url', readValue: _readCampaignImageUrl)
  String? get campaignImageUrl => throw _privateConstructorUsedError;

  /// Serializes this DonationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DonationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DonationModelCopyWith<DonationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DonationModelCopyWith<$Res> {
  factory $DonationModelCopyWith(
          DonationModel value, $Res Function(DonationModel) then) =
      _$DonationModelCopyWithImpl<$Res, DonationModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'campaign_id') String campaignId,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'amount_total') double amountTotal,
      @JsonKey(name: 'platform_fee_percent') double platformFeePercent,
      @JsonKey(name: 'platform_fee_amount') double? platformFeeAmount,
      @JsonKey(name: 'amount_net') double? amountNet,
      @JsonKey(name: 'is_anonymous') bool isAnonymous,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'payment_status') String paymentStatus,
      @JsonKey(name: 'payment_id') String? paymentId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'donor_username') String? donorUsername,
      @JsonKey(name: 'donor_display_name') String? donorDisplayName,
      @JsonKey(name: 'donor_avatar_url') String? donorAvatarUrl,
      @JsonKey(name: 'campaign_title', readValue: _readCampaignTitle)
      String? campaignTitle,
      @JsonKey(name: 'campaign_image_url', readValue: _readCampaignImageUrl)
      String? campaignImageUrl});
}

/// @nodoc
class _$DonationModelCopyWithImpl<$Res, $Val extends DonationModel>
    implements $DonationModelCopyWith<$Res> {
  _$DonationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DonationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? campaignId = null,
    Object? userId = null,
    Object? amountTotal = null,
    Object? platformFeePercent = null,
    Object? platformFeeAmount = freezed,
    Object? amountNet = freezed,
    Object? isAnonymous = null,
    Object? message = freezed,
    Object? paymentStatus = null,
    Object? paymentId = freezed,
    Object? createdAt = null,
    Object? donorUsername = freezed,
    Object? donorDisplayName = freezed,
    Object? donorAvatarUrl = freezed,
    Object? campaignTitle = freezed,
    Object? campaignImageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      campaignId: null == campaignId
          ? _value.campaignId
          : campaignId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      amountTotal: null == amountTotal
          ? _value.amountTotal
          : amountTotal // ignore: cast_nullable_to_non_nullable
              as double,
      platformFeePercent: null == platformFeePercent
          ? _value.platformFeePercent
          : platformFeePercent // ignore: cast_nullable_to_non_nullable
              as double,
      platformFeeAmount: freezed == platformFeeAmount
          ? _value.platformFeeAmount
          : platformFeeAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      amountNet: freezed == amountNet
          ? _value.amountNet
          : amountNet // ignore: cast_nullable_to_non_nullable
              as double?,
      isAnonymous: null == isAnonymous
          ? _value.isAnonymous
          : isAnonymous // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      donorUsername: freezed == donorUsername
          ? _value.donorUsername
          : donorUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      donorDisplayName: freezed == donorDisplayName
          ? _value.donorDisplayName
          : donorDisplayName // ignore: cast_nullable_to_non_nullable
              as String?,
      donorAvatarUrl: freezed == donorAvatarUrl
          ? _value.donorAvatarUrl
          : donorAvatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      campaignTitle: freezed == campaignTitle
          ? _value.campaignTitle
          : campaignTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      campaignImageUrl: freezed == campaignImageUrl
          ? _value.campaignImageUrl
          : campaignImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DonationModelImplCopyWith<$Res>
    implements $DonationModelCopyWith<$Res> {
  factory _$$DonationModelImplCopyWith(
          _$DonationModelImpl value, $Res Function(_$DonationModelImpl) then) =
      __$$DonationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'campaign_id') String campaignId,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'amount_total') double amountTotal,
      @JsonKey(name: 'platform_fee_percent') double platformFeePercent,
      @JsonKey(name: 'platform_fee_amount') double? platformFeeAmount,
      @JsonKey(name: 'amount_net') double? amountNet,
      @JsonKey(name: 'is_anonymous') bool isAnonymous,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'payment_status') String paymentStatus,
      @JsonKey(name: 'payment_id') String? paymentId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'donor_username') String? donorUsername,
      @JsonKey(name: 'donor_display_name') String? donorDisplayName,
      @JsonKey(name: 'donor_avatar_url') String? donorAvatarUrl,
      @JsonKey(name: 'campaign_title', readValue: _readCampaignTitle)
      String? campaignTitle,
      @JsonKey(name: 'campaign_image_url', readValue: _readCampaignImageUrl)
      String? campaignImageUrl});
}

/// @nodoc
class __$$DonationModelImplCopyWithImpl<$Res>
    extends _$DonationModelCopyWithImpl<$Res, _$DonationModelImpl>
    implements _$$DonationModelImplCopyWith<$Res> {
  __$$DonationModelImplCopyWithImpl(
      _$DonationModelImpl _value, $Res Function(_$DonationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DonationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? campaignId = null,
    Object? userId = null,
    Object? amountTotal = null,
    Object? platformFeePercent = null,
    Object? platformFeeAmount = freezed,
    Object? amountNet = freezed,
    Object? isAnonymous = null,
    Object? message = freezed,
    Object? paymentStatus = null,
    Object? paymentId = freezed,
    Object? createdAt = null,
    Object? donorUsername = freezed,
    Object? donorDisplayName = freezed,
    Object? donorAvatarUrl = freezed,
    Object? campaignTitle = freezed,
    Object? campaignImageUrl = freezed,
  }) {
    return _then(_$DonationModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      campaignId: null == campaignId
          ? _value.campaignId
          : campaignId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      amountTotal: null == amountTotal
          ? _value.amountTotal
          : amountTotal // ignore: cast_nullable_to_non_nullable
              as double,
      platformFeePercent: null == platformFeePercent
          ? _value.platformFeePercent
          : platformFeePercent // ignore: cast_nullable_to_non_nullable
              as double,
      platformFeeAmount: freezed == platformFeeAmount
          ? _value.platformFeeAmount
          : platformFeeAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      amountNet: freezed == amountNet
          ? _value.amountNet
          : amountNet // ignore: cast_nullable_to_non_nullable
              as double?,
      isAnonymous: null == isAnonymous
          ? _value.isAnonymous
          : isAnonymous // ignore: cast_nullable_to_non_nullable
              as bool,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      donorUsername: freezed == donorUsername
          ? _value.donorUsername
          : donorUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      donorDisplayName: freezed == donorDisplayName
          ? _value.donorDisplayName
          : donorDisplayName // ignore: cast_nullable_to_non_nullable
              as String?,
      donorAvatarUrl: freezed == donorAvatarUrl
          ? _value.donorAvatarUrl
          : donorAvatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      campaignTitle: freezed == campaignTitle
          ? _value.campaignTitle
          : campaignTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      campaignImageUrl: freezed == campaignImageUrl
          ? _value.campaignImageUrl
          : campaignImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DonationModelImpl extends _DonationModel {
  const _$DonationModelImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'campaign_id') required this.campaignId,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'amount_total') required this.amountTotal,
      @JsonKey(name: 'platform_fee_percent') this.platformFeePercent = 0,
      @JsonKey(name: 'platform_fee_amount') this.platformFeeAmount,
      @JsonKey(name: 'amount_net') this.amountNet,
      @JsonKey(name: 'is_anonymous') this.isAnonymous = false,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'payment_status') this.paymentStatus = 'pending',
      @JsonKey(name: 'payment_id') this.paymentId,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'donor_username') this.donorUsername,
      @JsonKey(name: 'donor_display_name') this.donorDisplayName,
      @JsonKey(name: 'donor_avatar_url') this.donorAvatarUrl,
      @JsonKey(name: 'campaign_title', readValue: _readCampaignTitle)
      this.campaignTitle,
      @JsonKey(name: 'campaign_image_url', readValue: _readCampaignImageUrl)
      this.campaignImageUrl})
      : super._();

  factory _$DonationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DonationModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'campaign_id')
  final String campaignId;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'amount_total')
  final double amountTotal;
  @override
  @JsonKey(name: 'platform_fee_percent')
  final double platformFeePercent;
  @override
  @JsonKey(name: 'platform_fee_amount')
  final double? platformFeeAmount;
  @override
  @JsonKey(name: 'amount_net')
  final double? amountNet;
  @override
  @JsonKey(name: 'is_anonymous')
  final bool isAnonymous;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'payment_status')
  final String paymentStatus;
  @override
  @JsonKey(name: 'payment_id')
  final String? paymentId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
// Joined from user_profiles (read-only)
  @override
  @JsonKey(name: 'donor_username')
  final String? donorUsername;
  @override
  @JsonKey(name: 'donor_display_name')
  final String? donorDisplayName;
  @override
  @JsonKey(name: 'donor_avatar_url')
  final String? donorAvatarUrl;
// Joined from campaigns (read-only)
  @override
  @JsonKey(name: 'campaign_title', readValue: _readCampaignTitle)
  final String? campaignTitle;
  @override
  @JsonKey(name: 'campaign_image_url', readValue: _readCampaignImageUrl)
  final String? campaignImageUrl;

  @override
  String toString() {
    return 'DonationModel(id: $id, campaignId: $campaignId, userId: $userId, amountTotal: $amountTotal, platformFeePercent: $platformFeePercent, platformFeeAmount: $platformFeeAmount, amountNet: $amountNet, isAnonymous: $isAnonymous, message: $message, paymentStatus: $paymentStatus, paymentId: $paymentId, createdAt: $createdAt, donorUsername: $donorUsername, donorDisplayName: $donorDisplayName, donorAvatarUrl: $donorAvatarUrl, campaignTitle: $campaignTitle, campaignImageUrl: $campaignImageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DonationModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.campaignId, campaignId) ||
                other.campaignId == campaignId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.amountTotal, amountTotal) ||
                other.amountTotal == amountTotal) &&
            (identical(other.platformFeePercent, platformFeePercent) ||
                other.platformFeePercent == platformFeePercent) &&
            (identical(other.platformFeeAmount, platformFeeAmount) ||
                other.platformFeeAmount == platformFeeAmount) &&
            (identical(other.amountNet, amountNet) ||
                other.amountNet == amountNet) &&
            (identical(other.isAnonymous, isAnonymous) ||
                other.isAnonymous == isAnonymous) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.donorUsername, donorUsername) ||
                other.donorUsername == donorUsername) &&
            (identical(other.donorDisplayName, donorDisplayName) ||
                other.donorDisplayName == donorDisplayName) &&
            (identical(other.donorAvatarUrl, donorAvatarUrl) ||
                other.donorAvatarUrl == donorAvatarUrl) &&
            (identical(other.campaignTitle, campaignTitle) ||
                other.campaignTitle == campaignTitle) &&
            (identical(other.campaignImageUrl, campaignImageUrl) ||
                other.campaignImageUrl == campaignImageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      campaignId,
      userId,
      amountTotal,
      platformFeePercent,
      platformFeeAmount,
      amountNet,
      isAnonymous,
      message,
      paymentStatus,
      paymentId,
      createdAt,
      donorUsername,
      donorDisplayName,
      donorAvatarUrl,
      campaignTitle,
      campaignImageUrl);

  /// Create a copy of DonationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DonationModelImplCopyWith<_$DonationModelImpl> get copyWith =>
      __$$DonationModelImplCopyWithImpl<_$DonationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DonationModelImplToJson(
      this,
    );
  }
}

abstract class _DonationModel extends DonationModel {
  const factory _DonationModel(
      {@JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'campaign_id') required final String campaignId,
      @JsonKey(name: 'user_id') required final String userId,
      @JsonKey(name: 'amount_total') required final double amountTotal,
      @JsonKey(name: 'platform_fee_percent') final double platformFeePercent,
      @JsonKey(name: 'platform_fee_amount') final double? platformFeeAmount,
      @JsonKey(name: 'amount_net') final double? amountNet,
      @JsonKey(name: 'is_anonymous') final bool isAnonymous,
      @JsonKey(name: 'message') final String? message,
      @JsonKey(name: 'payment_status') final String paymentStatus,
      @JsonKey(name: 'payment_id') final String? paymentId,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'donor_username') final String? donorUsername,
      @JsonKey(name: 'donor_display_name') final String? donorDisplayName,
      @JsonKey(name: 'donor_avatar_url') final String? donorAvatarUrl,
      @JsonKey(name: 'campaign_title', readValue: _readCampaignTitle)
      final String? campaignTitle,
      @JsonKey(name: 'campaign_image_url', readValue: _readCampaignImageUrl)
      final String? campaignImageUrl}) = _$DonationModelImpl;
  const _DonationModel._() : super._();

  factory _DonationModel.fromJson(Map<String, dynamic> json) =
      _$DonationModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'campaign_id')
  String get campaignId;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'amount_total')
  double get amountTotal;
  @override
  @JsonKey(name: 'platform_fee_percent')
  double get platformFeePercent;
  @override
  @JsonKey(name: 'platform_fee_amount')
  double? get platformFeeAmount;
  @override
  @JsonKey(name: 'amount_net')
  double? get amountNet;
  @override
  @JsonKey(name: 'is_anonymous')
  bool get isAnonymous;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'payment_status')
  String get paymentStatus;
  @override
  @JsonKey(name: 'payment_id')
  String? get paymentId;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt; // Joined from user_profiles (read-only)
  @override
  @JsonKey(name: 'donor_username')
  String? get donorUsername;
  @override
  @JsonKey(name: 'donor_display_name')
  String? get donorDisplayName;
  @override
  @JsonKey(name: 'donor_avatar_url')
  String? get donorAvatarUrl; // Joined from campaigns (read-only)
  @override
  @JsonKey(name: 'campaign_title', readValue: _readCampaignTitle)
  String? get campaignTitle;
  @override
  @JsonKey(name: 'campaign_image_url', readValue: _readCampaignImageUrl)
  String? get campaignImageUrl;

  /// Create a copy of DonationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DonationModelImplCopyWith<_$DonationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
