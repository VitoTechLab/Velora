// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'follow_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FollowRequestModel _$FollowRequestModelFromJson(Map<String, dynamic> json) {
  return _FollowRequestModel.fromJson(json);
}

/// @nodoc
mixin _$FollowRequestModel {
  @JsonKey(name: 'requester_id')
  String get requesterId => throw _privateConstructorUsedError;
  @JsonKey(name: 'target_id')
  String get targetId => throw _privateConstructorUsedError;
  @UtcDateTimeConverter()
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String get status =>
      throw _privateConstructorUsedError; // Joined from user_profiles
  @JsonKey(name: 'requester_username')
  String? get requesterUsername => throw _privateConstructorUsedError;
  @JsonKey(name: 'requester_photo_url')
  String? get requesterPhotoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'requester_full_name')
  String? get requesterFullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'target_username')
  String? get targetUsername => throw _privateConstructorUsedError;
  @JsonKey(name: 'target_photo_url')
  String? get targetPhotoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'target_full_name')
  String? get targetFullName => throw _privateConstructorUsedError;

  /// Serializes this FollowRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FollowRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FollowRequestModelCopyWith<FollowRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowRequestModelCopyWith<$Res> {
  factory $FollowRequestModelCopyWith(
          FollowRequestModel value, $Res Function(FollowRequestModel) then) =
      _$FollowRequestModelCopyWithImpl<$Res, FollowRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'requester_id') String requesterId,
      @JsonKey(name: 'target_id') String targetId,
      @UtcDateTimeConverter() @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'requester_username') String? requesterUsername,
      @JsonKey(name: 'requester_photo_url') String? requesterPhotoUrl,
      @JsonKey(name: 'requester_full_name') String? requesterFullName,
      @JsonKey(name: 'target_username') String? targetUsername,
      @JsonKey(name: 'target_photo_url') String? targetPhotoUrl,
      @JsonKey(name: 'target_full_name') String? targetFullName});
}

/// @nodoc
class _$FollowRequestModelCopyWithImpl<$Res, $Val extends FollowRequestModel>
    implements $FollowRequestModelCopyWith<$Res> {
  _$FollowRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FollowRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requesterId = null,
    Object? targetId = null,
    Object? createdAt = null,
    Object? status = null,
    Object? requesterUsername = freezed,
    Object? requesterPhotoUrl = freezed,
    Object? requesterFullName = freezed,
    Object? targetUsername = freezed,
    Object? targetPhotoUrl = freezed,
    Object? targetFullName = freezed,
  }) {
    return _then(_value.copyWith(
      requesterId: null == requesterId
          ? _value.requesterId
          : requesterId // ignore: cast_nullable_to_non_nullable
              as String,
      targetId: null == targetId
          ? _value.targetId
          : targetId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      requesterUsername: freezed == requesterUsername
          ? _value.requesterUsername
          : requesterUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      requesterPhotoUrl: freezed == requesterPhotoUrl
          ? _value.requesterPhotoUrl
          : requesterPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      requesterFullName: freezed == requesterFullName
          ? _value.requesterFullName
          : requesterFullName // ignore: cast_nullable_to_non_nullable
              as String?,
      targetUsername: freezed == targetUsername
          ? _value.targetUsername
          : targetUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      targetPhotoUrl: freezed == targetPhotoUrl
          ? _value.targetPhotoUrl
          : targetPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      targetFullName: freezed == targetFullName
          ? _value.targetFullName
          : targetFullName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FollowRequestModelImplCopyWith<$Res>
    implements $FollowRequestModelCopyWith<$Res> {
  factory _$$FollowRequestModelImplCopyWith(_$FollowRequestModelImpl value,
          $Res Function(_$FollowRequestModelImpl) then) =
      __$$FollowRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'requester_id') String requesterId,
      @JsonKey(name: 'target_id') String targetId,
      @UtcDateTimeConverter() @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'requester_username') String? requesterUsername,
      @JsonKey(name: 'requester_photo_url') String? requesterPhotoUrl,
      @JsonKey(name: 'requester_full_name') String? requesterFullName,
      @JsonKey(name: 'target_username') String? targetUsername,
      @JsonKey(name: 'target_photo_url') String? targetPhotoUrl,
      @JsonKey(name: 'target_full_name') String? targetFullName});
}

/// @nodoc
class __$$FollowRequestModelImplCopyWithImpl<$Res>
    extends _$FollowRequestModelCopyWithImpl<$Res, _$FollowRequestModelImpl>
    implements _$$FollowRequestModelImplCopyWith<$Res> {
  __$$FollowRequestModelImplCopyWithImpl(_$FollowRequestModelImpl _value,
      $Res Function(_$FollowRequestModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FollowRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requesterId = null,
    Object? targetId = null,
    Object? createdAt = null,
    Object? status = null,
    Object? requesterUsername = freezed,
    Object? requesterPhotoUrl = freezed,
    Object? requesterFullName = freezed,
    Object? targetUsername = freezed,
    Object? targetPhotoUrl = freezed,
    Object? targetFullName = freezed,
  }) {
    return _then(_$FollowRequestModelImpl(
      requesterId: null == requesterId
          ? _value.requesterId
          : requesterId // ignore: cast_nullable_to_non_nullable
              as String,
      targetId: null == targetId
          ? _value.targetId
          : targetId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      requesterUsername: freezed == requesterUsername
          ? _value.requesterUsername
          : requesterUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      requesterPhotoUrl: freezed == requesterPhotoUrl
          ? _value.requesterPhotoUrl
          : requesterPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      requesterFullName: freezed == requesterFullName
          ? _value.requesterFullName
          : requesterFullName // ignore: cast_nullable_to_non_nullable
              as String?,
      targetUsername: freezed == targetUsername
          ? _value.targetUsername
          : targetUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      targetPhotoUrl: freezed == targetPhotoUrl
          ? _value.targetPhotoUrl
          : targetPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      targetFullName: freezed == targetFullName
          ? _value.targetFullName
          : targetFullName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FollowRequestModelImpl extends _FollowRequestModel {
  const _$FollowRequestModelImpl(
      {@JsonKey(name: 'requester_id') required this.requesterId,
      @JsonKey(name: 'target_id') required this.targetId,
      @UtcDateTimeConverter()
      @JsonKey(name: 'created_at')
      required this.createdAt,
      @JsonKey(name: 'status') this.status = 'pending',
      @JsonKey(name: 'requester_username') this.requesterUsername,
      @JsonKey(name: 'requester_photo_url') this.requesterPhotoUrl,
      @JsonKey(name: 'requester_full_name') this.requesterFullName,
      @JsonKey(name: 'target_username') this.targetUsername,
      @JsonKey(name: 'target_photo_url') this.targetPhotoUrl,
      @JsonKey(name: 'target_full_name') this.targetFullName})
      : super._();

  factory _$FollowRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FollowRequestModelImplFromJson(json);

  @override
  @JsonKey(name: 'requester_id')
  final String requesterId;
  @override
  @JsonKey(name: 'target_id')
  final String targetId;
  @override
  @UtcDateTimeConverter()
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'status')
  final String status;
// Joined from user_profiles
  @override
  @JsonKey(name: 'requester_username')
  final String? requesterUsername;
  @override
  @JsonKey(name: 'requester_photo_url')
  final String? requesterPhotoUrl;
  @override
  @JsonKey(name: 'requester_full_name')
  final String? requesterFullName;
  @override
  @JsonKey(name: 'target_username')
  final String? targetUsername;
  @override
  @JsonKey(name: 'target_photo_url')
  final String? targetPhotoUrl;
  @override
  @JsonKey(name: 'target_full_name')
  final String? targetFullName;

  @override
  String toString() {
    return 'FollowRequestModel(requesterId: $requesterId, targetId: $targetId, createdAt: $createdAt, status: $status, requesterUsername: $requesterUsername, requesterPhotoUrl: $requesterPhotoUrl, requesterFullName: $requesterFullName, targetUsername: $targetUsername, targetPhotoUrl: $targetPhotoUrl, targetFullName: $targetFullName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FollowRequestModelImpl &&
            (identical(other.requesterId, requesterId) ||
                other.requesterId == requesterId) &&
            (identical(other.targetId, targetId) ||
                other.targetId == targetId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.requesterUsername, requesterUsername) ||
                other.requesterUsername == requesterUsername) &&
            (identical(other.requesterPhotoUrl, requesterPhotoUrl) ||
                other.requesterPhotoUrl == requesterPhotoUrl) &&
            (identical(other.requesterFullName, requesterFullName) ||
                other.requesterFullName == requesterFullName) &&
            (identical(other.targetUsername, targetUsername) ||
                other.targetUsername == targetUsername) &&
            (identical(other.targetPhotoUrl, targetPhotoUrl) ||
                other.targetPhotoUrl == targetPhotoUrl) &&
            (identical(other.targetFullName, targetFullName) ||
                other.targetFullName == targetFullName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      requesterId,
      targetId,
      createdAt,
      status,
      requesterUsername,
      requesterPhotoUrl,
      requesterFullName,
      targetUsername,
      targetPhotoUrl,
      targetFullName);

  /// Create a copy of FollowRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FollowRequestModelImplCopyWith<_$FollowRequestModelImpl> get copyWith =>
      __$$FollowRequestModelImplCopyWithImpl<_$FollowRequestModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FollowRequestModelImplToJson(
      this,
    );
  }
}

abstract class _FollowRequestModel extends FollowRequestModel {
  const factory _FollowRequestModel(
          {@JsonKey(name: 'requester_id') required final String requesterId,
          @JsonKey(name: 'target_id') required final String targetId,
          @UtcDateTimeConverter()
          @JsonKey(name: 'created_at')
          required final DateTime createdAt,
          @JsonKey(name: 'status') final String status,
          @JsonKey(name: 'requester_username') final String? requesterUsername,
          @JsonKey(name: 'requester_photo_url') final String? requesterPhotoUrl,
          @JsonKey(name: 'requester_full_name') final String? requesterFullName,
          @JsonKey(name: 'target_username') final String? targetUsername,
          @JsonKey(name: 'target_photo_url') final String? targetPhotoUrl,
          @JsonKey(name: 'target_full_name') final String? targetFullName}) =
      _$FollowRequestModelImpl;
  const _FollowRequestModel._() : super._();

  factory _FollowRequestModel.fromJson(Map<String, dynamic> json) =
      _$FollowRequestModelImpl.fromJson;

  @override
  @JsonKey(name: 'requester_id')
  String get requesterId;
  @override
  @JsonKey(name: 'target_id')
  String get targetId;
  @override
  @UtcDateTimeConverter()
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'status')
  String get status; // Joined from user_profiles
  @override
  @JsonKey(name: 'requester_username')
  String? get requesterUsername;
  @override
  @JsonKey(name: 'requester_photo_url')
  String? get requesterPhotoUrl;
  @override
  @JsonKey(name: 'requester_full_name')
  String? get requesterFullName;
  @override
  @JsonKey(name: 'target_username')
  String? get targetUsername;
  @override
  @JsonKey(name: 'target_photo_url')
  String? get targetPhotoUrl;
  @override
  @JsonKey(name: 'target_full_name')
  String? get targetFullName;

  /// Create a copy of FollowRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FollowRequestModelImplCopyWith<_$FollowRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
