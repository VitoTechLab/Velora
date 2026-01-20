// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'muted_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MutedUserModel _$MutedUserModelFromJson(Map<String, dynamic> json) {
  return _MutedUserModel.fromJson(json);
}

/// @nodoc
mixin _$MutedUserModel {
  @JsonKey(name: 'muter_id')
  String get muterId => throw _privateConstructorUsedError;
  @JsonKey(name: 'muted_id')
  String get mutedId => throw _privateConstructorUsedError;
  @UtcDateTimeConverter()
  @JsonKey(name: 'created_at')
  DateTime get createdAt =>
      throw _privateConstructorUsedError; // Joined from user_profiles
  @JsonKey(name: 'muted_username')
  String? get mutedUsername => throw _privateConstructorUsedError;
  @JsonKey(name: 'muted_photo_url')
  String? get mutedPhotoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'muted_full_name')
  String? get mutedFullName => throw _privateConstructorUsedError;

  /// Serializes this MutedUserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MutedUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MutedUserModelCopyWith<MutedUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MutedUserModelCopyWith<$Res> {
  factory $MutedUserModelCopyWith(
          MutedUserModel value, $Res Function(MutedUserModel) then) =
      _$MutedUserModelCopyWithImpl<$Res, MutedUserModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'muter_id') String muterId,
      @JsonKey(name: 'muted_id') String mutedId,
      @UtcDateTimeConverter() @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'muted_username') String? mutedUsername,
      @JsonKey(name: 'muted_photo_url') String? mutedPhotoUrl,
      @JsonKey(name: 'muted_full_name') String? mutedFullName});
}

/// @nodoc
class _$MutedUserModelCopyWithImpl<$Res, $Val extends MutedUserModel>
    implements $MutedUserModelCopyWith<$Res> {
  _$MutedUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MutedUserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? muterId = null,
    Object? mutedId = null,
    Object? createdAt = null,
    Object? mutedUsername = freezed,
    Object? mutedPhotoUrl = freezed,
    Object? mutedFullName = freezed,
  }) {
    return _then(_value.copyWith(
      muterId: null == muterId
          ? _value.muterId
          : muterId // ignore: cast_nullable_to_non_nullable
              as String,
      mutedId: null == mutedId
          ? _value.mutedId
          : mutedId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      mutedUsername: freezed == mutedUsername
          ? _value.mutedUsername
          : mutedUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      mutedPhotoUrl: freezed == mutedPhotoUrl
          ? _value.mutedPhotoUrl
          : mutedPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      mutedFullName: freezed == mutedFullName
          ? _value.mutedFullName
          : mutedFullName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MutedUserModelImplCopyWith<$Res>
    implements $MutedUserModelCopyWith<$Res> {
  factory _$$MutedUserModelImplCopyWith(_$MutedUserModelImpl value,
          $Res Function(_$MutedUserModelImpl) then) =
      __$$MutedUserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'muter_id') String muterId,
      @JsonKey(name: 'muted_id') String mutedId,
      @UtcDateTimeConverter() @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'muted_username') String? mutedUsername,
      @JsonKey(name: 'muted_photo_url') String? mutedPhotoUrl,
      @JsonKey(name: 'muted_full_name') String? mutedFullName});
}

/// @nodoc
class __$$MutedUserModelImplCopyWithImpl<$Res>
    extends _$MutedUserModelCopyWithImpl<$Res, _$MutedUserModelImpl>
    implements _$$MutedUserModelImplCopyWith<$Res> {
  __$$MutedUserModelImplCopyWithImpl(
      _$MutedUserModelImpl _value, $Res Function(_$MutedUserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MutedUserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? muterId = null,
    Object? mutedId = null,
    Object? createdAt = null,
    Object? mutedUsername = freezed,
    Object? mutedPhotoUrl = freezed,
    Object? mutedFullName = freezed,
  }) {
    return _then(_$MutedUserModelImpl(
      muterId: null == muterId
          ? _value.muterId
          : muterId // ignore: cast_nullable_to_non_nullable
              as String,
      mutedId: null == mutedId
          ? _value.mutedId
          : mutedId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      mutedUsername: freezed == mutedUsername
          ? _value.mutedUsername
          : mutedUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      mutedPhotoUrl: freezed == mutedPhotoUrl
          ? _value.mutedPhotoUrl
          : mutedPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      mutedFullName: freezed == mutedFullName
          ? _value.mutedFullName
          : mutedFullName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MutedUserModelImpl extends _MutedUserModel {
  const _$MutedUserModelImpl(
      {@JsonKey(name: 'muter_id') required this.muterId,
      @JsonKey(name: 'muted_id') required this.mutedId,
      @UtcDateTimeConverter()
      @JsonKey(name: 'created_at')
      required this.createdAt,
      @JsonKey(name: 'muted_username') this.mutedUsername,
      @JsonKey(name: 'muted_photo_url') this.mutedPhotoUrl,
      @JsonKey(name: 'muted_full_name') this.mutedFullName})
      : super._();

  factory _$MutedUserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MutedUserModelImplFromJson(json);

  @override
  @JsonKey(name: 'muter_id')
  final String muterId;
  @override
  @JsonKey(name: 'muted_id')
  final String mutedId;
  @override
  @UtcDateTimeConverter()
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
// Joined from user_profiles
  @override
  @JsonKey(name: 'muted_username')
  final String? mutedUsername;
  @override
  @JsonKey(name: 'muted_photo_url')
  final String? mutedPhotoUrl;
  @override
  @JsonKey(name: 'muted_full_name')
  final String? mutedFullName;

  @override
  String toString() {
    return 'MutedUserModel(muterId: $muterId, mutedId: $mutedId, createdAt: $createdAt, mutedUsername: $mutedUsername, mutedPhotoUrl: $mutedPhotoUrl, mutedFullName: $mutedFullName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MutedUserModelImpl &&
            (identical(other.muterId, muterId) || other.muterId == muterId) &&
            (identical(other.mutedId, mutedId) || other.mutedId == mutedId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.mutedUsername, mutedUsername) ||
                other.mutedUsername == mutedUsername) &&
            (identical(other.mutedPhotoUrl, mutedPhotoUrl) ||
                other.mutedPhotoUrl == mutedPhotoUrl) &&
            (identical(other.mutedFullName, mutedFullName) ||
                other.mutedFullName == mutedFullName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, muterId, mutedId, createdAt,
      mutedUsername, mutedPhotoUrl, mutedFullName);

  /// Create a copy of MutedUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MutedUserModelImplCopyWith<_$MutedUserModelImpl> get copyWith =>
      __$$MutedUserModelImplCopyWithImpl<_$MutedUserModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MutedUserModelImplToJson(
      this,
    );
  }
}

abstract class _MutedUserModel extends MutedUserModel {
  const factory _MutedUserModel(
          {@JsonKey(name: 'muter_id') required final String muterId,
          @JsonKey(name: 'muted_id') required final String mutedId,
          @UtcDateTimeConverter()
          @JsonKey(name: 'created_at')
          required final DateTime createdAt,
          @JsonKey(name: 'muted_username') final String? mutedUsername,
          @JsonKey(name: 'muted_photo_url') final String? mutedPhotoUrl,
          @JsonKey(name: 'muted_full_name') final String? mutedFullName}) =
      _$MutedUserModelImpl;
  const _MutedUserModel._() : super._();

  factory _MutedUserModel.fromJson(Map<String, dynamic> json) =
      _$MutedUserModelImpl.fromJson;

  @override
  @JsonKey(name: 'muter_id')
  String get muterId;
  @override
  @JsonKey(name: 'muted_id')
  String get mutedId;
  @override
  @UtcDateTimeConverter()
  @JsonKey(name: 'created_at')
  DateTime get createdAt; // Joined from user_profiles
  @override
  @JsonKey(name: 'muted_username')
  String? get mutedUsername;
  @override
  @JsonKey(name: 'muted_photo_url')
  String? get mutedPhotoUrl;
  @override
  @JsonKey(name: 'muted_full_name')
  String? get mutedFullName;

  /// Create a copy of MutedUserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MutedUserModelImplCopyWith<_$MutedUserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
