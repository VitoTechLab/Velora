// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'follow_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FollowRequestModel {

@JsonKey(name: 'requester_id') String get requesterId;@JsonKey(name: 'target_id') String get targetId;@UtcDateTimeConverter()@JsonKey(name: 'created_at') DateTime get createdAt;@JsonKey(name: 'status') String get status;// Joined from user_profiles
@JsonKey(name: 'requester_username') String? get requesterUsername;@JsonKey(name: 'requester_photo_url') String? get requesterPhotoUrl;@JsonKey(name: 'requester_full_name') String? get requesterFullName;@JsonKey(name: 'target_username') String? get targetUsername;@JsonKey(name: 'target_photo_url') String? get targetPhotoUrl;@JsonKey(name: 'target_full_name') String? get targetFullName;
/// Create a copy of FollowRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FollowRequestModelCopyWith<FollowRequestModel> get copyWith => _$FollowRequestModelCopyWithImpl<FollowRequestModel>(this as FollowRequestModel, _$identity);

  /// Serializes this FollowRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FollowRequestModel&&(identical(other.requesterId, requesterId) || other.requesterId == requesterId)&&(identical(other.targetId, targetId) || other.targetId == targetId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.requesterUsername, requesterUsername) || other.requesterUsername == requesterUsername)&&(identical(other.requesterPhotoUrl, requesterPhotoUrl) || other.requesterPhotoUrl == requesterPhotoUrl)&&(identical(other.requesterFullName, requesterFullName) || other.requesterFullName == requesterFullName)&&(identical(other.targetUsername, targetUsername) || other.targetUsername == targetUsername)&&(identical(other.targetPhotoUrl, targetPhotoUrl) || other.targetPhotoUrl == targetPhotoUrl)&&(identical(other.targetFullName, targetFullName) || other.targetFullName == targetFullName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,requesterId,targetId,createdAt,status,requesterUsername,requesterPhotoUrl,requesterFullName,targetUsername,targetPhotoUrl,targetFullName);

@override
String toString() {
  return 'FollowRequestModel(requesterId: $requesterId, targetId: $targetId, createdAt: $createdAt, status: $status, requesterUsername: $requesterUsername, requesterPhotoUrl: $requesterPhotoUrl, requesterFullName: $requesterFullName, targetUsername: $targetUsername, targetPhotoUrl: $targetPhotoUrl, targetFullName: $targetFullName)';
}


}

/// @nodoc
abstract mixin class $FollowRequestModelCopyWith<$Res>  {
  factory $FollowRequestModelCopyWith(FollowRequestModel value, $Res Function(FollowRequestModel) _then) = _$FollowRequestModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'requester_id') String requesterId,@JsonKey(name: 'target_id') String targetId,@UtcDateTimeConverter()@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'status') String status,@JsonKey(name: 'requester_username') String? requesterUsername,@JsonKey(name: 'requester_photo_url') String? requesterPhotoUrl,@JsonKey(name: 'requester_full_name') String? requesterFullName,@JsonKey(name: 'target_username') String? targetUsername,@JsonKey(name: 'target_photo_url') String? targetPhotoUrl,@JsonKey(name: 'target_full_name') String? targetFullName
});




}
/// @nodoc
class _$FollowRequestModelCopyWithImpl<$Res>
    implements $FollowRequestModelCopyWith<$Res> {
  _$FollowRequestModelCopyWithImpl(this._self, this._then);

  final FollowRequestModel _self;
  final $Res Function(FollowRequestModel) _then;

/// Create a copy of FollowRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? requesterId = null,Object? targetId = null,Object? createdAt = null,Object? status = null,Object? requesterUsername = freezed,Object? requesterPhotoUrl = freezed,Object? requesterFullName = freezed,Object? targetUsername = freezed,Object? targetPhotoUrl = freezed,Object? targetFullName = freezed,}) {
  return _then(_self.copyWith(
requesterId: null == requesterId ? _self.requesterId : requesterId // ignore: cast_nullable_to_non_nullable
as String,targetId: null == targetId ? _self.targetId : targetId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,requesterUsername: freezed == requesterUsername ? _self.requesterUsername : requesterUsername // ignore: cast_nullable_to_non_nullable
as String?,requesterPhotoUrl: freezed == requesterPhotoUrl ? _self.requesterPhotoUrl : requesterPhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,requesterFullName: freezed == requesterFullName ? _self.requesterFullName : requesterFullName // ignore: cast_nullable_to_non_nullable
as String?,targetUsername: freezed == targetUsername ? _self.targetUsername : targetUsername // ignore: cast_nullable_to_non_nullable
as String?,targetPhotoUrl: freezed == targetPhotoUrl ? _self.targetPhotoUrl : targetPhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,targetFullName: freezed == targetFullName ? _self.targetFullName : targetFullName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FollowRequestModel].
extension FollowRequestModelPatterns on FollowRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FollowRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FollowRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FollowRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _FollowRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FollowRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _FollowRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'requester_id')  String requesterId, @JsonKey(name: 'target_id')  String targetId, @UtcDateTimeConverter()@JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'status')  String status, @JsonKey(name: 'requester_username')  String? requesterUsername, @JsonKey(name: 'requester_photo_url')  String? requesterPhotoUrl, @JsonKey(name: 'requester_full_name')  String? requesterFullName, @JsonKey(name: 'target_username')  String? targetUsername, @JsonKey(name: 'target_photo_url')  String? targetPhotoUrl, @JsonKey(name: 'target_full_name')  String? targetFullName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FollowRequestModel() when $default != null:
return $default(_that.requesterId,_that.targetId,_that.createdAt,_that.status,_that.requesterUsername,_that.requesterPhotoUrl,_that.requesterFullName,_that.targetUsername,_that.targetPhotoUrl,_that.targetFullName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'requester_id')  String requesterId, @JsonKey(name: 'target_id')  String targetId, @UtcDateTimeConverter()@JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'status')  String status, @JsonKey(name: 'requester_username')  String? requesterUsername, @JsonKey(name: 'requester_photo_url')  String? requesterPhotoUrl, @JsonKey(name: 'requester_full_name')  String? requesterFullName, @JsonKey(name: 'target_username')  String? targetUsername, @JsonKey(name: 'target_photo_url')  String? targetPhotoUrl, @JsonKey(name: 'target_full_name')  String? targetFullName)  $default,) {final _that = this;
switch (_that) {
case _FollowRequestModel():
return $default(_that.requesterId,_that.targetId,_that.createdAt,_that.status,_that.requesterUsername,_that.requesterPhotoUrl,_that.requesterFullName,_that.targetUsername,_that.targetPhotoUrl,_that.targetFullName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'requester_id')  String requesterId, @JsonKey(name: 'target_id')  String targetId, @UtcDateTimeConverter()@JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'status')  String status, @JsonKey(name: 'requester_username')  String? requesterUsername, @JsonKey(name: 'requester_photo_url')  String? requesterPhotoUrl, @JsonKey(name: 'requester_full_name')  String? requesterFullName, @JsonKey(name: 'target_username')  String? targetUsername, @JsonKey(name: 'target_photo_url')  String? targetPhotoUrl, @JsonKey(name: 'target_full_name')  String? targetFullName)?  $default,) {final _that = this;
switch (_that) {
case _FollowRequestModel() when $default != null:
return $default(_that.requesterId,_that.targetId,_that.createdAt,_that.status,_that.requesterUsername,_that.requesterPhotoUrl,_that.requesterFullName,_that.targetUsername,_that.targetPhotoUrl,_that.targetFullName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FollowRequestModel extends FollowRequestModel {
  const _FollowRequestModel({@JsonKey(name: 'requester_id') required this.requesterId, @JsonKey(name: 'target_id') required this.targetId, @UtcDateTimeConverter()@JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'status') this.status = 'pending', @JsonKey(name: 'requester_username') this.requesterUsername, @JsonKey(name: 'requester_photo_url') this.requesterPhotoUrl, @JsonKey(name: 'requester_full_name') this.requesterFullName, @JsonKey(name: 'target_username') this.targetUsername, @JsonKey(name: 'target_photo_url') this.targetPhotoUrl, @JsonKey(name: 'target_full_name') this.targetFullName}): super._();
  factory _FollowRequestModel.fromJson(Map<String, dynamic> json) => _$FollowRequestModelFromJson(json);

@override@JsonKey(name: 'requester_id') final  String requesterId;
@override@JsonKey(name: 'target_id') final  String targetId;
@override@UtcDateTimeConverter()@JsonKey(name: 'created_at') final  DateTime createdAt;
@override@JsonKey(name: 'status') final  String status;
// Joined from user_profiles
@override@JsonKey(name: 'requester_username') final  String? requesterUsername;
@override@JsonKey(name: 'requester_photo_url') final  String? requesterPhotoUrl;
@override@JsonKey(name: 'requester_full_name') final  String? requesterFullName;
@override@JsonKey(name: 'target_username') final  String? targetUsername;
@override@JsonKey(name: 'target_photo_url') final  String? targetPhotoUrl;
@override@JsonKey(name: 'target_full_name') final  String? targetFullName;

/// Create a copy of FollowRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FollowRequestModelCopyWith<_FollowRequestModel> get copyWith => __$FollowRequestModelCopyWithImpl<_FollowRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FollowRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FollowRequestModel&&(identical(other.requesterId, requesterId) || other.requesterId == requesterId)&&(identical(other.targetId, targetId) || other.targetId == targetId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.requesterUsername, requesterUsername) || other.requesterUsername == requesterUsername)&&(identical(other.requesterPhotoUrl, requesterPhotoUrl) || other.requesterPhotoUrl == requesterPhotoUrl)&&(identical(other.requesterFullName, requesterFullName) || other.requesterFullName == requesterFullName)&&(identical(other.targetUsername, targetUsername) || other.targetUsername == targetUsername)&&(identical(other.targetPhotoUrl, targetPhotoUrl) || other.targetPhotoUrl == targetPhotoUrl)&&(identical(other.targetFullName, targetFullName) || other.targetFullName == targetFullName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,requesterId,targetId,createdAt,status,requesterUsername,requesterPhotoUrl,requesterFullName,targetUsername,targetPhotoUrl,targetFullName);

@override
String toString() {
  return 'FollowRequestModel(requesterId: $requesterId, targetId: $targetId, createdAt: $createdAt, status: $status, requesterUsername: $requesterUsername, requesterPhotoUrl: $requesterPhotoUrl, requesterFullName: $requesterFullName, targetUsername: $targetUsername, targetPhotoUrl: $targetPhotoUrl, targetFullName: $targetFullName)';
}


}

/// @nodoc
abstract mixin class _$FollowRequestModelCopyWith<$Res> implements $FollowRequestModelCopyWith<$Res> {
  factory _$FollowRequestModelCopyWith(_FollowRequestModel value, $Res Function(_FollowRequestModel) _then) = __$FollowRequestModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'requester_id') String requesterId,@JsonKey(name: 'target_id') String targetId,@UtcDateTimeConverter()@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'status') String status,@JsonKey(name: 'requester_username') String? requesterUsername,@JsonKey(name: 'requester_photo_url') String? requesterPhotoUrl,@JsonKey(name: 'requester_full_name') String? requesterFullName,@JsonKey(name: 'target_username') String? targetUsername,@JsonKey(name: 'target_photo_url') String? targetPhotoUrl,@JsonKey(name: 'target_full_name') String? targetFullName
});




}
/// @nodoc
class __$FollowRequestModelCopyWithImpl<$Res>
    implements _$FollowRequestModelCopyWith<$Res> {
  __$FollowRequestModelCopyWithImpl(this._self, this._then);

  final _FollowRequestModel _self;
  final $Res Function(_FollowRequestModel) _then;

/// Create a copy of FollowRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? requesterId = null,Object? targetId = null,Object? createdAt = null,Object? status = null,Object? requesterUsername = freezed,Object? requesterPhotoUrl = freezed,Object? requesterFullName = freezed,Object? targetUsername = freezed,Object? targetPhotoUrl = freezed,Object? targetFullName = freezed,}) {
  return _then(_FollowRequestModel(
requesterId: null == requesterId ? _self.requesterId : requesterId // ignore: cast_nullable_to_non_nullable
as String,targetId: null == targetId ? _self.targetId : targetId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,requesterUsername: freezed == requesterUsername ? _self.requesterUsername : requesterUsername // ignore: cast_nullable_to_non_nullable
as String?,requesterPhotoUrl: freezed == requesterPhotoUrl ? _self.requesterPhotoUrl : requesterPhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,requesterFullName: freezed == requesterFullName ? _self.requesterFullName : requesterFullName // ignore: cast_nullable_to_non_nullable
as String?,targetUsername: freezed == targetUsername ? _self.targetUsername : targetUsername // ignore: cast_nullable_to_non_nullable
as String?,targetPhotoUrl: freezed == targetPhotoUrl ? _self.targetPhotoUrl : targetPhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,targetFullName: freezed == targetFullName ? _self.targetFullName : targetFullName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
