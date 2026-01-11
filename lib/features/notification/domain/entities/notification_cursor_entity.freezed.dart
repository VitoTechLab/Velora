// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_cursor_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotificationCursorEntity {
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  /// Create a copy of NotificationCursorEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationCursorEntityCopyWith<NotificationCursorEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationCursorEntityCopyWith<$Res> {
  factory $NotificationCursorEntityCopyWith(NotificationCursorEntity value,
          $Res Function(NotificationCursorEntity) then) =
      _$NotificationCursorEntityCopyWithImpl<$Res, NotificationCursorEntity>;
  @useResult
  $Res call({DateTime createdAt, String id});
}

/// @nodoc
class _$NotificationCursorEntityCopyWithImpl<$Res,
        $Val extends NotificationCursorEntity>
    implements $NotificationCursorEntityCopyWith<$Res> {
  _$NotificationCursorEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationCursorEntity
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
abstract class _$$NotificationCursorEntityImplCopyWith<$Res>
    implements $NotificationCursorEntityCopyWith<$Res> {
  factory _$$NotificationCursorEntityImplCopyWith(
          _$NotificationCursorEntityImpl value,
          $Res Function(_$NotificationCursorEntityImpl) then) =
      __$$NotificationCursorEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime createdAt, String id});
}

/// @nodoc
class __$$NotificationCursorEntityImplCopyWithImpl<$Res>
    extends _$NotificationCursorEntityCopyWithImpl<$Res,
        _$NotificationCursorEntityImpl>
    implements _$$NotificationCursorEntityImplCopyWith<$Res> {
  __$$NotificationCursorEntityImplCopyWithImpl(
      _$NotificationCursorEntityImpl _value,
      $Res Function(_$NotificationCursorEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationCursorEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? id = null,
  }) {
    return _then(_$NotificationCursorEntityImpl(
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

class _$NotificationCursorEntityImpl implements _NotificationCursorEntity {
  const _$NotificationCursorEntityImpl(
      {required this.createdAt, required this.id});

  @override
  final DateTime createdAt;
  @override
  final String id;

  @override
  String toString() {
    return 'NotificationCursorEntity(createdAt: $createdAt, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationCursorEntityImpl &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, createdAt, id);

  /// Create a copy of NotificationCursorEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationCursorEntityImplCopyWith<_$NotificationCursorEntityImpl>
      get copyWith => __$$NotificationCursorEntityImplCopyWithImpl<
          _$NotificationCursorEntityImpl>(this, _$identity);
}

abstract class _NotificationCursorEntity implements NotificationCursorEntity {
  const factory _NotificationCursorEntity(
      {required final DateTime createdAt,
      required final String id}) = _$NotificationCursorEntityImpl;

  @override
  DateTime get createdAt;
  @override
  String get id;

  /// Create a copy of NotificationCursorEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationCursorEntityImplCopyWith<_$NotificationCursorEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
