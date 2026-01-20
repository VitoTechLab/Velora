// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaign_comment_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CampaignCommentEntity {
  String get id => throw _privateConstructorUsedError;
  String get campaignId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get commentText => throw _privateConstructorUsedError;
  String? get parentId => throw _privateConstructorUsedError;
  DateTime get createdAt =>
      throw _privateConstructorUsedError; // Joined from user_profiles (read-only)
  String? get username => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  String? get avatarUrl =>
      throw _privateConstructorUsedError; // For threaded comments
  List<CampaignCommentEntity> get replies => throw _privateConstructorUsedError;

  /// Create a copy of CampaignCommentEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CampaignCommentEntityCopyWith<CampaignCommentEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CampaignCommentEntityCopyWith<$Res> {
  factory $CampaignCommentEntityCopyWith(CampaignCommentEntity value,
          $Res Function(CampaignCommentEntity) then) =
      _$CampaignCommentEntityCopyWithImpl<$Res, CampaignCommentEntity>;
  @useResult
  $Res call(
      {String id,
      String campaignId,
      String userId,
      String commentText,
      String? parentId,
      DateTime createdAt,
      String? username,
      String? displayName,
      String? avatarUrl,
      List<CampaignCommentEntity> replies});
}

/// @nodoc
class _$CampaignCommentEntityCopyWithImpl<$Res,
        $Val extends CampaignCommentEntity>
    implements $CampaignCommentEntityCopyWith<$Res> {
  _$CampaignCommentEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CampaignCommentEntity
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
    Object? replies = null,
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
      replies: null == replies
          ? _value.replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<CampaignCommentEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CampaignCommentEntityImplCopyWith<$Res>
    implements $CampaignCommentEntityCopyWith<$Res> {
  factory _$$CampaignCommentEntityImplCopyWith(
          _$CampaignCommentEntityImpl value,
          $Res Function(_$CampaignCommentEntityImpl) then) =
      __$$CampaignCommentEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String campaignId,
      String userId,
      String commentText,
      String? parentId,
      DateTime createdAt,
      String? username,
      String? displayName,
      String? avatarUrl,
      List<CampaignCommentEntity> replies});
}

/// @nodoc
class __$$CampaignCommentEntityImplCopyWithImpl<$Res>
    extends _$CampaignCommentEntityCopyWithImpl<$Res,
        _$CampaignCommentEntityImpl>
    implements _$$CampaignCommentEntityImplCopyWith<$Res> {
  __$$CampaignCommentEntityImplCopyWithImpl(_$CampaignCommentEntityImpl _value,
      $Res Function(_$CampaignCommentEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of CampaignCommentEntity
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
    Object? replies = null,
  }) {
    return _then(_$CampaignCommentEntityImpl(
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
      replies: null == replies
          ? _value._replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<CampaignCommentEntity>,
    ));
  }
}

/// @nodoc

class _$CampaignCommentEntityImpl implements _CampaignCommentEntity {
  const _$CampaignCommentEntityImpl(
      {required this.id,
      required this.campaignId,
      required this.userId,
      required this.commentText,
      this.parentId,
      required this.createdAt,
      this.username,
      this.displayName,
      this.avatarUrl,
      final List<CampaignCommentEntity> replies = const []})
      : _replies = replies;

  @override
  final String id;
  @override
  final String campaignId;
  @override
  final String userId;
  @override
  final String commentText;
  @override
  final String? parentId;
  @override
  final DateTime createdAt;
// Joined from user_profiles (read-only)
  @override
  final String? username;
  @override
  final String? displayName;
  @override
  final String? avatarUrl;
// For threaded comments
  final List<CampaignCommentEntity> _replies;
// For threaded comments
  @override
  @JsonKey()
  List<CampaignCommentEntity> get replies {
    if (_replies is EqualUnmodifiableListView) return _replies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_replies);
  }

  @override
  String toString() {
    return 'CampaignCommentEntity(id: $id, campaignId: $campaignId, userId: $userId, commentText: $commentText, parentId: $parentId, createdAt: $createdAt, username: $username, displayName: $displayName, avatarUrl: $avatarUrl, replies: $replies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CampaignCommentEntityImpl &&
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
                other.avatarUrl == avatarUrl) &&
            const DeepCollectionEquality().equals(other._replies, _replies));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      campaignId,
      userId,
      commentText,
      parentId,
      createdAt,
      username,
      displayName,
      avatarUrl,
      const DeepCollectionEquality().hash(_replies));

  /// Create a copy of CampaignCommentEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CampaignCommentEntityImplCopyWith<_$CampaignCommentEntityImpl>
      get copyWith => __$$CampaignCommentEntityImplCopyWithImpl<
          _$CampaignCommentEntityImpl>(this, _$identity);
}

abstract class _CampaignCommentEntity implements CampaignCommentEntity {
  const factory _CampaignCommentEntity(
      {required final String id,
      required final String campaignId,
      required final String userId,
      required final String commentText,
      final String? parentId,
      required final DateTime createdAt,
      final String? username,
      final String? displayName,
      final String? avatarUrl,
      final List<CampaignCommentEntity> replies}) = _$CampaignCommentEntityImpl;

  @override
  String get id;
  @override
  String get campaignId;
  @override
  String get userId;
  @override
  String get commentText;
  @override
  String? get parentId;
  @override
  DateTime get createdAt; // Joined from user_profiles (read-only)
  @override
  String? get username;
  @override
  String? get displayName;
  @override
  String? get avatarUrl; // For threaded comments
  @override
  List<CampaignCommentEntity> get replies;

  /// Create a copy of CampaignCommentEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CampaignCommentEntityImplCopyWith<_$CampaignCommentEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
