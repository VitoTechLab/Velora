// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'withdrawal_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WithdrawalEntity {
  String get id => throw _privateConstructorUsedError;
  String get campaignId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  WithdrawalStatus get status => throw _privateConstructorUsedError;
  String get targetBankName => throw _privateConstructorUsedError;
  String get targetAccountNumber => throw _privateConstructorUsedError;
  String get targetAccountHolder => throw _privateConstructorUsedError;
  String? get proofFileUrl => throw _privateConstructorUsedError;
  String? get adminNotes => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get processedAt => throw _privateConstructorUsedError;

  /// Create a copy of WithdrawalEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WithdrawalEntityCopyWith<WithdrawalEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WithdrawalEntityCopyWith<$Res> {
  factory $WithdrawalEntityCopyWith(
          WithdrawalEntity value, $Res Function(WithdrawalEntity) then) =
      _$WithdrawalEntityCopyWithImpl<$Res, WithdrawalEntity>;
  @useResult
  $Res call(
      {String id,
      String campaignId,
      String userId,
      double amount,
      WithdrawalStatus status,
      String targetBankName,
      String targetAccountNumber,
      String targetAccountHolder,
      String? proofFileUrl,
      String? adminNotes,
      DateTime createdAt,
      DateTime? processedAt});
}

/// @nodoc
class _$WithdrawalEntityCopyWithImpl<$Res, $Val extends WithdrawalEntity>
    implements $WithdrawalEntityCopyWith<$Res> {
  _$WithdrawalEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WithdrawalEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? campaignId = null,
    Object? userId = null,
    Object? amount = null,
    Object? status = null,
    Object? targetBankName = null,
    Object? targetAccountNumber = null,
    Object? targetAccountHolder = null,
    Object? proofFileUrl = freezed,
    Object? adminNotes = freezed,
    Object? createdAt = null,
    Object? processedAt = freezed,
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
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WithdrawalStatus,
      targetBankName: null == targetBankName
          ? _value.targetBankName
          : targetBankName // ignore: cast_nullable_to_non_nullable
              as String,
      targetAccountNumber: null == targetAccountNumber
          ? _value.targetAccountNumber
          : targetAccountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      targetAccountHolder: null == targetAccountHolder
          ? _value.targetAccountHolder
          : targetAccountHolder // ignore: cast_nullable_to_non_nullable
              as String,
      proofFileUrl: freezed == proofFileUrl
          ? _value.proofFileUrl
          : proofFileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      adminNotes: freezed == adminNotes
          ? _value.adminNotes
          : adminNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      processedAt: freezed == processedAt
          ? _value.processedAt
          : processedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WithdrawalEntityImplCopyWith<$Res>
    implements $WithdrawalEntityCopyWith<$Res> {
  factory _$$WithdrawalEntityImplCopyWith(_$WithdrawalEntityImpl value,
          $Res Function(_$WithdrawalEntityImpl) then) =
      __$$WithdrawalEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String campaignId,
      String userId,
      double amount,
      WithdrawalStatus status,
      String targetBankName,
      String targetAccountNumber,
      String targetAccountHolder,
      String? proofFileUrl,
      String? adminNotes,
      DateTime createdAt,
      DateTime? processedAt});
}

/// @nodoc
class __$$WithdrawalEntityImplCopyWithImpl<$Res>
    extends _$WithdrawalEntityCopyWithImpl<$Res, _$WithdrawalEntityImpl>
    implements _$$WithdrawalEntityImplCopyWith<$Res> {
  __$$WithdrawalEntityImplCopyWithImpl(_$WithdrawalEntityImpl _value,
      $Res Function(_$WithdrawalEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of WithdrawalEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? campaignId = null,
    Object? userId = null,
    Object? amount = null,
    Object? status = null,
    Object? targetBankName = null,
    Object? targetAccountNumber = null,
    Object? targetAccountHolder = null,
    Object? proofFileUrl = freezed,
    Object? adminNotes = freezed,
    Object? createdAt = null,
    Object? processedAt = freezed,
  }) {
    return _then(_$WithdrawalEntityImpl(
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
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WithdrawalStatus,
      targetBankName: null == targetBankName
          ? _value.targetBankName
          : targetBankName // ignore: cast_nullable_to_non_nullable
              as String,
      targetAccountNumber: null == targetAccountNumber
          ? _value.targetAccountNumber
          : targetAccountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      targetAccountHolder: null == targetAccountHolder
          ? _value.targetAccountHolder
          : targetAccountHolder // ignore: cast_nullable_to_non_nullable
              as String,
      proofFileUrl: freezed == proofFileUrl
          ? _value.proofFileUrl
          : proofFileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      adminNotes: freezed == adminNotes
          ? _value.adminNotes
          : adminNotes // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      processedAt: freezed == processedAt
          ? _value.processedAt
          : processedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$WithdrawalEntityImpl implements _WithdrawalEntity {
  const _$WithdrawalEntityImpl(
      {required this.id,
      required this.campaignId,
      required this.userId,
      required this.amount,
      this.status = WithdrawalStatus.pending,
      required this.targetBankName,
      required this.targetAccountNumber,
      required this.targetAccountHolder,
      this.proofFileUrl,
      this.adminNotes,
      required this.createdAt,
      this.processedAt});

  @override
  final String id;
  @override
  final String campaignId;
  @override
  final String userId;
  @override
  final double amount;
  @override
  @JsonKey()
  final WithdrawalStatus status;
  @override
  final String targetBankName;
  @override
  final String targetAccountNumber;
  @override
  final String targetAccountHolder;
  @override
  final String? proofFileUrl;
  @override
  final String? adminNotes;
  @override
  final DateTime createdAt;
  @override
  final DateTime? processedAt;

  @override
  String toString() {
    return 'WithdrawalEntity(id: $id, campaignId: $campaignId, userId: $userId, amount: $amount, status: $status, targetBankName: $targetBankName, targetAccountNumber: $targetAccountNumber, targetAccountHolder: $targetAccountHolder, proofFileUrl: $proofFileUrl, adminNotes: $adminNotes, createdAt: $createdAt, processedAt: $processedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WithdrawalEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.campaignId, campaignId) ||
                other.campaignId == campaignId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.targetBankName, targetBankName) ||
                other.targetBankName == targetBankName) &&
            (identical(other.targetAccountNumber, targetAccountNumber) ||
                other.targetAccountNumber == targetAccountNumber) &&
            (identical(other.targetAccountHolder, targetAccountHolder) ||
                other.targetAccountHolder == targetAccountHolder) &&
            (identical(other.proofFileUrl, proofFileUrl) ||
                other.proofFileUrl == proofFileUrl) &&
            (identical(other.adminNotes, adminNotes) ||
                other.adminNotes == adminNotes) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.processedAt, processedAt) ||
                other.processedAt == processedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      campaignId,
      userId,
      amount,
      status,
      targetBankName,
      targetAccountNumber,
      targetAccountHolder,
      proofFileUrl,
      adminNotes,
      createdAt,
      processedAt);

  /// Create a copy of WithdrawalEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WithdrawalEntityImplCopyWith<_$WithdrawalEntityImpl> get copyWith =>
      __$$WithdrawalEntityImplCopyWithImpl<_$WithdrawalEntityImpl>(
          this, _$identity);
}

abstract class _WithdrawalEntity implements WithdrawalEntity {
  const factory _WithdrawalEntity(
      {required final String id,
      required final String campaignId,
      required final String userId,
      required final double amount,
      final WithdrawalStatus status,
      required final String targetBankName,
      required final String targetAccountNumber,
      required final String targetAccountHolder,
      final String? proofFileUrl,
      final String? adminNotes,
      required final DateTime createdAt,
      final DateTime? processedAt}) = _$WithdrawalEntityImpl;

  @override
  String get id;
  @override
  String get campaignId;
  @override
  String get userId;
  @override
  double get amount;
  @override
  WithdrawalStatus get status;
  @override
  String get targetBankName;
  @override
  String get targetAccountNumber;
  @override
  String get targetAccountHolder;
  @override
  String? get proofFileUrl;
  @override
  String? get adminNotes;
  @override
  DateTime get createdAt;
  @override
  DateTime? get processedAt;

  /// Create a copy of WithdrawalEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WithdrawalEntityImplCopyWith<_$WithdrawalEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
