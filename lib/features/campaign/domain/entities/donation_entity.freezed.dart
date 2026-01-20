// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'donation_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DonationEntity {
  String get id => throw _privateConstructorUsedError;
  String get campaignId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  double get amountTotal => throw _privateConstructorUsedError;
  double get platformFeePercent => throw _privateConstructorUsedError;
  double? get platformFeeAmount => throw _privateConstructorUsedError;
  double? get amountNet => throw _privateConstructorUsedError;
  bool get isAnonymous => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  PaymentStatus get paymentStatus => throw _privateConstructorUsedError;
  String? get paymentId => throw _privateConstructorUsedError;
  DateTime get createdAt =>
      throw _privateConstructorUsedError; // Joined from user_profiles (read-only)
  String? get donorUsername => throw _privateConstructorUsedError;
  String? get donorDisplayName => throw _privateConstructorUsedError;
  String? get donorAvatarUrl => throw _privateConstructorUsedError;

  /// Create a copy of DonationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DonationEntityCopyWith<DonationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DonationEntityCopyWith<$Res> {
  factory $DonationEntityCopyWith(
          DonationEntity value, $Res Function(DonationEntity) then) =
      _$DonationEntityCopyWithImpl<$Res, DonationEntity>;
  @useResult
  $Res call(
      {String id,
      String campaignId,
      String userId,
      double amountTotal,
      double platformFeePercent,
      double? platformFeeAmount,
      double? amountNet,
      bool isAnonymous,
      String? message,
      PaymentStatus paymentStatus,
      String? paymentId,
      DateTime createdAt,
      String? donorUsername,
      String? donorDisplayName,
      String? donorAvatarUrl});
}

/// @nodoc
class _$DonationEntityCopyWithImpl<$Res, $Val extends DonationEntity>
    implements $DonationEntityCopyWith<$Res> {
  _$DonationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DonationEntity
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
              as PaymentStatus,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DonationEntityImplCopyWith<$Res>
    implements $DonationEntityCopyWith<$Res> {
  factory _$$DonationEntityImplCopyWith(_$DonationEntityImpl value,
          $Res Function(_$DonationEntityImpl) then) =
      __$$DonationEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String campaignId,
      String userId,
      double amountTotal,
      double platformFeePercent,
      double? platformFeeAmount,
      double? amountNet,
      bool isAnonymous,
      String? message,
      PaymentStatus paymentStatus,
      String? paymentId,
      DateTime createdAt,
      String? donorUsername,
      String? donorDisplayName,
      String? donorAvatarUrl});
}

/// @nodoc
class __$$DonationEntityImplCopyWithImpl<$Res>
    extends _$DonationEntityCopyWithImpl<$Res, _$DonationEntityImpl>
    implements _$$DonationEntityImplCopyWith<$Res> {
  __$$DonationEntityImplCopyWithImpl(
      _$DonationEntityImpl _value, $Res Function(_$DonationEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of DonationEntity
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
  }) {
    return _then(_$DonationEntityImpl(
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
              as PaymentStatus,
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
    ));
  }
}

/// @nodoc

class _$DonationEntityImpl implements _DonationEntity {
  const _$DonationEntityImpl(
      {required this.id,
      required this.campaignId,
      required this.userId,
      required this.amountTotal,
      this.platformFeePercent = 0,
      this.platformFeeAmount,
      this.amountNet,
      this.isAnonymous = false,
      this.message,
      this.paymentStatus = PaymentStatus.pending,
      this.paymentId,
      required this.createdAt,
      this.donorUsername,
      this.donorDisplayName,
      this.donorAvatarUrl});

  @override
  final String id;
  @override
  final String campaignId;
  @override
  final String userId;
  @override
  final double amountTotal;
  @override
  @JsonKey()
  final double platformFeePercent;
  @override
  final double? platformFeeAmount;
  @override
  final double? amountNet;
  @override
  @JsonKey()
  final bool isAnonymous;
  @override
  final String? message;
  @override
  @JsonKey()
  final PaymentStatus paymentStatus;
  @override
  final String? paymentId;
  @override
  final DateTime createdAt;
// Joined from user_profiles (read-only)
  @override
  final String? donorUsername;
  @override
  final String? donorDisplayName;
  @override
  final String? donorAvatarUrl;

  @override
  String toString() {
    return 'DonationEntity(id: $id, campaignId: $campaignId, userId: $userId, amountTotal: $amountTotal, platformFeePercent: $platformFeePercent, platformFeeAmount: $platformFeeAmount, amountNet: $amountNet, isAnonymous: $isAnonymous, message: $message, paymentStatus: $paymentStatus, paymentId: $paymentId, createdAt: $createdAt, donorUsername: $donorUsername, donorDisplayName: $donorDisplayName, donorAvatarUrl: $donorAvatarUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DonationEntityImpl &&
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
                other.donorAvatarUrl == donorAvatarUrl));
  }

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
      donorAvatarUrl);

  /// Create a copy of DonationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DonationEntityImplCopyWith<_$DonationEntityImpl> get copyWith =>
      __$$DonationEntityImplCopyWithImpl<_$DonationEntityImpl>(
          this, _$identity);
}

abstract class _DonationEntity implements DonationEntity {
  const factory _DonationEntity(
      {required final String id,
      required final String campaignId,
      required final String userId,
      required final double amountTotal,
      final double platformFeePercent,
      final double? platformFeeAmount,
      final double? amountNet,
      final bool isAnonymous,
      final String? message,
      final PaymentStatus paymentStatus,
      final String? paymentId,
      required final DateTime createdAt,
      final String? donorUsername,
      final String? donorDisplayName,
      final String? donorAvatarUrl}) = _$DonationEntityImpl;

  @override
  String get id;
  @override
  String get campaignId;
  @override
  String get userId;
  @override
  double get amountTotal;
  @override
  double get platformFeePercent;
  @override
  double? get platformFeeAmount;
  @override
  double? get amountNet;
  @override
  bool get isAnonymous;
  @override
  String? get message;
  @override
  PaymentStatus get paymentStatus;
  @override
  String? get paymentId;
  @override
  DateTime get createdAt; // Joined from user_profiles (read-only)
  @override
  String? get donorUsername;
  @override
  String? get donorDisplayName;
  @override
  String? get donorAvatarUrl;

  /// Create a copy of DonationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DonationEntityImplCopyWith<_$DonationEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
