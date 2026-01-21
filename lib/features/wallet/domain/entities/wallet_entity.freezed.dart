// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WalletEntity {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  WalletType get type => throw _privateConstructorUsedError;
  double get balance => throw _privateConstructorUsedError;

  /// For campaign wallets, the linked campaign ID
  String? get campaignId => throw _privateConstructorUsedError;

  /// Bank account details for withdrawals
  String? get bankName => throw _privateConstructorUsedError;
  String? get bankAccountNumber => throw _privateConstructorUsedError;
  String? get bankAccountHolder => throw _privateConstructorUsedError;

  /// Timestamps
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt =>
      throw _privateConstructorUsedError; // Joined data (read-only, from campaigns table)
  /// Campaign title for campaign wallets
  String? get campaignTitle => throw _privateConstructorUsedError;

  /// Campaign cover image for campaign wallets
  String? get campaignCoverImageUrl => throw _privateConstructorUsedError;

  /// Create a copy of WalletEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WalletEntityCopyWith<WalletEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletEntityCopyWith<$Res> {
  factory $WalletEntityCopyWith(
          WalletEntity value, $Res Function(WalletEntity) then) =
      _$WalletEntityCopyWithImpl<$Res, WalletEntity>;
  @useResult
  $Res call(
      {String id,
      String userId,
      WalletType type,
      double balance,
      String? campaignId,
      String? bankName,
      String? bankAccountNumber,
      String? bankAccountHolder,
      DateTime createdAt,
      DateTime? updatedAt,
      String? campaignTitle,
      String? campaignCoverImageUrl});
}

/// @nodoc
class _$WalletEntityCopyWithImpl<$Res, $Val extends WalletEntity>
    implements $WalletEntityCopyWith<$Res> {
  _$WalletEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalletEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? type = null,
    Object? balance = null,
    Object? campaignId = freezed,
    Object? bankName = freezed,
    Object? bankAccountNumber = freezed,
    Object? bankAccountHolder = freezed,
    Object? createdAt = null,
    Object? updatedAt = freezed,
    Object? campaignTitle = freezed,
    Object? campaignCoverImageUrl = freezed,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as WalletType,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      campaignId: freezed == campaignId
          ? _value.campaignId
          : campaignId // ignore: cast_nullable_to_non_nullable
              as String?,
      bankName: freezed == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String?,
      bankAccountNumber: freezed == bankAccountNumber
          ? _value.bankAccountNumber
          : bankAccountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      bankAccountHolder: freezed == bankAccountHolder
          ? _value.bankAccountHolder
          : bankAccountHolder // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      campaignTitle: freezed == campaignTitle
          ? _value.campaignTitle
          : campaignTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      campaignCoverImageUrl: freezed == campaignCoverImageUrl
          ? _value.campaignCoverImageUrl
          : campaignCoverImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WalletEntityImplCopyWith<$Res>
    implements $WalletEntityCopyWith<$Res> {
  factory _$$WalletEntityImplCopyWith(
          _$WalletEntityImpl value, $Res Function(_$WalletEntityImpl) then) =
      __$$WalletEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      WalletType type,
      double balance,
      String? campaignId,
      String? bankName,
      String? bankAccountNumber,
      String? bankAccountHolder,
      DateTime createdAt,
      DateTime? updatedAt,
      String? campaignTitle,
      String? campaignCoverImageUrl});
}

/// @nodoc
class __$$WalletEntityImplCopyWithImpl<$Res>
    extends _$WalletEntityCopyWithImpl<$Res, _$WalletEntityImpl>
    implements _$$WalletEntityImplCopyWith<$Res> {
  __$$WalletEntityImplCopyWithImpl(
      _$WalletEntityImpl _value, $Res Function(_$WalletEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? type = null,
    Object? balance = null,
    Object? campaignId = freezed,
    Object? bankName = freezed,
    Object? bankAccountNumber = freezed,
    Object? bankAccountHolder = freezed,
    Object? createdAt = null,
    Object? updatedAt = freezed,
    Object? campaignTitle = freezed,
    Object? campaignCoverImageUrl = freezed,
  }) {
    return _then(_$WalletEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as WalletType,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      campaignId: freezed == campaignId
          ? _value.campaignId
          : campaignId // ignore: cast_nullable_to_non_nullable
              as String?,
      bankName: freezed == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String?,
      bankAccountNumber: freezed == bankAccountNumber
          ? _value.bankAccountNumber
          : bankAccountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      bankAccountHolder: freezed == bankAccountHolder
          ? _value.bankAccountHolder
          : bankAccountHolder // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      campaignTitle: freezed == campaignTitle
          ? _value.campaignTitle
          : campaignTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      campaignCoverImageUrl: freezed == campaignCoverImageUrl
          ? _value.campaignCoverImageUrl
          : campaignCoverImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$WalletEntityImpl extends _WalletEntity {
  const _$WalletEntityImpl(
      {required this.id,
      required this.userId,
      required this.type,
      this.balance = 0,
      this.campaignId,
      this.bankName,
      this.bankAccountNumber,
      this.bankAccountHolder,
      required this.createdAt,
      this.updatedAt,
      this.campaignTitle,
      this.campaignCoverImageUrl})
      : super._();

  @override
  final String id;
  @override
  final String userId;
  @override
  final WalletType type;
  @override
  @JsonKey()
  final double balance;

  /// For campaign wallets, the linked campaign ID
  @override
  final String? campaignId;

  /// Bank account details for withdrawals
  @override
  final String? bankName;
  @override
  final String? bankAccountNumber;
  @override
  final String? bankAccountHolder;

  /// Timestamps
  @override
  final DateTime createdAt;
  @override
  final DateTime? updatedAt;
// Joined data (read-only, from campaigns table)
  /// Campaign title for campaign wallets
  @override
  final String? campaignTitle;

  /// Campaign cover image for campaign wallets
  @override
  final String? campaignCoverImageUrl;

  @override
  String toString() {
    return 'WalletEntity(id: $id, userId: $userId, type: $type, balance: $balance, campaignId: $campaignId, bankName: $bankName, bankAccountNumber: $bankAccountNumber, bankAccountHolder: $bankAccountHolder, createdAt: $createdAt, updatedAt: $updatedAt, campaignTitle: $campaignTitle, campaignCoverImageUrl: $campaignCoverImageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.campaignId, campaignId) ||
                other.campaignId == campaignId) &&
            (identical(other.bankName, bankName) ||
                other.bankName == bankName) &&
            (identical(other.bankAccountNumber, bankAccountNumber) ||
                other.bankAccountNumber == bankAccountNumber) &&
            (identical(other.bankAccountHolder, bankAccountHolder) ||
                other.bankAccountHolder == bankAccountHolder) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.campaignTitle, campaignTitle) ||
                other.campaignTitle == campaignTitle) &&
            (identical(other.campaignCoverImageUrl, campaignCoverImageUrl) ||
                other.campaignCoverImageUrl == campaignCoverImageUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      type,
      balance,
      campaignId,
      bankName,
      bankAccountNumber,
      bankAccountHolder,
      createdAt,
      updatedAt,
      campaignTitle,
      campaignCoverImageUrl);

  /// Create a copy of WalletEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletEntityImplCopyWith<_$WalletEntityImpl> get copyWith =>
      __$$WalletEntityImplCopyWithImpl<_$WalletEntityImpl>(this, _$identity);
}

abstract class _WalletEntity extends WalletEntity {
  const factory _WalletEntity(
      {required final String id,
      required final String userId,
      required final WalletType type,
      final double balance,
      final String? campaignId,
      final String? bankName,
      final String? bankAccountNumber,
      final String? bankAccountHolder,
      required final DateTime createdAt,
      final DateTime? updatedAt,
      final String? campaignTitle,
      final String? campaignCoverImageUrl}) = _$WalletEntityImpl;
  const _WalletEntity._() : super._();

  @override
  String get id;
  @override
  String get userId;
  @override
  WalletType get type;
  @override
  double get balance;

  /// For campaign wallets, the linked campaign ID
  @override
  String? get campaignId;

  /// Bank account details for withdrawals
  @override
  String? get bankName;
  @override
  String? get bankAccountNumber;
  @override
  String? get bankAccountHolder;

  /// Timestamps
  @override
  DateTime get createdAt;
  @override
  DateTime? get updatedAt; // Joined data (read-only, from campaigns table)
  /// Campaign title for campaign wallets
  @override
  String? get campaignTitle;

  /// Campaign cover image for campaign wallets
  @override
  String? get campaignCoverImageUrl;

  /// Create a copy of WalletEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalletEntityImplCopyWith<_$WalletEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
