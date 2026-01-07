// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restricted_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RestrictedUserModel {

@JsonKey(name: 'restrictor_id') String get restrictorId;@JsonKey(name: 'restricted_id') String get restrictedId;@UtcDateTimeConverter()@JsonKey(name: 'created_at') DateTime get createdAt;// Joined from user_profiles
@JsonKey(name: 'restricted_username') String? get restrictedUsername;@JsonKey(name: 'restricted_photo_url') String? get restrictedPhotoUrl;@JsonKey(name: 'restricted_full_name') String? get restrictedFullName;
/// Create a copy of RestrictedUserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RestrictedUserModelCopyWith<RestrictedUserModel> get copyWith => _$RestrictedUserModelCopyWithImpl<RestrictedUserModel>(this as RestrictedUserModel, _$identity);

  /// Serializes this RestrictedUserModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RestrictedUserModel&&(identical(other.restrictorId, restrictorId) || other.restrictorId == restrictorId)&&(identical(other.restrictedId, restrictedId) || other.restrictedId == restrictedId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.restrictedUsername, restrictedUsername) || other.restrictedUsername == restrictedUsername)&&(identical(other.restrictedPhotoUrl, restrictedPhotoUrl) || other.restrictedPhotoUrl == restrictedPhotoUrl)&&(identical(other.restrictedFullName, restrictedFullName) || other.restrictedFullName == restrictedFullName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,restrictorId,restrictedId,createdAt,restrictedUsername,restrictedPhotoUrl,restrictedFullName);

@override
String toString() {
  return 'RestrictedUserModel(restrictorId: $restrictorId, restrictedId: $restrictedId, createdAt: $createdAt, restrictedUsername: $restrictedUsername, restrictedPhotoUrl: $restrictedPhotoUrl, restrictedFullName: $restrictedFullName)';
}


}

/// @nodoc
abstract mixin class $RestrictedUserModelCopyWith<$Res>  {
  factory $RestrictedUserModelCopyWith(RestrictedUserModel value, $Res Function(RestrictedUserModel) _then) = _$RestrictedUserModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'restrictor_id') String restrictorId,@JsonKey(name: 'restricted_id') String restrictedId,@UtcDateTimeConverter()@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'restricted_username') String? restrictedUsername,@JsonKey(name: 'restricted_photo_url') String? restrictedPhotoUrl,@JsonKey(name: 'restricted_full_name') String? restrictedFullName
});




}
/// @nodoc
class _$RestrictedUserModelCopyWithImpl<$Res>
    implements $RestrictedUserModelCopyWith<$Res> {
  _$RestrictedUserModelCopyWithImpl(this._self, this._then);

  final RestrictedUserModel _self;
  final $Res Function(RestrictedUserModel) _then;

/// Create a copy of RestrictedUserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? restrictorId = null,Object? restrictedId = null,Object? createdAt = null,Object? restrictedUsername = freezed,Object? restrictedPhotoUrl = freezed,Object? restrictedFullName = freezed,}) {
  return _then(_self.copyWith(
restrictorId: null == restrictorId ? _self.restrictorId : restrictorId // ignore: cast_nullable_to_non_nullable
as String,restrictedId: null == restrictedId ? _self.restrictedId : restrictedId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,restrictedUsername: freezed == restrictedUsername ? _self.restrictedUsername : restrictedUsername // ignore: cast_nullable_to_non_nullable
as String?,restrictedPhotoUrl: freezed == restrictedPhotoUrl ? _self.restrictedPhotoUrl : restrictedPhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,restrictedFullName: freezed == restrictedFullName ? _self.restrictedFullName : restrictedFullName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RestrictedUserModel].
extension RestrictedUserModelPatterns on RestrictedUserModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RestrictedUserModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RestrictedUserModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RestrictedUserModel value)  $default,){
final _that = this;
switch (_that) {
case _RestrictedUserModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RestrictedUserModel value)?  $default,){
final _that = this;
switch (_that) {
case _RestrictedUserModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'restrictor_id')  String restrictorId, @JsonKey(name: 'restricted_id')  String restrictedId, @UtcDateTimeConverter()@JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'restricted_username')  String? restrictedUsername, @JsonKey(name: 'restricted_photo_url')  String? restrictedPhotoUrl, @JsonKey(name: 'restricted_full_name')  String? restrictedFullName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RestrictedUserModel() when $default != null:
return $default(_that.restrictorId,_that.restrictedId,_that.createdAt,_that.restrictedUsername,_that.restrictedPhotoUrl,_that.restrictedFullName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'restrictor_id')  String restrictorId, @JsonKey(name: 'restricted_id')  String restrictedId, @UtcDateTimeConverter()@JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'restricted_username')  String? restrictedUsername, @JsonKey(name: 'restricted_photo_url')  String? restrictedPhotoUrl, @JsonKey(name: 'restricted_full_name')  String? restrictedFullName)  $default,) {final _that = this;
switch (_that) {
case _RestrictedUserModel():
return $default(_that.restrictorId,_that.restrictedId,_that.createdAt,_that.restrictedUsername,_that.restrictedPhotoUrl,_that.restrictedFullName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'restrictor_id')  String restrictorId, @JsonKey(name: 'restricted_id')  String restrictedId, @UtcDateTimeConverter()@JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'restricted_username')  String? restrictedUsername, @JsonKey(name: 'restricted_photo_url')  String? restrictedPhotoUrl, @JsonKey(name: 'restricted_full_name')  String? restrictedFullName)?  $default,) {final _that = this;
switch (_that) {
case _RestrictedUserModel() when $default != null:
return $default(_that.restrictorId,_that.restrictedId,_that.createdAt,_that.restrictedUsername,_that.restrictedPhotoUrl,_that.restrictedFullName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RestrictedUserModel extends RestrictedUserModel {
  const _RestrictedUserModel({@JsonKey(name: 'restrictor_id') required this.restrictorId, @JsonKey(name: 'restricted_id') required this.restrictedId, @UtcDateTimeConverter()@JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'restricted_username') this.restrictedUsername, @JsonKey(name: 'restricted_photo_url') this.restrictedPhotoUrl, @JsonKey(name: 'restricted_full_name') this.restrictedFullName}): super._();
  factory _RestrictedUserModel.fromJson(Map<String, dynamic> json) => _$RestrictedUserModelFromJson(json);

@override@JsonKey(name: 'restrictor_id') final  String restrictorId;
@override@JsonKey(name: 'restricted_id') final  String restrictedId;
@override@UtcDateTimeConverter()@JsonKey(name: 'created_at') final  DateTime createdAt;
// Joined from user_profiles
@override@JsonKey(name: 'restricted_username') final  String? restrictedUsername;
@override@JsonKey(name: 'restricted_photo_url') final  String? restrictedPhotoUrl;
@override@JsonKey(name: 'restricted_full_name') final  String? restrictedFullName;

/// Create a copy of RestrictedUserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RestrictedUserModelCopyWith<_RestrictedUserModel> get copyWith => __$RestrictedUserModelCopyWithImpl<_RestrictedUserModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RestrictedUserModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RestrictedUserModel&&(identical(other.restrictorId, restrictorId) || other.restrictorId == restrictorId)&&(identical(other.restrictedId, restrictedId) || other.restrictedId == restrictedId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.restrictedUsername, restrictedUsername) || other.restrictedUsername == restrictedUsername)&&(identical(other.restrictedPhotoUrl, restrictedPhotoUrl) || other.restrictedPhotoUrl == restrictedPhotoUrl)&&(identical(other.restrictedFullName, restrictedFullName) || other.restrictedFullName == restrictedFullName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,restrictorId,restrictedId,createdAt,restrictedUsername,restrictedPhotoUrl,restrictedFullName);

@override
String toString() {
  return 'RestrictedUserModel(restrictorId: $restrictorId, restrictedId: $restrictedId, createdAt: $createdAt, restrictedUsername: $restrictedUsername, restrictedPhotoUrl: $restrictedPhotoUrl, restrictedFullName: $restrictedFullName)';
}


}

/// @nodoc
abstract mixin class _$RestrictedUserModelCopyWith<$Res> implements $RestrictedUserModelCopyWith<$Res> {
  factory _$RestrictedUserModelCopyWith(_RestrictedUserModel value, $Res Function(_RestrictedUserModel) _then) = __$RestrictedUserModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'restrictor_id') String restrictorId,@JsonKey(name: 'restricted_id') String restrictedId,@UtcDateTimeConverter()@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'restricted_username') String? restrictedUsername,@JsonKey(name: 'restricted_photo_url') String? restrictedPhotoUrl,@JsonKey(name: 'restricted_full_name') String? restrictedFullName
});




}
/// @nodoc
class __$RestrictedUserModelCopyWithImpl<$Res>
    implements _$RestrictedUserModelCopyWith<$Res> {
  __$RestrictedUserModelCopyWithImpl(this._self, this._then);

  final _RestrictedUserModel _self;
  final $Res Function(_RestrictedUserModel) _then;

/// Create a copy of RestrictedUserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? restrictorId = null,Object? restrictedId = null,Object? createdAt = null,Object? restrictedUsername = freezed,Object? restrictedPhotoUrl = freezed,Object? restrictedFullName = freezed,}) {
  return _then(_RestrictedUserModel(
restrictorId: null == restrictorId ? _self.restrictorId : restrictorId // ignore: cast_nullable_to_non_nullable
as String,restrictedId: null == restrictedId ? _self.restrictedId : restrictedId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,restrictedUsername: freezed == restrictedUsername ? _self.restrictedUsername : restrictedUsername // ignore: cast_nullable_to_non_nullable
as String?,restrictedPhotoUrl: freezed == restrictedPhotoUrl ? _self.restrictedPhotoUrl : restrictedPhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,restrictedFullName: freezed == restrictedFullName ? _self.restrictedFullName : restrictedFullName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
