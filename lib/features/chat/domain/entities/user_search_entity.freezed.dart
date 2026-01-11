// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_search_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserSearchEntity {
  String get userId => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;

  /// Create a copy of UserSearchEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserSearchEntityCopyWith<UserSearchEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSearchEntityCopyWith<$Res> {
  factory $UserSearchEntityCopyWith(
          UserSearchEntity value, $Res Function(UserSearchEntity) then) =
      _$UserSearchEntityCopyWithImpl<$Res, UserSearchEntity>;
  @useResult
  $Res call({String userId, String username, String? avatarUrl, String? bio});
}

/// @nodoc
class _$UserSearchEntityCopyWithImpl<$Res, $Val extends UserSearchEntity>
    implements $UserSearchEntityCopyWith<$Res> {
  _$UserSearchEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserSearchEntity
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
abstract class _$$UserSearchEntityImplCopyWith<$Res>
    implements $UserSearchEntityCopyWith<$Res> {
  factory _$$UserSearchEntityImplCopyWith(_$UserSearchEntityImpl value,
          $Res Function(_$UserSearchEntityImpl) then) =
      __$$UserSearchEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String username, String? avatarUrl, String? bio});
}

/// @nodoc
class __$$UserSearchEntityImplCopyWithImpl<$Res>
    extends _$UserSearchEntityCopyWithImpl<$Res, _$UserSearchEntityImpl>
    implements _$$UserSearchEntityImplCopyWith<$Res> {
  __$$UserSearchEntityImplCopyWithImpl(_$UserSearchEntityImpl _value,
      $Res Function(_$UserSearchEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserSearchEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? username = null,
    Object? avatarUrl = freezed,
    Object? bio = freezed,
  }) {
    return _then(_$UserSearchEntityImpl(
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

class _$UserSearchEntityImpl implements _UserSearchEntity {
  const _$UserSearchEntityImpl(
      {required this.userId, required this.username, this.avatarUrl, this.bio});

  @override
  final String userId;
  @override
  final String username;
  @override
  final String? avatarUrl;
  @override
  final String? bio;

  @override
  String toString() {
    return 'UserSearchEntity(userId: $userId, username: $username, avatarUrl: $avatarUrl, bio: $bio)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSearchEntityImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.bio, bio) || other.bio == bio));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, username, avatarUrl, bio);

  /// Create a copy of UserSearchEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSearchEntityImplCopyWith<_$UserSearchEntityImpl> get copyWith =>
      __$$UserSearchEntityImplCopyWithImpl<_$UserSearchEntityImpl>(
          this, _$identity);
}

abstract class _UserSearchEntity implements UserSearchEntity {
  const factory _UserSearchEntity(
      {required final String userId,
      required final String username,
      final String? avatarUrl,
      final String? bio}) = _$UserSearchEntityImpl;

  @override
  String get userId;
  @override
  String get username;
  @override
  String? get avatarUrl;
  @override
  String? get bio;

  /// Create a copy of UserSearchEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserSearchEntityImplCopyWith<_$UserSearchEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
