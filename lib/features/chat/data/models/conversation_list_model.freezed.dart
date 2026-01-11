// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversation_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConversationListModel _$ConversationListModelFromJson(
    Map<String, dynamic> json) {
  return _ConversationListModel.fromJson(json);
}

/// @nodoc
mixin _$ConversationListModel {
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'conversation_id')
  String get conversationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String get type => throw _privateConstructorUsedError; // 'direct' or 'group'
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo_url')
  String? get photoUrl => throw _privateConstructorUsedError;
  @UtcDateTimeConverter()
  @JsonKey(name: 'last_message_at')
  DateTime? get lastMessageAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_message_id')
  String? get lastMessageId => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_message_kind')
  String? get lastMessageKind => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_message_preview')
  String? get lastMessagePreview => throw _privateConstructorUsedError;
  @JsonKey(name: 'unread_count')
  int get unreadCount => throw _privateConstructorUsedError;
  @UtcDateTimeConverter()
  @JsonKey(name: 'last_read_at')
  DateTime? get lastReadAt => throw _privateConstructorUsedError;

  /// Serializes this ConversationListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConversationListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConversationListModelCopyWith<ConversationListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationListModelCopyWith<$Res> {
  factory $ConversationListModelCopyWith(ConversationListModel value,
          $Res Function(ConversationListModel) then) =
      _$ConversationListModelCopyWithImpl<$Res, ConversationListModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'conversation_id') String conversationId,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'photo_url') String? photoUrl,
      @UtcDateTimeConverter()
      @JsonKey(name: 'last_message_at')
      DateTime? lastMessageAt,
      @JsonKey(name: 'last_message_id') String? lastMessageId,
      @JsonKey(name: 'last_message_kind') String? lastMessageKind,
      @JsonKey(name: 'last_message_preview') String? lastMessagePreview,
      @JsonKey(name: 'unread_count') int unreadCount,
      @UtcDateTimeConverter()
      @JsonKey(name: 'last_read_at')
      DateTime? lastReadAt});
}

/// @nodoc
class _$ConversationListModelCopyWithImpl<$Res,
        $Val extends ConversationListModel>
    implements $ConversationListModelCopyWith<$Res> {
  _$ConversationListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConversationListModel
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
abstract class _$$ConversationListModelImplCopyWith<$Res>
    implements $ConversationListModelCopyWith<$Res> {
  factory _$$ConversationListModelImplCopyWith(
          _$ConversationListModelImpl value,
          $Res Function(_$ConversationListModelImpl) then) =
      __$$ConversationListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'conversation_id') String conversationId,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'photo_url') String? photoUrl,
      @UtcDateTimeConverter()
      @JsonKey(name: 'last_message_at')
      DateTime? lastMessageAt,
      @JsonKey(name: 'last_message_id') String? lastMessageId,
      @JsonKey(name: 'last_message_kind') String? lastMessageKind,
      @JsonKey(name: 'last_message_preview') String? lastMessagePreview,
      @JsonKey(name: 'unread_count') int unreadCount,
      @UtcDateTimeConverter()
      @JsonKey(name: 'last_read_at')
      DateTime? lastReadAt});
}

/// @nodoc
class __$$ConversationListModelImplCopyWithImpl<$Res>
    extends _$ConversationListModelCopyWithImpl<$Res,
        _$ConversationListModelImpl>
    implements _$$ConversationListModelImplCopyWith<$Res> {
  __$$ConversationListModelImplCopyWithImpl(_$ConversationListModelImpl _value,
      $Res Function(_$ConversationListModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConversationListModel
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
    return _then(_$ConversationListModelImpl(
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
@JsonSerializable()
class _$ConversationListModelImpl extends _ConversationListModel {
  const _$ConversationListModelImpl(
      {@JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'conversation_id') required this.conversationId,
      @JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'photo_url') this.photoUrl,
      @UtcDateTimeConverter()
      @JsonKey(name: 'last_message_at')
      this.lastMessageAt,
      @JsonKey(name: 'last_message_id') this.lastMessageId,
      @JsonKey(name: 'last_message_kind') this.lastMessageKind,
      @JsonKey(name: 'last_message_preview') this.lastMessagePreview,
      @JsonKey(name: 'unread_count') this.unreadCount = 0,
      @UtcDateTimeConverter() @JsonKey(name: 'last_read_at') this.lastReadAt})
      : super._();

  factory _$ConversationListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConversationListModelImplFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'conversation_id')
  final String conversationId;
  @override
  @JsonKey(name: 'type')
  final String type;
// 'direct' or 'group'
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'photo_url')
  final String? photoUrl;
  @override
  @UtcDateTimeConverter()
  @JsonKey(name: 'last_message_at')
  final DateTime? lastMessageAt;
  @override
  @JsonKey(name: 'last_message_id')
  final String? lastMessageId;
  @override
  @JsonKey(name: 'last_message_kind')
  final String? lastMessageKind;
  @override
  @JsonKey(name: 'last_message_preview')
  final String? lastMessagePreview;
  @override
  @JsonKey(name: 'unread_count')
  final int unreadCount;
  @override
  @UtcDateTimeConverter()
  @JsonKey(name: 'last_read_at')
  final DateTime? lastReadAt;

  @override
  String toString() {
    return 'ConversationListModel(userId: $userId, conversationId: $conversationId, type: $type, title: $title, photoUrl: $photoUrl, lastMessageAt: $lastMessageAt, lastMessageId: $lastMessageId, lastMessageKind: $lastMessageKind, lastMessagePreview: $lastMessagePreview, unreadCount: $unreadCount, lastReadAt: $lastReadAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConversationListModelImpl &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of ConversationListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConversationListModelImplCopyWith<_$ConversationListModelImpl>
      get copyWith => __$$ConversationListModelImplCopyWithImpl<
          _$ConversationListModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConversationListModelImplToJson(
      this,
    );
  }
}

abstract class _ConversationListModel extends ConversationListModel {
  const factory _ConversationListModel(
      {@JsonKey(name: 'user_id') required final String userId,
      @JsonKey(name: 'conversation_id') required final String conversationId,
      @JsonKey(name: 'type') required final String type,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'photo_url') final String? photoUrl,
      @UtcDateTimeConverter()
      @JsonKey(name: 'last_message_at')
      final DateTime? lastMessageAt,
      @JsonKey(name: 'last_message_id') final String? lastMessageId,
      @JsonKey(name: 'last_message_kind') final String? lastMessageKind,
      @JsonKey(name: 'last_message_preview') final String? lastMessagePreview,
      @JsonKey(name: 'unread_count') final int unreadCount,
      @UtcDateTimeConverter()
      @JsonKey(name: 'last_read_at')
      final DateTime? lastReadAt}) = _$ConversationListModelImpl;
  const _ConversationListModel._() : super._();

  factory _ConversationListModel.fromJson(Map<String, dynamic> json) =
      _$ConversationListModelImpl.fromJson;

  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'conversation_id')
  String get conversationId;
  @override
  @JsonKey(name: 'type')
  String get type; // 'direct' or 'group'
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'photo_url')
  String? get photoUrl;
  @override
  @UtcDateTimeConverter()
  @JsonKey(name: 'last_message_at')
  DateTime? get lastMessageAt;
  @override
  @JsonKey(name: 'last_message_id')
  String? get lastMessageId;
  @override
  @JsonKey(name: 'last_message_kind')
  String? get lastMessageKind;
  @override
  @JsonKey(name: 'last_message_preview')
  String? get lastMessagePreview;
  @override
  @JsonKey(name: 'unread_count')
  int get unreadCount;
  @override
  @UtcDateTimeConverter()
  @JsonKey(name: 'last_read_at')
  DateTime? get lastReadAt;

  /// Create a copy of ConversationListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConversationListModelImplCopyWith<_$ConversationListModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
