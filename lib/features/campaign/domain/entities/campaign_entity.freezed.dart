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
  String get postId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get targetAmount => throw _privateConstructorUsedError;
  double get amountRaised => throw _privateConstructorUsedError;
  CampaignStatus get status => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get completedAt => throw _privateConstructorUsedError;
  List<String> get donorIds => throw _privateConstructorUsedError;

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
      String postId,
      String userId,
      String title,
      String description,
      double targetAmount,
      double amountRaised,
      CampaignStatus status,
      DateTime createdAt,
      DateTime? completedAt,
      List<String> donorIds});
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
    Object? postId = null,
    Object? userId = null,
    Object? title = null,
    Object? description = null,
    Object? targetAmount = null,
    Object? amountRaised = null,
    Object? status = null,
    Object? createdAt = null,
    Object? completedAt = freezed,
    Object? donorIds = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      targetAmount: null == targetAmount
          ? _value.targetAmount
          : targetAmount // ignore: cast_nullable_to_non_nullable
              as double,
      amountRaised: null == amountRaised
          ? _value.amountRaised
          : amountRaised // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CampaignStatus,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      donorIds: null == donorIds
          ? _value.donorIds
          : donorIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
      String postId,
      String userId,
      String title,
      String description,
      double targetAmount,
      double amountRaised,
      CampaignStatus status,
      DateTime createdAt,
      DateTime? completedAt,
      List<String> donorIds});
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
    Object? postId = null,
    Object? userId = null,
    Object? title = null,
    Object? description = null,
    Object? targetAmount = null,
    Object? amountRaised = null,
    Object? status = null,
    Object? createdAt = null,
    Object? completedAt = freezed,
    Object? donorIds = null,
  }) {
    return _then(_$CampaignEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      targetAmount: null == targetAmount
          ? _value.targetAmount
          : targetAmount // ignore: cast_nullable_to_non_nullable
              as double,
      amountRaised: null == amountRaised
          ? _value.amountRaised
          : amountRaised // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CampaignStatus,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      donorIds: null == donorIds
          ? _value._donorIds
          : donorIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$CampaignEntityImpl implements _CampaignEntity {
  const _$CampaignEntityImpl(
      {required this.id,
      required this.postId,
      required this.userId,
      required this.title,
      required this.description,
      required this.targetAmount,
      required this.amountRaised,
      required this.status,
      required this.createdAt,
      this.completedAt,
      final List<String> donorIds = const <String>[]})
      : _donorIds = donorIds;

  @override
  final String id;
  @override
  final String postId;
  @override
  final String userId;
  @override
  final String title;
  @override
  final String description;
  @override
  final double targetAmount;
  @override
  final double amountRaised;
  @override
  final CampaignStatus status;
  @override
  final DateTime createdAt;
  @override
  final DateTime? completedAt;
  final List<String> _donorIds;
  @override
  @JsonKey()
  List<String> get donorIds {
    if (_donorIds is EqualUnmodifiableListView) return _donorIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_donorIds);
  }

  @override
  String toString() {
    return 'CampaignEntity(id: $id, postId: $postId, userId: $userId, title: $title, description: $description, targetAmount: $targetAmount, amountRaised: $amountRaised, status: $status, createdAt: $createdAt, completedAt: $completedAt, donorIds: $donorIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CampaignEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.targetAmount, targetAmount) ||
                other.targetAmount == targetAmount) &&
            (identical(other.amountRaised, amountRaised) ||
                other.amountRaised == amountRaised) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            const DeepCollectionEquality().equals(other._donorIds, _donorIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      postId,
      userId,
      title,
      description,
      targetAmount,
      amountRaised,
      status,
      createdAt,
      completedAt,
      const DeepCollectionEquality().hash(_donorIds));

  /// Create a copy of CampaignEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CampaignEntityImplCopyWith<_$CampaignEntityImpl> get copyWith =>
      __$$CampaignEntityImplCopyWithImpl<_$CampaignEntityImpl>(
          this, _$identity);
}

abstract class _CampaignEntity implements CampaignEntity {
  const factory _CampaignEntity(
      {required final String id,
      required final String postId,
      required final String userId,
      required final String title,
      required final String description,
      required final double targetAmount,
      required final double amountRaised,
      required final CampaignStatus status,
      required final DateTime createdAt,
      final DateTime? completedAt,
      final List<String> donorIds}) = _$CampaignEntityImpl;

  @override
  String get id;
  @override
  String get postId;
  @override
  String get userId;
  @override
  String get title;
  @override
  String get description;
  @override
  double get targetAmount;
  @override
  double get amountRaised;
  @override
  CampaignStatus get status;
  @override
  DateTime get createdAt;
  @override
  DateTime? get completedAt;
  @override
  List<String> get donorIds;

  /// Create a copy of CampaignEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CampaignEntityImplCopyWith<_$CampaignEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
