// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CommentEntity {

 String get id; String get postId; String get userId; String get content; DateTime get createdAt; String? get userFullName; String? get userPhotoUrl; int get likesCount; bool get isLiked; String? get parentCommentId; List<CommentEntity> get replies;/// Total reply count from server.
 int get replyCount;/// Whether replies have been loaded for this comment.
 bool get repliesLoaded;/// Whether replies are currently being fetched.
 bool get isLoadingReplies;
/// Create a copy of CommentEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommentEntityCopyWith<CommentEntity> get copyWith => _$CommentEntityCopyWithImpl<CommentEntity>(this as CommentEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommentEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.content, content) || other.content == content)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.userFullName, userFullName) || other.userFullName == userFullName)&&(identical(other.userPhotoUrl, userPhotoUrl) || other.userPhotoUrl == userPhotoUrl)&&(identical(other.likesCount, likesCount) || other.likesCount == likesCount)&&(identical(other.isLiked, isLiked) || other.isLiked == isLiked)&&(identical(other.parentCommentId, parentCommentId) || other.parentCommentId == parentCommentId)&&const DeepCollectionEquality().equals(other.replies, replies)&&(identical(other.replyCount, replyCount) || other.replyCount == replyCount)&&(identical(other.repliesLoaded, repliesLoaded) || other.repliesLoaded == repliesLoaded)&&(identical(other.isLoadingReplies, isLoadingReplies) || other.isLoadingReplies == isLoadingReplies));
}


@override
int get hashCode => Object.hash(runtimeType,id,postId,userId,content,createdAt,userFullName,userPhotoUrl,likesCount,isLiked,parentCommentId,const DeepCollectionEquality().hash(replies),replyCount,repliesLoaded,isLoadingReplies);

@override
String toString() {
  return 'CommentEntity(id: $id, postId: $postId, userId: $userId, content: $content, createdAt: $createdAt, userFullName: $userFullName, userPhotoUrl: $userPhotoUrl, likesCount: $likesCount, isLiked: $isLiked, parentCommentId: $parentCommentId, replies: $replies, replyCount: $replyCount, repliesLoaded: $repliesLoaded, isLoadingReplies: $isLoadingReplies)';
}


}

/// @nodoc
abstract mixin class $CommentEntityCopyWith<$Res>  {
  factory $CommentEntityCopyWith(CommentEntity value, $Res Function(CommentEntity) _then) = _$CommentEntityCopyWithImpl;
@useResult
$Res call({
 String id, String postId, String userId, String content, DateTime createdAt, String? userFullName, String? userPhotoUrl, int likesCount, bool isLiked, String? parentCommentId, List<CommentEntity> replies, int replyCount, bool repliesLoaded, bool isLoadingReplies
});




}
/// @nodoc
class _$CommentEntityCopyWithImpl<$Res>
    implements $CommentEntityCopyWith<$Res> {
  _$CommentEntityCopyWithImpl(this._self, this._then);

  final CommentEntity _self;
  final $Res Function(CommentEntity) _then;

/// Create a copy of CommentEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? postId = null,Object? userId = null,Object? content = null,Object? createdAt = null,Object? userFullName = freezed,Object? userPhotoUrl = freezed,Object? likesCount = null,Object? isLiked = null,Object? parentCommentId = freezed,Object? replies = null,Object? replyCount = null,Object? repliesLoaded = null,Object? isLoadingReplies = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,userFullName: freezed == userFullName ? _self.userFullName : userFullName // ignore: cast_nullable_to_non_nullable
as String?,userPhotoUrl: freezed == userPhotoUrl ? _self.userPhotoUrl : userPhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,likesCount: null == likesCount ? _self.likesCount : likesCount // ignore: cast_nullable_to_non_nullable
as int,isLiked: null == isLiked ? _self.isLiked : isLiked // ignore: cast_nullable_to_non_nullable
as bool,parentCommentId: freezed == parentCommentId ? _self.parentCommentId : parentCommentId // ignore: cast_nullable_to_non_nullable
as String?,replies: null == replies ? _self.replies : replies // ignore: cast_nullable_to_non_nullable
as List<CommentEntity>,replyCount: null == replyCount ? _self.replyCount : replyCount // ignore: cast_nullable_to_non_nullable
as int,repliesLoaded: null == repliesLoaded ? _self.repliesLoaded : repliesLoaded // ignore: cast_nullable_to_non_nullable
as bool,isLoadingReplies: null == isLoadingReplies ? _self.isLoadingReplies : isLoadingReplies // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CommentEntity].
extension CommentEntityPatterns on CommentEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommentEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommentEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommentEntity value)  $default,){
final _that = this;
switch (_that) {
case _CommentEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommentEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CommentEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String postId,  String userId,  String content,  DateTime createdAt,  String? userFullName,  String? userPhotoUrl,  int likesCount,  bool isLiked,  String? parentCommentId,  List<CommentEntity> replies,  int replyCount,  bool repliesLoaded,  bool isLoadingReplies)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommentEntity() when $default != null:
return $default(_that.id,_that.postId,_that.userId,_that.content,_that.createdAt,_that.userFullName,_that.userPhotoUrl,_that.likesCount,_that.isLiked,_that.parentCommentId,_that.replies,_that.replyCount,_that.repliesLoaded,_that.isLoadingReplies);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String postId,  String userId,  String content,  DateTime createdAt,  String? userFullName,  String? userPhotoUrl,  int likesCount,  bool isLiked,  String? parentCommentId,  List<CommentEntity> replies,  int replyCount,  bool repliesLoaded,  bool isLoadingReplies)  $default,) {final _that = this;
switch (_that) {
case _CommentEntity():
return $default(_that.id,_that.postId,_that.userId,_that.content,_that.createdAt,_that.userFullName,_that.userPhotoUrl,_that.likesCount,_that.isLiked,_that.parentCommentId,_that.replies,_that.replyCount,_that.repliesLoaded,_that.isLoadingReplies);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String postId,  String userId,  String content,  DateTime createdAt,  String? userFullName,  String? userPhotoUrl,  int likesCount,  bool isLiked,  String? parentCommentId,  List<CommentEntity> replies,  int replyCount,  bool repliesLoaded,  bool isLoadingReplies)?  $default,) {final _that = this;
switch (_that) {
case _CommentEntity() when $default != null:
return $default(_that.id,_that.postId,_that.userId,_that.content,_that.createdAt,_that.userFullName,_that.userPhotoUrl,_that.likesCount,_that.isLiked,_that.parentCommentId,_that.replies,_that.replyCount,_that.repliesLoaded,_that.isLoadingReplies);case _:
  return null;

}
}

}

/// @nodoc


class _CommentEntity implements CommentEntity {
  const _CommentEntity({required this.id, required this.postId, required this.userId, required this.content, required this.createdAt, this.userFullName, this.userPhotoUrl, this.likesCount = 0, this.isLiked = false, this.parentCommentId, final  List<CommentEntity> replies = const [], this.replyCount = 0, this.repliesLoaded = false, this.isLoadingReplies = false}): _replies = replies;
  

@override final  String id;
@override final  String postId;
@override final  String userId;
@override final  String content;
@override final  DateTime createdAt;
@override final  String? userFullName;
@override final  String? userPhotoUrl;
@override@JsonKey() final  int likesCount;
@override@JsonKey() final  bool isLiked;
@override final  String? parentCommentId;
 final  List<CommentEntity> _replies;
@override@JsonKey() List<CommentEntity> get replies {
  if (_replies is EqualUnmodifiableListView) return _replies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_replies);
}

/// Total reply count from server.
@override@JsonKey() final  int replyCount;
/// Whether replies have been loaded for this comment.
@override@JsonKey() final  bool repliesLoaded;
/// Whether replies are currently being fetched.
@override@JsonKey() final  bool isLoadingReplies;

/// Create a copy of CommentEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommentEntityCopyWith<_CommentEntity> get copyWith => __$CommentEntityCopyWithImpl<_CommentEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommentEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.content, content) || other.content == content)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.userFullName, userFullName) || other.userFullName == userFullName)&&(identical(other.userPhotoUrl, userPhotoUrl) || other.userPhotoUrl == userPhotoUrl)&&(identical(other.likesCount, likesCount) || other.likesCount == likesCount)&&(identical(other.isLiked, isLiked) || other.isLiked == isLiked)&&(identical(other.parentCommentId, parentCommentId) || other.parentCommentId == parentCommentId)&&const DeepCollectionEquality().equals(other._replies, _replies)&&(identical(other.replyCount, replyCount) || other.replyCount == replyCount)&&(identical(other.repliesLoaded, repliesLoaded) || other.repliesLoaded == repliesLoaded)&&(identical(other.isLoadingReplies, isLoadingReplies) || other.isLoadingReplies == isLoadingReplies));
}


@override
int get hashCode => Object.hash(runtimeType,id,postId,userId,content,createdAt,userFullName,userPhotoUrl,likesCount,isLiked,parentCommentId,const DeepCollectionEquality().hash(_replies),replyCount,repliesLoaded,isLoadingReplies);

@override
String toString() {
  return 'CommentEntity(id: $id, postId: $postId, userId: $userId, content: $content, createdAt: $createdAt, userFullName: $userFullName, userPhotoUrl: $userPhotoUrl, likesCount: $likesCount, isLiked: $isLiked, parentCommentId: $parentCommentId, replies: $replies, replyCount: $replyCount, repliesLoaded: $repliesLoaded, isLoadingReplies: $isLoadingReplies)';
}


}

/// @nodoc
abstract mixin class _$CommentEntityCopyWith<$Res> implements $CommentEntityCopyWith<$Res> {
  factory _$CommentEntityCopyWith(_CommentEntity value, $Res Function(_CommentEntity) _then) = __$CommentEntityCopyWithImpl;
@override @useResult
$Res call({
 String id, String postId, String userId, String content, DateTime createdAt, String? userFullName, String? userPhotoUrl, int likesCount, bool isLiked, String? parentCommentId, List<CommentEntity> replies, int replyCount, bool repliesLoaded, bool isLoadingReplies
});




}
/// @nodoc
class __$CommentEntityCopyWithImpl<$Res>
    implements _$CommentEntityCopyWith<$Res> {
  __$CommentEntityCopyWithImpl(this._self, this._then);

  final _CommentEntity _self;
  final $Res Function(_CommentEntity) _then;

/// Create a copy of CommentEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? postId = null,Object? userId = null,Object? content = null,Object? createdAt = null,Object? userFullName = freezed,Object? userPhotoUrl = freezed,Object? likesCount = null,Object? isLiked = null,Object? parentCommentId = freezed,Object? replies = null,Object? replyCount = null,Object? repliesLoaded = null,Object? isLoadingReplies = null,}) {
  return _then(_CommentEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,userFullName: freezed == userFullName ? _self.userFullName : userFullName // ignore: cast_nullable_to_non_nullable
as String?,userPhotoUrl: freezed == userPhotoUrl ? _self.userPhotoUrl : userPhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,likesCount: null == likesCount ? _self.likesCount : likesCount // ignore: cast_nullable_to_non_nullable
as int,isLiked: null == isLiked ? _self.isLiked : isLiked // ignore: cast_nullable_to_non_nullable
as bool,parentCommentId: freezed == parentCommentId ? _self.parentCommentId : parentCommentId // ignore: cast_nullable_to_non_nullable
as String?,replies: null == replies ? _self._replies : replies // ignore: cast_nullable_to_non_nullable
as List<CommentEntity>,replyCount: null == replyCount ? _self.replyCount : replyCount // ignore: cast_nullable_to_non_nullable
as int,repliesLoaded: null == repliesLoaded ? _self.repliesLoaded : repliesLoaded // ignore: cast_nullable_to_non_nullable
as bool,isLoadingReplies: null == isLoadingReplies ? _self.isLoadingReplies : isLoadingReplies // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
