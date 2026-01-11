// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_read_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessageReadModel _$MessageReadModelFromJson(Map<String, dynamic> json) {
  return _MessageReadModel.fromJson(json);
}

/// @nodoc
mixin _$MessageReadModel {
  @JsonKey(name: 'message_id')
  String get messageId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @UtcDateTimeConverter()
  @JsonKey(name: 'read_at')
  DateTime get readAt => throw _privateConstructorUsedError;

  /// Serializes this MessageReadModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageReadModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageReadModelCopyWith<MessageReadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageReadModelCopyWith<$Res> {
  factory $MessageReadModelCopyWith(
          MessageReadModel value, $Res Function(MessageReadModel) then) =
      _$MessageReadModelCopyWithImpl<$Res, MessageReadModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message_id') String messageId,
      @JsonKey(name: 'user_id') String userId,
      @UtcDateTimeConverter() @JsonKey(name: 'read_at') DateTime readAt});
}

/// @nodoc
class _$MessageReadModelCopyWithImpl<$Res, $Val extends MessageReadModel>
    implements $MessageReadModelCopyWith<$Res> {
  _$MessageReadModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageReadModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
    Object? userId = null,
    Object? readAt = null,
  }) {
    return _then(_value.copyWith(
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      readAt: null == readAt
          ? _value.readAt
          : readAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageReadModelImplCopyWith<$Res>
    implements $MessageReadModelCopyWith<$Res> {
  factory _$$MessageReadModelImplCopyWith(_$MessageReadModelImpl value,
          $Res Function(_$MessageReadModelImpl) then) =
      __$$MessageReadModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message_id') String messageId,
      @JsonKey(name: 'user_id') String userId,
      @UtcDateTimeConverter() @JsonKey(name: 'read_at') DateTime readAt});
}

/// @nodoc
class __$$MessageReadModelImplCopyWithImpl<$Res>
    extends _$MessageReadModelCopyWithImpl<$Res, _$MessageReadModelImpl>
    implements _$$MessageReadModelImplCopyWith<$Res> {
  __$$MessageReadModelImplCopyWithImpl(_$MessageReadModelImpl _value,
      $Res Function(_$MessageReadModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageReadModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
    Object? userId = null,
    Object? readAt = null,
  }) {
    return _then(_$MessageReadModelImpl(
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      readAt: null == readAt
          ? _value.readAt
          : readAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageReadModelImpl extends _MessageReadModel {
  const _$MessageReadModelImpl(
      {@JsonKey(name: 'message_id') required this.messageId,
      @JsonKey(name: 'user_id') required this.userId,
      @UtcDateTimeConverter() @JsonKey(name: 'read_at') required this.readAt})
      : super._();

  factory _$MessageReadModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageReadModelImplFromJson(json);

  @override
  @JsonKey(name: 'message_id')
  final String messageId;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @UtcDateTimeConverter()
  @JsonKey(name: 'read_at')
  final DateTime readAt;

  @override
  String toString() {
    return 'MessageReadModel(messageId: $messageId, userId: $userId, readAt: $readAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageReadModelImpl &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.readAt, readAt) || other.readAt == readAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, messageId, userId, readAt);

  /// Create a copy of MessageReadModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageReadModelImplCopyWith<_$MessageReadModelImpl> get copyWith =>
      __$$MessageReadModelImplCopyWithImpl<_$MessageReadModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageReadModelImplToJson(
      this,
    );
  }
}

abstract class _MessageReadModel extends MessageReadModel {
  const factory _MessageReadModel(
      {@JsonKey(name: 'message_id') required final String messageId,
      @JsonKey(name: 'user_id') required final String userId,
      @UtcDateTimeConverter()
      @JsonKey(name: 'read_at')
      required final DateTime readAt}) = _$MessageReadModelImpl;
  const _MessageReadModel._() : super._();

  factory _MessageReadModel.fromJson(Map<String, dynamic> json) =
      _$MessageReadModelImpl.fromJson;

  @override
  @JsonKey(name: 'message_id')
  String get messageId;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @UtcDateTimeConverter()
  @JsonKey(name: 'read_at')
  DateTime get readAt;

  /// Create a copy of MessageReadModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageReadModelImplCopyWith<_$MessageReadModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
