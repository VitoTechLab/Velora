// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_presence_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserPresenceModel {

@JsonKey(name: 'user_id') String get userId;@JsonKey(name: 'last_seen_at') DateTime get lastSeenAt;@JsonKey(name: 'is_online') bool? get isOnline;
/// Create a copy of UserPresenceModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserPresenceModelCopyWith<UserPresenceModel> get copyWith => _$UserPresenceModelCopyWithImpl<UserPresenceModel>(this as UserPresenceModel, _$identity);

  /// Serializes this UserPresenceModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserPresenceModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.lastSeenAt, lastSeenAt) || other.lastSeenAt == lastSeenAt)&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,lastSeenAt,isOnline);

@override
String toString() {
  return 'UserPresenceModel(userId: $userId, lastSeenAt: $lastSeenAt, isOnline: $isOnline)';
}


}

/// @nodoc
abstract mixin class $UserPresenceModelCopyWith<$Res>  {
  factory $UserPresenceModelCopyWith(UserPresenceModel value, $Res Function(UserPresenceModel) _then) = _$UserPresenceModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'last_seen_at') DateTime lastSeenAt,@JsonKey(name: 'is_online') bool? isOnline
});




}
/// @nodoc
class _$UserPresenceModelCopyWithImpl<$Res>
    implements $UserPresenceModelCopyWith<$Res> {
  _$UserPresenceModelCopyWithImpl(this._self, this._then);

  final UserPresenceModel _self;
  final $Res Function(UserPresenceModel) _then;

/// Create a copy of UserPresenceModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? lastSeenAt = null,Object? isOnline = freezed,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,lastSeenAt: null == lastSeenAt ? _self.lastSeenAt : lastSeenAt // ignore: cast_nullable_to_non_nullable
as DateTime,isOnline: freezed == isOnline ? _self.isOnline : isOnline // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserPresenceModel].
extension UserPresenceModelPatterns on UserPresenceModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserPresenceModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserPresenceModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserPresenceModel value)  $default,){
final _that = this;
switch (_that) {
case _UserPresenceModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserPresenceModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserPresenceModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'last_seen_at')  DateTime lastSeenAt, @JsonKey(name: 'is_online')  bool? isOnline)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserPresenceModel() when $default != null:
return $default(_that.userId,_that.lastSeenAt,_that.isOnline);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'last_seen_at')  DateTime lastSeenAt, @JsonKey(name: 'is_online')  bool? isOnline)  $default,) {final _that = this;
switch (_that) {
case _UserPresenceModel():
return $default(_that.userId,_that.lastSeenAt,_that.isOnline);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'last_seen_at')  DateTime lastSeenAt, @JsonKey(name: 'is_online')  bool? isOnline)?  $default,) {final _that = this;
switch (_that) {
case _UserPresenceModel() when $default != null:
return $default(_that.userId,_that.lastSeenAt,_that.isOnline);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserPresenceModel extends UserPresenceModel {
  const _UserPresenceModel({@JsonKey(name: 'user_id') required this.userId, @JsonKey(name: 'last_seen_at') required this.lastSeenAt, @JsonKey(name: 'is_online') this.isOnline}): super._();
  factory _UserPresenceModel.fromJson(Map<String, dynamic> json) => _$UserPresenceModelFromJson(json);

@override@JsonKey(name: 'user_id') final  String userId;
@override@JsonKey(name: 'last_seen_at') final  DateTime lastSeenAt;
@override@JsonKey(name: 'is_online') final  bool? isOnline;

/// Create a copy of UserPresenceModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserPresenceModelCopyWith<_UserPresenceModel> get copyWith => __$UserPresenceModelCopyWithImpl<_UserPresenceModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserPresenceModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserPresenceModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.lastSeenAt, lastSeenAt) || other.lastSeenAt == lastSeenAt)&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,lastSeenAt,isOnline);

@override
String toString() {
  return 'UserPresenceModel(userId: $userId, lastSeenAt: $lastSeenAt, isOnline: $isOnline)';
}


}

/// @nodoc
abstract mixin class _$UserPresenceModelCopyWith<$Res> implements $UserPresenceModelCopyWith<$Res> {
  factory _$UserPresenceModelCopyWith(_UserPresenceModel value, $Res Function(_UserPresenceModel) _then) = __$UserPresenceModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'last_seen_at') DateTime lastSeenAt,@JsonKey(name: 'is_online') bool? isOnline
});




}
/// @nodoc
class __$UserPresenceModelCopyWithImpl<$Res>
    implements _$UserPresenceModelCopyWith<$Res> {
  __$UserPresenceModelCopyWithImpl(this._self, this._then);

  final _UserPresenceModel _self;
  final $Res Function(_UserPresenceModel) _then;

/// Create a copy of UserPresenceModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? lastSeenAt = null,Object? isOnline = freezed,}) {
  return _then(_UserPresenceModel(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,lastSeenAt: null == lastSeenAt ? _self.lastSeenAt : lastSeenAt // ignore: cast_nullable_to_non_nullable
as DateTime,isOnline: freezed == isOnline ? _self.isOnline : isOnline // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
