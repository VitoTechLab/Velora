// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_cursor_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessageCursorModel _$MessageCursorModelFromJson(Map<String, dynamic> json) {
  return _MessageCursorModel.fromJson(json);
}

/// @nodoc
mixin _$MessageCursorModel {
  @JsonKey(name: 'cursor_created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'cursor_id')
  String get id => throw _privateConstructorUsedError;

  /// Serializes this MessageCursorModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageCursorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageCursorModelCopyWith<MessageCursorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCursorModelCopyWith<$Res> {
  factory $MessageCursorModelCopyWith(
          MessageCursorModel value, $Res Function(MessageCursorModel) then) =
      _$MessageCursorModelCopyWithImpl<$Res, MessageCursorModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'cursor_created_at') DateTime createdAt,
      @JsonKey(name: 'cursor_id') String id});
}

/// @nodoc
class _$MessageCursorModelCopyWithImpl<$Res, $Val extends MessageCursorModel>
    implements $MessageCursorModelCopyWith<$Res> {
  _$MessageCursorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageCursorModel
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
abstract class _$$MessageCursorModelImplCopyWith<$Res>
    implements $MessageCursorModelCopyWith<$Res> {
  factory _$$MessageCursorModelImplCopyWith(_$MessageCursorModelImpl value,
          $Res Function(_$MessageCursorModelImpl) then) =
      __$$MessageCursorModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'cursor_created_at') DateTime createdAt,
      @JsonKey(name: 'cursor_id') String id});
}

/// @nodoc
class __$$MessageCursorModelImplCopyWithImpl<$Res>
    extends _$MessageCursorModelCopyWithImpl<$Res, _$MessageCursorModelImpl>
    implements _$$MessageCursorModelImplCopyWith<$Res> {
  __$$MessageCursorModelImplCopyWithImpl(_$MessageCursorModelImpl _value,
      $Res Function(_$MessageCursorModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageCursorModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? id = null,
  }) {
    return _then(_$MessageCursorModelImpl(
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
class _$MessageCursorModelImpl extends _MessageCursorModel {
  const _$MessageCursorModelImpl(
      {@JsonKey(name: 'cursor_created_at') required this.createdAt,
      @JsonKey(name: 'cursor_id') required this.id})
      : super._();

  factory _$MessageCursorModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageCursorModelImplFromJson(json);

  @override
  @JsonKey(name: 'cursor_created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'cursor_id')
  final String id;

  @override
  String toString() {
    return 'MessageCursorModel(createdAt: $createdAt, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageCursorModelImpl &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, createdAt, id);

  /// Create a copy of MessageCursorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageCursorModelImplCopyWith<_$MessageCursorModelImpl> get copyWith =>
      __$$MessageCursorModelImplCopyWithImpl<_$MessageCursorModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageCursorModelImplToJson(
      this,
    );
  }
}

abstract class _MessageCursorModel extends MessageCursorModel {
  const factory _MessageCursorModel(
      {@JsonKey(name: 'cursor_created_at') required final DateTime createdAt,
      @JsonKey(name: 'cursor_id')
      required final String id}) = _$MessageCursorModelImpl;
  const _MessageCursorModel._() : super._();

  factory _MessageCursorModel.fromJson(Map<String, dynamic> json) =
      _$MessageCursorModelImpl.fromJson;

  @override
  @JsonKey(name: 'cursor_created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'cursor_id')
  String get id;

  /// Create a copy of MessageCursorModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageCursorModelImplCopyWith<_$MessageCursorModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
