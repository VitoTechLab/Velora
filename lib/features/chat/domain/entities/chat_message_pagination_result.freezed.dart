// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_message_pagination_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatMessagePaginationResult {
  List<ChatMessageEntity> get messages => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;
  MessageCursorEntity? get cursor => throw _privateConstructorUsedError;

  /// Create a copy of ChatMessagePaginationResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatMessagePaginationResultCopyWith<ChatMessagePaginationResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessagePaginationResultCopyWith<$Res> {
  factory $ChatMessagePaginationResultCopyWith(
          ChatMessagePaginationResult value,
          $Res Function(ChatMessagePaginationResult) then) =
      _$ChatMessagePaginationResultCopyWithImpl<$Res,
          ChatMessagePaginationResult>;
  @useResult
  $Res call(
      {List<ChatMessageEntity> messages,
      bool hasMore,
      MessageCursorEntity? cursor});

  $MessageCursorEntityCopyWith<$Res>? get cursor;
}

/// @nodoc
class _$ChatMessagePaginationResultCopyWithImpl<$Res,
        $Val extends ChatMessagePaginationResult>
    implements $ChatMessagePaginationResultCopyWith<$Res> {
  _$ChatMessagePaginationResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatMessagePaginationResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? hasMore = null,
    Object? cursor = freezed,
  }) {
    return _then(_value.copyWith(
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessageEntity>,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      cursor: freezed == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as MessageCursorEntity?,
    ) as $Val);
  }

  /// Create a copy of ChatMessagePaginationResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MessageCursorEntityCopyWith<$Res>? get cursor {
    if (_value.cursor == null) {
      return null;
    }

    return $MessageCursorEntityCopyWith<$Res>(_value.cursor!, (value) {
      return _then(_value.copyWith(cursor: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatMessagePaginationResultImplCopyWith<$Res>
    implements $ChatMessagePaginationResultCopyWith<$Res> {
  factory _$$ChatMessagePaginationResultImplCopyWith(
          _$ChatMessagePaginationResultImpl value,
          $Res Function(_$ChatMessagePaginationResultImpl) then) =
      __$$ChatMessagePaginationResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ChatMessageEntity> messages,
      bool hasMore,
      MessageCursorEntity? cursor});

  @override
  $MessageCursorEntityCopyWith<$Res>? get cursor;
}

/// @nodoc
class __$$ChatMessagePaginationResultImplCopyWithImpl<$Res>
    extends _$ChatMessagePaginationResultCopyWithImpl<$Res,
        _$ChatMessagePaginationResultImpl>
    implements _$$ChatMessagePaginationResultImplCopyWith<$Res> {
  __$$ChatMessagePaginationResultImplCopyWithImpl(
      _$ChatMessagePaginationResultImpl _value,
      $Res Function(_$ChatMessagePaginationResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessagePaginationResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? hasMore = null,
    Object? cursor = freezed,
  }) {
    return _then(_$ChatMessagePaginationResultImpl(
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessageEntity>,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      cursor: freezed == cursor
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as MessageCursorEntity?,
    ));
  }
}

/// @nodoc

class _$ChatMessagePaginationResultImpl
    implements _ChatMessagePaginationResult {
  const _$ChatMessagePaginationResultImpl(
      {required final List<ChatMessageEntity> messages,
      required this.hasMore,
      this.cursor})
      : _messages = messages;

  final List<ChatMessageEntity> _messages;
  @override
  List<ChatMessageEntity> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  final bool hasMore;
  @override
  final MessageCursorEntity? cursor;

  @override
  String toString() {
    return 'ChatMessagePaginationResult(messages: $messages, hasMore: $hasMore, cursor: $cursor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatMessagePaginationResultImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.cursor, cursor) || other.cursor == cursor));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_messages), hasMore, cursor);

  /// Create a copy of ChatMessagePaginationResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMessagePaginationResultImplCopyWith<_$ChatMessagePaginationResultImpl>
      get copyWith => __$$ChatMessagePaginationResultImplCopyWithImpl<
          _$ChatMessagePaginationResultImpl>(this, _$identity);
}

abstract class _ChatMessagePaginationResult
    implements ChatMessagePaginationResult {
  const factory _ChatMessagePaginationResult(
      {required final List<ChatMessageEntity> messages,
      required final bool hasMore,
      final MessageCursorEntity? cursor}) = _$ChatMessagePaginationResultImpl;

  @override
  List<ChatMessageEntity> get messages;
  @override
  bool get hasMore;
  @override
  MessageCursorEntity? get cursor;

  /// Create a copy of ChatMessagePaginationResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatMessagePaginationResultImplCopyWith<_$ChatMessagePaginationResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}
