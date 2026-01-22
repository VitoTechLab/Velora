// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaign_milestone_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CampaignMilestoneEntity {
  String get id => throw _privateConstructorUsedError;
  String get campaignId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  double get targetAmount => throw _privateConstructorUsedError;
  DateTime? get dueDate => throw _privateConstructorUsedError;
  String get status =>
      throw _privateConstructorUsedError; // pending, in_progress, completed, missed
  int get sortOrder => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get completedAt => throw _privateConstructorUsedError;

  /// Create a copy of CampaignMilestoneEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CampaignMilestoneEntityCopyWith<CampaignMilestoneEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CampaignMilestoneEntityCopyWith<$Res> {
  factory $CampaignMilestoneEntityCopyWith(CampaignMilestoneEntity value,
          $Res Function(CampaignMilestoneEntity) then) =
      _$CampaignMilestoneEntityCopyWithImpl<$Res, CampaignMilestoneEntity>;
  @useResult
  $Res call(
      {String id,
      String campaignId,
      String title,
      String? description,
      double targetAmount,
      DateTime? dueDate,
      String status,
      int sortOrder,
      DateTime createdAt,
      DateTime? completedAt});
}

/// @nodoc
class _$CampaignMilestoneEntityCopyWithImpl<$Res,
        $Val extends CampaignMilestoneEntity>
    implements $CampaignMilestoneEntityCopyWith<$Res> {
  _$CampaignMilestoneEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CampaignMilestoneEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? campaignId = null,
    Object? title = null,
    Object? description = freezed,
    Object? targetAmount = null,
    Object? dueDate = freezed,
    Object? status = null,
    Object? sortOrder = null,
    Object? createdAt = null,
    Object? completedAt = freezed,
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
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      targetAmount: null == targetAmount
          ? _value.targetAmount
          : targetAmount // ignore: cast_nullable_to_non_nullable
              as double,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      sortOrder: null == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$CampaignMilestoneEntityImplCopyWith<$Res>
    implements $CampaignMilestoneEntityCopyWith<$Res> {
  factory _$$CampaignMilestoneEntityImplCopyWith(
          _$CampaignMilestoneEntityImpl value,
          $Res Function(_$CampaignMilestoneEntityImpl) then) =
      __$$CampaignMilestoneEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String campaignId,
      String title,
      String? description,
      double targetAmount,
      DateTime? dueDate,
      String status,
      int sortOrder,
      DateTime createdAt,
      DateTime? completedAt});
}

/// @nodoc
class __$$CampaignMilestoneEntityImplCopyWithImpl<$Res>
    extends _$CampaignMilestoneEntityCopyWithImpl<$Res,
        _$CampaignMilestoneEntityImpl>
    implements _$$CampaignMilestoneEntityImplCopyWith<$Res> {
  __$$CampaignMilestoneEntityImplCopyWithImpl(
      _$CampaignMilestoneEntityImpl _value,
      $Res Function(_$CampaignMilestoneEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of CampaignMilestoneEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? campaignId = null,
    Object? title = null,
    Object? description = freezed,
    Object? targetAmount = null,
    Object? dueDate = freezed,
    Object? status = null,
    Object? sortOrder = null,
    Object? createdAt = null,
    Object? completedAt = freezed,
  }) {
    return _then(_$CampaignMilestoneEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      campaignId: null == campaignId
          ? _value.campaignId
          : campaignId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      targetAmount: null == targetAmount
          ? _value.targetAmount
          : targetAmount // ignore: cast_nullable_to_non_nullable
              as double,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      sortOrder: null == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as int,
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

class _$CampaignMilestoneEntityImpl implements _CampaignMilestoneEntity {
  const _$CampaignMilestoneEntityImpl(
      {required this.id,
      required this.campaignId,
      required this.title,
      this.description,
      required this.targetAmount,
      this.dueDate,
      this.status = 'pending',
      this.sortOrder = 0,
      required this.createdAt,
      this.completedAt});

  @override
  final String id;
  @override
  final String campaignId;
  @override
  final String title;
  @override
  final String? description;
  @override
  final double targetAmount;
  @override
  final DateTime? dueDate;
  @override
  @JsonKey()
  final String status;
// pending, in_progress, completed, missed
  @override
  @JsonKey()
  final int sortOrder;
  @override
  final DateTime createdAt;
  @override
  final DateTime? completedAt;

  @override
  String toString() {
    return 'CampaignMilestoneEntity(id: $id, campaignId: $campaignId, title: $title, description: $description, targetAmount: $targetAmount, dueDate: $dueDate, status: $status, sortOrder: $sortOrder, createdAt: $createdAt, completedAt: $completedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CampaignMilestoneEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.campaignId, campaignId) ||
                other.campaignId == campaignId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.targetAmount, targetAmount) ||
                other.targetAmount == targetAmount) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      campaignId,
      title,
      description,
      targetAmount,
      dueDate,
      status,
      sortOrder,
      createdAt,
      completedAt);

  /// Create a copy of CampaignMilestoneEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CampaignMilestoneEntityImplCopyWith<_$CampaignMilestoneEntityImpl>
      get copyWith => __$$CampaignMilestoneEntityImplCopyWithImpl<
          _$CampaignMilestoneEntityImpl>(this, _$identity);
}

abstract class _CampaignMilestoneEntity implements CampaignMilestoneEntity {
  const factory _CampaignMilestoneEntity(
      {required final String id,
      required final String campaignId,
      required final String title,
      final String? description,
      required final double targetAmount,
      final DateTime? dueDate,
      final String status,
      final int sortOrder,
      required final DateTime createdAt,
      final DateTime? completedAt}) = _$CampaignMilestoneEntityImpl;

  @override
  String get id;
  @override
  String get campaignId;
  @override
  String get title;
  @override
  String? get description;
  @override
  double get targetAmount;
  @override
  DateTime? get dueDate;
  @override
  String get status; // pending, in_progress, completed, missed
  @override
  int get sortOrder;
  @override
  DateTime get createdAt;
  @override
  DateTime? get completedAt;

  /// Create a copy of CampaignMilestoneEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CampaignMilestoneEntityImplCopyWith<_$CampaignMilestoneEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
