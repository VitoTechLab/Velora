// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserProfileModel {

 String get id; String get email; String get username;@JsonKey(name: 'full_name') String? get fullName;@JsonKey(name: 'avatar_url') String? get avatarUrl;// Extended profile fields
 String? get bio;@JsonKey(name: 'date_of_birth')@NullableUtcDateTimeConverter() DateTime? get dateOfBirth; UserGender? get gender;@JsonKey(name: 'is_organization') bool get isOrganization;@JsonKey(name: 'organization_name') String? get organizationName;@JsonKey(name: 'website_url') String? get websiteUrl; String? get location;// Privacy and verification
@JsonKey(name: 'is_private') bool get isPrivate;@JsonKey(name: 'is_verified') bool get isVerified;@JsonKey(name: 'show_activity_status') bool get showActivityStatus;// Counts
@JsonKey(name: 'followers_count') int get followersCount;@JsonKey(name: 'following_count') int get followingCount;// Timestamps
@UtcDateTimeConverter()@JsonKey(name: 'created_at') DateTime get createdAt;@UtcDateTimeConverter()@JsonKey(name: 'updated_at') DateTime get updatedAt;// Computed fields from view
@JsonKey(name: 'is_me') bool get isMe;@JsonKey(name: 'is_following') bool get isFollowing;@JsonKey(name: 'is_follow_request_pending') bool get isFollowRequestPending;@JsonKey(name: 'i_blocked_them') bool get iBlockedThem;@JsonKey(name: 'they_blocked_me') bool get theyBlockedMe;
/// Create a copy of UserProfileModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserProfileModelCopyWith<UserProfileModel> get copyWith => _$UserProfileModelCopyWithImpl<UserProfileModel>(this as UserProfileModel, _$identity);

  /// Serializes this UserProfileModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserProfileModel&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.username, username) || other.username == username)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.isOrganization, isOrganization) || other.isOrganization == isOrganization)&&(identical(other.organizationName, organizationName) || other.organizationName == organizationName)&&(identical(other.websiteUrl, websiteUrl) || other.websiteUrl == websiteUrl)&&(identical(other.location, location) || other.location == location)&&(identical(other.isPrivate, isPrivate) || other.isPrivate == isPrivate)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.showActivityStatus, showActivityStatus) || other.showActivityStatus == showActivityStatus)&&(identical(other.followersCount, followersCount) || other.followersCount == followersCount)&&(identical(other.followingCount, followingCount) || other.followingCount == followingCount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.isMe, isMe) || other.isMe == isMe)&&(identical(other.isFollowing, isFollowing) || other.isFollowing == isFollowing)&&(identical(other.isFollowRequestPending, isFollowRequestPending) || other.isFollowRequestPending == isFollowRequestPending)&&(identical(other.iBlockedThem, iBlockedThem) || other.iBlockedThem == iBlockedThem)&&(identical(other.theyBlockedMe, theyBlockedMe) || other.theyBlockedMe == theyBlockedMe));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,email,username,fullName,avatarUrl,bio,dateOfBirth,gender,isOrganization,organizationName,websiteUrl,location,isPrivate,isVerified,showActivityStatus,followersCount,followingCount,createdAt,updatedAt,isMe,isFollowing,isFollowRequestPending,iBlockedThem,theyBlockedMe]);

@override
String toString() {
  return 'UserProfileModel(id: $id, email: $email, username: $username, fullName: $fullName, avatarUrl: $avatarUrl, bio: $bio, dateOfBirth: $dateOfBirth, gender: $gender, isOrganization: $isOrganization, organizationName: $organizationName, websiteUrl: $websiteUrl, location: $location, isPrivate: $isPrivate, isVerified: $isVerified, showActivityStatus: $showActivityStatus, followersCount: $followersCount, followingCount: $followingCount, createdAt: $createdAt, updatedAt: $updatedAt, isMe: $isMe, isFollowing: $isFollowing, isFollowRequestPending: $isFollowRequestPending, iBlockedThem: $iBlockedThem, theyBlockedMe: $theyBlockedMe)';
}


}

/// @nodoc
abstract mixin class $UserProfileModelCopyWith<$Res>  {
  factory $UserProfileModelCopyWith(UserProfileModel value, $Res Function(UserProfileModel) _then) = _$UserProfileModelCopyWithImpl;
@useResult
$Res call({
 String id, String email, String username,@JsonKey(name: 'full_name') String? fullName,@JsonKey(name: 'avatar_url') String? avatarUrl, String? bio,@JsonKey(name: 'date_of_birth')@NullableUtcDateTimeConverter() DateTime? dateOfBirth, UserGender? gender,@JsonKey(name: 'is_organization') bool isOrganization,@JsonKey(name: 'organization_name') String? organizationName,@JsonKey(name: 'website_url') String? websiteUrl, String? location,@JsonKey(name: 'is_private') bool isPrivate,@JsonKey(name: 'is_verified') bool isVerified,@JsonKey(name: 'show_activity_status') bool showActivityStatus,@JsonKey(name: 'followers_count') int followersCount,@JsonKey(name: 'following_count') int followingCount,@UtcDateTimeConverter()@JsonKey(name: 'created_at') DateTime createdAt,@UtcDateTimeConverter()@JsonKey(name: 'updated_at') DateTime updatedAt,@JsonKey(name: 'is_me') bool isMe,@JsonKey(name: 'is_following') bool isFollowing,@JsonKey(name: 'is_follow_request_pending') bool isFollowRequestPending,@JsonKey(name: 'i_blocked_them') bool iBlockedThem,@JsonKey(name: 'they_blocked_me') bool theyBlockedMe
});




}
/// @nodoc
class _$UserProfileModelCopyWithImpl<$Res>
    implements $UserProfileModelCopyWith<$Res> {
  _$UserProfileModelCopyWithImpl(this._self, this._then);

  final UserProfileModel _self;
  final $Res Function(UserProfileModel) _then;

/// Create a copy of UserProfileModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? email = null,Object? username = null,Object? fullName = freezed,Object? avatarUrl = freezed,Object? bio = freezed,Object? dateOfBirth = freezed,Object? gender = freezed,Object? isOrganization = null,Object? organizationName = freezed,Object? websiteUrl = freezed,Object? location = freezed,Object? isPrivate = null,Object? isVerified = null,Object? showActivityStatus = null,Object? followersCount = null,Object? followingCount = null,Object? createdAt = null,Object? updatedAt = null,Object? isMe = null,Object? isFollowing = null,Object? isFollowRequestPending = null,Object? iBlockedThem = null,Object? theyBlockedMe = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as DateTime?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as UserGender?,isOrganization: null == isOrganization ? _self.isOrganization : isOrganization // ignore: cast_nullable_to_non_nullable
as bool,organizationName: freezed == organizationName ? _self.organizationName : organizationName // ignore: cast_nullable_to_non_nullable
as String?,websiteUrl: freezed == websiteUrl ? _self.websiteUrl : websiteUrl // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,isPrivate: null == isPrivate ? _self.isPrivate : isPrivate // ignore: cast_nullable_to_non_nullable
as bool,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,showActivityStatus: null == showActivityStatus ? _self.showActivityStatus : showActivityStatus // ignore: cast_nullable_to_non_nullable
as bool,followersCount: null == followersCount ? _self.followersCount : followersCount // ignore: cast_nullable_to_non_nullable
as int,followingCount: null == followingCount ? _self.followingCount : followingCount // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,isMe: null == isMe ? _self.isMe : isMe // ignore: cast_nullable_to_non_nullable
as bool,isFollowing: null == isFollowing ? _self.isFollowing : isFollowing // ignore: cast_nullable_to_non_nullable
as bool,isFollowRequestPending: null == isFollowRequestPending ? _self.isFollowRequestPending : isFollowRequestPending // ignore: cast_nullable_to_non_nullable
as bool,iBlockedThem: null == iBlockedThem ? _self.iBlockedThem : iBlockedThem // ignore: cast_nullable_to_non_nullable
as bool,theyBlockedMe: null == theyBlockedMe ? _self.theyBlockedMe : theyBlockedMe // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [UserProfileModel].
extension UserProfileModelPatterns on UserProfileModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserProfileModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserProfileModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserProfileModel value)  $default,){
final _that = this;
switch (_that) {
case _UserProfileModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserProfileModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserProfileModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String email,  String username, @JsonKey(name: 'full_name')  String? fullName, @JsonKey(name: 'avatar_url')  String? avatarUrl,  String? bio, @JsonKey(name: 'date_of_birth')@NullableUtcDateTimeConverter()  DateTime? dateOfBirth,  UserGender? gender, @JsonKey(name: 'is_organization')  bool isOrganization, @JsonKey(name: 'organization_name')  String? organizationName, @JsonKey(name: 'website_url')  String? websiteUrl,  String? location, @JsonKey(name: 'is_private')  bool isPrivate, @JsonKey(name: 'is_verified')  bool isVerified, @JsonKey(name: 'show_activity_status')  bool showActivityStatus, @JsonKey(name: 'followers_count')  int followersCount, @JsonKey(name: 'following_count')  int followingCount, @UtcDateTimeConverter()@JsonKey(name: 'created_at')  DateTime createdAt, @UtcDateTimeConverter()@JsonKey(name: 'updated_at')  DateTime updatedAt, @JsonKey(name: 'is_me')  bool isMe, @JsonKey(name: 'is_following')  bool isFollowing, @JsonKey(name: 'is_follow_request_pending')  bool isFollowRequestPending, @JsonKey(name: 'i_blocked_them')  bool iBlockedThem, @JsonKey(name: 'they_blocked_me')  bool theyBlockedMe)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserProfileModel() when $default != null:
return $default(_that.id,_that.email,_that.username,_that.fullName,_that.avatarUrl,_that.bio,_that.dateOfBirth,_that.gender,_that.isOrganization,_that.organizationName,_that.websiteUrl,_that.location,_that.isPrivate,_that.isVerified,_that.showActivityStatus,_that.followersCount,_that.followingCount,_that.createdAt,_that.updatedAt,_that.isMe,_that.isFollowing,_that.isFollowRequestPending,_that.iBlockedThem,_that.theyBlockedMe);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String email,  String username, @JsonKey(name: 'full_name')  String? fullName, @JsonKey(name: 'avatar_url')  String? avatarUrl,  String? bio, @JsonKey(name: 'date_of_birth')@NullableUtcDateTimeConverter()  DateTime? dateOfBirth,  UserGender? gender, @JsonKey(name: 'is_organization')  bool isOrganization, @JsonKey(name: 'organization_name')  String? organizationName, @JsonKey(name: 'website_url')  String? websiteUrl,  String? location, @JsonKey(name: 'is_private')  bool isPrivate, @JsonKey(name: 'is_verified')  bool isVerified, @JsonKey(name: 'show_activity_status')  bool showActivityStatus, @JsonKey(name: 'followers_count')  int followersCount, @JsonKey(name: 'following_count')  int followingCount, @UtcDateTimeConverter()@JsonKey(name: 'created_at')  DateTime createdAt, @UtcDateTimeConverter()@JsonKey(name: 'updated_at')  DateTime updatedAt, @JsonKey(name: 'is_me')  bool isMe, @JsonKey(name: 'is_following')  bool isFollowing, @JsonKey(name: 'is_follow_request_pending')  bool isFollowRequestPending, @JsonKey(name: 'i_blocked_them')  bool iBlockedThem, @JsonKey(name: 'they_blocked_me')  bool theyBlockedMe)  $default,) {final _that = this;
switch (_that) {
case _UserProfileModel():
return $default(_that.id,_that.email,_that.username,_that.fullName,_that.avatarUrl,_that.bio,_that.dateOfBirth,_that.gender,_that.isOrganization,_that.organizationName,_that.websiteUrl,_that.location,_that.isPrivate,_that.isVerified,_that.showActivityStatus,_that.followersCount,_that.followingCount,_that.createdAt,_that.updatedAt,_that.isMe,_that.isFollowing,_that.isFollowRequestPending,_that.iBlockedThem,_that.theyBlockedMe);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String email,  String username, @JsonKey(name: 'full_name')  String? fullName, @JsonKey(name: 'avatar_url')  String? avatarUrl,  String? bio, @JsonKey(name: 'date_of_birth')@NullableUtcDateTimeConverter()  DateTime? dateOfBirth,  UserGender? gender, @JsonKey(name: 'is_organization')  bool isOrganization, @JsonKey(name: 'organization_name')  String? organizationName, @JsonKey(name: 'website_url')  String? websiteUrl,  String? location, @JsonKey(name: 'is_private')  bool isPrivate, @JsonKey(name: 'is_verified')  bool isVerified, @JsonKey(name: 'show_activity_status')  bool showActivityStatus, @JsonKey(name: 'followers_count')  int followersCount, @JsonKey(name: 'following_count')  int followingCount, @UtcDateTimeConverter()@JsonKey(name: 'created_at')  DateTime createdAt, @UtcDateTimeConverter()@JsonKey(name: 'updated_at')  DateTime updatedAt, @JsonKey(name: 'is_me')  bool isMe, @JsonKey(name: 'is_following')  bool isFollowing, @JsonKey(name: 'is_follow_request_pending')  bool isFollowRequestPending, @JsonKey(name: 'i_blocked_them')  bool iBlockedThem, @JsonKey(name: 'they_blocked_me')  bool theyBlockedMe)?  $default,) {final _that = this;
switch (_that) {
case _UserProfileModel() when $default != null:
return $default(_that.id,_that.email,_that.username,_that.fullName,_that.avatarUrl,_that.bio,_that.dateOfBirth,_that.gender,_that.isOrganization,_that.organizationName,_that.websiteUrl,_that.location,_that.isPrivate,_that.isVerified,_that.showActivityStatus,_that.followersCount,_that.followingCount,_that.createdAt,_that.updatedAt,_that.isMe,_that.isFollowing,_that.isFollowRequestPending,_that.iBlockedThem,_that.theyBlockedMe);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserProfileModel implements UserProfileModel {
  const _UserProfileModel({required this.id, required this.email, required this.username, @JsonKey(name: 'full_name') this.fullName, @JsonKey(name: 'avatar_url') this.avatarUrl, this.bio, @JsonKey(name: 'date_of_birth')@NullableUtcDateTimeConverter() this.dateOfBirth, this.gender, @JsonKey(name: 'is_organization') this.isOrganization = false, @JsonKey(name: 'organization_name') this.organizationName, @JsonKey(name: 'website_url') this.websiteUrl, this.location, @JsonKey(name: 'is_private') this.isPrivate = false, @JsonKey(name: 'is_verified') this.isVerified = false, @JsonKey(name: 'show_activity_status') this.showActivityStatus = true, @JsonKey(name: 'followers_count') this.followersCount = 0, @JsonKey(name: 'following_count') this.followingCount = 0, @UtcDateTimeConverter()@JsonKey(name: 'created_at') required this.createdAt, @UtcDateTimeConverter()@JsonKey(name: 'updated_at') required this.updatedAt, @JsonKey(name: 'is_me') this.isMe = false, @JsonKey(name: 'is_following') this.isFollowing = false, @JsonKey(name: 'is_follow_request_pending') this.isFollowRequestPending = false, @JsonKey(name: 'i_blocked_them') this.iBlockedThem = false, @JsonKey(name: 'they_blocked_me') this.theyBlockedMe = false});
  factory _UserProfileModel.fromJson(Map<String, dynamic> json) => _$UserProfileModelFromJson(json);

@override final  String id;
@override final  String email;
@override final  String username;
@override@JsonKey(name: 'full_name') final  String? fullName;
@override@JsonKey(name: 'avatar_url') final  String? avatarUrl;
// Extended profile fields
@override final  String? bio;
@override@JsonKey(name: 'date_of_birth')@NullableUtcDateTimeConverter() final  DateTime? dateOfBirth;
@override final  UserGender? gender;
@override@JsonKey(name: 'is_organization') final  bool isOrganization;
@override@JsonKey(name: 'organization_name') final  String? organizationName;
@override@JsonKey(name: 'website_url') final  String? websiteUrl;
@override final  String? location;
// Privacy and verification
@override@JsonKey(name: 'is_private') final  bool isPrivate;
@override@JsonKey(name: 'is_verified') final  bool isVerified;
@override@JsonKey(name: 'show_activity_status') final  bool showActivityStatus;
// Counts
@override@JsonKey(name: 'followers_count') final  int followersCount;
@override@JsonKey(name: 'following_count') final  int followingCount;
// Timestamps
@override@UtcDateTimeConverter()@JsonKey(name: 'created_at') final  DateTime createdAt;
@override@UtcDateTimeConverter()@JsonKey(name: 'updated_at') final  DateTime updatedAt;
// Computed fields from view
@override@JsonKey(name: 'is_me') final  bool isMe;
@override@JsonKey(name: 'is_following') final  bool isFollowing;
@override@JsonKey(name: 'is_follow_request_pending') final  bool isFollowRequestPending;
@override@JsonKey(name: 'i_blocked_them') final  bool iBlockedThem;
@override@JsonKey(name: 'they_blocked_me') final  bool theyBlockedMe;

/// Create a copy of UserProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserProfileModelCopyWith<_UserProfileModel> get copyWith => __$UserProfileModelCopyWithImpl<_UserProfileModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserProfileModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserProfileModel&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.username, username) || other.username == username)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.isOrganization, isOrganization) || other.isOrganization == isOrganization)&&(identical(other.organizationName, organizationName) || other.organizationName == organizationName)&&(identical(other.websiteUrl, websiteUrl) || other.websiteUrl == websiteUrl)&&(identical(other.location, location) || other.location == location)&&(identical(other.isPrivate, isPrivate) || other.isPrivate == isPrivate)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.showActivityStatus, showActivityStatus) || other.showActivityStatus == showActivityStatus)&&(identical(other.followersCount, followersCount) || other.followersCount == followersCount)&&(identical(other.followingCount, followingCount) || other.followingCount == followingCount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.isMe, isMe) || other.isMe == isMe)&&(identical(other.isFollowing, isFollowing) || other.isFollowing == isFollowing)&&(identical(other.isFollowRequestPending, isFollowRequestPending) || other.isFollowRequestPending == isFollowRequestPending)&&(identical(other.iBlockedThem, iBlockedThem) || other.iBlockedThem == iBlockedThem)&&(identical(other.theyBlockedMe, theyBlockedMe) || other.theyBlockedMe == theyBlockedMe));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,email,username,fullName,avatarUrl,bio,dateOfBirth,gender,isOrganization,organizationName,websiteUrl,location,isPrivate,isVerified,showActivityStatus,followersCount,followingCount,createdAt,updatedAt,isMe,isFollowing,isFollowRequestPending,iBlockedThem,theyBlockedMe]);

@override
String toString() {
  return 'UserProfileModel(id: $id, email: $email, username: $username, fullName: $fullName, avatarUrl: $avatarUrl, bio: $bio, dateOfBirth: $dateOfBirth, gender: $gender, isOrganization: $isOrganization, organizationName: $organizationName, websiteUrl: $websiteUrl, location: $location, isPrivate: $isPrivate, isVerified: $isVerified, showActivityStatus: $showActivityStatus, followersCount: $followersCount, followingCount: $followingCount, createdAt: $createdAt, updatedAt: $updatedAt, isMe: $isMe, isFollowing: $isFollowing, isFollowRequestPending: $isFollowRequestPending, iBlockedThem: $iBlockedThem, theyBlockedMe: $theyBlockedMe)';
}


}

/// @nodoc
abstract mixin class _$UserProfileModelCopyWith<$Res> implements $UserProfileModelCopyWith<$Res> {
  factory _$UserProfileModelCopyWith(_UserProfileModel value, $Res Function(_UserProfileModel) _then) = __$UserProfileModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String email, String username,@JsonKey(name: 'full_name') String? fullName,@JsonKey(name: 'avatar_url') String? avatarUrl, String? bio,@JsonKey(name: 'date_of_birth')@NullableUtcDateTimeConverter() DateTime? dateOfBirth, UserGender? gender,@JsonKey(name: 'is_organization') bool isOrganization,@JsonKey(name: 'organization_name') String? organizationName,@JsonKey(name: 'website_url') String? websiteUrl, String? location,@JsonKey(name: 'is_private') bool isPrivate,@JsonKey(name: 'is_verified') bool isVerified,@JsonKey(name: 'show_activity_status') bool showActivityStatus,@JsonKey(name: 'followers_count') int followersCount,@JsonKey(name: 'following_count') int followingCount,@UtcDateTimeConverter()@JsonKey(name: 'created_at') DateTime createdAt,@UtcDateTimeConverter()@JsonKey(name: 'updated_at') DateTime updatedAt,@JsonKey(name: 'is_me') bool isMe,@JsonKey(name: 'is_following') bool isFollowing,@JsonKey(name: 'is_follow_request_pending') bool isFollowRequestPending,@JsonKey(name: 'i_blocked_them') bool iBlockedThem,@JsonKey(name: 'they_blocked_me') bool theyBlockedMe
});




}
/// @nodoc
class __$UserProfileModelCopyWithImpl<$Res>
    implements _$UserProfileModelCopyWith<$Res> {
  __$UserProfileModelCopyWithImpl(this._self, this._then);

  final _UserProfileModel _self;
  final $Res Function(_UserProfileModel) _then;

/// Create a copy of UserProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? email = null,Object? username = null,Object? fullName = freezed,Object? avatarUrl = freezed,Object? bio = freezed,Object? dateOfBirth = freezed,Object? gender = freezed,Object? isOrganization = null,Object? organizationName = freezed,Object? websiteUrl = freezed,Object? location = freezed,Object? isPrivate = null,Object? isVerified = null,Object? showActivityStatus = null,Object? followersCount = null,Object? followingCount = null,Object? createdAt = null,Object? updatedAt = null,Object? isMe = null,Object? isFollowing = null,Object? isFollowRequestPending = null,Object? iBlockedThem = null,Object? theyBlockedMe = null,}) {
  return _then(_UserProfileModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as DateTime?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as UserGender?,isOrganization: null == isOrganization ? _self.isOrganization : isOrganization // ignore: cast_nullable_to_non_nullable
as bool,organizationName: freezed == organizationName ? _self.organizationName : organizationName // ignore: cast_nullable_to_non_nullable
as String?,websiteUrl: freezed == websiteUrl ? _self.websiteUrl : websiteUrl // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,isPrivate: null == isPrivate ? _self.isPrivate : isPrivate // ignore: cast_nullable_to_non_nullable
as bool,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,showActivityStatus: null == showActivityStatus ? _self.showActivityStatus : showActivityStatus // ignore: cast_nullable_to_non_nullable
as bool,followersCount: null == followersCount ? _self.followersCount : followersCount // ignore: cast_nullable_to_non_nullable
as int,followingCount: null == followingCount ? _self.followingCount : followingCount // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,isMe: null == isMe ? _self.isMe : isMe // ignore: cast_nullable_to_non_nullable
as bool,isFollowing: null == isFollowing ? _self.isFollowing : isFollowing // ignore: cast_nullable_to_non_nullable
as bool,isFollowRequestPending: null == isFollowRequestPending ? _self.isFollowRequestPending : isFollowRequestPending // ignore: cast_nullable_to_non_nullable
as bool,iBlockedThem: null == iBlockedThem ? _self.iBlockedThem : iBlockedThem // ignore: cast_nullable_to_non_nullable
as bool,theyBlockedMe: null == theyBlockedMe ? _self.theyBlockedMe : theyBlockedMe // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
