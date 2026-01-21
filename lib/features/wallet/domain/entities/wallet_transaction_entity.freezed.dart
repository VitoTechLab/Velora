// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_transaction_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WalletTransactionEntity {
  String get id => throw _privateConstructorUsedError;
  String get walletId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  WalletTransactionType get type => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;

  /// Positive for incoming, negative for outgoing
  double get balanceChange => throw _privateConstructorUsedError;

  /// Balance after this transaction
  double get balanceAfter => throw _privateConstructorUsedError;
  WalletTransactionStatus get status => throw _privateConstructorUsedError;

  /// Reference ID (donation_id, withdrawal_id, topup_id, etc.)
  String? get referenceId => throw _privateConstructorUsedError;

  /// Reference type (donation, withdrawal, topup)
  String? get referenceType => throw _privateConstructorUsedError;

  /// Description for display
  String? get description => throw _privateConstructorUsedError;

  /// Payment gateway reference for top-ups
  String? get paymentId => throw _privateConstructorUsedError;
  String? get paymentMethod => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get completedAt => throw _privateConstructorUsedError;

  /// Create a copy of WalletTransactionEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WalletTransactionEntityCopyWith<WalletTransactionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletTransactionEntityCopyWith<$Res> {
  factory $WalletTransactionEntityCopyWith(WalletTransactionEntity value,
          $Res Function(WalletTransactionEntity) then) =
      _$WalletTransactionEntityCopyWithImpl<$Res, WalletTransactionEntity>;
  @useResult
  $Res call(
      {String id,
      String walletId,
      String userId,
      WalletTransactionType type,
      double amount,
      double balanceChange,
      double balanceAfter,
      WalletTransactionStatus status,
      String? referenceId,
      String? referenceType,
      String? description,
      String? paymentId,
      String? paymentMethod,
      DateTime createdAt,
      DateTime? completedAt});
}

/// @nodoc
class _$WalletTransactionEntityCopyWithImpl<$Res,
        $Val extends WalletTransactionEntity>
    implements $WalletTransactionEntityCopyWith<$Res> {
  _$WalletTransactionEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalletTransactionEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? walletId = null,
    Object? userId = null,
    Object? type = null,
    Object? amount = null,
    Object? balanceChange = null,
    Object? balanceAfter = null,
    Object? status = null,
    Object? referenceId = freezed,
    Object? referenceType = freezed,
    Object? description = freezed,
    Object? paymentId = freezed,
    Object? paymentMethod = freezed,
    Object? createdAt = null,
    Object? completedAt = freezed,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as WalletTransactionType,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      balanceChange: null == balanceChange
          ? _value.balanceChange
          : balanceChange // ignore: cast_nullable_to_non_nullable
              as double,
      balanceAfter: null == balanceAfter
          ? _value.balanceAfter
          : balanceAfter // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WalletTransactionStatus,
      referenceId: freezed == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceType: freezed == referenceType
          ? _value.referenceType
          : referenceType // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WalletTransactionEntityImplCopyWith<$Res>
    implements $WalletTransactionEntityCopyWith<$Res> {
  factory _$$WalletTransactionEntityImplCopyWith(
          _$WalletTransactionEntityImpl value,
          $Res Function(_$WalletTransactionEntityImpl) then) =
      __$$WalletTransactionEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String walletId,
      String userId,
      WalletTransactionType type,
      double amount,
      double balanceChange,
      double balanceAfter,
      WalletTransactionStatus status,
      String? referenceId,
      String? referenceType,
      String? description,
      String? paymentId,
      String? paymentMethod,
      DateTime createdAt,
      DateTime? completedAt});
}

/// @nodoc
class __$$WalletTransactionEntityImplCopyWithImpl<$Res>
    extends _$WalletTransactionEntityCopyWithImpl<$Res,
        _$WalletTransactionEntityImpl>
    implements _$$WalletTransactionEntityImplCopyWith<$Res> {
  __$$WalletTransactionEntityImplCopyWithImpl(
      _$WalletTransactionEntityImpl _value,
      $Res Function(_$WalletTransactionEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletTransactionEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? walletId = null,
    Object? userId = null,
    Object? type = null,
    Object? amount = null,
    Object? balanceChange = null,
    Object? balanceAfter = null,
    Object? status = null,
    Object? referenceId = freezed,
    Object? referenceType = freezed,
    Object? description = freezed,
    Object? paymentId = freezed,
    Object? paymentMethod = freezed,
    Object? createdAt = null,
    Object? completedAt = freezed,
  }) {
    return _then(_$WalletTransactionEntityImpl(
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as WalletTransactionType,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      balanceChange: null == balanceChange
          ? _value.balanceChange
          : balanceChange // ignore: cast_nullable_to_non_nullable
              as double,
      balanceAfter: null == balanceAfter
          ? _value.balanceAfter
          : balanceAfter // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WalletTransactionStatus,
      referenceId: freezed == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceType: freezed == referenceType
          ? _value.referenceType
          : referenceType // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$WalletTransactionEntityImpl implements _WalletTransactionEntity {
  const _$WalletTransactionEntityImpl(
      {required this.id,
      required this.walletId,
      required this.userId,
      required this.type,
      required this.amount,
      required this.balanceChange,
      required this.balanceAfter,
      this.status = WalletTransactionStatus.pending,
      this.referenceId,
      this.referenceType,
      this.description,
      this.paymentId,
      this.paymentMethod,
      required this.createdAt,
      this.completedAt});

  @override
  final String id;
  @override
  final String walletId;
  @override
  final String userId;
  @override
  final WalletTransactionType type;
  @override
  final double amount;

  /// Positive for incoming, negative for outgoing
  @override
  final double balanceChange;

  /// Balance after this transaction
  @override
  final double balanceAfter;
  @override
  @JsonKey()
  final WalletTransactionStatus status;

  /// Reference ID (donation_id, withdrawal_id, topup_id, etc.)
  @override
  final String? referenceId;

  /// Reference type (donation, withdrawal, topup)
  @override
  final String? referenceType;

  /// Description for display
  @override
  final String? description;

  /// Payment gateway reference for top-ups
  @override
  final String? paymentId;
  @override
  final String? paymentMethod;
  @override
  final DateTime createdAt;
  @override
  final DateTime? completedAt;

  @override
  String toString() {
    return 'WalletTransactionEntity(id: $id, walletId: $walletId, userId: $userId, type: $type, amount: $amount, balanceChange: $balanceChange, balanceAfter: $balanceAfter, status: $status, referenceId: $referenceId, referenceType: $referenceType, description: $description, paymentId: $paymentId, paymentMethod: $paymentMethod, createdAt: $createdAt, completedAt: $completedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletTransactionEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.walletId, walletId) ||
                other.walletId == walletId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.balanceChange, balanceChange) ||
                other.balanceChange == balanceChange) &&
            (identical(other.balanceAfter, balanceAfter) ||
                other.balanceAfter == balanceAfter) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId) &&
            (identical(other.referenceType, referenceType) ||
                other.referenceType == referenceType) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      walletId,
      userId,
      type,
      amount,
      balanceChange,
      balanceAfter,
      status,
      referenceId,
      referenceType,
      description,
      paymentId,
      paymentMethod,
      createdAt,
      completedAt);

  /// Create a copy of WalletTransactionEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletTransactionEntityImplCopyWith<_$WalletTransactionEntityImpl>
      get copyWith => __$$WalletTransactionEntityImplCopyWithImpl<
          _$WalletTransactionEntityImpl>(this, _$identity);
}

abstract class _WalletTransactionEntity implements WalletTransactionEntity {
  const factory _WalletTransactionEntity(
      {required final String id,
      required final String walletId,
      required final String userId,
      required final WalletTransactionType type,
      required final double amount,
      required final double balanceChange,
      required final double balanceAfter,
      final WalletTransactionStatus status,
      final String? referenceId,
      final String? referenceType,
      final String? description,
      final String? paymentId,
      final String? paymentMethod,
      required final DateTime createdAt,
      final DateTime? completedAt}) = _$WalletTransactionEntityImpl;

  @override
  String get id;
  @override
  String get walletId;
  @override
  String get userId;
  @override
  WalletTransactionType get type;
  @override
  double get amount;

  /// Positive for incoming, negative for outgoing
  @override
  double get balanceChange;

  /// Balance after this transaction
  @override
  double get balanceAfter;
  @override
  WalletTransactionStatus get status;

  /// Reference ID (donation_id, withdrawal_id, topup_id, etc.)
  @override
  String? get referenceId;

  /// Reference type (donation, withdrawal, topup)
  @override
  String? get referenceType;

  /// Description for display
  @override
  String? get description;

  /// Payment gateway reference for top-ups
  @override
  String? get paymentId;
  @override
  String? get paymentMethod;
  @override
  DateTime get createdAt;
  @override
  DateTime? get completedAt;

  /// Create a copy of WalletTransactionEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalletTransactionEntityImplCopyWith<_$WalletTransactionEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
