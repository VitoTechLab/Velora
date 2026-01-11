// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_cursor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommentCursor _$CommentCursorFromJson(Map<String, dynamic> json) {
  return _CommentCursor.fromJson(json);
}

/// @nodoc
mixin _$CommentCursor {
  @JsonKey(name: 'cursor_created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'cursor_id')
  String get id => throw _privateConstructorUsedError;

  /// Serializes this CommentCursor to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentCursor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentCursorCopyWith<CommentCursor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentCursorCopyWith<$Res> {
  factory $CommentCursorCopyWith(
          CommentCursor value, $Res Function(CommentCursor) then) =
      _$CommentCursorCopyWithImpl<$Res, CommentCursor>;
  @useResult
  $Res call(
      {@JsonKey(name: 'cursor_created_at') DateTime createdAt,
      @JsonKey(name: 'cursor_id') String id});
}

/// @nodoc
class _$CommentCursorCopyWithImpl<$Res, $Val extends CommentCursor>
    implements $CommentCursorCopyWith<$Res> {
  _$CommentCursorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentCursor
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
abstract class _$$CommentCursorImplCopyWith<$Res>
    implements $CommentCursorCopyWith<$Res> {
  factory _$$CommentCursorImplCopyWith(
          _$CommentCursorImpl value, $Res Function(_$CommentCursorImpl) then) =
      __$$CommentCursorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'cursor_created_at') DateTime createdAt,
      @JsonKey(name: 'cursor_id') String id});
}

/// @nodoc
class __$$CommentCursorImplCopyWithImpl<$Res>
    extends _$CommentCursorCopyWithImpl<$Res, _$CommentCursorImpl>
    implements _$$CommentCursorImplCopyWith<$Res> {
  __$$CommentCursorImplCopyWithImpl(
      _$CommentCursorImpl _value, $Res Function(_$CommentCursorImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommentCursor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? id = null,
  }) {
    return _then(_$CommentCursorImpl(
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
class _$CommentCursorImpl extends _CommentCursor {
  const _$CommentCursorImpl(
      {@JsonKey(name: 'cursor_created_at') required this.createdAt,
      @JsonKey(name: 'cursor_id') required this.id})
      : super._();

  factory _$CommentCursorImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentCursorImplFromJson(json);

  @override
  @JsonKey(name: 'cursor_created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'cursor_id')
  final String id;

  @override
  String toString() {
    return 'CommentCursor(createdAt: $createdAt, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentCursorImpl &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, createdAt, id);

  /// Create a copy of CommentCursor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentCursorImplCopyWith<_$CommentCursorImpl> get copyWith =>
      __$$CommentCursorImplCopyWithImpl<_$CommentCursorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentCursorImplToJson(
      this,
    );
  }
}

abstract class _CommentCursor extends CommentCursor {
  const factory _CommentCursor(
      {@JsonKey(name: 'cursor_created_at') required final DateTime createdAt,
      @JsonKey(name: 'cursor_id')
      required final String id}) = _$CommentCursorImpl;
  const _CommentCursor._() : super._();

  factory _CommentCursor.fromJson(Map<String, dynamic> json) =
      _$CommentCursorImpl.fromJson;

  @override
  @JsonKey(name: 'cursor_created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'cursor_id')
  String get id;

  /// Create a copy of CommentCursor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentCursorImplCopyWith<_$CommentCursorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
