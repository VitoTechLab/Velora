// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CommentEntity {
  String get id => throw _privateConstructorUsedError;
  String get postId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String? get userFullName => throw _privateConstructorUsedError;
  String? get userPhotoUrl => throw _privateConstructorUsedError;
  int get likesCount => throw _privateConstructorUsedError;
  bool get isLiked => throw _privateConstructorUsedError;
  String? get parentCommentId => throw _privateConstructorUsedError;
  List<CommentEntity> get replies => throw _privateConstructorUsedError;

  /// Total reply count from server.
  int get replyCount => throw _privateConstructorUsedError;

  /// Whether replies have been loaded for this comment.
  bool get repliesLoaded => throw _privateConstructorUsedError;

  /// Whether replies are currently being fetched.
  bool get isLoadingReplies => throw _privateConstructorUsedError;

  /// Create a copy of CommentEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentEntityCopyWith<CommentEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentEntityCopyWith<$Res> {
  factory $CommentEntityCopyWith(
          CommentEntity value, $Res Function(CommentEntity) then) =
      _$CommentEntityCopyWithImpl<$Res, CommentEntity>;
  @useResult
  $Res call(
      {String id,
      String postId,
      String userId,
      String content,
      DateTime createdAt,
      String? userFullName,
      String? userPhotoUrl,
      int likesCount,
      bool isLiked,
      String? parentCommentId,
      List<CommentEntity> replies,
      int replyCount,
      bool repliesLoaded,
      bool isLoadingReplies});
}

/// @nodoc
class _$CommentEntityCopyWithImpl<$Res, $Val extends CommentEntity>
    implements $CommentEntityCopyWith<$Res> {
  _$CommentEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? postId = null,
    Object? userId = null,
    Object? content = null,
    Object? createdAt = null,
    Object? userFullName = freezed,
    Object? userPhotoUrl = freezed,
    Object? likesCount = null,
    Object? isLiked = null,
    Object? parentCommentId = freezed,
    Object? replies = null,
    Object? replyCount = null,
    Object? repliesLoaded = null,
    Object? isLoadingReplies = null,
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
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userFullName: freezed == userFullName
          ? _value.userFullName
          : userFullName // ignore: cast_nullable_to_non_nullable
              as String?,
      userPhotoUrl: freezed == userPhotoUrl
          ? _value.userPhotoUrl
          : userPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      likesCount: null == likesCount
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int,
      isLiked: null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      parentCommentId: freezed == parentCommentId
          ? _value.parentCommentId
          : parentCommentId // ignore: cast_nullable_to_non_nullable
              as String?,
      replies: null == replies
          ? _value.replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<CommentEntity>,
      replyCount: null == replyCount
          ? _value.replyCount
          : replyCount // ignore: cast_nullable_to_non_nullable
              as int,
      repliesLoaded: null == repliesLoaded
          ? _value.repliesLoaded
          : repliesLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingReplies: null == isLoadingReplies
          ? _value.isLoadingReplies
          : isLoadingReplies // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentEntityImplCopyWith<$Res>
    implements $CommentEntityCopyWith<$Res> {
  factory _$$CommentEntityImplCopyWith(
          _$CommentEntityImpl value, $Res Function(_$CommentEntityImpl) then) =
      __$$CommentEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String postId,
      String userId,
      String content,
      DateTime createdAt,
      String? userFullName,
      String? userPhotoUrl,
      int likesCount,
      bool isLiked,
      String? parentCommentId,
      List<CommentEntity> replies,
      int replyCount,
      bool repliesLoaded,
      bool isLoadingReplies});
}

/// @nodoc
class __$$CommentEntityImplCopyWithImpl<$Res>
    extends _$CommentEntityCopyWithImpl<$Res, _$CommentEntityImpl>
    implements _$$CommentEntityImplCopyWith<$Res> {
  __$$CommentEntityImplCopyWithImpl(
      _$CommentEntityImpl _value, $Res Function(_$CommentEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommentEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? postId = null,
    Object? userId = null,
    Object? content = null,
    Object? createdAt = null,
    Object? userFullName = freezed,
    Object? userPhotoUrl = freezed,
    Object? likesCount = null,
    Object? isLiked = null,
    Object? parentCommentId = freezed,
    Object? replies = null,
    Object? replyCount = null,
    Object? repliesLoaded = null,
    Object? isLoadingReplies = null,
  }) {
    return _then(_$CommentEntityImpl(
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
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userFullName: freezed == userFullName
          ? _value.userFullName
          : userFullName // ignore: cast_nullable_to_non_nullable
              as String?,
      userPhotoUrl: freezed == userPhotoUrl
          ? _value.userPhotoUrl
          : userPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      likesCount: null == likesCount
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int,
      isLiked: null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
      parentCommentId: freezed == parentCommentId
          ? _value.parentCommentId
          : parentCommentId // ignore: cast_nullable_to_non_nullable
              as String?,
      replies: null == replies
          ? _value._replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<CommentEntity>,
      replyCount: null == replyCount
          ? _value.replyCount
          : replyCount // ignore: cast_nullable_to_non_nullable
              as int,
      repliesLoaded: null == repliesLoaded
          ? _value.repliesLoaded
          : repliesLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingReplies: null == isLoadingReplies
          ? _value.isLoadingReplies
          : isLoadingReplies // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CommentEntityImpl implements _CommentEntity {
  const _$CommentEntityImpl(
      {required this.id,
      required this.postId,
      required this.userId,
      required this.content,
      required this.createdAt,
      this.userFullName,
      this.userPhotoUrl,
      this.likesCount = 0,
      this.isLiked = false,
      this.parentCommentId,
      final List<CommentEntity> replies = const [],
      this.replyCount = 0,
      this.repliesLoaded = false,
      this.isLoadingReplies = false})
      : _replies = replies;

  @override
  final String id;
  @override
  final String postId;
  @override
  final String userId;
  @override
  final String content;
  @override
  final DateTime createdAt;
  @override
  final String? userFullName;
  @override
  final String? userPhotoUrl;
  @override
  @JsonKey()
  final int likesCount;
  @override
  @JsonKey()
  final bool isLiked;
  @override
  final String? parentCommentId;
  final List<CommentEntity> _replies;
  @override
  @JsonKey()
  List<CommentEntity> get replies {
    if (_replies is EqualUnmodifiableListView) return _replies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_replies);
  }

  /// Total reply count from server.
  @override
  @JsonKey()
  final int replyCount;

  /// Whether replies have been loaded for this comment.
  @override
  @JsonKey()
  final bool repliesLoaded;

  /// Whether replies are currently being fetched.
  @override
  @JsonKey()
  final bool isLoadingReplies;

  @override
  String toString() {
    return 'CommentEntity(id: $id, postId: $postId, userId: $userId, content: $content, createdAt: $createdAt, userFullName: $userFullName, userPhotoUrl: $userPhotoUrl, likesCount: $likesCount, isLiked: $isLiked, parentCommentId: $parentCommentId, replies: $replies, replyCount: $replyCount, repliesLoaded: $repliesLoaded, isLoadingReplies: $isLoadingReplies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.userFullName, userFullName) ||
                other.userFullName == userFullName) &&
            (identical(other.userPhotoUrl, userPhotoUrl) ||
                other.userPhotoUrl == userPhotoUrl) &&
            (identical(other.likesCount, likesCount) ||
                other.likesCount == likesCount) &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked) &&
            (identical(other.parentCommentId, parentCommentId) ||
                other.parentCommentId == parentCommentId) &&
            const DeepCollectionEquality().equals(other._replies, _replies) &&
            (identical(other.replyCount, replyCount) ||
                other.replyCount == replyCount) &&
            (identical(other.repliesLoaded, repliesLoaded) ||
                other.repliesLoaded == repliesLoaded) &&
            (identical(other.isLoadingReplies, isLoadingReplies) ||
                other.isLoadingReplies == isLoadingReplies));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      postId,
      userId,
      content,
      createdAt,
      userFullName,
      userPhotoUrl,
      likesCount,
      isLiked,
      parentCommentId,
      const DeepCollectionEquality().hash(_replies),
      replyCount,
      repliesLoaded,
      isLoadingReplies);

  /// Create a copy of CommentEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentEntityImplCopyWith<_$CommentEntityImpl> get copyWith =>
      __$$CommentEntityImplCopyWithImpl<_$CommentEntityImpl>(this, _$identity);
}

abstract class _CommentEntity implements CommentEntity {
  const factory _CommentEntity(
      {required final String id,
      required final String postId,
      required final String userId,
      required final String content,
      required final DateTime createdAt,
      final String? userFullName,
      final String? userPhotoUrl,
      final int likesCount,
      final bool isLiked,
      final String? parentCommentId,
      final List<CommentEntity> replies,
      final int replyCount,
      final bool repliesLoaded,
      final bool isLoadingReplies}) = _$CommentEntityImpl;

  @override
  String get id;
  @override
  String get postId;
  @override
  String get userId;
  @override
  String get content;
  @override
  DateTime get createdAt;
  @override
  String? get userFullName;
  @override
  String? get userPhotoUrl;
  @override
  int get likesCount;
  @override
  bool get isLiked;
  @override
  String? get parentCommentId;
  @override
  List<CommentEntity> get replies;

  /// Total reply count from server.
  @override
  int get replyCount;

  /// Whether replies have been loaded for this comment.
  @override
  bool get repliesLoaded;

  /// Whether replies are currently being fetched.
  @override
  bool get isLoadingReplies;

  /// Create a copy of CommentEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentEntityImplCopyWith<_$CommentEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
