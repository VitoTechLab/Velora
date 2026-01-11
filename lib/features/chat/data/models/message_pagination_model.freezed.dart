// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_pagination_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessagePaginationModel _$MessagePaginationModelFromJson(
    Map<String, dynamic> json) {
  return _MessagePaginationModel.fromJson(json);
}

/// @nodoc
mixin _$MessagePaginationModel {
  List<ChatMessageModel> get messages => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson)
  MessageCursor? get nextCursor => throw _privateConstructorUsedError;

  /// Serializes this MessagePaginationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessagePaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessagePaginationModelCopyWith<MessagePaginationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessagePaginationModelCopyWith<$Res> {
  factory $MessagePaginationModelCopyWith(MessagePaginationModel value,
          $Res Function(MessagePaginationModel) then) =
      _$MessagePaginationModelCopyWithImpl<$Res, MessagePaginationModel>;
  @useResult
  $Res call(
      {List<ChatMessageModel> messages,
      bool hasMore,
      @JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson)
      MessageCursor? nextCursor});

  $MessageCursorCopyWith<$Res>? get nextCursor;
}

/// @nodoc
class _$MessagePaginationModelCopyWithImpl<$Res,
        $Val extends MessagePaginationModel>
    implements $MessagePaginationModelCopyWith<$Res> {
  _$MessagePaginationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessagePaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? hasMore = null,
    Object? nextCursor = freezed,
  }) {
    return _then(_value.copyWith(
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessageModel>,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      nextCursor: freezed == nextCursor
          ? _value.nextCursor
          : nextCursor // ignore: cast_nullable_to_non_nullable
              as MessageCursor?,
    ) as $Val);
  }

  /// Create a copy of MessagePaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MessageCursorCopyWith<$Res>? get nextCursor {
    if (_value.nextCursor == null) {
      return null;
    }

    return $MessageCursorCopyWith<$Res>(_value.nextCursor!, (value) {
      return _then(_value.copyWith(nextCursor: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MessagePaginationModelImplCopyWith<$Res>
    implements $MessagePaginationModelCopyWith<$Res> {
  factory _$$MessagePaginationModelImplCopyWith(
          _$MessagePaginationModelImpl value,
          $Res Function(_$MessagePaginationModelImpl) then) =
      __$$MessagePaginationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ChatMessageModel> messages,
      bool hasMore,
      @JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson)
      MessageCursor? nextCursor});

  @override
  $MessageCursorCopyWith<$Res>? get nextCursor;
}

/// @nodoc
class __$$MessagePaginationModelImplCopyWithImpl<$Res>
    extends _$MessagePaginationModelCopyWithImpl<$Res,
        _$MessagePaginationModelImpl>
    implements _$$MessagePaginationModelImplCopyWith<$Res> {
  __$$MessagePaginationModelImplCopyWithImpl(
      _$MessagePaginationModelImpl _value,
      $Res Function(_$MessagePaginationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessagePaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? hasMore = null,
    Object? nextCursor = freezed,
  }) {
    return _then(_$MessagePaginationModelImpl(
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessageModel>,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      nextCursor: freezed == nextCursor
          ? _value.nextCursor
          : nextCursor // ignore: cast_nullable_to_non_nullable
              as MessageCursor?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessagePaginationModelImpl extends _MessagePaginationModel {
  const _$MessagePaginationModelImpl(
      {required final List<ChatMessageModel> messages,
      required this.hasMore,
      @JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson)
      this.nextCursor})
      : _messages = messages,
        super._();

  factory _$MessagePaginationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessagePaginationModelImplFromJson(json);

  final List<ChatMessageModel> _messages;
  @override
  List<ChatMessageModel> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  final bool hasMore;
  @override
  @JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson)
  final MessageCursor? nextCursor;

  @override
  String toString() {
    return 'MessagePaginationModel(messages: $messages, hasMore: $hasMore, nextCursor: $nextCursor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessagePaginationModelImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.nextCursor, nextCursor) ||
                other.nextCursor == nextCursor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_messages), hasMore, nextCursor);

  /// Create a copy of MessagePaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessagePaginationModelImplCopyWith<_$MessagePaginationModelImpl>
      get copyWith => __$$MessagePaginationModelImplCopyWithImpl<
          _$MessagePaginationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessagePaginationModelImplToJson(
      this,
    );
  }
}

abstract class _MessagePaginationModel extends MessagePaginationModel {
  const factory _MessagePaginationModel(
      {required final List<ChatMessageModel> messages,
      required final bool hasMore,
      @JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson)
      final MessageCursor? nextCursor}) = _$MessagePaginationModelImpl;
  const _MessagePaginationModel._() : super._();

  factory _MessagePaginationModel.fromJson(Map<String, dynamic> json) =
      _$MessagePaginationModelImpl.fromJson;

  @override
  List<ChatMessageModel> get messages;
  @override
  bool get hasMore;
  @override
  @JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson)
  MessageCursor? get nextCursor;

  /// Create a copy of MessagePaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessagePaginationModelImplCopyWith<_$MessagePaginationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
