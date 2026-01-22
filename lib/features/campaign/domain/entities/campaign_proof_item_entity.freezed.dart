// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaign_proof_item_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CampaignProofItemEntity {
  String get id => throw _privateConstructorUsedError;
  String get campaignId => throw _privateConstructorUsedError;
  String get mediaUrl => throw _privateConstructorUsedError;
  String? get caption => throw _privateConstructorUsedError;
  String get mediaType => throw _privateConstructorUsedError; // image, video
  int get sortOrder => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Create a copy of CampaignProofItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CampaignProofItemEntityCopyWith<CampaignProofItemEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CampaignProofItemEntityCopyWith<$Res> {
  factory $CampaignProofItemEntityCopyWith(CampaignProofItemEntity value,
          $Res Function(CampaignProofItemEntity) then) =
      _$CampaignProofItemEntityCopyWithImpl<$Res, CampaignProofItemEntity>;
  @useResult
  $Res call(
      {String id,
      String campaignId,
      String mediaUrl,
      String? caption,
      String mediaType,
      int sortOrder,
      DateTime createdAt});
}

/// @nodoc
class _$CampaignProofItemEntityCopyWithImpl<$Res,
        $Val extends CampaignProofItemEntity>
    implements $CampaignProofItemEntityCopyWith<$Res> {
  _$CampaignProofItemEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CampaignProofItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? campaignId = null,
    Object? mediaUrl = null,
    Object? caption = freezed,
    Object? mediaType = null,
    Object? sortOrder = null,
    Object? createdAt = null,
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
      mediaUrl: null == mediaUrl
          ? _value.mediaUrl
          : mediaUrl // ignore: cast_nullable_to_non_nullable
              as String,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaType: null == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String,
      sortOrder: null == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CampaignProofItemEntityImplCopyWith<$Res>
    implements $CampaignProofItemEntityCopyWith<$Res> {
  factory _$$CampaignProofItemEntityImplCopyWith(
          _$CampaignProofItemEntityImpl value,
          $Res Function(_$CampaignProofItemEntityImpl) then) =
      __$$CampaignProofItemEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String campaignId,
      String mediaUrl,
      String? caption,
      String mediaType,
      int sortOrder,
      DateTime createdAt});
}

/// @nodoc
class __$$CampaignProofItemEntityImplCopyWithImpl<$Res>
    extends _$CampaignProofItemEntityCopyWithImpl<$Res,
        _$CampaignProofItemEntityImpl>
    implements _$$CampaignProofItemEntityImplCopyWith<$Res> {
  __$$CampaignProofItemEntityImplCopyWithImpl(
      _$CampaignProofItemEntityImpl _value,
      $Res Function(_$CampaignProofItemEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of CampaignProofItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? campaignId = null,
    Object? mediaUrl = null,
    Object? caption = freezed,
    Object? mediaType = null,
    Object? sortOrder = null,
    Object? createdAt = null,
  }) {
    return _then(_$CampaignProofItemEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      campaignId: null == campaignId
          ? _value.campaignId
          : campaignId // ignore: cast_nullable_to_non_nullable
              as String,
      mediaUrl: null == mediaUrl
          ? _value.mediaUrl
          : mediaUrl // ignore: cast_nullable_to_non_nullable
              as String,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaType: null == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String,
      sortOrder: null == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$CampaignProofItemEntityImpl implements _CampaignProofItemEntity {
  const _$CampaignProofItemEntityImpl(
      {required this.id,
      required this.campaignId,
      required this.mediaUrl,
      this.caption,
      this.mediaType = 'image',
      this.sortOrder = 0,
      required this.createdAt});

  @override
  final String id;
  @override
  final String campaignId;
  @override
  final String mediaUrl;
  @override
  final String? caption;
  @override
  @JsonKey()
  final String mediaType;
// image, video
  @override
  @JsonKey()
  final int sortOrder;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'CampaignProofItemEntity(id: $id, campaignId: $campaignId, mediaUrl: $mediaUrl, caption: $caption, mediaType: $mediaType, sortOrder: $sortOrder, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CampaignProofItemEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.campaignId, campaignId) ||
                other.campaignId == campaignId) &&
            (identical(other.mediaUrl, mediaUrl) ||
                other.mediaUrl == mediaUrl) &&
            (identical(other.caption, caption) || other.caption == caption) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, campaignId, mediaUrl,
      caption, mediaType, sortOrder, createdAt);

  /// Create a copy of CampaignProofItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CampaignProofItemEntityImplCopyWith<_$CampaignProofItemEntityImpl>
      get copyWith => __$$CampaignProofItemEntityImplCopyWithImpl<
          _$CampaignProofItemEntityImpl>(this, _$identity);
}

abstract class _CampaignProofItemEntity implements CampaignProofItemEntity {
  const factory _CampaignProofItemEntity(
      {required final String id,
      required final String campaignId,
      required final String mediaUrl,
      final String? caption,
      final String mediaType,
      final int sortOrder,
      required final DateTime createdAt}) = _$CampaignProofItemEntityImpl;

  @override
  String get id;
  @override
  String get campaignId;
  @override
  String get mediaUrl;
  @override
  String? get caption;
  @override
  String get mediaType; // image, video
  @override
  int get sortOrder;
  @override
  DateTime get createdAt;

  /// Create a copy of CampaignProofItemEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CampaignProofItemEntityImplCopyWith<_$CampaignProofItemEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
