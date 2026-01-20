// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restricted_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RestrictedUserModel _$RestrictedUserModelFromJson(Map<String, dynamic> json) {
  return _RestrictedUserModel.fromJson(json);
}

/// @nodoc
mixin _$RestrictedUserModel {
  @JsonKey(name: 'restrictor_id')
  String get restrictorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'restricted_id')
  String get restrictedId => throw _privateConstructorUsedError;
  @UtcDateTimeConverter()
  @JsonKey(name: 'created_at')
  DateTime get createdAt =>
      throw _privateConstructorUsedError; // Joined from user_profiles
  @JsonKey(name: 'restricted_username')
  String? get restrictedUsername => throw _privateConstructorUsedError;
  @JsonKey(name: 'restricted_photo_url')
  String? get restrictedPhotoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'restricted_full_name')
  String? get restrictedFullName => throw _privateConstructorUsedError;

  /// Serializes this RestrictedUserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RestrictedUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RestrictedUserModelCopyWith<RestrictedUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestrictedUserModelCopyWith<$Res> {
  factory $RestrictedUserModelCopyWith(
          RestrictedUserModel value, $Res Function(RestrictedUserModel) then) =
      _$RestrictedUserModelCopyWithImpl<$Res, RestrictedUserModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'restrictor_id') String restrictorId,
      @JsonKey(name: 'restricted_id') String restrictedId,
      @UtcDateTimeConverter() @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'restricted_username') String? restrictedUsername,
      @JsonKey(name: 'restricted_photo_url') String? restrictedPhotoUrl,
      @JsonKey(name: 'restricted_full_name') String? restrictedFullName});
}

/// @nodoc
class _$RestrictedUserModelCopyWithImpl<$Res, $Val extends RestrictedUserModel>
    implements $RestrictedUserModelCopyWith<$Res> {
  _$RestrictedUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RestrictedUserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restrictorId = null,
    Object? restrictedId = null,
    Object? createdAt = null,
    Object? restrictedUsername = freezed,
    Object? restrictedPhotoUrl = freezed,
    Object? restrictedFullName = freezed,
  }) {
    return _then(_value.copyWith(
      restrictorId: null == restrictorId
          ? _value.restrictorId
          : restrictorId // ignore: cast_nullable_to_non_nullable
              as String,
      restrictedId: null == restrictedId
          ? _value.restrictedId
          : restrictedId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      restrictedUsername: freezed == restrictedUsername
          ? _value.restrictedUsername
          : restrictedUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      restrictedPhotoUrl: freezed == restrictedPhotoUrl
          ? _value.restrictedPhotoUrl
          : restrictedPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      restrictedFullName: freezed == restrictedFullName
          ? _value.restrictedFullName
          : restrictedFullName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RestrictedUserModelImplCopyWith<$Res>
    implements $RestrictedUserModelCopyWith<$Res> {
  factory _$$RestrictedUserModelImplCopyWith(_$RestrictedUserModelImpl value,
          $Res Function(_$RestrictedUserModelImpl) then) =
      __$$RestrictedUserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'restrictor_id') String restrictorId,
      @JsonKey(name: 'restricted_id') String restrictedId,
      @UtcDateTimeConverter() @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'restricted_username') String? restrictedUsername,
      @JsonKey(name: 'restricted_photo_url') String? restrictedPhotoUrl,
      @JsonKey(name: 'restricted_full_name') String? restrictedFullName});
}

/// @nodoc
class __$$RestrictedUserModelImplCopyWithImpl<$Res>
    extends _$RestrictedUserModelCopyWithImpl<$Res, _$RestrictedUserModelImpl>
    implements _$$RestrictedUserModelImplCopyWith<$Res> {
  __$$RestrictedUserModelImplCopyWithImpl(_$RestrictedUserModelImpl _value,
      $Res Function(_$RestrictedUserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RestrictedUserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restrictorId = null,
    Object? restrictedId = null,
    Object? createdAt = null,
    Object? restrictedUsername = freezed,
    Object? restrictedPhotoUrl = freezed,
    Object? restrictedFullName = freezed,
  }) {
    return _then(_$RestrictedUserModelImpl(
      restrictorId: null == restrictorId
          ? _value.restrictorId
          : restrictorId // ignore: cast_nullable_to_non_nullable
              as String,
      restrictedId: null == restrictedId
          ? _value.restrictedId
          : restrictedId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      restrictedUsername: freezed == restrictedUsername
          ? _value.restrictedUsername
          : restrictedUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      restrictedPhotoUrl: freezed == restrictedPhotoUrl
          ? _value.restrictedPhotoUrl
          : restrictedPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      restrictedFullName: freezed == restrictedFullName
          ? _value.restrictedFullName
          : restrictedFullName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RestrictedUserModelImpl extends _RestrictedUserModel {
  const _$RestrictedUserModelImpl(
      {@JsonKey(name: 'restrictor_id') required this.restrictorId,
      @JsonKey(name: 'restricted_id') required this.restrictedId,
      @UtcDateTimeConverter()
      @JsonKey(name: 'created_at')
      required this.createdAt,
      @JsonKey(name: 'restricted_username') this.restrictedUsername,
      @JsonKey(name: 'restricted_photo_url') this.restrictedPhotoUrl,
      @JsonKey(name: 'restricted_full_name') this.restrictedFullName})
      : super._();

  factory _$RestrictedUserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RestrictedUserModelImplFromJson(json);

  @override
  @JsonKey(name: 'restrictor_id')
  final String restrictorId;
  @override
  @JsonKey(name: 'restricted_id')
  final String restrictedId;
  @override
  @UtcDateTimeConverter()
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
// Joined from user_profiles
  @override
  @JsonKey(name: 'restricted_username')
  final String? restrictedUsername;
  @override
  @JsonKey(name: 'restricted_photo_url')
  final String? restrictedPhotoUrl;
  @override
  @JsonKey(name: 'restricted_full_name')
  final String? restrictedFullName;

  @override
  String toString() {
    return 'RestrictedUserModel(restrictorId: $restrictorId, restrictedId: $restrictedId, createdAt: $createdAt, restrictedUsername: $restrictedUsername, restrictedPhotoUrl: $restrictedPhotoUrl, restrictedFullName: $restrictedFullName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestrictedUserModelImpl &&
            (identical(other.restrictorId, restrictorId) ||
                other.restrictorId == restrictorId) &&
            (identical(other.restrictedId, restrictedId) ||
                other.restrictedId == restrictedId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.restrictedUsername, restrictedUsername) ||
                other.restrictedUsername == restrictedUsername) &&
            (identical(other.restrictedPhotoUrl, restrictedPhotoUrl) ||
                other.restrictedPhotoUrl == restrictedPhotoUrl) &&
            (identical(other.restrictedFullName, restrictedFullName) ||
                other.restrictedFullName == restrictedFullName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, restrictorId, restrictedId,
      createdAt, restrictedUsername, restrictedPhotoUrl, restrictedFullName);

  /// Create a copy of RestrictedUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RestrictedUserModelImplCopyWith<_$RestrictedUserModelImpl> get copyWith =>
      __$$RestrictedUserModelImplCopyWithImpl<_$RestrictedUserModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RestrictedUserModelImplToJson(
      this,
    );
  }
}

abstract class _RestrictedUserModel extends RestrictedUserModel {
  const factory _RestrictedUserModel(
      {@JsonKey(name: 'restrictor_id') required final String restrictorId,
      @JsonKey(name: 'restricted_id') required final String restrictedId,
      @UtcDateTimeConverter()
      @JsonKey(name: 'created_at')
      required final DateTime createdAt,
      @JsonKey(name: 'restricted_username') final String? restrictedUsername,
      @JsonKey(name: 'restricted_photo_url') final String? restrictedPhotoUrl,
      @JsonKey(name: 'restricted_full_name')
      final String? restrictedFullName}) = _$RestrictedUserModelImpl;
  const _RestrictedUserModel._() : super._();

  factory _RestrictedUserModel.fromJson(Map<String, dynamic> json) =
      _$RestrictedUserModelImpl.fromJson;

  @override
  @JsonKey(name: 'restrictor_id')
  String get restrictorId;
  @override
  @JsonKey(name: 'restricted_id')
  String get restrictedId;
  @override
  @UtcDateTimeConverter()
  @JsonKey(name: 'created_at')
  DateTime get createdAt; // Joined from user_profiles
  @override
  @JsonKey(name: 'restricted_username')
  String? get restrictedUsername;
  @override
  @JsonKey(name: 'restricted_photo_url')
  String? get restrictedPhotoUrl;
  @override
  @JsonKey(name: 'restricted_full_name')
  String? get restrictedFullName;

  /// Create a copy of RestrictedUserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RestrictedUserModelImplCopyWith<_$RestrictedUserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
