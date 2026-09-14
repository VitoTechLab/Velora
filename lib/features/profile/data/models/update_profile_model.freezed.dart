// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UpdateProfileModel {

 String? get username; String? get fullName; String? get avatarUrl; String? get bio; DateTime? get dateOfBirth; UserGender? get gender; bool? get isOrganization; String? get organizationName; String? get websiteUrl; String? get location; bool? get isPrivate; bool? get showActivityStatus;
/// Create a copy of UpdateProfileModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateProfileModelCopyWith<UpdateProfileModel> get copyWith => _$UpdateProfileModelCopyWithImpl<UpdateProfileModel>(this as UpdateProfileModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateProfileModel&&(identical(other.username, username) || other.username == username)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.isOrganization, isOrganization) || other.isOrganization == isOrganization)&&(identical(other.organizationName, organizationName) || other.organizationName == organizationName)&&(identical(other.websiteUrl, websiteUrl) || other.websiteUrl == websiteUrl)&&(identical(other.location, location) || other.location == location)&&(identical(other.isPrivate, isPrivate) || other.isPrivate == isPrivate)&&(identical(other.showActivityStatus, showActivityStatus) || other.showActivityStatus == showActivityStatus));
}


@override
int get hashCode => Object.hash(runtimeType,username,fullName,avatarUrl,bio,dateOfBirth,gender,isOrganization,organizationName,websiteUrl,location,isPrivate,showActivityStatus);

@override
String toString() {
  return 'UpdateProfileModel(username: $username, fullName: $fullName, avatarUrl: $avatarUrl, bio: $bio, dateOfBirth: $dateOfBirth, gender: $gender, isOrganization: $isOrganization, organizationName: $organizationName, websiteUrl: $websiteUrl, location: $location, isPrivate: $isPrivate, showActivityStatus: $showActivityStatus)';
}


}

/// @nodoc
abstract mixin class $UpdateProfileModelCopyWith<$Res>  {
  factory $UpdateProfileModelCopyWith(UpdateProfileModel value, $Res Function(UpdateProfileModel) _then) = _$UpdateProfileModelCopyWithImpl;
@useResult
$Res call({
 String? username, String? fullName, String? avatarUrl, String? bio, DateTime? dateOfBirth, UserGender? gender, bool? isOrganization, String? organizationName, String? websiteUrl, String? location, bool? isPrivate, bool? showActivityStatus
});




}
/// @nodoc
class _$UpdateProfileModelCopyWithImpl<$Res>
    implements $UpdateProfileModelCopyWith<$Res> {
  _$UpdateProfileModelCopyWithImpl(this._self, this._then);

  final UpdateProfileModel _self;
  final $Res Function(UpdateProfileModel) _then;

/// Create a copy of UpdateProfileModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? username = freezed,Object? fullName = freezed,Object? avatarUrl = freezed,Object? bio = freezed,Object? dateOfBirth = freezed,Object? gender = freezed,Object? isOrganization = freezed,Object? organizationName = freezed,Object? websiteUrl = freezed,Object? location = freezed,Object? isPrivate = freezed,Object? showActivityStatus = freezed,}) {
  return _then(_self.copyWith(
username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as DateTime?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as UserGender?,isOrganization: freezed == isOrganization ? _self.isOrganization : isOrganization // ignore: cast_nullable_to_non_nullable
as bool?,organizationName: freezed == organizationName ? _self.organizationName : organizationName // ignore: cast_nullable_to_non_nullable
as String?,websiteUrl: freezed == websiteUrl ? _self.websiteUrl : websiteUrl // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,isPrivate: freezed == isPrivate ? _self.isPrivate : isPrivate // ignore: cast_nullable_to_non_nullable
as bool?,showActivityStatus: freezed == showActivityStatus ? _self.showActivityStatus : showActivityStatus // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateProfileModel].
extension UpdateProfileModelPatterns on UpdateProfileModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateProfileModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateProfileModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateProfileModel value)  $default,){
final _that = this;
switch (_that) {
case _UpdateProfileModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateProfileModel value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateProfileModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? username,  String? fullName,  String? avatarUrl,  String? bio,  DateTime? dateOfBirth,  UserGender? gender,  bool? isOrganization,  String? organizationName,  String? websiteUrl,  String? location,  bool? isPrivate,  bool? showActivityStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateProfileModel() when $default != null:
return $default(_that.username,_that.fullName,_that.avatarUrl,_that.bio,_that.dateOfBirth,_that.gender,_that.isOrganization,_that.organizationName,_that.websiteUrl,_that.location,_that.isPrivate,_that.showActivityStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? username,  String? fullName,  String? avatarUrl,  String? bio,  DateTime? dateOfBirth,  UserGender? gender,  bool? isOrganization,  String? organizationName,  String? websiteUrl,  String? location,  bool? isPrivate,  bool? showActivityStatus)  $default,) {final _that = this;
switch (_that) {
case _UpdateProfileModel():
return $default(_that.username,_that.fullName,_that.avatarUrl,_that.bio,_that.dateOfBirth,_that.gender,_that.isOrganization,_that.organizationName,_that.websiteUrl,_that.location,_that.isPrivate,_that.showActivityStatus);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? username,  String? fullName,  String? avatarUrl,  String? bio,  DateTime? dateOfBirth,  UserGender? gender,  bool? isOrganization,  String? organizationName,  String? websiteUrl,  String? location,  bool? isPrivate,  bool? showActivityStatus)?  $default,) {final _that = this;
switch (_that) {
case _UpdateProfileModel() when $default != null:
return $default(_that.username,_that.fullName,_that.avatarUrl,_that.bio,_that.dateOfBirth,_that.gender,_that.isOrganization,_that.organizationName,_that.websiteUrl,_that.location,_that.isPrivate,_that.showActivityStatus);case _:
  return null;

}
}

}

/// @nodoc


class _UpdateProfileModel extends UpdateProfileModel {
  const _UpdateProfileModel({this.username, this.fullName, this.avatarUrl, this.bio, this.dateOfBirth, this.gender, this.isOrganization, this.organizationName, this.websiteUrl, this.location, this.isPrivate, this.showActivityStatus}): super._();
  

@override final  String? username;
@override final  String? fullName;
@override final  String? avatarUrl;
@override final  String? bio;
@override final  DateTime? dateOfBirth;
@override final  UserGender? gender;
@override final  bool? isOrganization;
@override final  String? organizationName;
@override final  String? websiteUrl;
@override final  String? location;
@override final  bool? isPrivate;
@override final  bool? showActivityStatus;

/// Create a copy of UpdateProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateProfileModelCopyWith<_UpdateProfileModel> get copyWith => __$UpdateProfileModelCopyWithImpl<_UpdateProfileModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateProfileModel&&(identical(other.username, username) || other.username == username)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.isOrganization, isOrganization) || other.isOrganization == isOrganization)&&(identical(other.organizationName, organizationName) || other.organizationName == organizationName)&&(identical(other.websiteUrl, websiteUrl) || other.websiteUrl == websiteUrl)&&(identical(other.location, location) || other.location == location)&&(identical(other.isPrivate, isPrivate) || other.isPrivate == isPrivate)&&(identical(other.showActivityStatus, showActivityStatus) || other.showActivityStatus == showActivityStatus));
}


@override
int get hashCode => Object.hash(runtimeType,username,fullName,avatarUrl,bio,dateOfBirth,gender,isOrganization,organizationName,websiteUrl,location,isPrivate,showActivityStatus);

@override
String toString() {
  return 'UpdateProfileModel(username: $username, fullName: $fullName, avatarUrl: $avatarUrl, bio: $bio, dateOfBirth: $dateOfBirth, gender: $gender, isOrganization: $isOrganization, organizationName: $organizationName, websiteUrl: $websiteUrl, location: $location, isPrivate: $isPrivate, showActivityStatus: $showActivityStatus)';
}


}

/// @nodoc
abstract mixin class _$UpdateProfileModelCopyWith<$Res> implements $UpdateProfileModelCopyWith<$Res> {
  factory _$UpdateProfileModelCopyWith(_UpdateProfileModel value, $Res Function(_UpdateProfileModel) _then) = __$UpdateProfileModelCopyWithImpl;
@override @useResult
$Res call({
 String? username, String? fullName, String? avatarUrl, String? bio, DateTime? dateOfBirth, UserGender? gender, bool? isOrganization, String? organizationName, String? websiteUrl, String? location, bool? isPrivate, bool? showActivityStatus
});




}
/// @nodoc
class __$UpdateProfileModelCopyWithImpl<$Res>
    implements _$UpdateProfileModelCopyWith<$Res> {
  __$UpdateProfileModelCopyWithImpl(this._self, this._then);

  final _UpdateProfileModel _self;
  final $Res Function(_UpdateProfileModel) _then;

/// Create a copy of UpdateProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? username = freezed,Object? fullName = freezed,Object? avatarUrl = freezed,Object? bio = freezed,Object? dateOfBirth = freezed,Object? gender = freezed,Object? isOrganization = freezed,Object? organizationName = freezed,Object? websiteUrl = freezed,Object? location = freezed,Object? isPrivate = freezed,Object? showActivityStatus = freezed,}) {
  return _then(_UpdateProfileModel(
username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as DateTime?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as UserGender?,isOrganization: freezed == isOrganization ? _self.isOrganization : isOrganization // ignore: cast_nullable_to_non_nullable
as bool?,organizationName: freezed == organizationName ? _self.organizationName : organizationName // ignore: cast_nullable_to_non_nullable
as String?,websiteUrl: freezed == websiteUrl ? _self.websiteUrl : websiteUrl // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,isPrivate: freezed == isPrivate ? _self.isPrivate : isPrivate // ignore: cast_nullable_to_non_nullable
as bool?,showActivityStatus: freezed == showActivityStatus ? _self.showActivityStatus : showActivityStatus // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
