// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blocked_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BlockedUserModel {

@JsonKey(name: 'blocker_id') String get blockerId;@JsonKey(name: 'blocked_id') String get blockedId;@UtcDateTimeConverter()@JsonKey(name: 'created_at') DateTime get createdAt;// Joined from user_profiles
@JsonKey(name: 'blocked_username') String? get blockedUsername;@JsonKey(name: 'blocked_photo_url') String? get blockedPhotoUrl;@JsonKey(name: 'blocked_full_name') String? get blockedFullName;
/// Create a copy of BlockedUserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BlockedUserModelCopyWith<BlockedUserModel> get copyWith => _$BlockedUserModelCopyWithImpl<BlockedUserModel>(this as BlockedUserModel, _$identity);

  /// Serializes this BlockedUserModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BlockedUserModel&&(identical(other.blockerId, blockerId) || other.blockerId == blockerId)&&(identical(other.blockedId, blockedId) || other.blockedId == blockedId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.blockedUsername, blockedUsername) || other.blockedUsername == blockedUsername)&&(identical(other.blockedPhotoUrl, blockedPhotoUrl) || other.blockedPhotoUrl == blockedPhotoUrl)&&(identical(other.blockedFullName, blockedFullName) || other.blockedFullName == blockedFullName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,blockerId,blockedId,createdAt,blockedUsername,blockedPhotoUrl,blockedFullName);

@override
String toString() {
  return 'BlockedUserModel(blockerId: $blockerId, blockedId: $blockedId, createdAt: $createdAt, blockedUsername: $blockedUsername, blockedPhotoUrl: $blockedPhotoUrl, blockedFullName: $blockedFullName)';
}


}

/// @nodoc
abstract mixin class $BlockedUserModelCopyWith<$Res>  {
  factory $BlockedUserModelCopyWith(BlockedUserModel value, $Res Function(BlockedUserModel) _then) = _$BlockedUserModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'blocker_id') String blockerId,@JsonKey(name: 'blocked_id') String blockedId,@UtcDateTimeConverter()@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'blocked_username') String? blockedUsername,@JsonKey(name: 'blocked_photo_url') String? blockedPhotoUrl,@JsonKey(name: 'blocked_full_name') String? blockedFullName
});




}
/// @nodoc
class _$BlockedUserModelCopyWithImpl<$Res>
    implements $BlockedUserModelCopyWith<$Res> {
  _$BlockedUserModelCopyWithImpl(this._self, this._then);

  final BlockedUserModel _self;
  final $Res Function(BlockedUserModel) _then;

/// Create a copy of BlockedUserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? blockerId = null,Object? blockedId = null,Object? createdAt = null,Object? blockedUsername = freezed,Object? blockedPhotoUrl = freezed,Object? blockedFullName = freezed,}) {
  return _then(_self.copyWith(
blockerId: null == blockerId ? _self.blockerId : blockerId // ignore: cast_nullable_to_non_nullable
as String,blockedId: null == blockedId ? _self.blockedId : blockedId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,blockedUsername: freezed == blockedUsername ? _self.blockedUsername : blockedUsername // ignore: cast_nullable_to_non_nullable
as String?,blockedPhotoUrl: freezed == blockedPhotoUrl ? _self.blockedPhotoUrl : blockedPhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,blockedFullName: freezed == blockedFullName ? _self.blockedFullName : blockedFullName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BlockedUserModel].
extension BlockedUserModelPatterns on BlockedUserModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BlockedUserModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BlockedUserModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BlockedUserModel value)  $default,){
final _that = this;
switch (_that) {
case _BlockedUserModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BlockedUserModel value)?  $default,){
final _that = this;
switch (_that) {
case _BlockedUserModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'blocker_id')  String blockerId, @JsonKey(name: 'blocked_id')  String blockedId, @UtcDateTimeConverter()@JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'blocked_username')  String? blockedUsername, @JsonKey(name: 'blocked_photo_url')  String? blockedPhotoUrl, @JsonKey(name: 'blocked_full_name')  String? blockedFullName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BlockedUserModel() when $default != null:
return $default(_that.blockerId,_that.blockedId,_that.createdAt,_that.blockedUsername,_that.blockedPhotoUrl,_that.blockedFullName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'blocker_id')  String blockerId, @JsonKey(name: 'blocked_id')  String blockedId, @UtcDateTimeConverter()@JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'blocked_username')  String? blockedUsername, @JsonKey(name: 'blocked_photo_url')  String? blockedPhotoUrl, @JsonKey(name: 'blocked_full_name')  String? blockedFullName)  $default,) {final _that = this;
switch (_that) {
case _BlockedUserModel():
return $default(_that.blockerId,_that.blockedId,_that.createdAt,_that.blockedUsername,_that.blockedPhotoUrl,_that.blockedFullName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'blocker_id')  String blockerId, @JsonKey(name: 'blocked_id')  String blockedId, @UtcDateTimeConverter()@JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'blocked_username')  String? blockedUsername, @JsonKey(name: 'blocked_photo_url')  String? blockedPhotoUrl, @JsonKey(name: 'blocked_full_name')  String? blockedFullName)?  $default,) {final _that = this;
switch (_that) {
case _BlockedUserModel() when $default != null:
return $default(_that.blockerId,_that.blockedId,_that.createdAt,_that.blockedUsername,_that.blockedPhotoUrl,_that.blockedFullName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BlockedUserModel extends BlockedUserModel {
  const _BlockedUserModel({@JsonKey(name: 'blocker_id') required this.blockerId, @JsonKey(name: 'blocked_id') required this.blockedId, @UtcDateTimeConverter()@JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'blocked_username') this.blockedUsername, @JsonKey(name: 'blocked_photo_url') this.blockedPhotoUrl, @JsonKey(name: 'blocked_full_name') this.blockedFullName}): super._();
  factory _BlockedUserModel.fromJson(Map<String, dynamic> json) => _$BlockedUserModelFromJson(json);

@override@JsonKey(name: 'blocker_id') final  String blockerId;
@override@JsonKey(name: 'blocked_id') final  String blockedId;
@override@UtcDateTimeConverter()@JsonKey(name: 'created_at') final  DateTime createdAt;
// Joined from user_profiles
@override@JsonKey(name: 'blocked_username') final  String? blockedUsername;
@override@JsonKey(name: 'blocked_photo_url') final  String? blockedPhotoUrl;
@override@JsonKey(name: 'blocked_full_name') final  String? blockedFullName;

/// Create a copy of BlockedUserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BlockedUserModelCopyWith<_BlockedUserModel> get copyWith => __$BlockedUserModelCopyWithImpl<_BlockedUserModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BlockedUserModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BlockedUserModel&&(identical(other.blockerId, blockerId) || other.blockerId == blockerId)&&(identical(other.blockedId, blockedId) || other.blockedId == blockedId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.blockedUsername, blockedUsername) || other.blockedUsername == blockedUsername)&&(identical(other.blockedPhotoUrl, blockedPhotoUrl) || other.blockedPhotoUrl == blockedPhotoUrl)&&(identical(other.blockedFullName, blockedFullName) || other.blockedFullName == blockedFullName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,blockerId,blockedId,createdAt,blockedUsername,blockedPhotoUrl,blockedFullName);

@override
String toString() {
  return 'BlockedUserModel(blockerId: $blockerId, blockedId: $blockedId, createdAt: $createdAt, blockedUsername: $blockedUsername, blockedPhotoUrl: $blockedPhotoUrl, blockedFullName: $blockedFullName)';
}


}

/// @nodoc
abstract mixin class _$BlockedUserModelCopyWith<$Res> implements $BlockedUserModelCopyWith<$Res> {
  factory _$BlockedUserModelCopyWith(_BlockedUserModel value, $Res Function(_BlockedUserModel) _then) = __$BlockedUserModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'blocker_id') String blockerId,@JsonKey(name: 'blocked_id') String blockedId,@UtcDateTimeConverter()@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'blocked_username') String? blockedUsername,@JsonKey(name: 'blocked_photo_url') String? blockedPhotoUrl,@JsonKey(name: 'blocked_full_name') String? blockedFullName
});




}
/// @nodoc
class __$BlockedUserModelCopyWithImpl<$Res>
    implements _$BlockedUserModelCopyWith<$Res> {
  __$BlockedUserModelCopyWithImpl(this._self, this._then);

  final _BlockedUserModel _self;
  final $Res Function(_BlockedUserModel) _then;

/// Create a copy of BlockedUserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? blockerId = null,Object? blockedId = null,Object? createdAt = null,Object? blockedUsername = freezed,Object? blockedPhotoUrl = freezed,Object? blockedFullName = freezed,}) {
  return _then(_BlockedUserModel(
blockerId: null == blockerId ? _self.blockerId : blockerId // ignore: cast_nullable_to_non_nullable
as String,blockedId: null == blockedId ? _self.blockedId : blockedId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,blockedUsername: freezed == blockedUsername ? _self.blockedUsername : blockedUsername // ignore: cast_nullable_to_non_nullable
as String?,blockedPhotoUrl: freezed == blockedPhotoUrl ? _self.blockedPhotoUrl : blockedPhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,blockedFullName: freezed == blockedFullName ? _self.blockedFullName : blockedFullName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
