// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mention_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MentionModel _$MentionModelFromJson(Map<String, dynamic> json) {
  return _MentionModel.fromJson(json);
}

/// @nodoc
mixin _$MentionModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_by')
  String get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'entity_type')
  String get entityType => throw _privateConstructorUsedError;
  @JsonKey(name: 'entity_id')
  String get entityId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt =>
      throw _privateConstructorUsedError; // Expanded from join
  @JsonKey(name: 'creator_profile')
  Map<String, dynamic>? get creatorProfile =>
      throw _privateConstructorUsedError;

  /// Serializes this MentionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MentionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MentionModelCopyWith<MentionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MentionModelCopyWith<$Res> {
  factory $MentionModelCopyWith(
          MentionModel value, $Res Function(MentionModel) then) =
      _$MentionModelCopyWithImpl<$Res, MentionModel>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'created_by') String createdBy,
      @JsonKey(name: 'entity_type') String entityType,
      @JsonKey(name: 'entity_id') String entityId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'creator_profile') Map<String, dynamic>? creatorProfile});
}

/// @nodoc
class _$MentionModelCopyWithImpl<$Res, $Val extends MentionModel>
    implements $MentionModelCopyWith<$Res> {
  _$MentionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MentionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? createdBy = null,
    Object? entityType = null,
    Object? entityId = null,
    Object? createdAt = null,
    Object? creatorProfile = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      entityType: null == entityType
          ? _value.entityType
          : entityType // ignore: cast_nullable_to_non_nullable
              as String,
      entityId: null == entityId
          ? _value.entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      creatorProfile: freezed == creatorProfile
          ? _value.creatorProfile
          : creatorProfile // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MentionModelImplCopyWith<$Res>
    implements $MentionModelCopyWith<$Res> {
  factory _$$MentionModelImplCopyWith(
          _$MentionModelImpl value, $Res Function(_$MentionModelImpl) then) =
      __$$MentionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'created_by') String createdBy,
      @JsonKey(name: 'entity_type') String entityType,
      @JsonKey(name: 'entity_id') String entityId,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'creator_profile') Map<String, dynamic>? creatorProfile});
}

/// @nodoc
class __$$MentionModelImplCopyWithImpl<$Res>
    extends _$MentionModelCopyWithImpl<$Res, _$MentionModelImpl>
    implements _$$MentionModelImplCopyWith<$Res> {
  __$$MentionModelImplCopyWithImpl(
      _$MentionModelImpl _value, $Res Function(_$MentionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MentionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? createdBy = null,
    Object? entityType = null,
    Object? entityId = null,
    Object? createdAt = null,
    Object? creatorProfile = freezed,
  }) {
    return _then(_$MentionModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as String,
      entityType: null == entityType
          ? _value.entityType
          : entityType // ignore: cast_nullable_to_non_nullable
              as String,
      entityId: null == entityId
          ? _value.entityId
          : entityId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      creatorProfile: freezed == creatorProfile
          ? _value._creatorProfile
          : creatorProfile // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MentionModelImpl extends _MentionModel {
  const _$MentionModelImpl(
      {required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'created_by') required this.createdBy,
      @JsonKey(name: 'entity_type') required this.entityType,
      @JsonKey(name: 'entity_id') required this.entityId,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'creator_profile')
      final Map<String, dynamic>? creatorProfile})
      : _creatorProfile = creatorProfile,
        super._();

  factory _$MentionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MentionModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'created_by')
  final String createdBy;
  @override
  @JsonKey(name: 'entity_type')
  final String entityType;
  @override
  @JsonKey(name: 'entity_id')
  final String entityId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
// Expanded from join
  final Map<String, dynamic>? _creatorProfile;
// Expanded from join
  @override
  @JsonKey(name: 'creator_profile')
  Map<String, dynamic>? get creatorProfile {
    final value = _creatorProfile;
    if (value == null) return null;
    if (_creatorProfile is EqualUnmodifiableMapView) return _creatorProfile;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'MentionModel(id: $id, userId: $userId, createdBy: $createdBy, entityType: $entityType, entityId: $entityId, createdAt: $createdAt, creatorProfile: $creatorProfile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MentionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.entityType, entityType) ||
                other.entityType == entityType) &&
            (identical(other.entityId, entityId) ||
                other.entityId == entityId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality()
                .equals(other._creatorProfile, _creatorProfile));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      createdBy,
      entityType,
      entityId,
      createdAt,
      const DeepCollectionEquality().hash(_creatorProfile));

  /// Create a copy of MentionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MentionModelImplCopyWith<_$MentionModelImpl> get copyWith =>
      __$$MentionModelImplCopyWithImpl<_$MentionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MentionModelImplToJson(
      this,
    );
  }
}

abstract class _MentionModel extends MentionModel {
  const factory _MentionModel(
      {required final String id,
      @JsonKey(name: 'user_id') required final String userId,
      @JsonKey(name: 'created_by') required final String createdBy,
      @JsonKey(name: 'entity_type') required final String entityType,
      @JsonKey(name: 'entity_id') required final String entityId,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'creator_profile')
      final Map<String, dynamic>? creatorProfile}) = _$MentionModelImpl;
  const _MentionModel._() : super._();

  factory _MentionModel.fromJson(Map<String, dynamic> json) =
      _$MentionModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'created_by')
  String get createdBy;
  @override
  @JsonKey(name: 'entity_type')
  String get entityType;
  @override
  @JsonKey(name: 'entity_id')
  String get entityId;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt; // Expanded from join
  @override
  @JsonKey(name: 'creator_profile')
  Map<String, dynamic>? get creatorProfile;

  /// Create a copy of MentionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MentionModelImplCopyWith<_$MentionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
