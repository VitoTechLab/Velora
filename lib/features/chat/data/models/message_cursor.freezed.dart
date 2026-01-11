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

MessageCursor _$MessageCursorFromJson(Map<String, dynamic> json) {
  return _MessageCursor.fromJson(json);
}

/// @nodoc
mixin _$MessageCursor {
  @JsonKey(name: 'cursor_created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'cursor_id')
  String get id => throw _privateConstructorUsedError;

  /// Serializes this MessageCursor to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageCursor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageCursorCopyWith<MessageCursor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCursorCopyWith<$Res> {
  factory $MessageCursorCopyWith(
          MessageCursor value, $Res Function(MessageCursor) then) =
      _$MessageCursorCopyWithImpl<$Res, MessageCursor>;
  @useResult
  $Res call(
      {@JsonKey(name: 'cursor_created_at') DateTime createdAt,
      @JsonKey(name: 'cursor_id') String id});
}

/// @nodoc
class _$MessageCursorCopyWithImpl<$Res, $Val extends MessageCursor>
    implements $MessageCursorCopyWith<$Res> {
  _$MessageCursorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageCursor
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
abstract class _$$MessageCursorImplCopyWith<$Res>
    implements $MessageCursorCopyWith<$Res> {
  factory _$$MessageCursorImplCopyWith(
          _$MessageCursorImpl value, $Res Function(_$MessageCursorImpl) then) =
      __$$MessageCursorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'cursor_created_at') DateTime createdAt,
      @JsonKey(name: 'cursor_id') String id});
}

/// @nodoc
class __$$MessageCursorImplCopyWithImpl<$Res>
    extends _$MessageCursorCopyWithImpl<$Res, _$MessageCursorImpl>
    implements _$$MessageCursorImplCopyWith<$Res> {
  __$$MessageCursorImplCopyWithImpl(
      _$MessageCursorImpl _value, $Res Function(_$MessageCursorImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageCursor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? id = null,
  }) {
    return _then(_$MessageCursorImpl(
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
@JsonSerializable()
class _$MessageCursorImpl extends _MessageCursor {
  const _$MessageCursorImpl(
      {@JsonKey(name: 'cursor_created_at') required this.createdAt,
      @JsonKey(name: 'cursor_id') required this.id})
      : super._();

  factory _$MessageCursorImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageCursorImplFromJson(json);

  @override
  @JsonKey(name: 'cursor_created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'cursor_id')
  final String id;

  @override
  String toString() {
    return 'MessageCursor(createdAt: $createdAt, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageCursorImpl &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, createdAt, id);

  /// Create a copy of MessageCursor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageCursorImplCopyWith<_$MessageCursorImpl> get copyWith =>
      __$$MessageCursorImplCopyWithImpl<_$MessageCursorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageCursorImplToJson(
      this,
    );
  }
}

abstract class _MessageCursor extends MessageCursor {
  const factory _MessageCursor(
      {@JsonKey(name: 'cursor_created_at') required final DateTime createdAt,
      @JsonKey(name: 'cursor_id')
      required final String id}) = _$MessageCursorImpl;
  const _MessageCursor._() : super._();

  factory _MessageCursor.fromJson(Map<String, dynamic> json) =
      _$MessageCursorImpl.fromJson;

  @override
  @JsonKey(name: 'cursor_created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'cursor_id')
  String get id;

  /// Create a copy of MessageCursor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageCursorImplCopyWith<_$MessageCursorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
