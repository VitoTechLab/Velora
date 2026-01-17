// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaign_update_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CampaignUpdateModel _$CampaignUpdateModelFromJson(Map<String, dynamic> json) {
  return _CampaignUpdateModel.fromJson(json);
}

/// @nodoc
mixin _$CampaignUpdateModel {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'campaign_id')
  String get campaignId => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'update_text')
  String get updateText => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this CampaignUpdateModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CampaignUpdateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CampaignUpdateModelCopyWith<CampaignUpdateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CampaignUpdateModelCopyWith<$Res> {
  factory $CampaignUpdateModelCopyWith(
          CampaignUpdateModel value, $Res Function(CampaignUpdateModel) then) =
      _$CampaignUpdateModelCopyWithImpl<$Res, CampaignUpdateModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'campaign_id') String campaignId,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'update_text') String updateText,
      @JsonKey(name: 'image_url') String? imageUrl,
      @JsonKey(name: 'created_at') DateTime createdAt});
}

/// @nodoc
class _$CampaignUpdateModelCopyWithImpl<$Res, $Val extends CampaignUpdateModel>
    implements $CampaignUpdateModelCopyWith<$Res> {
  _$CampaignUpdateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CampaignUpdateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? campaignId = null,
    Object? title = freezed,
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
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$CampaignUpdateModelImplCopyWith<$Res>
    implements $CampaignUpdateModelCopyWith<$Res> {
  factory _$$CampaignUpdateModelImplCopyWith(_$CampaignUpdateModelImpl value,
          $Res Function(_$CampaignUpdateModelImpl) then) =
      __$$CampaignUpdateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'campaign_id') String campaignId,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'update_text') String updateText,
      @JsonKey(name: 'image_url') String? imageUrl,
      @JsonKey(name: 'created_at') DateTime createdAt});
}

/// @nodoc
class __$$CampaignUpdateModelImplCopyWithImpl<$Res>
    extends _$CampaignUpdateModelCopyWithImpl<$Res, _$CampaignUpdateModelImpl>
    implements _$$CampaignUpdateModelImplCopyWith<$Res> {
  __$$CampaignUpdateModelImplCopyWithImpl(_$CampaignUpdateModelImpl _value,
      $Res Function(_$CampaignUpdateModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CampaignUpdateModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? campaignId = null,
    Object? title = freezed,
    Object? updateText = null,
    Object? imageUrl = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$CampaignUpdateModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      campaignId: null == campaignId
          ? _value.campaignId
          : campaignId // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
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
@JsonSerializable()
class _$CampaignUpdateModelImpl extends _CampaignUpdateModel {
  const _$CampaignUpdateModelImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'campaign_id') required this.campaignId,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'update_text') required this.updateText,
      @JsonKey(name: 'image_url') this.imageUrl,
      @JsonKey(name: 'created_at') required this.createdAt})
      : super._();

  factory _$CampaignUpdateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CampaignUpdateModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'campaign_id')
  final String campaignId;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'update_text')
  final String updateText;
  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  @override
  String toString() {
    return 'CampaignUpdateModel(id: $id, campaignId: $campaignId, title: $title, updateText: $updateText, imageUrl: $imageUrl, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CampaignUpdateModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.campaignId, campaignId) ||
                other.campaignId == campaignId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.updateText, updateText) ||
                other.updateText == updateText) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, campaignId, title, updateText, imageUrl, createdAt);

  /// Create a copy of CampaignUpdateModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CampaignUpdateModelImplCopyWith<_$CampaignUpdateModelImpl> get copyWith =>
      __$$CampaignUpdateModelImplCopyWithImpl<_$CampaignUpdateModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CampaignUpdateModelImplToJson(
      this,
    );
  }
}

abstract class _CampaignUpdateModel extends CampaignUpdateModel {
  const factory _CampaignUpdateModel(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'campaign_id') required final String campaignId,
          @JsonKey(name: 'title') final String? title,
          @JsonKey(name: 'update_text') required final String updateText,
          @JsonKey(name: 'image_url') final String? imageUrl,
          @JsonKey(name: 'created_at') required final DateTime createdAt}) =
      _$CampaignUpdateModelImpl;
  const _CampaignUpdateModel._() : super._();

  factory _CampaignUpdateModel.fromJson(Map<String, dynamic> json) =
      _$CampaignUpdateModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'campaign_id')
  String get campaignId;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'update_text')
  String get updateText;
  @override
  @JsonKey(name: 'image_url')
  String? get imageUrl;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;

  /// Create a copy of CampaignUpdateModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CampaignUpdateModelImplCopyWith<_$CampaignUpdateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
