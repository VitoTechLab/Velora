// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_cursor_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommentCursorModel _$CommentCursorModelFromJson(Map<String, dynamic> json) {
  return _CommentCursorModel.fromJson(json);
}

/// @nodoc
mixin _$CommentCursorModel {
  @JsonKey(name: 'cursor_created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'cursor_id')
  String get id => throw _privateConstructorUsedError;

  /// Serializes this CommentCursorModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentCursorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentCursorModelCopyWith<CommentCursorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentCursorModelCopyWith<$Res> {
  factory $CommentCursorModelCopyWith(
          CommentCursorModel value, $Res Function(CommentCursorModel) then) =
      _$CommentCursorModelCopyWithImpl<$Res, CommentCursorModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'cursor_created_at') DateTime createdAt,
      @JsonKey(name: 'cursor_id') String id});
}

/// @nodoc
class _$CommentCursorModelCopyWithImpl<$Res, $Val extends CommentCursorModel>
    implements $CommentCursorModelCopyWith<$Res> {
  _$CommentCursorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentCursorModel
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
abstract class _$$CommentCursorModelImplCopyWith<$Res>
    implements $CommentCursorModelCopyWith<$Res> {
  factory _$$CommentCursorModelImplCopyWith(_$CommentCursorModelImpl value,
          $Res Function(_$CommentCursorModelImpl) then) =
      __$$CommentCursorModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'cursor_created_at') DateTime createdAt,
      @JsonKey(name: 'cursor_id') String id});
}

/// @nodoc
class __$$CommentCursorModelImplCopyWithImpl<$Res>
    extends _$CommentCursorModelCopyWithImpl<$Res, _$CommentCursorModelImpl>
    implements _$$CommentCursorModelImplCopyWith<$Res> {
  __$$CommentCursorModelImplCopyWithImpl(_$CommentCursorModelImpl _value,
      $Res Function(_$CommentCursorModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommentCursorModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? id = null,
  }) {
    return _then(_$CommentCursorModelImpl(
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
class _$CommentCursorModelImpl extends _CommentCursorModel {
  const _$CommentCursorModelImpl(
      {@JsonKey(name: 'cursor_created_at') required this.createdAt,
      @JsonKey(name: 'cursor_id') required this.id})
      : super._();

  factory _$CommentCursorModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentCursorModelImplFromJson(json);

  @override
  @JsonKey(name: 'cursor_created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'cursor_id')
  final String id;

  @override
  String toString() {
    return 'CommentCursorModel(createdAt: $createdAt, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentCursorModelImpl &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, createdAt, id);

  /// Create a copy of CommentCursorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentCursorModelImplCopyWith<_$CommentCursorModelImpl> get copyWith =>
      __$$CommentCursorModelImplCopyWithImpl<_$CommentCursorModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentCursorModelImplToJson(
      this,
    );
  }
}

abstract class _CommentCursorModel extends CommentCursorModel {
  const factory _CommentCursorModel(
      {@JsonKey(name: 'cursor_created_at') required final DateTime createdAt,
      @JsonKey(name: 'cursor_id')
      required final String id}) = _$CommentCursorModelImpl;
  const _CommentCursorModel._() : super._();

  factory _CommentCursorModel.fromJson(Map<String, dynamic> json) =
      _$CommentCursorModelImpl.fromJson;

  @override
  @JsonKey(name: 'cursor_created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'cursor_id')
  String get id;

  /// Create a copy of CommentCursorModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentCursorModelImplCopyWith<_$CommentCursorModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
