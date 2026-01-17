// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaign_category_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CampaignCategoryEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String? get iconName => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Create a copy of CampaignCategoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CampaignCategoryEntityCopyWith<CampaignCategoryEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CampaignCategoryEntityCopyWith<$Res> {
  factory $CampaignCategoryEntityCopyWith(CampaignCategoryEntity value,
          $Res Function(CampaignCategoryEntity) then) =
      _$CampaignCategoryEntityCopyWithImpl<$Res, CampaignCategoryEntity>;
  @useResult
  $Res call(
      {String id,
      String name,
      String slug,
      String? iconName,
      bool isActive,
      DateTime? createdAt});
}

/// @nodoc
class _$CampaignCategoryEntityCopyWithImpl<$Res,
        $Val extends CampaignCategoryEntity>
    implements $CampaignCategoryEntityCopyWith<$Res> {
  _$CampaignCategoryEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CampaignCategoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? iconName = freezed,
    Object? isActive = null,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      iconName: freezed == iconName
          ? _value.iconName
          : iconName // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CampaignCategoryEntityImplCopyWith<$Res>
    implements $CampaignCategoryEntityCopyWith<$Res> {
  factory _$$CampaignCategoryEntityImplCopyWith(
          _$CampaignCategoryEntityImpl value,
          $Res Function(_$CampaignCategoryEntityImpl) then) =
      __$$CampaignCategoryEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String slug,
      String? iconName,
      bool isActive,
      DateTime? createdAt});
}

/// @nodoc
class __$$CampaignCategoryEntityImplCopyWithImpl<$Res>
    extends _$CampaignCategoryEntityCopyWithImpl<$Res,
        _$CampaignCategoryEntityImpl>
    implements _$$CampaignCategoryEntityImplCopyWith<$Res> {
  __$$CampaignCategoryEntityImplCopyWithImpl(
      _$CampaignCategoryEntityImpl _value,
      $Res Function(_$CampaignCategoryEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of CampaignCategoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? slug = null,
    Object? iconName = freezed,
    Object? isActive = null,
    Object? createdAt = freezed,
  }) {
    return _then(_$CampaignCategoryEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      iconName: freezed == iconName
          ? _value.iconName
          : iconName // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$CampaignCategoryEntityImpl implements _CampaignCategoryEntity {
  const _$CampaignCategoryEntityImpl(
      {required this.id,
      required this.name,
      required this.slug,
      this.iconName,
      this.isActive = true,
      this.createdAt});

  @override
  final String id;
  @override
  final String name;
  @override
  final String slug;
  @override
  final String? iconName;
  @override
  @JsonKey()
  final bool isActive;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'CampaignCategoryEntity(id: $id, name: $name, slug: $slug, iconName: $iconName, isActive: $isActive, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CampaignCategoryEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.iconName, iconName) ||
                other.iconName == iconName) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, slug, iconName, isActive, createdAt);

  /// Create a copy of CampaignCategoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CampaignCategoryEntityImplCopyWith<_$CampaignCategoryEntityImpl>
      get copyWith => __$$CampaignCategoryEntityImplCopyWithImpl<
          _$CampaignCategoryEntityImpl>(this, _$identity);
}

abstract class _CampaignCategoryEntity implements CampaignCategoryEntity {
  const factory _CampaignCategoryEntity(
      {required final String id,
      required final String name,
      required final String slug,
      final String? iconName,
      final bool isActive,
      final DateTime? createdAt}) = _$CampaignCategoryEntityImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  String get slug;
  @override
  String? get iconName;
  @override
  bool get isActive;
  @override
  DateTime? get createdAt;

  /// Create a copy of CampaignCategoryEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CampaignCategoryEntityImplCopyWith<_$CampaignCategoryEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
