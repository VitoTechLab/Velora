// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_search_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserSearchModel _$UserSearchModelFromJson(Map<String, dynamic> json) {
  return _UserSearchModel.fromJson(json);
}

/// @nodoc
mixin _$UserSearchModel {
  @JsonKey(name: 'id')
  String get userId => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar_url')
  String? get avatarUrl => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;

  /// Serializes this UserSearchModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserSearchModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserSearchModelCopyWith<UserSearchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSearchModelCopyWith<$Res> {
  factory $UserSearchModelCopyWith(
          UserSearchModel value, $Res Function(UserSearchModel) then) =
      _$UserSearchModelCopyWithImpl<$Res, UserSearchModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String userId,
      String username,
      @JsonKey(name: 'avatar_url') String? avatarUrl,
      String? bio});
}

/// @nodoc
class _$UserSearchModelCopyWithImpl<$Res, $Val extends UserSearchModel>
    implements $UserSearchModelCopyWith<$Res> {
  _$UserSearchModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserSearchModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? username = null,
    Object? avatarUrl = freezed,
    Object? bio = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserSearchModelImplCopyWith<$Res>
    implements $UserSearchModelCopyWith<$Res> {
  factory _$$UserSearchModelImplCopyWith(_$UserSearchModelImpl value,
          $Res Function(_$UserSearchModelImpl) then) =
      __$$UserSearchModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String userId,
      String username,
      @JsonKey(name: 'avatar_url') String? avatarUrl,
      String? bio});
}

/// @nodoc
class __$$UserSearchModelImplCopyWithImpl<$Res>
    extends _$UserSearchModelCopyWithImpl<$Res, _$UserSearchModelImpl>
    implements _$$UserSearchModelImplCopyWith<$Res> {
  __$$UserSearchModelImplCopyWithImpl(
      _$UserSearchModelImpl _value, $Res Function(_$UserSearchModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserSearchModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? username = null,
    Object? avatarUrl = freezed,
    Object? bio = freezed,
  }) {
    return _then(_$UserSearchModelImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserSearchModelImpl extends _UserSearchModel {
  const _$UserSearchModelImpl(
      {@JsonKey(name: 'id') required this.userId,
      required this.username,
      @JsonKey(name: 'avatar_url') this.avatarUrl,
      this.bio})
      : super._();

  factory _$UserSearchModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserSearchModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String userId;
  @override
  final String username;
  @override
  @JsonKey(name: 'avatar_url')
  final String? avatarUrl;
  @override
  final String? bio;

  @override
  String toString() {
    return 'UserSearchModel(userId: $userId, username: $username, avatarUrl: $avatarUrl, bio: $bio)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSearchModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.bio, bio) || other.bio == bio));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, username, avatarUrl, bio);

  /// Create a copy of UserSearchModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSearchModelImplCopyWith<_$UserSearchModelImpl> get copyWith =>
      __$$UserSearchModelImplCopyWithImpl<_$UserSearchModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserSearchModelImplToJson(
      this,
    );
  }
}

abstract class _UserSearchModel extends UserSearchModel {
  const factory _UserSearchModel(
      {@JsonKey(name: 'id') required final String userId,
      required final String username,
      @JsonKey(name: 'avatar_url') final String? avatarUrl,
      final String? bio}) = _$UserSearchModelImpl;
  const _UserSearchModel._() : super._();

  factory _UserSearchModel.fromJson(Map<String, dynamic> json) =
      _$UserSearchModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get userId;
  @override
  String get username;
  @override
  @JsonKey(name: 'avatar_url')
  String? get avatarUrl;
  @override
  String? get bio;

  /// Create a copy of UserSearchModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserSearchModelImplCopyWith<_$UserSearchModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
