// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaign_update_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CampaignUpdateEntity {
  String get id => throw _privateConstructorUsedError;
  String get campaignId => throw _privateConstructorUsedError;
  String get updateText => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Create a copy of CampaignUpdateEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CampaignUpdateEntityCopyWith<CampaignUpdateEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CampaignUpdateEntityCopyWith<$Res> {
  factory $CampaignUpdateEntityCopyWith(CampaignUpdateEntity value,
          $Res Function(CampaignUpdateEntity) then) =
      _$CampaignUpdateEntityCopyWithImpl<$Res, CampaignUpdateEntity>;
  @useResult
  $Res call(
      {String id,
      String campaignId,
      String updateText,
      String? imageUrl,
      DateTime createdAt});
}

/// @nodoc
class _$CampaignUpdateEntityCopyWithImpl<$Res,
        $Val extends CampaignUpdateEntity>
    implements $CampaignUpdateEntityCopyWith<$Res> {
  _$CampaignUpdateEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CampaignUpdateEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? campaignId = null,
    Object? updateText = null,
    Object? imageUrl = freezed,
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
      updateText: null == updateText
          ? _value.updateText
          : updateText // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CampaignUpdateEntityImplCopyWith<$Res>
    implements $CampaignUpdateEntityCopyWith<$Res> {
  factory _$$CampaignUpdateEntityImplCopyWith(_$CampaignUpdateEntityImpl value,
          $Res Function(_$CampaignUpdateEntityImpl) then) =
      __$$CampaignUpdateEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String campaignId,
      String updateText,
      String? imageUrl,
      DateTime createdAt});
}

/// @nodoc
class __$$CampaignUpdateEntityImplCopyWithImpl<$Res>
    extends _$CampaignUpdateEntityCopyWithImpl<$Res, _$CampaignUpdateEntityImpl>
    implements _$$CampaignUpdateEntityImplCopyWith<$Res> {
  __$$CampaignUpdateEntityImplCopyWithImpl(_$CampaignUpdateEntityImpl _value,
      $Res Function(_$CampaignUpdateEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of CampaignUpdateEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? campaignId = null,
    Object? updateText = null,
    Object? imageUrl = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$CampaignUpdateEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      campaignId: null == campaignId
          ? _value.campaignId
          : campaignId // ignore: cast_nullable_to_non_nullable
              as String,
      updateText: null == updateText
          ? _value.updateText
          : updateText // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$CampaignUpdateEntityImpl implements _CampaignUpdateEntity {
  const _$CampaignUpdateEntityImpl(
      {required this.id,
      required this.campaignId,
      required this.updateText,
      this.imageUrl,
      required this.createdAt});

  @override
  final String id;
  @override
  final String campaignId;
  @override
  final String updateText;
  @override
  final String? imageUrl;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'CampaignUpdateEntity(id: $id, campaignId: $campaignId, updateText: $updateText, imageUrl: $imageUrl, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CampaignUpdateEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.campaignId, campaignId) ||
                other.campaignId == campaignId) &&
            (identical(other.updateText, updateText) ||
                other.updateText == updateText) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, campaignId, updateText, imageUrl, createdAt);

  /// Create a copy of CampaignUpdateEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CampaignUpdateEntityImplCopyWith<_$CampaignUpdateEntityImpl>
      get copyWith =>
          __$$CampaignUpdateEntityImplCopyWithImpl<_$CampaignUpdateEntityImpl>(
              this, _$identity);
}

abstract class _CampaignUpdateEntity implements CampaignUpdateEntity {
  const factory _CampaignUpdateEntity(
      {required final String id,
      required final String campaignId,
      required final String updateText,
      final String? imageUrl,
      required final DateTime createdAt}) = _$CampaignUpdateEntityImpl;

  @override
  String get id;
  @override
  String get campaignId;
  @override
  String get updateText;
  @override
  String? get imageUrl;
  @override
  DateTime get createdAt;

  /// Create a copy of CampaignUpdateEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CampaignUpdateEntityImplCopyWith<_$CampaignUpdateEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
