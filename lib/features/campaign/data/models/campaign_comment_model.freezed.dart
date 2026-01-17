// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaign_comment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CampaignCommentModel _$CampaignCommentModelFromJson(Map<String, dynamic> json) {
  return _CampaignCommentModel.fromJson(json);
}

/// @nodoc
mixin _$CampaignCommentModel {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'campaign_id')
  String get campaignId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'comment_text')
  String get commentText => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_id')
  String? get parentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt =>
      throw _privateConstructorUsedError; // Joined from user_profiles (read-only)
  @JsonKey(name: 'username')
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_name')
  String? get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar_url')
  String? get avatarUrl => throw _privateConstructorUsedError;

  /// Serializes this CampaignCommentModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CampaignCommentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CampaignCommentModelCopyWith<CampaignCommentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CampaignCommentModelCopyWith<$Res> {
  factory $CampaignCommentModelCopyWith(CampaignCommentModel value,
          $Res Function(CampaignCommentModel) then) =
      _$CampaignCommentModelCopyWithImpl<$Res, CampaignCommentModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'campaign_id') String campaignId,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'comment_text') String commentText,
      @JsonKey(name: 'parent_id') String? parentId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'display_name') String? displayName,
      @JsonKey(name: 'avatar_url') String? avatarUrl});
}

/// @nodoc
class _$CampaignCommentModelCopyWithImpl<$Res,
        $Val extends CampaignCommentModel>
    implements $CampaignCommentModelCopyWith<$Res> {
  _$CampaignCommentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CampaignCommentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? campaignId = null,
    Object? userId = null,
    Object? commentText = null,
    Object? parentId = freezed,
    Object? createdAt = null,
    Object? username = freezed,
    Object? displayName = freezed,
    Object? avatarUrl = freezed,
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
      commentText: null == commentText
          ? _value.commentText
          : commentText // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CampaignCommentModelImplCopyWith<$Res>
    implements $CampaignCommentModelCopyWith<$Res> {
  factory _$$CampaignCommentModelImplCopyWith(_$CampaignCommentModelImpl value,
          $Res Function(_$CampaignCommentModelImpl) then) =
      __$$CampaignCommentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'campaign_id') String campaignId,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'comment_text') String commentText,
      @JsonKey(name: 'parent_id') String? parentId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'username') String? username,
      @JsonKey(name: 'display_name') String? displayName,
      @JsonKey(name: 'avatar_url') String? avatarUrl});
}

/// @nodoc
class __$$CampaignCommentModelImplCopyWithImpl<$Res>
    extends _$CampaignCommentModelCopyWithImpl<$Res, _$CampaignCommentModelImpl>
    implements _$$CampaignCommentModelImplCopyWith<$Res> {
  __$$CampaignCommentModelImplCopyWithImpl(_$CampaignCommentModelImpl _value,
      $Res Function(_$CampaignCommentModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CampaignCommentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? campaignId = null,
    Object? userId = null,
    Object? commentText = null,
    Object? parentId = freezed,
    Object? createdAt = null,
    Object? username = freezed,
    Object? displayName = freezed,
    Object? avatarUrl = freezed,
  }) {
    return _then(_$CampaignCommentModelImpl(
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
      commentText: null == commentText
          ? _value.commentText
          : commentText // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CampaignCommentModelImpl extends _CampaignCommentModel {
  const _$CampaignCommentModelImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'campaign_id') required this.campaignId,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'comment_text') required this.commentText,
      @JsonKey(name: 'parent_id') this.parentId,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'username') this.username,
      @JsonKey(name: 'display_name') this.displayName,
      @JsonKey(name: 'avatar_url') this.avatarUrl})
      : super._();

  factory _$CampaignCommentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CampaignCommentModelImplFromJson(json);

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
  @JsonKey(name: 'comment_text')
  final String commentText;
  @override
  @JsonKey(name: 'parent_id')
  final String? parentId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
// Joined from user_profiles (read-only)
  @override
  @JsonKey(name: 'username')
  final String? username;
  @override
  @JsonKey(name: 'display_name')
  final String? displayName;
  @override
  @JsonKey(name: 'avatar_url')
  final String? avatarUrl;

  @override
  String toString() {
    return 'CampaignCommentModel(id: $id, campaignId: $campaignId, userId: $userId, commentText: $commentText, parentId: $parentId, createdAt: $createdAt, username: $username, displayName: $displayName, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CampaignCommentModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.campaignId, campaignId) ||
                other.campaignId == campaignId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.commentText, commentText) ||
                other.commentText == commentText) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, campaignId, userId,
      commentText, parentId, createdAt, username, displayName, avatarUrl);

  /// Create a copy of CampaignCommentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CampaignCommentModelImplCopyWith<_$CampaignCommentModelImpl>
      get copyWith =>
          __$$CampaignCommentModelImplCopyWithImpl<_$CampaignCommentModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CampaignCommentModelImplToJson(
      this,
    );
  }
}

abstract class _CampaignCommentModel extends CampaignCommentModel {
  const factory _CampaignCommentModel(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'campaign_id') required final String campaignId,
          @JsonKey(name: 'user_id') required final String userId,
          @JsonKey(name: 'comment_text') required final String commentText,
          @JsonKey(name: 'parent_id') final String? parentId,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'username') final String? username,
          @JsonKey(name: 'display_name') final String? displayName,
          @JsonKey(name: 'avatar_url') final String? avatarUrl}) =
      _$CampaignCommentModelImpl;
  const _CampaignCommentModel._() : super._();

  factory _CampaignCommentModel.fromJson(Map<String, dynamic> json) =
      _$CampaignCommentModelImpl.fromJson;

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
  @JsonKey(name: 'comment_text')
  String get commentText;
  @override
  @JsonKey(name: 'parent_id')
  String? get parentId;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt; // Joined from user_profiles (read-only)
  @override
  @JsonKey(name: 'username')
  String? get username;
  @override
  @JsonKey(name: 'display_name')
  String? get displayName;
  @override
  @JsonKey(name: 'avatar_url')
  String? get avatarUrl;

  /// Create a copy of CampaignCommentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CampaignCommentModelImplCopyWith<_$CampaignCommentModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
