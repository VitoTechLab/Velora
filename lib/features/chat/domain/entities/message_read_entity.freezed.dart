// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_read_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MessageReadEntity {
  String get messageId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  DateTime get readAt => throw _privateConstructorUsedError;

  /// Create a copy of MessageReadEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageReadEntityCopyWith<MessageReadEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageReadEntityCopyWith<$Res> {
  factory $MessageReadEntityCopyWith(
          MessageReadEntity value, $Res Function(MessageReadEntity) then) =
      _$MessageReadEntityCopyWithImpl<$Res, MessageReadEntity>;
  @useResult
  $Res call({String messageId, String userId, DateTime readAt});
}

/// @nodoc
class _$MessageReadEntityCopyWithImpl<$Res, $Val extends MessageReadEntity>
    implements $MessageReadEntityCopyWith<$Res> {
  _$MessageReadEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageReadEntity
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
abstract class _$$MessageReadEntityImplCopyWith<$Res>
    implements $MessageReadEntityCopyWith<$Res> {
  factory _$$MessageReadEntityImplCopyWith(_$MessageReadEntityImpl value,
          $Res Function(_$MessageReadEntityImpl) then) =
      __$$MessageReadEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String messageId, String userId, DateTime readAt});
}

/// @nodoc
class __$$MessageReadEntityImplCopyWithImpl<$Res>
    extends _$MessageReadEntityCopyWithImpl<$Res, _$MessageReadEntityImpl>
    implements _$$MessageReadEntityImplCopyWith<$Res> {
  __$$MessageReadEntityImplCopyWithImpl(_$MessageReadEntityImpl _value,
      $Res Function(_$MessageReadEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageReadEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
    Object? userId = null,
    Object? readAt = null,
  }) {
    return _then(_$MessageReadEntityImpl(
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

class _$MessageReadEntityImpl implements _MessageReadEntity {
  const _$MessageReadEntityImpl(
      {required this.messageId, required this.userId, required this.readAt});

  @override
  final String messageId;
  @override
  final String userId;
  @override
  final DateTime readAt;

  @override
  String toString() {
    return 'MessageReadEntity(messageId: $messageId, userId: $userId, readAt: $readAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageReadEntityImpl &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.readAt, readAt) || other.readAt == readAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messageId, userId, readAt);

  /// Create a copy of MessageReadEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageReadEntityImplCopyWith<_$MessageReadEntityImpl> get copyWith =>
      __$$MessageReadEntityImplCopyWithImpl<_$MessageReadEntityImpl>(
          this, _$identity);
}

abstract class _MessageReadEntity implements MessageReadEntity {
  const factory _MessageReadEntity(
      {required final String messageId,
      required final String userId,
      required final DateTime readAt}) = _$MessageReadEntityImpl;

  @override
  String get messageId;
  @override
  String get userId;
  @override
  DateTime get readAt;

  /// Create a copy of MessageReadEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageReadEntityImplCopyWith<_$MessageReadEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
