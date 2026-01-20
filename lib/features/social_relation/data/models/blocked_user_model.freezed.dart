// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blocked_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BlockedUserModel _$BlockedUserModelFromJson(Map<String, dynamic> json) {
  return _BlockedUserModel.fromJson(json);
}

/// @nodoc
mixin _$BlockedUserModel {
  @JsonKey(name: 'blocker_id')
  String get blockerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'blocked_id')
  String get blockedId => throw _privateConstructorUsedError;
  @UtcDateTimeConverter()
  @JsonKey(name: 'created_at')
  DateTime get createdAt =>
      throw _privateConstructorUsedError; // Joined from user_profiles
  @JsonKey(name: 'blocked_username')
  String? get blockedUsername => throw _privateConstructorUsedError;
  @JsonKey(name: 'blocked_photo_url')
  String? get blockedPhotoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'blocked_full_name')
  String? get blockedFullName => throw _privateConstructorUsedError;

  /// Serializes this BlockedUserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlockedUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlockedUserModelCopyWith<BlockedUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlockedUserModelCopyWith<$Res> {
  factory $BlockedUserModelCopyWith(
          BlockedUserModel value, $Res Function(BlockedUserModel) then) =
      _$BlockedUserModelCopyWithImpl<$Res, BlockedUserModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'blocker_id') String blockerId,
      @JsonKey(name: 'blocked_id') String blockedId,
      @UtcDateTimeConverter() @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'blocked_username') String? blockedUsername,
      @JsonKey(name: 'blocked_photo_url') String? blockedPhotoUrl,
      @JsonKey(name: 'blocked_full_name') String? blockedFullName});
}

/// @nodoc
class _$BlockedUserModelCopyWithImpl<$Res, $Val extends BlockedUserModel>
    implements $BlockedUserModelCopyWith<$Res> {
  _$BlockedUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlockedUserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blockerId = null,
    Object? blockedId = null,
    Object? createdAt = null,
    Object? blockedUsername = freezed,
    Object? blockedPhotoUrl = freezed,
    Object? blockedFullName = freezed,
  }) {
    return _then(_value.copyWith(
      blockerId: null == blockerId
          ? _value.blockerId
          : blockerId // ignore: cast_nullable_to_non_nullable
              as String,
      blockedId: null == blockedId
          ? _value.blockedId
          : blockedId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      blockedUsername: freezed == blockedUsername
          ? _value.blockedUsername
          : blockedUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      blockedPhotoUrl: freezed == blockedPhotoUrl
          ? _value.blockedPhotoUrl
          : blockedPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      blockedFullName: freezed == blockedFullName
          ? _value.blockedFullName
          : blockedFullName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlockedUserModelImplCopyWith<$Res>
    implements $BlockedUserModelCopyWith<$Res> {
  factory _$$BlockedUserModelImplCopyWith(_$BlockedUserModelImpl value,
          $Res Function(_$BlockedUserModelImpl) then) =
      __$$BlockedUserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'blocker_id') String blockerId,
      @JsonKey(name: 'blocked_id') String blockedId,
      @UtcDateTimeConverter() @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'blocked_username') String? blockedUsername,
      @JsonKey(name: 'blocked_photo_url') String? blockedPhotoUrl,
      @JsonKey(name: 'blocked_full_name') String? blockedFullName});
}

/// @nodoc
class __$$BlockedUserModelImplCopyWithImpl<$Res>
    extends _$BlockedUserModelCopyWithImpl<$Res, _$BlockedUserModelImpl>
    implements _$$BlockedUserModelImplCopyWith<$Res> {
  __$$BlockedUserModelImplCopyWithImpl(_$BlockedUserModelImpl _value,
      $Res Function(_$BlockedUserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlockedUserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blockerId = null,
    Object? blockedId = null,
    Object? createdAt = null,
    Object? blockedUsername = freezed,
    Object? blockedPhotoUrl = freezed,
    Object? blockedFullName = freezed,
  }) {
    return _then(_$BlockedUserModelImpl(
      blockerId: null == blockerId
          ? _value.blockerId
          : blockerId // ignore: cast_nullable_to_non_nullable
              as String,
      blockedId: null == blockedId
          ? _value.blockedId
          : blockedId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      blockedUsername: freezed == blockedUsername
          ? _value.blockedUsername
          : blockedUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      blockedPhotoUrl: freezed == blockedPhotoUrl
          ? _value.blockedPhotoUrl
          : blockedPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      blockedFullName: freezed == blockedFullName
          ? _value.blockedFullName
          : blockedFullName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlockedUserModelImpl extends _BlockedUserModel {
  const _$BlockedUserModelImpl(
      {@JsonKey(name: 'blocker_id') required this.blockerId,
      @JsonKey(name: 'blocked_id') required this.blockedId,
      @UtcDateTimeConverter()
      @JsonKey(name: 'created_at')
      required this.createdAt,
      @JsonKey(name: 'blocked_username') this.blockedUsername,
      @JsonKey(name: 'blocked_photo_url') this.blockedPhotoUrl,
      @JsonKey(name: 'blocked_full_name') this.blockedFullName})
      : super._();

  factory _$BlockedUserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlockedUserModelImplFromJson(json);

  @override
  @JsonKey(name: 'blocker_id')
  final String blockerId;
  @override
  @JsonKey(name: 'blocked_id')
  final String blockedId;
  @override
  @UtcDateTimeConverter()
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
// Joined from user_profiles
  @override
  @JsonKey(name: 'blocked_username')
  final String? blockedUsername;
  @override
  @JsonKey(name: 'blocked_photo_url')
  final String? blockedPhotoUrl;
  @override
  @JsonKey(name: 'blocked_full_name')
  final String? blockedFullName;

  @override
  String toString() {
    return 'BlockedUserModel(blockerId: $blockerId, blockedId: $blockedId, createdAt: $createdAt, blockedUsername: $blockedUsername, blockedPhotoUrl: $blockedPhotoUrl, blockedFullName: $blockedFullName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlockedUserModelImpl &&
            (identical(other.blockerId, blockerId) ||
                other.blockerId == blockerId) &&
            (identical(other.blockedId, blockedId) ||
                other.blockedId == blockedId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.blockedUsername, blockedUsername) ||
                other.blockedUsername == blockedUsername) &&
            (identical(other.blockedPhotoUrl, blockedPhotoUrl) ||
                other.blockedPhotoUrl == blockedPhotoUrl) &&
            (identical(other.blockedFullName, blockedFullName) ||
                other.blockedFullName == blockedFullName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, blockerId, blockedId, createdAt,
      blockedUsername, blockedPhotoUrl, blockedFullName);

  /// Create a copy of BlockedUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlockedUserModelImplCopyWith<_$BlockedUserModelImpl> get copyWith =>
      __$$BlockedUserModelImplCopyWithImpl<_$BlockedUserModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BlockedUserModelImplToJson(
      this,
    );
  }
}

abstract class _BlockedUserModel extends BlockedUserModel {
  const factory _BlockedUserModel(
          {@JsonKey(name: 'blocker_id') required final String blockerId,
          @JsonKey(name: 'blocked_id') required final String blockedId,
          @UtcDateTimeConverter()
          @JsonKey(name: 'created_at')
          required final DateTime createdAt,
          @JsonKey(name: 'blocked_username') final String? blockedUsername,
          @JsonKey(name: 'blocked_photo_url') final String? blockedPhotoUrl,
          @JsonKey(name: 'blocked_full_name') final String? blockedFullName}) =
      _$BlockedUserModelImpl;
  const _BlockedUserModel._() : super._();

  factory _BlockedUserModel.fromJson(Map<String, dynamic> json) =
      _$BlockedUserModelImpl.fromJson;

  @override
  @JsonKey(name: 'blocker_id')
  String get blockerId;
  @override
  @JsonKey(name: 'blocked_id')
  String get blockedId;
  @override
  @UtcDateTimeConverter()
  @JsonKey(name: 'created_at')
  DateTime get createdAt; // Joined from user_profiles
  @override
  @JsonKey(name: 'blocked_username')
  String? get blockedUsername;
  @override
  @JsonKey(name: 'blocked_photo_url')
  String? get blockedPhotoUrl;
  @override
  @JsonKey(name: 'blocked_full_name')
  String? get blockedFullName;

  /// Create a copy of BlockedUserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlockedUserModelImplCopyWith<_$BlockedUserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
