// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaign_comment_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CampaignCommentEntity {

 String get id; String get campaignId; String get userId; String get commentText; DateTime get createdAt; String? get userFullName; String? get userPhotoUrl; bool get isDonorComment; bool get isNameHidden;
/// Create a copy of CampaignCommentEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CampaignCommentEntityCopyWith<CampaignCommentEntity> get copyWith => _$CampaignCommentEntityCopyWithImpl<CampaignCommentEntity>(this as CampaignCommentEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CampaignCommentEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.commentText, commentText) || other.commentText == commentText)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.userFullName, userFullName) || other.userFullName == userFullName)&&(identical(other.userPhotoUrl, userPhotoUrl) || other.userPhotoUrl == userPhotoUrl)&&(identical(other.isDonorComment, isDonorComment) || other.isDonorComment == isDonorComment)&&(identical(other.isNameHidden, isNameHidden) || other.isNameHidden == isNameHidden));
}


@override
int get hashCode => Object.hash(runtimeType,id,campaignId,userId,commentText,createdAt,userFullName,userPhotoUrl,isDonorComment,isNameHidden);

@override
String toString() {
  return 'CampaignCommentEntity(id: $id, campaignId: $campaignId, userId: $userId, commentText: $commentText, createdAt: $createdAt, userFullName: $userFullName, userPhotoUrl: $userPhotoUrl, isDonorComment: $isDonorComment, isNameHidden: $isNameHidden)';
}


}

/// @nodoc
abstract mixin class $CampaignCommentEntityCopyWith<$Res>  {
  factory $CampaignCommentEntityCopyWith(CampaignCommentEntity value, $Res Function(CampaignCommentEntity) _then) = _$CampaignCommentEntityCopyWithImpl;
@useResult
$Res call({
 String id, String campaignId, String userId, String commentText, DateTime createdAt, String? userFullName, String? userPhotoUrl, bool isDonorComment, bool isNameHidden
});




}
/// @nodoc
class _$CampaignCommentEntityCopyWithImpl<$Res>
    implements $CampaignCommentEntityCopyWith<$Res> {
  _$CampaignCommentEntityCopyWithImpl(this._self, this._then);

  final CampaignCommentEntity _self;
  final $Res Function(CampaignCommentEntity) _then;

/// Create a copy of CampaignCommentEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? campaignId = null,Object? userId = null,Object? commentText = null,Object? createdAt = null,Object? userFullName = freezed,Object? userPhotoUrl = freezed,Object? isDonorComment = null,Object? isNameHidden = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,campaignId: null == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,commentText: null == commentText ? _self.commentText : commentText // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,userFullName: freezed == userFullName ? _self.userFullName : userFullName // ignore: cast_nullable_to_non_nullable
as String?,userPhotoUrl: freezed == userPhotoUrl ? _self.userPhotoUrl : userPhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,isDonorComment: null == isDonorComment ? _self.isDonorComment : isDonorComment // ignore: cast_nullable_to_non_nullable
as bool,isNameHidden: null == isNameHidden ? _self.isNameHidden : isNameHidden // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CampaignCommentEntity].
extension CampaignCommentEntityPatterns on CampaignCommentEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CampaignCommentEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CampaignCommentEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CampaignCommentEntity value)  $default,){
final _that = this;
switch (_that) {
case _CampaignCommentEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CampaignCommentEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CampaignCommentEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String campaignId,  String userId,  String commentText,  DateTime createdAt,  String? userFullName,  String? userPhotoUrl,  bool isDonorComment,  bool isNameHidden)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CampaignCommentEntity() when $default != null:
return $default(_that.id,_that.campaignId,_that.userId,_that.commentText,_that.createdAt,_that.userFullName,_that.userPhotoUrl,_that.isDonorComment,_that.isNameHidden);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String campaignId,  String userId,  String commentText,  DateTime createdAt,  String? userFullName,  String? userPhotoUrl,  bool isDonorComment,  bool isNameHidden)  $default,) {final _that = this;
switch (_that) {
case _CampaignCommentEntity():
return $default(_that.id,_that.campaignId,_that.userId,_that.commentText,_that.createdAt,_that.userFullName,_that.userPhotoUrl,_that.isDonorComment,_that.isNameHidden);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String campaignId,  String userId,  String commentText,  DateTime createdAt,  String? userFullName,  String? userPhotoUrl,  bool isDonorComment,  bool isNameHidden)?  $default,) {final _that = this;
switch (_that) {
case _CampaignCommentEntity() when $default != null:
return $default(_that.id,_that.campaignId,_that.userId,_that.commentText,_that.createdAt,_that.userFullName,_that.userPhotoUrl,_that.isDonorComment,_that.isNameHidden);case _:
  return null;

}
}

}

/// @nodoc


class _CampaignCommentEntity implements CampaignCommentEntity {
  const _CampaignCommentEntity({required this.id, required this.campaignId, required this.userId, required this.commentText, required this.createdAt, this.userFullName, this.userPhotoUrl, this.isDonorComment = false, this.isNameHidden = false});
  

@override final  String id;
@override final  String campaignId;
@override final  String userId;
@override final  String commentText;
@override final  DateTime createdAt;
@override final  String? userFullName;
@override final  String? userPhotoUrl;
@override@JsonKey() final  bool isDonorComment;
@override@JsonKey() final  bool isNameHidden;

/// Create a copy of CampaignCommentEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CampaignCommentEntityCopyWith<_CampaignCommentEntity> get copyWith => __$CampaignCommentEntityCopyWithImpl<_CampaignCommentEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CampaignCommentEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.commentText, commentText) || other.commentText == commentText)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.userFullName, userFullName) || other.userFullName == userFullName)&&(identical(other.userPhotoUrl, userPhotoUrl) || other.userPhotoUrl == userPhotoUrl)&&(identical(other.isDonorComment, isDonorComment) || other.isDonorComment == isDonorComment)&&(identical(other.isNameHidden, isNameHidden) || other.isNameHidden == isNameHidden));
}


@override
int get hashCode => Object.hash(runtimeType,id,campaignId,userId,commentText,createdAt,userFullName,userPhotoUrl,isDonorComment,isNameHidden);

@override
String toString() {
  return 'CampaignCommentEntity(id: $id, campaignId: $campaignId, userId: $userId, commentText: $commentText, createdAt: $createdAt, userFullName: $userFullName, userPhotoUrl: $userPhotoUrl, isDonorComment: $isDonorComment, isNameHidden: $isNameHidden)';
}


}

/// @nodoc
abstract mixin class _$CampaignCommentEntityCopyWith<$Res> implements $CampaignCommentEntityCopyWith<$Res> {
  factory _$CampaignCommentEntityCopyWith(_CampaignCommentEntity value, $Res Function(_CampaignCommentEntity) _then) = __$CampaignCommentEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String campaignId, String userId, String commentText, DateTime createdAt, String? userFullName, String? userPhotoUrl, bool isDonorComment, bool isNameHidden
});




}
/// @nodoc
class __$CampaignCommentEntityCopyWithImpl<$Res>
    implements _$CampaignCommentEntityCopyWith<$Res> {
  __$CampaignCommentEntityCopyWithImpl(this._self, this._then);

  final _CampaignCommentEntity _self;
  final $Res Function(_CampaignCommentEntity) _then;

/// Create a copy of CampaignCommentEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? campaignId = null,Object? userId = null,Object? commentText = null,Object? createdAt = null,Object? userFullName = freezed,Object? userPhotoUrl = freezed,Object? isDonorComment = null,Object? isNameHidden = null,}) {
  return _then(_CampaignCommentEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,campaignId: null == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,commentText: null == commentText ? _self.commentText : commentText // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,userFullName: freezed == userFullName ? _self.userFullName : userFullName // ignore: cast_nullable_to_non_nullable
as String?,userPhotoUrl: freezed == userPhotoUrl ? _self.userPhotoUrl : userPhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,isDonorComment: null == isDonorComment ? _self.isDonorComment : isDonorComment // ignore: cast_nullable_to_non_nullable
as bool,isNameHidden: null == isNameHidden ? _self.isNameHidden : isNameHidden // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
