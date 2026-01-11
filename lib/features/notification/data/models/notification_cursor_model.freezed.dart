// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_cursor_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NotificationCursorModel _$NotificationCursorModelFromJson(
    Map<String, dynamic> json) {
  return _NotificationCursorModel.fromJson(json);
}

/// @nodoc
mixin _$NotificationCursorModel {
  @UtcDateTimeConverter()
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;

  /// Serializes this NotificationCursorModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationCursorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationCursorModelCopyWith<NotificationCursorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationCursorModelCopyWith<$Res> {
  factory $NotificationCursorModelCopyWith(NotificationCursorModel value,
          $Res Function(NotificationCursorModel) then) =
      _$NotificationCursorModelCopyWithImpl<$Res, NotificationCursorModel>;
  @useResult
  $Res call(
      {@UtcDateTimeConverter() @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'id') String id});
}

/// @nodoc
class _$NotificationCursorModelCopyWithImpl<$Res,
        $Val extends NotificationCursorModel>
    implements $NotificationCursorModelCopyWith<$Res> {
  _$NotificationCursorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationCursorModel
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
abstract class _$$NotificationCursorModelImplCopyWith<$Res>
    implements $NotificationCursorModelCopyWith<$Res> {
  factory _$$NotificationCursorModelImplCopyWith(
          _$NotificationCursorModelImpl value,
          $Res Function(_$NotificationCursorModelImpl) then) =
      __$$NotificationCursorModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@UtcDateTimeConverter() @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'id') String id});
}

/// @nodoc
class __$$NotificationCursorModelImplCopyWithImpl<$Res>
    extends _$NotificationCursorModelCopyWithImpl<$Res,
        _$NotificationCursorModelImpl>
    implements _$$NotificationCursorModelImplCopyWith<$Res> {
  __$$NotificationCursorModelImplCopyWithImpl(
      _$NotificationCursorModelImpl _value,
      $Res Function(_$NotificationCursorModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationCursorModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? id = null,
  }) {
    return _then(_$NotificationCursorModelImpl(
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
class _$NotificationCursorModelImpl implements _NotificationCursorModel {
  const _$NotificationCursorModelImpl(
      {@UtcDateTimeConverter()
      @JsonKey(name: 'created_at')
      required this.createdAt,
      @JsonKey(name: 'id') required this.id});

  factory _$NotificationCursorModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationCursorModelImplFromJson(json);

  @override
  @UtcDateTimeConverter()
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'id')
  final String id;

  @override
  String toString() {
    return 'NotificationCursorModel(createdAt: $createdAt, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationCursorModelImpl &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, createdAt, id);

  /// Create a copy of NotificationCursorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationCursorModelImplCopyWith<_$NotificationCursorModelImpl>
      get copyWith => __$$NotificationCursorModelImplCopyWithImpl<
          _$NotificationCursorModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationCursorModelImplToJson(
      this,
    );
  }
}

abstract class _NotificationCursorModel implements NotificationCursorModel {
  const factory _NotificationCursorModel(
          {@UtcDateTimeConverter()
          @JsonKey(name: 'created_at')
          required final DateTime createdAt,
          @JsonKey(name: 'id') required final String id}) =
      _$NotificationCursorModelImpl;

  factory _NotificationCursorModel.fromJson(Map<String, dynamic> json) =
      _$NotificationCursorModelImpl.fromJson;

  @override
  @UtcDateTimeConverter()
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'id')
  String get id;

  /// Create a copy of NotificationCursorModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationCursorModelImplCopyWith<_$NotificationCursorModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
