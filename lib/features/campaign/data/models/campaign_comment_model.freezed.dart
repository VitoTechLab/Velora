// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaign_comment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CampaignCommentModel {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'campaign_id') String get campaignId;@JsonKey(name: 'user_id') String get userId;@JsonKey(name: 'comment_text') String get commentText;@JsonKey(name: 'parent_id') String? get parentId;@JsonKey(name: 'created_at') DateTime get createdAt;// Joined from user_profiles (read-only)
@JsonKey(name: 'username') String? get username;@JsonKey(name: 'display_name') String? get displayName;@JsonKey(name: 'avatar_url') String? get avatarUrl;
/// Create a copy of CampaignCommentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CampaignCommentModelCopyWith<CampaignCommentModel> get copyWith => _$CampaignCommentModelCopyWithImpl<CampaignCommentModel>(this as CampaignCommentModel, _$identity);

  /// Serializes this CampaignCommentModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CampaignCommentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.commentText, commentText) || other.commentText == commentText)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.username, username) || other.username == username)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,campaignId,userId,commentText,parentId,createdAt,username,displayName,avatarUrl);

@override
String toString() {
  return 'CampaignCommentModel(id: $id, campaignId: $campaignId, userId: $userId, commentText: $commentText, parentId: $parentId, createdAt: $createdAt, username: $username, displayName: $displayName, avatarUrl: $avatarUrl)';
}


}

/// @nodoc
abstract mixin class $CampaignCommentModelCopyWith<$Res>  {
  factory $CampaignCommentModelCopyWith(CampaignCommentModel value, $Res Function(CampaignCommentModel) _then) = _$CampaignCommentModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'campaign_id') String campaignId,@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'comment_text') String commentText,@JsonKey(name: 'parent_id') String? parentId,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'username') String? username,@JsonKey(name: 'display_name') String? displayName,@JsonKey(name: 'avatar_url') String? avatarUrl
});




}
/// @nodoc
class _$CampaignCommentModelCopyWithImpl<$Res>
    implements $CampaignCommentModelCopyWith<$Res> {
  _$CampaignCommentModelCopyWithImpl(this._self, this._then);

  final CampaignCommentModel _self;
  final $Res Function(CampaignCommentModel) _then;

/// Create a copy of CampaignCommentModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? campaignId = null,Object? userId = null,Object? commentText = null,Object? parentId = freezed,Object? createdAt = null,Object? username = freezed,Object? displayName = freezed,Object? avatarUrl = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,campaignId: null == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,commentText: null == commentText ? _self.commentText : commentText // ignore: cast_nullable_to_non_nullable
as String,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CampaignCommentModel].
extension CampaignCommentModelPatterns on CampaignCommentModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CampaignCommentModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CampaignCommentModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CampaignCommentModel value)  $default,){
final _that = this;
switch (_that) {
case _CampaignCommentModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CampaignCommentModel value)?  $default,){
final _that = this;
switch (_that) {
case _CampaignCommentModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'campaign_id')  String campaignId, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'comment_text')  String commentText, @JsonKey(name: 'parent_id')  String? parentId, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'username')  String? username, @JsonKey(name: 'display_name')  String? displayName, @JsonKey(name: 'avatar_url')  String? avatarUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CampaignCommentModel() when $default != null:
return $default(_that.id,_that.campaignId,_that.userId,_that.commentText,_that.parentId,_that.createdAt,_that.username,_that.displayName,_that.avatarUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'campaign_id')  String campaignId, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'comment_text')  String commentText, @JsonKey(name: 'parent_id')  String? parentId, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'username')  String? username, @JsonKey(name: 'display_name')  String? displayName, @JsonKey(name: 'avatar_url')  String? avatarUrl)  $default,) {final _that = this;
switch (_that) {
case _CampaignCommentModel():
return $default(_that.id,_that.campaignId,_that.userId,_that.commentText,_that.parentId,_that.createdAt,_that.username,_that.displayName,_that.avatarUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'campaign_id')  String campaignId, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'comment_text')  String commentText, @JsonKey(name: 'parent_id')  String? parentId, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'username')  String? username, @JsonKey(name: 'display_name')  String? displayName, @JsonKey(name: 'avatar_url')  String? avatarUrl)?  $default,) {final _that = this;
switch (_that) {
case _CampaignCommentModel() when $default != null:
return $default(_that.id,_that.campaignId,_that.userId,_that.commentText,_that.parentId,_that.createdAt,_that.username,_that.displayName,_that.avatarUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CampaignCommentModel extends CampaignCommentModel {
  const _CampaignCommentModel({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'campaign_id') required this.campaignId, @JsonKey(name: 'user_id') required this.userId, @JsonKey(name: 'comment_text') required this.commentText, @JsonKey(name: 'parent_id') this.parentId, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'username') this.username, @JsonKey(name: 'display_name') this.displayName, @JsonKey(name: 'avatar_url') this.avatarUrl}): super._();
  factory _CampaignCommentModel.fromJson(Map<String, dynamic> json) => _$CampaignCommentModelFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'campaign_id') final  String campaignId;
@override@JsonKey(name: 'user_id') final  String userId;
@override@JsonKey(name: 'comment_text') final  String commentText;
@override@JsonKey(name: 'parent_id') final  String? parentId;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;
// Joined from user_profiles (read-only)
@override@JsonKey(name: 'username') final  String? username;
@override@JsonKey(name: 'display_name') final  String? displayName;
@override@JsonKey(name: 'avatar_url') final  String? avatarUrl;

/// Create a copy of CampaignCommentModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CampaignCommentModelCopyWith<_CampaignCommentModel> get copyWith => __$CampaignCommentModelCopyWithImpl<_CampaignCommentModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CampaignCommentModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CampaignCommentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.commentText, commentText) || other.commentText == commentText)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.username, username) || other.username == username)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,campaignId,userId,commentText,parentId,createdAt,username,displayName,avatarUrl);

@override
String toString() {
  return 'CampaignCommentModel(id: $id, campaignId: $campaignId, userId: $userId, commentText: $commentText, parentId: $parentId, createdAt: $createdAt, username: $username, displayName: $displayName, avatarUrl: $avatarUrl)';
}


}

/// @nodoc
abstract mixin class _$CampaignCommentModelCopyWith<$Res> implements $CampaignCommentModelCopyWith<$Res> {
  factory _$CampaignCommentModelCopyWith(_CampaignCommentModel value, $Res Function(_CampaignCommentModel) _then) = __$CampaignCommentModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'campaign_id') String campaignId,@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'comment_text') String commentText,@JsonKey(name: 'parent_id') String? parentId,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'username') String? username,@JsonKey(name: 'display_name') String? displayName,@JsonKey(name: 'avatar_url') String? avatarUrl
});




}
/// @nodoc
class __$CampaignCommentModelCopyWithImpl<$Res>
    implements _$CampaignCommentModelCopyWith<$Res> {
  __$CampaignCommentModelCopyWithImpl(this._self, this._then);

  final _CampaignCommentModel _self;
  final $Res Function(_CampaignCommentModel) _then;

/// Create a copy of CampaignCommentModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? campaignId = null,Object? userId = null,Object? commentText = null,Object? parentId = freezed,Object? createdAt = null,Object? username = freezed,Object? displayName = freezed,Object? avatarUrl = freezed,}) {
  return _then(_CampaignCommentModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,campaignId: null == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,commentText: null == commentText ? _self.commentText : commentText // ignore: cast_nullable_to_non_nullable
as String,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
