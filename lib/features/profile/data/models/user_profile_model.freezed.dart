// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserProfileModel _$UserProfileModelFromJson(Map<String, dynamic> json) {
  return _UserProfileModel.fromJson(json);
}

/// @nodoc
mixin _$UserProfileModel {
  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar_url')
  String? get avatarUrl =>
      throw _privateConstructorUsedError; // Extended profile fields
  String? get bio => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_of_birth')
  @NullableUtcDateTimeConverter()
  DateTime? get dateOfBirth => throw _privateConstructorUsedError;
  UserGender? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_organization')
  bool get isOrganization => throw _privateConstructorUsedError;
  @JsonKey(name: 'organization_name')
  String? get organizationName => throw _privateConstructorUsedError;
  @JsonKey(name: 'website_url')
  String? get websiteUrl => throw _privateConstructorUsedError;
  String? get location =>
      throw _privateConstructorUsedError; // Privacy and verification
  @JsonKey(name: 'is_private')
  bool get isPrivate => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_verified')
  bool get isVerified => throw _privateConstructorUsedError;
  @JsonKey(name: 'show_activity_status')
  bool get showActivityStatus => throw _privateConstructorUsedError; // Counts
  @JsonKey(name: 'followers_count')
  int get followersCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'following_count')
  int get followingCount => throw _privateConstructorUsedError; // Timestamps
  @UtcDateTimeConverter()
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @UtcDateTimeConverter()
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt =>
      throw _privateConstructorUsedError; // Computed fields from view
  @JsonKey(name: 'is_me')
  bool get isMe => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_following')
  bool get isFollowing => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_follow_request_pending')
  bool get isFollowRequestPending => throw _privateConstructorUsedError;
  @JsonKey(name: 'i_blocked_them')
  bool get iBlockedThem => throw _privateConstructorUsedError;
  @JsonKey(name: 'they_blocked_me')
  bool get theyBlockedMe => throw _privateConstructorUsedError;

  /// Serializes this UserProfileModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserProfileModelCopyWith<UserProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileModelCopyWith<$Res> {
  factory $UserProfileModelCopyWith(
          UserProfileModel value, $Res Function(UserProfileModel) then) =
      _$UserProfileModelCopyWithImpl<$Res, UserProfileModel>;
  @useResult
  $Res call(
      {String id,
      String email,
      String username,
      @JsonKey(name: 'full_name') String? fullName,
      @JsonKey(name: 'avatar_url') String? avatarUrl,
      String? bio,
      @JsonKey(name: 'date_of_birth')
      @NullableUtcDateTimeConverter()
      DateTime? dateOfBirth,
      UserGender? gender,
      @JsonKey(name: 'is_organization') bool isOrganization,
      @JsonKey(name: 'organization_name') String? organizationName,
      @JsonKey(name: 'website_url') String? websiteUrl,
      String? location,
      @JsonKey(name: 'is_private') bool isPrivate,
      @JsonKey(name: 'is_verified') bool isVerified,
      @JsonKey(name: 'show_activity_status') bool showActivityStatus,
      @JsonKey(name: 'followers_count') int followersCount,
      @JsonKey(name: 'following_count') int followingCount,
      @UtcDateTimeConverter() @JsonKey(name: 'created_at') DateTime createdAt,
      @UtcDateTimeConverter() @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'is_me') bool isMe,
      @JsonKey(name: 'is_following') bool isFollowing,
      @JsonKey(name: 'is_follow_request_pending') bool isFollowRequestPending,
      @JsonKey(name: 'i_blocked_them') bool iBlockedThem,
      @JsonKey(name: 'they_blocked_me') bool theyBlockedMe});
}

/// @nodoc
class _$UserProfileModelCopyWithImpl<$Res, $Val extends UserProfileModel>
    implements $UserProfileModelCopyWith<$Res> {
  _$UserProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? username = null,
    Object? fullName = freezed,
    Object? avatarUrl = freezed,
    Object? bio = freezed,
    Object? dateOfBirth = freezed,
    Object? gender = freezed,
    Object? isOrganization = null,
    Object? organizationName = freezed,
    Object? websiteUrl = freezed,
    Object? location = freezed,
    Object? isPrivate = null,
    Object? isVerified = null,
    Object? showActivityStatus = null,
    Object? followersCount = null,
    Object? followingCount = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? isMe = null,
    Object? isFollowing = null,
    Object? isFollowRequestPending = null,
    Object? iBlockedThem = null,
    Object? theyBlockedMe = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as UserGender?,
      isOrganization: null == isOrganization
          ? _value.isOrganization
          : isOrganization // ignore: cast_nullable_to_non_nullable
              as bool,
      organizationName: freezed == organizationName
          ? _value.organizationName
          : organizationName // ignore: cast_nullable_to_non_nullable
              as String?,
      websiteUrl: freezed == websiteUrl
          ? _value.websiteUrl
          : websiteUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      isPrivate: null == isPrivate
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      showActivityStatus: null == showActivityStatus
          ? _value.showActivityStatus
          : showActivityStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      followersCount: null == followersCount
          ? _value.followersCount
          : followersCount // ignore: cast_nullable_to_non_nullable
              as int,
      followingCount: null == followingCount
          ? _value.followingCount
          : followingCount // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isMe: null == isMe
          ? _value.isMe
          : isMe // ignore: cast_nullable_to_non_nullable
              as bool,
      isFollowing: null == isFollowing
          ? _value.isFollowing
          : isFollowing // ignore: cast_nullable_to_non_nullable
              as bool,
      isFollowRequestPending: null == isFollowRequestPending
          ? _value.isFollowRequestPending
          : isFollowRequestPending // ignore: cast_nullable_to_non_nullable
              as bool,
      iBlockedThem: null == iBlockedThem
          ? _value.iBlockedThem
          : iBlockedThem // ignore: cast_nullable_to_non_nullable
              as bool,
      theyBlockedMe: null == theyBlockedMe
          ? _value.theyBlockedMe
          : theyBlockedMe // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserProfileModelImplCopyWith<$Res>
    implements $UserProfileModelCopyWith<$Res> {
  factory _$$UserProfileModelImplCopyWith(_$UserProfileModelImpl value,
          $Res Function(_$UserProfileModelImpl) then) =
      __$$UserProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String email,
      String username,
      @JsonKey(name: 'full_name') String? fullName,
      @JsonKey(name: 'avatar_url') String? avatarUrl,
      String? bio,
      @JsonKey(name: 'date_of_birth')
      @NullableUtcDateTimeConverter()
      DateTime? dateOfBirth,
      UserGender? gender,
      @JsonKey(name: 'is_organization') bool isOrganization,
      @JsonKey(name: 'organization_name') String? organizationName,
      @JsonKey(name: 'website_url') String? websiteUrl,
      String? location,
      @JsonKey(name: 'is_private') bool isPrivate,
      @JsonKey(name: 'is_verified') bool isVerified,
      @JsonKey(name: 'show_activity_status') bool showActivityStatus,
      @JsonKey(name: 'followers_count') int followersCount,
      @JsonKey(name: 'following_count') int followingCount,
      @UtcDateTimeConverter() @JsonKey(name: 'created_at') DateTime createdAt,
      @UtcDateTimeConverter() @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'is_me') bool isMe,
      @JsonKey(name: 'is_following') bool isFollowing,
      @JsonKey(name: 'is_follow_request_pending') bool isFollowRequestPending,
      @JsonKey(name: 'i_blocked_them') bool iBlockedThem,
      @JsonKey(name: 'they_blocked_me') bool theyBlockedMe});
}

/// @nodoc
class __$$UserProfileModelImplCopyWithImpl<$Res>
    extends _$UserProfileModelCopyWithImpl<$Res, _$UserProfileModelImpl>
    implements _$$UserProfileModelImplCopyWith<$Res> {
  __$$UserProfileModelImplCopyWithImpl(_$UserProfileModelImpl _value,
      $Res Function(_$UserProfileModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? username = null,
    Object? fullName = freezed,
    Object? avatarUrl = freezed,
    Object? bio = freezed,
    Object? dateOfBirth = freezed,
    Object? gender = freezed,
    Object? isOrganization = null,
    Object? organizationName = freezed,
    Object? websiteUrl = freezed,
    Object? location = freezed,
    Object? isPrivate = null,
    Object? isVerified = null,
    Object? showActivityStatus = null,
    Object? followersCount = null,
    Object? followingCount = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? isMe = null,
    Object? isFollowing = null,
    Object? isFollowRequestPending = null,
    Object? iBlockedThem = null,
    Object? theyBlockedMe = null,
  }) {
    return _then(_$UserProfileModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as UserGender?,
      isOrganization: null == isOrganization
          ? _value.isOrganization
          : isOrganization // ignore: cast_nullable_to_non_nullable
              as bool,
      organizationName: freezed == organizationName
          ? _value.organizationName
          : organizationName // ignore: cast_nullable_to_non_nullable
              as String?,
      websiteUrl: freezed == websiteUrl
          ? _value.websiteUrl
          : websiteUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      isPrivate: null == isPrivate
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      showActivityStatus: null == showActivityStatus
          ? _value.showActivityStatus
          : showActivityStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      followersCount: null == followersCount
          ? _value.followersCount
          : followersCount // ignore: cast_nullable_to_non_nullable
              as int,
      followingCount: null == followingCount
          ? _value.followingCount
          : followingCount // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isMe: null == isMe
          ? _value.isMe
          : isMe // ignore: cast_nullable_to_non_nullable
              as bool,
      isFollowing: null == isFollowing
          ? _value.isFollowing
          : isFollowing // ignore: cast_nullable_to_non_nullable
              as bool,
      isFollowRequestPending: null == isFollowRequestPending
          ? _value.isFollowRequestPending
          : isFollowRequestPending // ignore: cast_nullable_to_non_nullable
              as bool,
      iBlockedThem: null == iBlockedThem
          ? _value.iBlockedThem
          : iBlockedThem // ignore: cast_nullable_to_non_nullable
              as bool,
      theyBlockedMe: null == theyBlockedMe
          ? _value.theyBlockedMe
          : theyBlockedMe // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserProfileModelImpl implements _UserProfileModel {
  const _$UserProfileModelImpl(
      {required this.id,
      this.email = '',
      this.username = '',
      @JsonKey(name: 'full_name') this.fullName,
      @JsonKey(name: 'avatar_url') this.avatarUrl,
      this.bio,
      @JsonKey(name: 'date_of_birth')
      @NullableUtcDateTimeConverter()
      this.dateOfBirth,
      this.gender,
      @JsonKey(name: 'is_organization') this.isOrganization = false,
      @JsonKey(name: 'organization_name') this.organizationName,
      @JsonKey(name: 'website_url') this.websiteUrl,
      this.location,
      @JsonKey(name: 'is_private') this.isPrivate = false,
      @JsonKey(name: 'is_verified') this.isVerified = false,
      @JsonKey(name: 'show_activity_status') this.showActivityStatus = true,
      @JsonKey(name: 'followers_count') this.followersCount = 0,
      @JsonKey(name: 'following_count') this.followingCount = 0,
      @UtcDateTimeConverter()
      @JsonKey(name: 'created_at')
      required this.createdAt,
      @UtcDateTimeConverter()
      @JsonKey(name: 'updated_at')
      required this.updatedAt,
      @JsonKey(name: 'is_me') this.isMe = false,
      @JsonKey(name: 'is_following') this.isFollowing = false,
      @JsonKey(name: 'is_follow_request_pending')
      this.isFollowRequestPending = false,
      @JsonKey(name: 'i_blocked_them') this.iBlockedThem = false,
      @JsonKey(name: 'they_blocked_me') this.theyBlockedMe = false});

  factory _$UserProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProfileModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String username;
  @override
  @JsonKey(name: 'full_name')
  final String? fullName;
  @override
  @JsonKey(name: 'avatar_url')
  final String? avatarUrl;
// Extended profile fields
  @override
  final String? bio;
  @override
  @JsonKey(name: 'date_of_birth')
  @NullableUtcDateTimeConverter()
  final DateTime? dateOfBirth;
  @override
  final UserGender? gender;
  @override
  @JsonKey(name: 'is_organization')
  final bool isOrganization;
  @override
  @JsonKey(name: 'organization_name')
  final String? organizationName;
  @override
  @JsonKey(name: 'website_url')
  final String? websiteUrl;
  @override
  final String? location;
// Privacy and verification
  @override
  @JsonKey(name: 'is_private')
  final bool isPrivate;
  @override
  @JsonKey(name: 'is_verified')
  final bool isVerified;
  @override
  @JsonKey(name: 'show_activity_status')
  final bool showActivityStatus;
// Counts
  @override
  @JsonKey(name: 'followers_count')
  final int followersCount;
  @override
  @JsonKey(name: 'following_count')
  final int followingCount;
// Timestamps
  @override
  @UtcDateTimeConverter()
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @UtcDateTimeConverter()
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
// Computed fields from view
  @override
  @JsonKey(name: 'is_me')
  final bool isMe;
  @override
  @JsonKey(name: 'is_following')
  final bool isFollowing;
  @override
  @JsonKey(name: 'is_follow_request_pending')
  final bool isFollowRequestPending;
  @override
  @JsonKey(name: 'i_blocked_them')
  final bool iBlockedThem;
  @override
  @JsonKey(name: 'they_blocked_me')
  final bool theyBlockedMe;

  @override
  String toString() {
    return 'UserProfileModel(id: $id, email: $email, username: $username, fullName: $fullName, avatarUrl: $avatarUrl, bio: $bio, dateOfBirth: $dateOfBirth, gender: $gender, isOrganization: $isOrganization, organizationName: $organizationName, websiteUrl: $websiteUrl, location: $location, isPrivate: $isPrivate, isVerified: $isVerified, showActivityStatus: $showActivityStatus, followersCount: $followersCount, followingCount: $followingCount, createdAt: $createdAt, updatedAt: $updatedAt, isMe: $isMe, isFollowing: $isFollowing, isFollowRequestPending: $isFollowRequestPending, iBlockedThem: $iBlockedThem, theyBlockedMe: $theyBlockedMe)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.isOrganization, isOrganization) ||
                other.isOrganization == isOrganization) &&
            (identical(other.organizationName, organizationName) ||
                other.organizationName == organizationName) &&
            (identical(other.websiteUrl, websiteUrl) ||
                other.websiteUrl == websiteUrl) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.isPrivate, isPrivate) ||
                other.isPrivate == isPrivate) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.showActivityStatus, showActivityStatus) ||
                other.showActivityStatus == showActivityStatus) &&
            (identical(other.followersCount, followersCount) ||
                other.followersCount == followersCount) &&
            (identical(other.followingCount, followingCount) ||
                other.followingCount == followingCount) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.isMe, isMe) || other.isMe == isMe) &&
            (identical(other.isFollowing, isFollowing) ||
                other.isFollowing == isFollowing) &&
            (identical(other.isFollowRequestPending, isFollowRequestPending) ||
                other.isFollowRequestPending == isFollowRequestPending) &&
            (identical(other.iBlockedThem, iBlockedThem) ||
                other.iBlockedThem == iBlockedThem) &&
            (identical(other.theyBlockedMe, theyBlockedMe) ||
                other.theyBlockedMe == theyBlockedMe));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        email,
        username,
        fullName,
        avatarUrl,
        bio,
        dateOfBirth,
        gender,
        isOrganization,
        organizationName,
        websiteUrl,
        location,
        isPrivate,
        isVerified,
        showActivityStatus,
        followersCount,
        followingCount,
        createdAt,
        updatedAt,
        isMe,
        isFollowing,
        isFollowRequestPending,
        iBlockedThem,
        theyBlockedMe
      ]);

  /// Create a copy of UserProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileModelImplCopyWith<_$UserProfileModelImpl> get copyWith =>
      __$$UserProfileModelImplCopyWithImpl<_$UserProfileModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfileModelImplToJson(
      this,
    );
  }
}

abstract class _UserProfileModel implements UserProfileModel {
  const factory _UserProfileModel(
          {required final String id,
          final String email,
          final String username,
          @JsonKey(name: 'full_name') final String? fullName,
          @JsonKey(name: 'avatar_url') final String? avatarUrl,
          final String? bio,
          @JsonKey(name: 'date_of_birth')
          @NullableUtcDateTimeConverter()
          final DateTime? dateOfBirth,
          final UserGender? gender,
          @JsonKey(name: 'is_organization') final bool isOrganization,
          @JsonKey(name: 'organization_name') final String? organizationName,
          @JsonKey(name: 'website_url') final String? websiteUrl,
          final String? location,
          @JsonKey(name: 'is_private') final bool isPrivate,
          @JsonKey(name: 'is_verified') final bool isVerified,
          @JsonKey(name: 'show_activity_status') final bool showActivityStatus,
          @JsonKey(name: 'followers_count') final int followersCount,
          @JsonKey(name: 'following_count') final int followingCount,
          @UtcDateTimeConverter()
          @JsonKey(name: 'created_at')
          required final DateTime createdAt,
          @UtcDateTimeConverter()
          @JsonKey(name: 'updated_at')
          required final DateTime updatedAt,
          @JsonKey(name: 'is_me') final bool isMe,
          @JsonKey(name: 'is_following') final bool isFollowing,
          @JsonKey(name: 'is_follow_request_pending')
          final bool isFollowRequestPending,
          @JsonKey(name: 'i_blocked_them') final bool iBlockedThem,
          @JsonKey(name: 'they_blocked_me') final bool theyBlockedMe}) =
      _$UserProfileModelImpl;

  factory _UserProfileModel.fromJson(Map<String, dynamic> json) =
      _$UserProfileModelImpl.fromJson;

  @override
  String get id;
  @override
  String get email;
  @override
  String get username;
  @override
  @JsonKey(name: 'full_name')
  String? get fullName;
  @override
  @JsonKey(name: 'avatar_url')
  String? get avatarUrl; // Extended profile fields
  @override
  String? get bio;
  @override
  @JsonKey(name: 'date_of_birth')
  @NullableUtcDateTimeConverter()
  DateTime? get dateOfBirth;
  @override
  UserGender? get gender;
  @override
  @JsonKey(name: 'is_organization')
  bool get isOrganization;
  @override
  @JsonKey(name: 'organization_name')
  String? get organizationName;
  @override
  @JsonKey(name: 'website_url')
  String? get websiteUrl;
  @override
  String? get location; // Privacy and verification
  @override
  @JsonKey(name: 'is_private')
  bool get isPrivate;
  @override
  @JsonKey(name: 'is_verified')
  bool get isVerified;
  @override
  @JsonKey(name: 'show_activity_status')
  bool get showActivityStatus; // Counts
  @override
  @JsonKey(name: 'followers_count')
  int get followersCount;
  @override
  @JsonKey(name: 'following_count')
  int get followingCount; // Timestamps
  @override
  @UtcDateTimeConverter()
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @UtcDateTimeConverter()
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt; // Computed fields from view
  @override
  @JsonKey(name: 'is_me')
  bool get isMe;
  @override
  @JsonKey(name: 'is_following')
  bool get isFollowing;
  @override
  @JsonKey(name: 'is_follow_request_pending')
  bool get isFollowRequestPending;
  @override
  @JsonKey(name: 'i_blocked_them')
  bool get iBlockedThem;
  @override
  @JsonKey(name: 'they_blocked_me')
  bool get theyBlockedMe;

  /// Create a copy of UserProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserProfileModelImplCopyWith<_$UserProfileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
