// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaign_document_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CampaignDocumentEntity {
  String get id => throw _privateConstructorUsedError;
  String get campaignId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get typeLabel => throw _privateConstructorUsedError;
  String? get fileUrl => throw _privateConstructorUsedError;
  String get status =>
      throw _privateConstructorUsedError; // pending, verified, rejected
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Create a copy of CampaignDocumentEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CampaignDocumentEntityCopyWith<CampaignDocumentEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CampaignDocumentEntityCopyWith<$Res> {
  factory $CampaignDocumentEntityCopyWith(CampaignDocumentEntity value,
          $Res Function(CampaignDocumentEntity) then) =
      _$CampaignDocumentEntityCopyWithImpl<$Res, CampaignDocumentEntity>;
  @useResult
  $Res call(
      {String id,
      String campaignId,
      String title,
      String typeLabel,
      String? fileUrl,
      String status,
      DateTime createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$CampaignDocumentEntityCopyWithImpl<$Res,
        $Val extends CampaignDocumentEntity>
    implements $CampaignDocumentEntityCopyWith<$Res> {
  _$CampaignDocumentEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CampaignDocumentEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? campaignId = null,
    Object? title = null,
    Object? typeLabel = null,
    Object? fileUrl = freezed,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
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
      typeLabel: null == typeLabel
          ? _value.typeLabel
          : typeLabel // ignore: cast_nullable_to_non_nullable
              as String,
      fileUrl: freezed == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CampaignDocumentEntityImplCopyWith<$Res>
    implements $CampaignDocumentEntityCopyWith<$Res> {
  factory _$$CampaignDocumentEntityImplCopyWith(
          _$CampaignDocumentEntityImpl value,
          $Res Function(_$CampaignDocumentEntityImpl) then) =
      __$$CampaignDocumentEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String campaignId,
      String title,
      String typeLabel,
      String? fileUrl,
      String status,
      DateTime createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$CampaignDocumentEntityImplCopyWithImpl<$Res>
    extends _$CampaignDocumentEntityCopyWithImpl<$Res,
        _$CampaignDocumentEntityImpl>
    implements _$$CampaignDocumentEntityImplCopyWith<$Res> {
  __$$CampaignDocumentEntityImplCopyWithImpl(
      _$CampaignDocumentEntityImpl _value,
      $Res Function(_$CampaignDocumentEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of CampaignDocumentEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? campaignId = null,
    Object? title = null,
    Object? typeLabel = null,
    Object? fileUrl = freezed,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_$CampaignDocumentEntityImpl(
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
      typeLabel: null == typeLabel
          ? _value.typeLabel
          : typeLabel // ignore: cast_nullable_to_non_nullable
              as String,
      fileUrl: freezed == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$CampaignDocumentEntityImpl implements _CampaignDocumentEntity {
  const _$CampaignDocumentEntityImpl(
      {required this.id,
      required this.campaignId,
      required this.title,
      this.typeLabel = 'Document',
      this.fileUrl,
      this.status = 'pending',
      required this.createdAt,
      this.updatedAt});

  @override
  final String id;
  @override
  final String campaignId;
  @override
  final String title;
  @override
  @JsonKey()
  final String typeLabel;
  @override
  final String? fileUrl;
  @override
  @JsonKey()
  final String status;
// pending, verified, rejected
  @override
  final DateTime createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'CampaignDocumentEntity(id: $id, campaignId: $campaignId, title: $title, typeLabel: $typeLabel, fileUrl: $fileUrl, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CampaignDocumentEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.campaignId, campaignId) ||
                other.campaignId == campaignId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.typeLabel, typeLabel) ||
                other.typeLabel == typeLabel) &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, campaignId, title, typeLabel,
      fileUrl, status, createdAt, updatedAt);

  /// Create a copy of CampaignDocumentEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CampaignDocumentEntityImplCopyWith<_$CampaignDocumentEntityImpl>
      get copyWith => __$$CampaignDocumentEntityImplCopyWithImpl<
          _$CampaignDocumentEntityImpl>(this, _$identity);
}

abstract class _CampaignDocumentEntity implements CampaignDocumentEntity {
  const factory _CampaignDocumentEntity(
      {required final String id,
      required final String campaignId,
      required final String title,
      final String typeLabel,
      final String? fileUrl,
      final String status,
      required final DateTime createdAt,
      final DateTime? updatedAt}) = _$CampaignDocumentEntityImpl;

  @override
  String get id;
  @override
  String get campaignId;
  @override
  String get title;
  @override
  String get typeLabel;
  @override
  String? get fileUrl;
  @override
  String get status; // pending, verified, rejected
  @override
  DateTime get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of CampaignDocumentEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CampaignDocumentEntityImplCopyWith<_$CampaignDocumentEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
