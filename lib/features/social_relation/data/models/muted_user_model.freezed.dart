// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'muted_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MutedUserModel {

@JsonKey(name: 'muter_id') String get muterId;@JsonKey(name: 'muted_id') String get mutedId;@UtcDateTimeConverter()@JsonKey(name: 'created_at') DateTime get createdAt;// Joined from user_profiles
@JsonKey(name: 'muted_username') String? get mutedUsername;@JsonKey(name: 'muted_photo_url') String? get mutedPhotoUrl;@JsonKey(name: 'muted_full_name') String? get mutedFullName;
/// Create a copy of MutedUserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MutedUserModelCopyWith<MutedUserModel> get copyWith => _$MutedUserModelCopyWithImpl<MutedUserModel>(this as MutedUserModel, _$identity);

  /// Serializes this MutedUserModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MutedUserModel&&(identical(other.muterId, muterId) || other.muterId == muterId)&&(identical(other.mutedId, mutedId) || other.mutedId == mutedId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.mutedUsername, mutedUsername) || other.mutedUsername == mutedUsername)&&(identical(other.mutedPhotoUrl, mutedPhotoUrl) || other.mutedPhotoUrl == mutedPhotoUrl)&&(identical(other.mutedFullName, mutedFullName) || other.mutedFullName == mutedFullName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,muterId,mutedId,createdAt,mutedUsername,mutedPhotoUrl,mutedFullName);

@override
String toString() {
  return 'MutedUserModel(muterId: $muterId, mutedId: $mutedId, createdAt: $createdAt, mutedUsername: $mutedUsername, mutedPhotoUrl: $mutedPhotoUrl, mutedFullName: $mutedFullName)';
}


}

/// @nodoc
abstract mixin class $MutedUserModelCopyWith<$Res>  {
  factory $MutedUserModelCopyWith(MutedUserModel value, $Res Function(MutedUserModel) _then) = _$MutedUserModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'muter_id') String muterId,@JsonKey(name: 'muted_id') String mutedId,@UtcDateTimeConverter()@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'muted_username') String? mutedUsername,@JsonKey(name: 'muted_photo_url') String? mutedPhotoUrl,@JsonKey(name: 'muted_full_name') String? mutedFullName
});




}
/// @nodoc
class _$MutedUserModelCopyWithImpl<$Res>
    implements $MutedUserModelCopyWith<$Res> {
  _$MutedUserModelCopyWithImpl(this._self, this._then);

  final MutedUserModel _self;
  final $Res Function(MutedUserModel) _then;

/// Create a copy of MutedUserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? muterId = null,Object? mutedId = null,Object? createdAt = null,Object? mutedUsername = freezed,Object? mutedPhotoUrl = freezed,Object? mutedFullName = freezed,}) {
  return _then(_self.copyWith(
muterId: null == muterId ? _self.muterId : muterId // ignore: cast_nullable_to_non_nullable
as String,mutedId: null == mutedId ? _self.mutedId : mutedId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,mutedUsername: freezed == mutedUsername ? _self.mutedUsername : mutedUsername // ignore: cast_nullable_to_non_nullable
as String?,mutedPhotoUrl: freezed == mutedPhotoUrl ? _self.mutedPhotoUrl : mutedPhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,mutedFullName: freezed == mutedFullName ? _self.mutedFullName : mutedFullName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MutedUserModel].
extension MutedUserModelPatterns on MutedUserModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MutedUserModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MutedUserModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MutedUserModel value)  $default,){
final _that = this;
switch (_that) {
case _MutedUserModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MutedUserModel value)?  $default,){
final _that = this;
switch (_that) {
case _MutedUserModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'muter_id')  String muterId, @JsonKey(name: 'muted_id')  String mutedId, @UtcDateTimeConverter()@JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'muted_username')  String? mutedUsername, @JsonKey(name: 'muted_photo_url')  String? mutedPhotoUrl, @JsonKey(name: 'muted_full_name')  String? mutedFullName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MutedUserModel() when $default != null:
return $default(_that.muterId,_that.mutedId,_that.createdAt,_that.mutedUsername,_that.mutedPhotoUrl,_that.mutedFullName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'muter_id')  String muterId, @JsonKey(name: 'muted_id')  String mutedId, @UtcDateTimeConverter()@JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'muted_username')  String? mutedUsername, @JsonKey(name: 'muted_photo_url')  String? mutedPhotoUrl, @JsonKey(name: 'muted_full_name')  String? mutedFullName)  $default,) {final _that = this;
switch (_that) {
case _MutedUserModel():
return $default(_that.muterId,_that.mutedId,_that.createdAt,_that.mutedUsername,_that.mutedPhotoUrl,_that.mutedFullName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'muter_id')  String muterId, @JsonKey(name: 'muted_id')  String mutedId, @UtcDateTimeConverter()@JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'muted_username')  String? mutedUsername, @JsonKey(name: 'muted_photo_url')  String? mutedPhotoUrl, @JsonKey(name: 'muted_full_name')  String? mutedFullName)?  $default,) {final _that = this;
switch (_that) {
case _MutedUserModel() when $default != null:
return $default(_that.muterId,_that.mutedId,_that.createdAt,_that.mutedUsername,_that.mutedPhotoUrl,_that.mutedFullName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MutedUserModel extends MutedUserModel {
  const _MutedUserModel({@JsonKey(name: 'muter_id') required this.muterId, @JsonKey(name: 'muted_id') required this.mutedId, @UtcDateTimeConverter()@JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'muted_username') this.mutedUsername, @JsonKey(name: 'muted_photo_url') this.mutedPhotoUrl, @JsonKey(name: 'muted_full_name') this.mutedFullName}): super._();
  factory _MutedUserModel.fromJson(Map<String, dynamic> json) => _$MutedUserModelFromJson(json);

@override@JsonKey(name: 'muter_id') final  String muterId;
@override@JsonKey(name: 'muted_id') final  String mutedId;
@override@UtcDateTimeConverter()@JsonKey(name: 'created_at') final  DateTime createdAt;
// Joined from user_profiles
@override@JsonKey(name: 'muted_username') final  String? mutedUsername;
@override@JsonKey(name: 'muted_photo_url') final  String? mutedPhotoUrl;
@override@JsonKey(name: 'muted_full_name') final  String? mutedFullName;

/// Create a copy of MutedUserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MutedUserModelCopyWith<_MutedUserModel> get copyWith => __$MutedUserModelCopyWithImpl<_MutedUserModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MutedUserModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MutedUserModel&&(identical(other.muterId, muterId) || other.muterId == muterId)&&(identical(other.mutedId, mutedId) || other.mutedId == mutedId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.mutedUsername, mutedUsername) || other.mutedUsername == mutedUsername)&&(identical(other.mutedPhotoUrl, mutedPhotoUrl) || other.mutedPhotoUrl == mutedPhotoUrl)&&(identical(other.mutedFullName, mutedFullName) || other.mutedFullName == mutedFullName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,muterId,mutedId,createdAt,mutedUsername,mutedPhotoUrl,mutedFullName);

@override
String toString() {
  return 'MutedUserModel(muterId: $muterId, mutedId: $mutedId, createdAt: $createdAt, mutedUsername: $mutedUsername, mutedPhotoUrl: $mutedPhotoUrl, mutedFullName: $mutedFullName)';
}


}

/// @nodoc
abstract mixin class _$MutedUserModelCopyWith<$Res> implements $MutedUserModelCopyWith<$Res> {
  factory _$MutedUserModelCopyWith(_MutedUserModel value, $Res Function(_MutedUserModel) _then) = __$MutedUserModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'muter_id') String muterId,@JsonKey(name: 'muted_id') String mutedId,@UtcDateTimeConverter()@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'muted_username') String? mutedUsername,@JsonKey(name: 'muted_photo_url') String? mutedPhotoUrl,@JsonKey(name: 'muted_full_name') String? mutedFullName
});




}
/// @nodoc
class __$MutedUserModelCopyWithImpl<$Res>
    implements _$MutedUserModelCopyWith<$Res> {
  __$MutedUserModelCopyWithImpl(this._self, this._then);

  final _MutedUserModel _self;
  final $Res Function(_MutedUserModel) _then;

/// Create a copy of MutedUserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? muterId = null,Object? mutedId = null,Object? createdAt = null,Object? mutedUsername = freezed,Object? mutedPhotoUrl = freezed,Object? mutedFullName = freezed,}) {
  return _then(_MutedUserModel(
muterId: null == muterId ? _self.muterId : muterId // ignore: cast_nullable_to_non_nullable
as String,mutedId: null == mutedId ? _self.mutedId : mutedId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,mutedUsername: freezed == mutedUsername ? _self.mutedUsername : mutedUsername // ignore: cast_nullable_to_non_nullable
as String?,mutedPhotoUrl: freezed == mutedPhotoUrl ? _self.mutedPhotoUrl : mutedPhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,mutedFullName: freezed == mutedFullName ? _self.mutedFullName : mutedFullName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
