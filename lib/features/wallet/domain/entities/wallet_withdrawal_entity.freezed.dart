// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_withdrawal_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WalletWithdrawalEntity {
  String get id => throw _privateConstructorUsedError;
  String get walletId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  WalletWithdrawalStatus get status => throw _privateConstructorUsedError;

  /// Target bank for transfer
  String get targetBankName => throw _privateConstructorUsedError;
  String get targetAccountNumber => throw _privateConstructorUsedError;
  String get targetAccountHolder => throw _privateConstructorUsedError;

  /// Reference number from mock bank transfer
  String? get transferReference => throw _privateConstructorUsedError;

  /// Admin/system notes
  String? get notes => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get processedAt => throw _privateConstructorUsedError;

  /// Create a copy of WalletWithdrawalEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WalletWithdrawalEntityCopyWith<WalletWithdrawalEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletWithdrawalEntityCopyWith<$Res> {
  factory $WalletWithdrawalEntityCopyWith(WalletWithdrawalEntity value,
          $Res Function(WalletWithdrawalEntity) then) =
      _$WalletWithdrawalEntityCopyWithImpl<$Res, WalletWithdrawalEntity>;
  @useResult
  $Res call(
      {String id,
      String walletId,
      String userId,
      double amount,
      WalletWithdrawalStatus status,
      String targetBankName,
      String targetAccountNumber,
      String targetAccountHolder,
      String? transferReference,
      String? notes,
      DateTime createdAt,
      DateTime? processedAt});
}

/// @nodoc
class _$WalletWithdrawalEntityCopyWithImpl<$Res,
        $Val extends WalletWithdrawalEntity>
    implements $WalletWithdrawalEntityCopyWith<$Res> {
  _$WalletWithdrawalEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalletWithdrawalEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? walletId = null,
    Object? userId = null,
    Object? amount = null,
    Object? status = null,
    Object? targetBankName = null,
    Object? targetAccountNumber = null,
    Object? targetAccountHolder = null,
    Object? transferReference = freezed,
    Object? notes = freezed,
    Object? createdAt = null,
    Object? processedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      walletId: null == walletId
          ? _value.walletId
          : walletId // ignore: cast_nullable_to_non_nullable
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
              as WalletWithdrawalStatus,
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
      transferReference: freezed == transferReference
          ? _value.transferReference
          : transferReference // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
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
abstract class _$$WalletWithdrawalEntityImplCopyWith<$Res>
    implements $WalletWithdrawalEntityCopyWith<$Res> {
  factory _$$WalletWithdrawalEntityImplCopyWith(
          _$WalletWithdrawalEntityImpl value,
          $Res Function(_$WalletWithdrawalEntityImpl) then) =
      __$$WalletWithdrawalEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String walletId,
      String userId,
      double amount,
      WalletWithdrawalStatus status,
      String targetBankName,
      String targetAccountNumber,
      String targetAccountHolder,
      String? transferReference,
      String? notes,
      DateTime createdAt,
      DateTime? processedAt});
}

/// @nodoc
class __$$WalletWithdrawalEntityImplCopyWithImpl<$Res>
    extends _$WalletWithdrawalEntityCopyWithImpl<$Res,
        _$WalletWithdrawalEntityImpl>
    implements _$$WalletWithdrawalEntityImplCopyWith<$Res> {
  __$$WalletWithdrawalEntityImplCopyWithImpl(
      _$WalletWithdrawalEntityImpl _value,
      $Res Function(_$WalletWithdrawalEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletWithdrawalEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? walletId = null,
    Object? userId = null,
    Object? amount = null,
    Object? status = null,
    Object? targetBankName = null,
    Object? targetAccountNumber = null,
    Object? targetAccountHolder = null,
    Object? transferReference = freezed,
    Object? notes = freezed,
    Object? createdAt = null,
    Object? processedAt = freezed,
  }) {
    return _then(_$WalletWithdrawalEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      walletId: null == walletId
          ? _value.walletId
          : walletId // ignore: cast_nullable_to_non_nullable
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
              as WalletWithdrawalStatus,
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
      transferReference: freezed == transferReference
          ? _value.transferReference
          : transferReference // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
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

class _$WalletWithdrawalEntityImpl extends _WalletWithdrawalEntity {
  const _$WalletWithdrawalEntityImpl(
      {required this.id,
      required this.walletId,
      required this.userId,
      required this.amount,
      this.status = WalletWithdrawalStatus.pending,
      required this.targetBankName,
      required this.targetAccountNumber,
      required this.targetAccountHolder,
      this.transferReference,
      this.notes,
      required this.createdAt,
      this.processedAt})
      : super._();

  @override
  final String id;
  @override
  final String walletId;
  @override
  final String userId;
  @override
  final double amount;
  @override
  @JsonKey()
  final WalletWithdrawalStatus status;

  /// Target bank for transfer
  @override
  final String targetBankName;
  @override
  final String targetAccountNumber;
  @override
  final String targetAccountHolder;

  /// Reference number from mock bank transfer
  @override
  final String? transferReference;

  /// Admin/system notes
  @override
  final String? notes;
  @override
  final DateTime createdAt;
  @override
  final DateTime? processedAt;

  @override
  String toString() {
    return 'WalletWithdrawalEntity(id: $id, walletId: $walletId, userId: $userId, amount: $amount, status: $status, targetBankName: $targetBankName, targetAccountNumber: $targetAccountNumber, targetAccountHolder: $targetAccountHolder, transferReference: $transferReference, notes: $notes, createdAt: $createdAt, processedAt: $processedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletWithdrawalEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.walletId, walletId) ||
                other.walletId == walletId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.targetBankName, targetBankName) ||
                other.targetBankName == targetBankName) &&
            (identical(other.targetAccountNumber, targetAccountNumber) ||
                other.targetAccountNumber == targetAccountNumber) &&
            (identical(other.targetAccountHolder, targetAccountHolder) ||
                other.targetAccountHolder == targetAccountHolder) &&
            (identical(other.transferReference, transferReference) ||
                other.transferReference == transferReference) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.processedAt, processedAt) ||
                other.processedAt == processedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      walletId,
      userId,
      amount,
      status,
      targetBankName,
      targetAccountNumber,
      targetAccountHolder,
      transferReference,
      notes,
      createdAt,
      processedAt);

  /// Create a copy of WalletWithdrawalEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletWithdrawalEntityImplCopyWith<_$WalletWithdrawalEntityImpl>
      get copyWith => __$$WalletWithdrawalEntityImplCopyWithImpl<
          _$WalletWithdrawalEntityImpl>(this, _$identity);
}

abstract class _WalletWithdrawalEntity extends WalletWithdrawalEntity {
  const factory _WalletWithdrawalEntity(
      {required final String id,
      required final String walletId,
      required final String userId,
      required final double amount,
      final WalletWithdrawalStatus status,
      required final String targetBankName,
      required final String targetAccountNumber,
      required final String targetAccountHolder,
      final String? transferReference,
      final String? notes,
      required final DateTime createdAt,
      final DateTime? processedAt}) = _$WalletWithdrawalEntityImpl;
  const _WalletWithdrawalEntity._() : super._();

  @override
  String get id;
  @override
  String get walletId;
  @override
  String get userId;
  @override
  double get amount;
  @override
  WalletWithdrawalStatus get status;

  /// Target bank for transfer
  @override
  String get targetBankName;
  @override
  String get targetAccountNumber;
  @override
  String get targetAccountHolder;

  /// Reference number from mock bank transfer
  @override
  String? get transferReference;

  /// Admin/system notes
  @override
  String? get notes;
  @override
  DateTime get createdAt;
  @override
  DateTime? get processedAt;

  /// Create a copy of WalletWithdrawalEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalletWithdrawalEntityImplCopyWith<_$WalletWithdrawalEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
