// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_transaction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WalletTransactionModel _$WalletTransactionModelFromJson(
    Map<String, dynamic> json) {
  return _WalletTransactionModel.fromJson(json);
}

/// @nodoc
mixin _$WalletTransactionModel {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'wallet_id')
  String get walletId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount')
  double get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'balance_change')
  double get balanceChange => throw _privateConstructorUsedError;
  @JsonKey(name: 'balance_after')
  double get balanceAfter => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'reference_id')
  String? get referenceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'reference_type')
  String? get referenceType => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_id')
  String? get paymentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_method')
  String? get paymentMethod => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'completed_at')
  DateTime? get completedAt => throw _privateConstructorUsedError;

  /// Serializes this WalletTransactionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WalletTransactionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WalletTransactionModelCopyWith<WalletTransactionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletTransactionModelCopyWith<$Res> {
  factory $WalletTransactionModelCopyWith(WalletTransactionModel value,
          $Res Function(WalletTransactionModel) then) =
      _$WalletTransactionModelCopyWithImpl<$Res, WalletTransactionModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'wallet_id') String walletId,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'amount') double amount,
      @JsonKey(name: 'balance_change') double balanceChange,
      @JsonKey(name: 'balance_after') double balanceAfter,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'reference_id') String? referenceId,
      @JsonKey(name: 'reference_type') String? referenceType,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'payment_id') String? paymentId,
      @JsonKey(name: 'payment_method') String? paymentMethod,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'completed_at') DateTime? completedAt});
}

/// @nodoc
class _$WalletTransactionModelCopyWithImpl<$Res,
        $Val extends WalletTransactionModel>
    implements $WalletTransactionModelCopyWith<$Res> {
  _$WalletTransactionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalletTransactionModel
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
              as String,
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
              as String,
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
abstract class _$$WalletTransactionModelImplCopyWith<$Res>
    implements $WalletTransactionModelCopyWith<$Res> {
  factory _$$WalletTransactionModelImplCopyWith(
          _$WalletTransactionModelImpl value,
          $Res Function(_$WalletTransactionModelImpl) then) =
      __$$WalletTransactionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'wallet_id') String walletId,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'amount') double amount,
      @JsonKey(name: 'balance_change') double balanceChange,
      @JsonKey(name: 'balance_after') double balanceAfter,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'reference_id') String? referenceId,
      @JsonKey(name: 'reference_type') String? referenceType,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'payment_id') String? paymentId,
      @JsonKey(name: 'payment_method') String? paymentMethod,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'completed_at') DateTime? completedAt});
}

/// @nodoc
class __$$WalletTransactionModelImplCopyWithImpl<$Res>
    extends _$WalletTransactionModelCopyWithImpl<$Res,
        _$WalletTransactionModelImpl>
    implements _$$WalletTransactionModelImplCopyWith<$Res> {
  __$$WalletTransactionModelImplCopyWithImpl(
      _$WalletTransactionModelImpl _value,
      $Res Function(_$WalletTransactionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletTransactionModel
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
    return _then(_$WalletTransactionModelImpl(
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
              as String,
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
              as String,
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
@JsonSerializable()
class _$WalletTransactionModelImpl extends _WalletTransactionModel {
  const _$WalletTransactionModelImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'wallet_id') required this.walletId,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'amount') required this.amount,
      @JsonKey(name: 'balance_change') required this.balanceChange,
      @JsonKey(name: 'balance_after') required this.balanceAfter,
      @JsonKey(name: 'status') this.status = 'pending',
      @JsonKey(name: 'reference_id') this.referenceId,
      @JsonKey(name: 'reference_type') this.referenceType,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'payment_id') this.paymentId,
      @JsonKey(name: 'payment_method') this.paymentMethod,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'completed_at') this.completedAt})
      : super._();

  factory _$WalletTransactionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletTransactionModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'wallet_id')
  final String walletId;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'type')
  final String type;
  @override
  @JsonKey(name: 'amount')
  final double amount;
  @override
  @JsonKey(name: 'balance_change')
  final double balanceChange;
  @override
  @JsonKey(name: 'balance_after')
  final double balanceAfter;
  @override
  @JsonKey(name: 'status')
  final String status;
  @override
  @JsonKey(name: 'reference_id')
  final String? referenceId;
  @override
  @JsonKey(name: 'reference_type')
  final String? referenceType;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'payment_id')
  final String? paymentId;
  @override
  @JsonKey(name: 'payment_method')
  final String? paymentMethod;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'completed_at')
  final DateTime? completedAt;

  @override
  String toString() {
    return 'WalletTransactionModel(id: $id, walletId: $walletId, userId: $userId, type: $type, amount: $amount, balanceChange: $balanceChange, balanceAfter: $balanceAfter, status: $status, referenceId: $referenceId, referenceType: $referenceType, description: $description, paymentId: $paymentId, paymentMethod: $paymentMethod, createdAt: $createdAt, completedAt: $completedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletTransactionModelImpl &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of WalletTransactionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletTransactionModelImplCopyWith<_$WalletTransactionModelImpl>
      get copyWith => __$$WalletTransactionModelImplCopyWithImpl<
          _$WalletTransactionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletTransactionModelImplToJson(
      this,
    );
  }
}

abstract class _WalletTransactionModel extends WalletTransactionModel {
  const factory _WalletTransactionModel(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'wallet_id') required final String walletId,
          @JsonKey(name: 'user_id') required final String userId,
          @JsonKey(name: 'type') required final String type,
          @JsonKey(name: 'amount') required final double amount,
          @JsonKey(name: 'balance_change') required final double balanceChange,
          @JsonKey(name: 'balance_after') required final double balanceAfter,
          @JsonKey(name: 'status') final String status,
          @JsonKey(name: 'reference_id') final String? referenceId,
          @JsonKey(name: 'reference_type') final String? referenceType,
          @JsonKey(name: 'description') final String? description,
          @JsonKey(name: 'payment_id') final String? paymentId,
          @JsonKey(name: 'payment_method') final String? paymentMethod,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'completed_at') final DateTime? completedAt}) =
      _$WalletTransactionModelImpl;
  const _WalletTransactionModel._() : super._();

  factory _WalletTransactionModel.fromJson(Map<String, dynamic> json) =
      _$WalletTransactionModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'wallet_id')
  String get walletId;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'type')
  String get type;
  @override
  @JsonKey(name: 'amount')
  double get amount;
  @override
  @JsonKey(name: 'balance_change')
  double get balanceChange;
  @override
  @JsonKey(name: 'balance_after')
  double get balanceAfter;
  @override
  @JsonKey(name: 'status')
  String get status;
  @override
  @JsonKey(name: 'reference_id')
  String? get referenceId;
  @override
  @JsonKey(name: 'reference_type')
  String? get referenceType;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'payment_id')
  String? get paymentId;
  @override
  @JsonKey(name: 'payment_method')
  String? get paymentMethod;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'completed_at')
  DateTime? get completedAt;

  /// Create a copy of WalletTransactionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalletTransactionModelImplCopyWith<_$WalletTransactionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
