// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversation_list_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ConversationListEntity {
  String get userId => throw _privateConstructorUsedError;
  String get conversationId => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError; // 'direct' or 'group'
  String? get title => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  DateTime? get lastMessageAt => throw _privateConstructorUsedError;
  String? get lastMessageId => throw _privateConstructorUsedError;
  String? get lastMessageKind => throw _privateConstructorUsedError;
  String? get lastMessagePreview => throw _privateConstructorUsedError;
  int get unreadCount => throw _privateConstructorUsedError;
  DateTime? get lastReadAt => throw _privateConstructorUsedError;

  /// Create a copy of ConversationListEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConversationListEntityCopyWith<ConversationListEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationListEntityCopyWith<$Res> {
  factory $ConversationListEntityCopyWith(ConversationListEntity value,
          $Res Function(ConversationListEntity) then) =
      _$ConversationListEntityCopyWithImpl<$Res, ConversationListEntity>;
  @useResult
  $Res call(
      {String userId,
      String conversationId,
      String type,
      String? title,
      String? photoUrl,
      DateTime? lastMessageAt,
      String? lastMessageId,
      String? lastMessageKind,
      String? lastMessagePreview,
      int unreadCount,
      DateTime? lastReadAt});
}

/// @nodoc
class _$ConversationListEntityCopyWithImpl<$Res,
        $Val extends ConversationListEntity>
    implements $ConversationListEntityCopyWith<$Res> {
  _$ConversationListEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConversationListEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? conversationId = null,
    Object? type = null,
    Object? title = freezed,
    Object? photoUrl = freezed,
    Object? lastMessageAt = freezed,
    Object? lastMessageId = freezed,
    Object? lastMessageKind = freezed,
    Object? lastMessagePreview = freezed,
    Object? unreadCount = null,
    Object? lastReadAt = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      conversationId: null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      lastMessageAt: freezed == lastMessageAt
          ? _value.lastMessageAt
          : lastMessageAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastMessageId: freezed == lastMessageId
          ? _value.lastMessageId
          : lastMessageId // ignore: cast_nullable_to_non_nullable
              as String?,
      lastMessageKind: freezed == lastMessageKind
          ? _value.lastMessageKind
          : lastMessageKind // ignore: cast_nullable_to_non_nullable
              as String?,
      lastMessagePreview: freezed == lastMessagePreview
          ? _value.lastMessagePreview
          : lastMessagePreview // ignore: cast_nullable_to_non_nullable
              as String?,
      unreadCount: null == unreadCount
          ? _value.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as int,
      lastReadAt: freezed == lastReadAt
          ? _value.lastReadAt
          : lastReadAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConversationListEntityImplCopyWith<$Res>
    implements $ConversationListEntityCopyWith<$Res> {
  factory _$$ConversationListEntityImplCopyWith(
          _$ConversationListEntityImpl value,
          $Res Function(_$ConversationListEntityImpl) then) =
      __$$ConversationListEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String conversationId,
      String type,
      String? title,
      String? photoUrl,
      DateTime? lastMessageAt,
      String? lastMessageId,
      String? lastMessageKind,
      String? lastMessagePreview,
      int unreadCount,
      DateTime? lastReadAt});
}

/// @nodoc
class __$$ConversationListEntityImplCopyWithImpl<$Res>
    extends _$ConversationListEntityCopyWithImpl<$Res,
        _$ConversationListEntityImpl>
    implements _$$ConversationListEntityImplCopyWith<$Res> {
  __$$ConversationListEntityImplCopyWithImpl(
      _$ConversationListEntityImpl _value,
      $Res Function(_$ConversationListEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConversationListEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? conversationId = null,
    Object? type = null,
    Object? title = freezed,
    Object? photoUrl = freezed,
    Object? lastMessageAt = freezed,
    Object? lastMessageId = freezed,
    Object? lastMessageKind = freezed,
    Object? lastMessagePreview = freezed,
    Object? unreadCount = null,
    Object? lastReadAt = freezed,
  }) {
    return _then(_$ConversationListEntityImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      conversationId: null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      lastMessageAt: freezed == lastMessageAt
          ? _value.lastMessageAt
          : lastMessageAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastMessageId: freezed == lastMessageId
          ? _value.lastMessageId
          : lastMessageId // ignore: cast_nullable_to_non_nullable
              as String?,
      lastMessageKind: freezed == lastMessageKind
          ? _value.lastMessageKind
          : lastMessageKind // ignore: cast_nullable_to_non_nullable
              as String?,
      lastMessagePreview: freezed == lastMessagePreview
          ? _value.lastMessagePreview
          : lastMessagePreview // ignore: cast_nullable_to_non_nullable
              as String?,
      unreadCount: null == unreadCount
          ? _value.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as int,
      lastReadAt: freezed == lastReadAt
          ? _value.lastReadAt
          : lastReadAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$ConversationListEntityImpl implements _ConversationListEntity {
  const _$ConversationListEntityImpl(
      {required this.userId,
      required this.conversationId,
      required this.type,
      this.title,
      this.photoUrl,
      this.lastMessageAt,
      this.lastMessageId,
      this.lastMessageKind,
      this.lastMessagePreview,
      this.unreadCount = 0,
      this.lastReadAt});

  @override
  final String userId;
  @override
  final String conversationId;
  @override
  final String type;
// 'direct' or 'group'
  @override
  final String? title;
  @override
  final String? photoUrl;
  @override
  final DateTime? lastMessageAt;
  @override
  final String? lastMessageId;
  @override
  final String? lastMessageKind;
  @override
  final String? lastMessagePreview;
  @override
  @JsonKey()
  final int unreadCount;
  @override
  final DateTime? lastReadAt;

  @override
  String toString() {
    return 'ConversationListEntity(userId: $userId, conversationId: $conversationId, type: $type, title: $title, photoUrl: $photoUrl, lastMessageAt: $lastMessageAt, lastMessageId: $lastMessageId, lastMessageKind: $lastMessageKind, lastMessagePreview: $lastMessagePreview, unreadCount: $unreadCount, lastReadAt: $lastReadAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConversationListEntityImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.lastMessageAt, lastMessageAt) ||
                other.lastMessageAt == lastMessageAt) &&
            (identical(other.lastMessageId, lastMessageId) ||
                other.lastMessageId == lastMessageId) &&
            (identical(other.lastMessageKind, lastMessageKind) ||
                other.lastMessageKind == lastMessageKind) &&
            (identical(other.lastMessagePreview, lastMessagePreview) ||
                other.lastMessagePreview == lastMessagePreview) &&
            (identical(other.unreadCount, unreadCount) ||
                other.unreadCount == unreadCount) &&
            (identical(other.lastReadAt, lastReadAt) ||
                other.lastReadAt == lastReadAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      conversationId,
      type,
      title,
      photoUrl,
      lastMessageAt,
      lastMessageId,
      lastMessageKind,
      lastMessagePreview,
      unreadCount,
      lastReadAt);

  /// Create a copy of ConversationListEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversationListEntityImplCopyWith<_$ConversationListEntityImpl>
      get copyWith => __$$ConversationListEntityImplCopyWithImpl<
          _$ConversationListEntityImpl>(this, _$identity);
}

abstract class _ConversationListEntity implements ConversationListEntity {
  const factory _ConversationListEntity(
      {required final String userId,
      required final String conversationId,
      required final String type,
      final String? title,
      final String? photoUrl,
      final DateTime? lastMessageAt,
      final String? lastMessageId,
      final String? lastMessageKind,
      final String? lastMessagePreview,
      final int unreadCount,
      final DateTime? lastReadAt}) = _$ConversationListEntityImpl;

  @override
  String get userId;
  @override
  String get conversationId;
  @override
  String get type; // 'direct' or 'group'
  @override
  String? get title;
  @override
  String? get photoUrl;
  @override
  DateTime? get lastMessageAt;
  @override
  String? get lastMessageId;
  @override
  String? get lastMessageKind;
  @override
  String? get lastMessagePreview;
  @override
  int get unreadCount;
  @override
  DateTime? get lastReadAt;

  /// Create a copy of ConversationListEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConversationListEntityImplCopyWith<_$ConversationListEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
