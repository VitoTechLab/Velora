// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'withdrawal_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WithdrawalModel _$WithdrawalModelFromJson(Map<String, dynamic> json) {
  return _WithdrawalModel.fromJson(json);
}

/// @nodoc
mixin _$WithdrawalModel {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'campaign_id')
  String get campaignId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount')
  double get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'target_bank_name')
  String get targetBankName => throw _privateConstructorUsedError;
  @JsonKey(name: 'target_account_number')
  String get targetAccountNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'target_account_holder')
  String get targetAccountHolder => throw _privateConstructorUsedError;
  @JsonKey(name: 'proof_file_url')
  String? get proofFileUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'admin_notes')
  String? get adminNotes => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'processed_at')
  DateTime? get processedAt => throw _privateConstructorUsedError;

  /// Serializes this WithdrawalModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WithdrawalModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WithdrawalModelCopyWith<WithdrawalModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WithdrawalModelCopyWith<$Res> {
  factory $WithdrawalModelCopyWith(
          WithdrawalModel value, $Res Function(WithdrawalModel) then) =
      _$WithdrawalModelCopyWithImpl<$Res, WithdrawalModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'campaign_id') String campaignId,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'amount') double amount,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'target_bank_name') String targetBankName,
      @JsonKey(name: 'target_account_number') String targetAccountNumber,
      @JsonKey(name: 'target_account_holder') String targetAccountHolder,
      @JsonKey(name: 'proof_file_url') String? proofFileUrl,
      @JsonKey(name: 'admin_notes') String? adminNotes,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'processed_at') DateTime? processedAt});
}

/// @nodoc
class _$WithdrawalModelCopyWithImpl<$Res, $Val extends WithdrawalModel>
    implements $WithdrawalModelCopyWith<$Res> {
  _$WithdrawalModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WithdrawalModel
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
              as String,
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
abstract class _$$WithdrawalModelImplCopyWith<$Res>
    implements $WithdrawalModelCopyWith<$Res> {
  factory _$$WithdrawalModelImplCopyWith(_$WithdrawalModelImpl value,
          $Res Function(_$WithdrawalModelImpl) then) =
      __$$WithdrawalModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'campaign_id') String campaignId,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'amount') double amount,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'target_bank_name') String targetBankName,
      @JsonKey(name: 'target_account_number') String targetAccountNumber,
      @JsonKey(name: 'target_account_holder') String targetAccountHolder,
      @JsonKey(name: 'proof_file_url') String? proofFileUrl,
      @JsonKey(name: 'admin_notes') String? adminNotes,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'processed_at') DateTime? processedAt});
}

/// @nodoc
class __$$WithdrawalModelImplCopyWithImpl<$Res>
    extends _$WithdrawalModelCopyWithImpl<$Res, _$WithdrawalModelImpl>
    implements _$$WithdrawalModelImplCopyWith<$Res> {
  __$$WithdrawalModelImplCopyWithImpl(
      _$WithdrawalModelImpl _value, $Res Function(_$WithdrawalModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of WithdrawalModel
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
    return _then(_$WithdrawalModelImpl(
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
              as String,
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
@JsonSerializable()
class _$WithdrawalModelImpl extends _WithdrawalModel {
  const _$WithdrawalModelImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'campaign_id') required this.campaignId,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'amount') required this.amount,
      @JsonKey(name: 'status') this.status = 'pending',
      @JsonKey(name: 'target_bank_name') required this.targetBankName,
      @JsonKey(name: 'target_account_number') required this.targetAccountNumber,
      @JsonKey(name: 'target_account_holder') required this.targetAccountHolder,
      @JsonKey(name: 'proof_file_url') this.proofFileUrl,
      @JsonKey(name: 'admin_notes') this.adminNotes,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'processed_at') this.processedAt})
      : super._();

  factory _$WithdrawalModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WithdrawalModelImplFromJson(json);

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
  @JsonKey(name: 'amount')
  final double amount;
  @override
  @JsonKey(name: 'status')
  final String status;
  @override
  @JsonKey(name: 'target_bank_name')
  final String targetBankName;
  @override
  @JsonKey(name: 'target_account_number')
  final String targetAccountNumber;
  @override
  @JsonKey(name: 'target_account_holder')
  final String targetAccountHolder;
  @override
  @JsonKey(name: 'proof_file_url')
  final String? proofFileUrl;
  @override
  @JsonKey(name: 'admin_notes')
  final String? adminNotes;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'processed_at')
  final DateTime? processedAt;

  @override
  String toString() {
    return 'WithdrawalModel(id: $id, campaignId: $campaignId, userId: $userId, amount: $amount, status: $status, targetBankName: $targetBankName, targetAccountNumber: $targetAccountNumber, targetAccountHolder: $targetAccountHolder, proofFileUrl: $proofFileUrl, adminNotes: $adminNotes, createdAt: $createdAt, processedAt: $processedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WithdrawalModelImpl &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of WithdrawalModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WithdrawalModelImplCopyWith<_$WithdrawalModelImpl> get copyWith =>
      __$$WithdrawalModelImplCopyWithImpl<_$WithdrawalModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WithdrawalModelImplToJson(
      this,
    );
  }
}

abstract class _WithdrawalModel extends WithdrawalModel {
  const factory _WithdrawalModel(
      {@JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'campaign_id') required final String campaignId,
      @JsonKey(name: 'user_id') required final String userId,
      @JsonKey(name: 'amount') required final double amount,
      @JsonKey(name: 'status') final String status,
      @JsonKey(name: 'target_bank_name') required final String targetBankName,
      @JsonKey(name: 'target_account_number')
      required final String targetAccountNumber,
      @JsonKey(name: 'target_account_holder')
      required final String targetAccountHolder,
      @JsonKey(name: 'proof_file_url') final String? proofFileUrl,
      @JsonKey(name: 'admin_notes') final String? adminNotes,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'processed_at')
      final DateTime? processedAt}) = _$WithdrawalModelImpl;
  const _WithdrawalModel._() : super._();

  factory _WithdrawalModel.fromJson(Map<String, dynamic> json) =
      _$WithdrawalModelImpl.fromJson;

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
  @JsonKey(name: 'amount')
  double get amount;
  @override
  @JsonKey(name: 'status')
  String get status;
  @override
  @JsonKey(name: 'target_bank_name')
  String get targetBankName;
  @override
  @JsonKey(name: 'target_account_number')
  String get targetAccountNumber;
  @override
  @JsonKey(name: 'target_account_holder')
  String get targetAccountHolder;
  @override
  @JsonKey(name: 'proof_file_url')
  String? get proofFileUrl;
  @override
  @JsonKey(name: 'admin_notes')
  String? get adminNotes;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'processed_at')
  DateTime? get processedAt;

  /// Create a copy of WithdrawalModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WithdrawalModelImplCopyWith<_$WithdrawalModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
