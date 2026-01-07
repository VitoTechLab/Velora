// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_search_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserSearchModel {

@JsonKey(name: 'id') String get userId; String get username;@JsonKey(name: 'avatar_url') String? get avatarUrl; String? get bio;
/// Create a copy of UserSearchModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserSearchModelCopyWith<UserSearchModel> get copyWith => _$UserSearchModelCopyWithImpl<UserSearchModel>(this as UserSearchModel, _$identity);

  /// Serializes this UserSearchModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserSearchModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.username, username) || other.username == username)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.bio, bio) || other.bio == bio));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,username,avatarUrl,bio);

@override
String toString() {
  return 'UserSearchModel(userId: $userId, username: $username, avatarUrl: $avatarUrl, bio: $bio)';
}


}

/// @nodoc
abstract mixin class $UserSearchModelCopyWith<$Res>  {
  factory $UserSearchModelCopyWith(UserSearchModel value, $Res Function(UserSearchModel) _then) = _$UserSearchModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String userId, String username,@JsonKey(name: 'avatar_url') String? avatarUrl, String? bio
});




}
/// @nodoc
class _$UserSearchModelCopyWithImpl<$Res>
    implements $UserSearchModelCopyWith<$Res> {
  _$UserSearchModelCopyWithImpl(this._self, this._then);

  final UserSearchModel _self;
  final $Res Function(UserSearchModel) _then;

/// Create a copy of UserSearchModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? username = null,Object? avatarUrl = freezed,Object? bio = freezed,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserSearchModel].
extension UserSearchModelPatterns on UserSearchModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserSearchModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserSearchModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserSearchModel value)  $default,){
final _that = this;
switch (_that) {
case _UserSearchModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserSearchModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserSearchModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String userId,  String username, @JsonKey(name: 'avatar_url')  String? avatarUrl,  String? bio)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserSearchModel() when $default != null:
return $default(_that.userId,_that.username,_that.avatarUrl,_that.bio);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String userId,  String username, @JsonKey(name: 'avatar_url')  String? avatarUrl,  String? bio)  $default,) {final _that = this;
switch (_that) {
case _UserSearchModel():
return $default(_that.userId,_that.username,_that.avatarUrl,_that.bio);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String userId,  String username, @JsonKey(name: 'avatar_url')  String? avatarUrl,  String? bio)?  $default,) {final _that = this;
switch (_that) {
case _UserSearchModel() when $default != null:
return $default(_that.userId,_that.username,_that.avatarUrl,_that.bio);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserSearchModel extends UserSearchModel {
  const _UserSearchModel({@JsonKey(name: 'id') required this.userId, required this.username, @JsonKey(name: 'avatar_url') this.avatarUrl, this.bio}): super._();
  factory _UserSearchModel.fromJson(Map<String, dynamic> json) => _$UserSearchModelFromJson(json);

@override@JsonKey(name: 'id') final  String userId;
@override final  String username;
@override@JsonKey(name: 'avatar_url') final  String? avatarUrl;
@override final  String? bio;

/// Create a copy of UserSearchModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserSearchModelCopyWith<_UserSearchModel> get copyWith => __$UserSearchModelCopyWithImpl<_UserSearchModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserSearchModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserSearchModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.username, username) || other.username == username)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.bio, bio) || other.bio == bio));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,username,avatarUrl,bio);

@override
String toString() {
  return 'UserSearchModel(userId: $userId, username: $username, avatarUrl: $avatarUrl, bio: $bio)';
}


}

/// @nodoc
abstract mixin class _$UserSearchModelCopyWith<$Res> implements $UserSearchModelCopyWith<$Res> {
  factory _$UserSearchModelCopyWith(_UserSearchModel value, $Res Function(_UserSearchModel) _then) = __$UserSearchModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String userId, String username,@JsonKey(name: 'avatar_url') String? avatarUrl, String? bio
});




}
/// @nodoc
class __$UserSearchModelCopyWithImpl<$Res>
    implements _$UserSearchModelCopyWith<$Res> {
  __$UserSearchModelCopyWithImpl(this._self, this._then);

  final _UserSearchModel _self;
  final $Res Function(_UserSearchModel) _then;

/// Create a copy of UserSearchModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? username = null,Object? avatarUrl = freezed,Object? bio = freezed,}) {
  return _then(_UserSearchModel(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
