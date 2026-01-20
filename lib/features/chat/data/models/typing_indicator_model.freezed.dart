// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'typing_indicator_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TypingIndicatorModel _$TypingIndicatorModelFromJson(Map<String, dynamic> json) {
  return _TypingIndicatorModel.fromJson(json);
}

/// @nodoc
mixin _$TypingIndicatorModel {
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'conversation_id')
  String get conversationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_typing')
  bool get isTyping => throw _privateConstructorUsedError;
  @JsonKey(name: 'timestamp')
  String get timestamp => throw _privateConstructorUsedError;

  /// Serializes this TypingIndicatorModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TypingIndicatorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TypingIndicatorModelCopyWith<TypingIndicatorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypingIndicatorModelCopyWith<$Res> {
  factory $TypingIndicatorModelCopyWith(TypingIndicatorModel value,
          $Res Function(TypingIndicatorModel) then) =
      _$TypingIndicatorModelCopyWithImpl<$Res, TypingIndicatorModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'conversation_id') String conversationId,
      @JsonKey(name: 'is_typing') bool isTyping,
      @JsonKey(name: 'timestamp') String timestamp});
}

/// @nodoc
class _$TypingIndicatorModelCopyWithImpl<$Res,
        $Val extends TypingIndicatorModel>
    implements $TypingIndicatorModelCopyWith<$Res> {
  _$TypingIndicatorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TypingIndicatorModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? conversationId = null,
    Object? isTyping = null,
    Object? timestamp = null,
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
      isTyping: null == isTyping
          ? _value.isTyping
          : isTyping // ignore: cast_nullable_to_non_nullable
              as bool,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TypingIndicatorModelImplCopyWith<$Res>
    implements $TypingIndicatorModelCopyWith<$Res> {
  factory _$$TypingIndicatorModelImplCopyWith(_$TypingIndicatorModelImpl value,
          $Res Function(_$TypingIndicatorModelImpl) then) =
      __$$TypingIndicatorModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'conversation_id') String conversationId,
      @JsonKey(name: 'is_typing') bool isTyping,
      @JsonKey(name: 'timestamp') String timestamp});
}

/// @nodoc
class __$$TypingIndicatorModelImplCopyWithImpl<$Res>
    extends _$TypingIndicatorModelCopyWithImpl<$Res, _$TypingIndicatorModelImpl>
    implements _$$TypingIndicatorModelImplCopyWith<$Res> {
  __$$TypingIndicatorModelImplCopyWithImpl(_$TypingIndicatorModelImpl _value,
      $Res Function(_$TypingIndicatorModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TypingIndicatorModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? conversationId = null,
    Object? isTyping = null,
    Object? timestamp = null,
  }) {
    return _then(_$TypingIndicatorModelImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      conversationId: null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String,
      isTyping: null == isTyping
          ? _value.isTyping
          : isTyping // ignore: cast_nullable_to_non_nullable
              as bool,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TypingIndicatorModelImpl extends _TypingIndicatorModel {
  const _$TypingIndicatorModelImpl(
      {@JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'conversation_id') required this.conversationId,
      @JsonKey(name: 'is_typing') required this.isTyping,
      @JsonKey(name: 'timestamp') required this.timestamp})
      : super._();

  factory _$TypingIndicatorModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TypingIndicatorModelImplFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'conversation_id')
  final String conversationId;
  @override
  @JsonKey(name: 'is_typing')
  final bool isTyping;
  @override
  @JsonKey(name: 'timestamp')
  final String timestamp;

  @override
  String toString() {
    return 'TypingIndicatorModel(userId: $userId, conversationId: $conversationId, isTyping: $isTyping, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypingIndicatorModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId) &&
            (identical(other.isTyping, isTyping) ||
                other.isTyping == isTyping) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, conversationId, isTyping, timestamp);

  /// Create a copy of TypingIndicatorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TypingIndicatorModelImplCopyWith<_$TypingIndicatorModelImpl>
      get copyWith =>
          __$$TypingIndicatorModelImplCopyWithImpl<_$TypingIndicatorModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TypingIndicatorModelImplToJson(
      this,
    );
  }
}

abstract class _TypingIndicatorModel extends TypingIndicatorModel {
  const factory _TypingIndicatorModel(
      {@JsonKey(name: 'user_id') required final String userId,
      @JsonKey(name: 'conversation_id') required final String conversationId,
      @JsonKey(name: 'is_typing') required final bool isTyping,
      @JsonKey(name: 'timestamp')
      required final String timestamp}) = _$TypingIndicatorModelImpl;
  const _TypingIndicatorModel._() : super._();

  factory _TypingIndicatorModel.fromJson(Map<String, dynamic> json) =
      _$TypingIndicatorModelImpl.fromJson;

  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'conversation_id')
  String get conversationId;
  @override
  @JsonKey(name: 'is_typing')
  bool get isTyping;
  @override
  @JsonKey(name: 'timestamp')
  String get timestamp;

  /// Create a copy of TypingIndicatorModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TypingIndicatorModelImplCopyWith<_$TypingIndicatorModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
