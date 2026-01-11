// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_cursor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MessageCursorEntity {
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  /// Create a copy of MessageCursorEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageCursorEntityCopyWith<MessageCursorEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCursorEntityCopyWith<$Res> {
  factory $MessageCursorEntityCopyWith(
          MessageCursorEntity value, $Res Function(MessageCursorEntity) then) =
      _$MessageCursorEntityCopyWithImpl<$Res, MessageCursorEntity>;
  @useResult
  $Res call({DateTime createdAt, String id});
}

/// @nodoc
class _$MessageCursorEntityCopyWithImpl<$Res, $Val extends MessageCursorEntity>
    implements $MessageCursorEntityCopyWith<$Res> {
  _$MessageCursorEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageCursorEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageCursorEntityImplCopyWith<$Res>
    implements $MessageCursorEntityCopyWith<$Res> {
  factory _$$MessageCursorEntityImplCopyWith(_$MessageCursorEntityImpl value,
          $Res Function(_$MessageCursorEntityImpl) then) =
      __$$MessageCursorEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime createdAt, String id});
}

/// @nodoc
class __$$MessageCursorEntityImplCopyWithImpl<$Res>
    extends _$MessageCursorEntityCopyWithImpl<$Res, _$MessageCursorEntityImpl>
    implements _$$MessageCursorEntityImplCopyWith<$Res> {
  __$$MessageCursorEntityImplCopyWithImpl(_$MessageCursorEntityImpl _value,
      $Res Function(_$MessageCursorEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageCursorEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? id = null,
  }) {
    return _then(_$MessageCursorEntityImpl(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MessageCursorEntityImpl implements _MessageCursorEntity {
  const _$MessageCursorEntityImpl({required this.createdAt, required this.id});

  @override
  final DateTime createdAt;
  @override
  final String id;

  @override
  String toString() {
    return 'MessageCursorEntity(createdAt: $createdAt, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageCursorEntityImpl &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, createdAt, id);

  /// Create a copy of MessageCursorEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageCursorEntityImplCopyWith<_$MessageCursorEntityImpl> get copyWith =>
      __$$MessageCursorEntityImplCopyWithImpl<_$MessageCursorEntityImpl>(
          this, _$identity);
}

abstract class _MessageCursorEntity implements MessageCursorEntity {
  const factory _MessageCursorEntity(
      {required final DateTime createdAt,
      required final String id}) = _$MessageCursorEntityImpl;

  @override
  DateTime get createdAt;
  @override
  String get id;

  /// Create a copy of MessageCursorEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageCursorEntityImplCopyWith<_$MessageCursorEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
