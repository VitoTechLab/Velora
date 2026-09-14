// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mention_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MentionModel {

 String get id;@JsonKey(name: 'user_id') String get userId;@JsonKey(name: 'created_by') String get createdBy;@JsonKey(name: 'entity_type') String get entityType;@JsonKey(name: 'entity_id') String get entityId;@JsonKey(name: 'created_at') DateTime get createdAt;// Expanded from join
@JsonKey(name: 'creator_profile') Map<String, dynamic>? get creatorProfile;
/// Create a copy of MentionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MentionModelCopyWith<MentionModel> get copyWith => _$MentionModelCopyWithImpl<MentionModel>(this as MentionModel, _$identity);

  /// Serializes this MentionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MentionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.entityType, entityType) || other.entityType == entityType)&&(identical(other.entityId, entityId) || other.entityId == entityId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other.creatorProfile, creatorProfile));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,createdBy,entityType,entityId,createdAt,const DeepCollectionEquality().hash(creatorProfile));

@override
String toString() {
  return 'MentionModel(id: $id, userId: $userId, createdBy: $createdBy, entityType: $entityType, entityId: $entityId, createdAt: $createdAt, creatorProfile: $creatorProfile)';
}


}

/// @nodoc
abstract mixin class $MentionModelCopyWith<$Res>  {
  factory $MentionModelCopyWith(MentionModel value, $Res Function(MentionModel) _then) = _$MentionModelCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'created_by') String createdBy,@JsonKey(name: 'entity_type') String entityType,@JsonKey(name: 'entity_id') String entityId,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'creator_profile') Map<String, dynamic>? creatorProfile
});




}
/// @nodoc
class _$MentionModelCopyWithImpl<$Res>
    implements $MentionModelCopyWith<$Res> {
  _$MentionModelCopyWithImpl(this._self, this._then);

  final MentionModel _self;
  final $Res Function(MentionModel) _then;

/// Create a copy of MentionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? createdBy = null,Object? entityType = null,Object? entityId = null,Object? createdAt = null,Object? creatorProfile = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,entityType: null == entityType ? _self.entityType : entityType // ignore: cast_nullable_to_non_nullable
as String,entityId: null == entityId ? _self.entityId : entityId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,creatorProfile: freezed == creatorProfile ? _self.creatorProfile : creatorProfile // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [MentionModel].
extension MentionModelPatterns on MentionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MentionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MentionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MentionModel value)  $default,){
final _that = this;
switch (_that) {
case _MentionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MentionModel value)?  $default,){
final _that = this;
switch (_that) {
case _MentionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'created_by')  String createdBy, @JsonKey(name: 'entity_type')  String entityType, @JsonKey(name: 'entity_id')  String entityId, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'creator_profile')  Map<String, dynamic>? creatorProfile)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MentionModel() when $default != null:
return $default(_that.id,_that.userId,_that.createdBy,_that.entityType,_that.entityId,_that.createdAt,_that.creatorProfile);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'created_by')  String createdBy, @JsonKey(name: 'entity_type')  String entityType, @JsonKey(name: 'entity_id')  String entityId, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'creator_profile')  Map<String, dynamic>? creatorProfile)  $default,) {final _that = this;
switch (_that) {
case _MentionModel():
return $default(_that.id,_that.userId,_that.createdBy,_that.entityType,_that.entityId,_that.createdAt,_that.creatorProfile);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'created_by')  String createdBy, @JsonKey(name: 'entity_type')  String entityType, @JsonKey(name: 'entity_id')  String entityId, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'creator_profile')  Map<String, dynamic>? creatorProfile)?  $default,) {final _that = this;
switch (_that) {
case _MentionModel() when $default != null:
return $default(_that.id,_that.userId,_that.createdBy,_that.entityType,_that.entityId,_that.createdAt,_that.creatorProfile);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MentionModel extends MentionModel {
  const _MentionModel({required this.id, @JsonKey(name: 'user_id') required this.userId, @JsonKey(name: 'created_by') required this.createdBy, @JsonKey(name: 'entity_type') required this.entityType, @JsonKey(name: 'entity_id') required this.entityId, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'creator_profile') final  Map<String, dynamic>? creatorProfile}): _creatorProfile = creatorProfile,super._();
  factory _MentionModel.fromJson(Map<String, dynamic> json) => _$MentionModelFromJson(json);

@override final  String id;
@override@JsonKey(name: 'user_id') final  String userId;
@override@JsonKey(name: 'created_by') final  String createdBy;
@override@JsonKey(name: 'entity_type') final  String entityType;
@override@JsonKey(name: 'entity_id') final  String entityId;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;
// Expanded from join
 final  Map<String, dynamic>? _creatorProfile;
// Expanded from join
@override@JsonKey(name: 'creator_profile') Map<String, dynamic>? get creatorProfile {
  final value = _creatorProfile;
  if (value == null) return null;
  if (_creatorProfile is EqualUnmodifiableMapView) return _creatorProfile;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of MentionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MentionModelCopyWith<_MentionModel> get copyWith => __$MentionModelCopyWithImpl<_MentionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MentionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MentionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.entityType, entityType) || other.entityType == entityType)&&(identical(other.entityId, entityId) || other.entityId == entityId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other._creatorProfile, _creatorProfile));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,createdBy,entityType,entityId,createdAt,const DeepCollectionEquality().hash(_creatorProfile));

@override
String toString() {
  return 'MentionModel(id: $id, userId: $userId, createdBy: $createdBy, entityType: $entityType, entityId: $entityId, createdAt: $createdAt, creatorProfile: $creatorProfile)';
}


}

/// @nodoc
abstract mixin class _$MentionModelCopyWith<$Res> implements $MentionModelCopyWith<$Res> {
  factory _$MentionModelCopyWith(_MentionModel value, $Res Function(_MentionModel) _then) = __$MentionModelCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'created_by') String createdBy,@JsonKey(name: 'entity_type') String entityType,@JsonKey(name: 'entity_id') String entityId,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'creator_profile') Map<String, dynamic>? creatorProfile
});




}
/// @nodoc
class __$MentionModelCopyWithImpl<$Res>
    implements _$MentionModelCopyWith<$Res> {
  __$MentionModelCopyWithImpl(this._self, this._then);

  final _MentionModel _self;
  final $Res Function(_MentionModel) _then;

/// Create a copy of MentionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? createdBy = null,Object? entityType = null,Object? entityId = null,Object? createdAt = null,Object? creatorProfile = freezed,}) {
  return _then(_MentionModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,entityType: null == entityType ? _self.entityType : entityType // ignore: cast_nullable_to_non_nullable
as String,entityId: null == entityId ? _self.entityId : entityId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,creatorProfile: freezed == creatorProfile ? _self._creatorProfile : creatorProfile // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

// dart format on
