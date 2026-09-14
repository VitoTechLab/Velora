// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CommentModel {

@JsonKey(name: 'id') String get id;@JsonKey(name: 'post_id') String get postId;@JsonKey(name: 'user_id') String get userId;@JsonKey(name: 'content') String get content;@UtcDateTimeConverter()@JsonKey(name: 'created_at') DateTime get createdAt;@JsonKey(name: 'username') String? get username;@JsonKey(name: 'photo_url') String? get photoUrl;@JsonKey(name: 'parent_comment_id') String? get parentCommentId;@JsonKey(includeFromJson: false, includeToJson: false) List<CommentModel> get replies;@JsonKey(name: 'likes_count') int get likesCount;@JsonKey(includeToJson: false) bool get isLiked;@JsonKey(name: 'reply_count') int get replyCount;@StringListConverter()@JsonKey(name: 'mention_ids') List<String> get mentionIds;@JsonKey(name: 'is_active') bool get isActive;
/// Create a copy of CommentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommentModelCopyWith<CommentModel> get copyWith => _$CommentModelCopyWithImpl<CommentModel>(this as CommentModel, _$identity);

  /// Serializes this CommentModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.content, content) || other.content == content)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.username, username) || other.username == username)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.parentCommentId, parentCommentId) || other.parentCommentId == parentCommentId)&&const DeepCollectionEquality().equals(other.replies, replies)&&(identical(other.likesCount, likesCount) || other.likesCount == likesCount)&&(identical(other.isLiked, isLiked) || other.isLiked == isLiked)&&(identical(other.replyCount, replyCount) || other.replyCount == replyCount)&&const DeepCollectionEquality().equals(other.mentionIds, mentionIds)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,postId,userId,content,createdAt,username,photoUrl,parentCommentId,const DeepCollectionEquality().hash(replies),likesCount,isLiked,replyCount,const DeepCollectionEquality().hash(mentionIds),isActive);

@override
String toString() {
  return 'CommentModel(id: $id, postId: $postId, userId: $userId, content: $content, createdAt: $createdAt, username: $username, photoUrl: $photoUrl, parentCommentId: $parentCommentId, replies: $replies, likesCount: $likesCount, isLiked: $isLiked, replyCount: $replyCount, mentionIds: $mentionIds, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $CommentModelCopyWith<$Res>  {
  factory $CommentModelCopyWith(CommentModel value, $Res Function(CommentModel) _then) = _$CommentModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'post_id') String postId,@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'content') String content,@UtcDateTimeConverter()@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'username') String? username,@JsonKey(name: 'photo_url') String? photoUrl,@JsonKey(name: 'parent_comment_id') String? parentCommentId,@JsonKey(includeFromJson: false, includeToJson: false) List<CommentModel> replies,@JsonKey(name: 'likes_count') int likesCount,@JsonKey(includeToJson: false) bool isLiked,@JsonKey(name: 'reply_count') int replyCount,@StringListConverter()@JsonKey(name: 'mention_ids') List<String> mentionIds,@JsonKey(name: 'is_active') bool isActive
});




}
/// @nodoc
class _$CommentModelCopyWithImpl<$Res>
    implements $CommentModelCopyWith<$Res> {
  _$CommentModelCopyWithImpl(this._self, this._then);

  final CommentModel _self;
  final $Res Function(CommentModel) _then;

/// Create a copy of CommentModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? postId = null,Object? userId = null,Object? content = null,Object? createdAt = null,Object? username = freezed,Object? photoUrl = freezed,Object? parentCommentId = freezed,Object? replies = null,Object? likesCount = null,Object? isLiked = null,Object? replyCount = null,Object? mentionIds = null,Object? isActive = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,parentCommentId: freezed == parentCommentId ? _self.parentCommentId : parentCommentId // ignore: cast_nullable_to_non_nullable
as String?,replies: null == replies ? _self.replies : replies // ignore: cast_nullable_to_non_nullable
as List<CommentModel>,likesCount: null == likesCount ? _self.likesCount : likesCount // ignore: cast_nullable_to_non_nullable
as int,isLiked: null == isLiked ? _self.isLiked : isLiked // ignore: cast_nullable_to_non_nullable
as bool,replyCount: null == replyCount ? _self.replyCount : replyCount // ignore: cast_nullable_to_non_nullable
as int,mentionIds: null == mentionIds ? _self.mentionIds : mentionIds // ignore: cast_nullable_to_non_nullable
as List<String>,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CommentModel].
extension CommentModelPatterns on CommentModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommentModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommentModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommentModel value)  $default,){
final _that = this;
switch (_that) {
case _CommentModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommentModel value)?  $default,){
final _that = this;
switch (_that) {
case _CommentModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'post_id')  String postId, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'content')  String content, @UtcDateTimeConverter()@JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'username')  String? username, @JsonKey(name: 'photo_url')  String? photoUrl, @JsonKey(name: 'parent_comment_id')  String? parentCommentId, @JsonKey(includeFromJson: false, includeToJson: false)  List<CommentModel> replies, @JsonKey(name: 'likes_count')  int likesCount, @JsonKey(includeToJson: false)  bool isLiked, @JsonKey(name: 'reply_count')  int replyCount, @StringListConverter()@JsonKey(name: 'mention_ids')  List<String> mentionIds, @JsonKey(name: 'is_active')  bool isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommentModel() when $default != null:
return $default(_that.id,_that.postId,_that.userId,_that.content,_that.createdAt,_that.username,_that.photoUrl,_that.parentCommentId,_that.replies,_that.likesCount,_that.isLiked,_that.replyCount,_that.mentionIds,_that.isActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'post_id')  String postId, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'content')  String content, @UtcDateTimeConverter()@JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'username')  String? username, @JsonKey(name: 'photo_url')  String? photoUrl, @JsonKey(name: 'parent_comment_id')  String? parentCommentId, @JsonKey(includeFromJson: false, includeToJson: false)  List<CommentModel> replies, @JsonKey(name: 'likes_count')  int likesCount, @JsonKey(includeToJson: false)  bool isLiked, @JsonKey(name: 'reply_count')  int replyCount, @StringListConverter()@JsonKey(name: 'mention_ids')  List<String> mentionIds, @JsonKey(name: 'is_active')  bool isActive)  $default,) {final _that = this;
switch (_that) {
case _CommentModel():
return $default(_that.id,_that.postId,_that.userId,_that.content,_that.createdAt,_that.username,_that.photoUrl,_that.parentCommentId,_that.replies,_that.likesCount,_that.isLiked,_that.replyCount,_that.mentionIds,_that.isActive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  String id, @JsonKey(name: 'post_id')  String postId, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'content')  String content, @UtcDateTimeConverter()@JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'username')  String? username, @JsonKey(name: 'photo_url')  String? photoUrl, @JsonKey(name: 'parent_comment_id')  String? parentCommentId, @JsonKey(includeFromJson: false, includeToJson: false)  List<CommentModel> replies, @JsonKey(name: 'likes_count')  int likesCount, @JsonKey(includeToJson: false)  bool isLiked, @JsonKey(name: 'reply_count')  int replyCount, @StringListConverter()@JsonKey(name: 'mention_ids')  List<String> mentionIds, @JsonKey(name: 'is_active')  bool isActive)?  $default,) {final _that = this;
switch (_that) {
case _CommentModel() when $default != null:
return $default(_that.id,_that.postId,_that.userId,_that.content,_that.createdAt,_that.username,_that.photoUrl,_that.parentCommentId,_that.replies,_that.likesCount,_that.isLiked,_that.replyCount,_that.mentionIds,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CommentModel extends CommentModel {
  const _CommentModel({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'post_id') required this.postId, @JsonKey(name: 'user_id') required this.userId, @JsonKey(name: 'content') required this.content, @UtcDateTimeConverter()@JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'username') this.username, @JsonKey(name: 'photo_url') this.photoUrl, @JsonKey(name: 'parent_comment_id') this.parentCommentId, @JsonKey(includeFromJson: false, includeToJson: false) final  List<CommentModel> replies = const [], @JsonKey(name: 'likes_count') this.likesCount = 0, @JsonKey(includeToJson: false) this.isLiked = false, @JsonKey(name: 'reply_count') this.replyCount = 0, @StringListConverter()@JsonKey(name: 'mention_ids') final  List<String> mentionIds = const [], @JsonKey(name: 'is_active') this.isActive = true}): _replies = replies,_mentionIds = mentionIds,super._();
  factory _CommentModel.fromJson(Map<String, dynamic> json) => _$CommentModelFromJson(json);

@override@JsonKey(name: 'id') final  String id;
@override@JsonKey(name: 'post_id') final  String postId;
@override@JsonKey(name: 'user_id') final  String userId;
@override@JsonKey(name: 'content') final  String content;
@override@UtcDateTimeConverter()@JsonKey(name: 'created_at') final  DateTime createdAt;
@override@JsonKey(name: 'username') final  String? username;
@override@JsonKey(name: 'photo_url') final  String? photoUrl;
@override@JsonKey(name: 'parent_comment_id') final  String? parentCommentId;
 final  List<CommentModel> _replies;
@override@JsonKey(includeFromJson: false, includeToJson: false) List<CommentModel> get replies {
  if (_replies is EqualUnmodifiableListView) return _replies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_replies);
}

@override@JsonKey(name: 'likes_count') final  int likesCount;
@override@JsonKey(includeToJson: false) final  bool isLiked;
@override@JsonKey(name: 'reply_count') final  int replyCount;
 final  List<String> _mentionIds;
@override@StringListConverter()@JsonKey(name: 'mention_ids') List<String> get mentionIds {
  if (_mentionIds is EqualUnmodifiableListView) return _mentionIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mentionIds);
}

@override@JsonKey(name: 'is_active') final  bool isActive;

/// Create a copy of CommentModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommentModelCopyWith<_CommentModel> get copyWith => __$CommentModelCopyWithImpl<_CommentModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CommentModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.content, content) || other.content == content)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.username, username) || other.username == username)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.parentCommentId, parentCommentId) || other.parentCommentId == parentCommentId)&&const DeepCollectionEquality().equals(other._replies, _replies)&&(identical(other.likesCount, likesCount) || other.likesCount == likesCount)&&(identical(other.isLiked, isLiked) || other.isLiked == isLiked)&&(identical(other.replyCount, replyCount) || other.replyCount == replyCount)&&const DeepCollectionEquality().equals(other._mentionIds, _mentionIds)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,postId,userId,content,createdAt,username,photoUrl,parentCommentId,const DeepCollectionEquality().hash(_replies),likesCount,isLiked,replyCount,const DeepCollectionEquality().hash(_mentionIds),isActive);

@override
String toString() {
  return 'CommentModel(id: $id, postId: $postId, userId: $userId, content: $content, createdAt: $createdAt, username: $username, photoUrl: $photoUrl, parentCommentId: $parentCommentId, replies: $replies, likesCount: $likesCount, isLiked: $isLiked, replyCount: $replyCount, mentionIds: $mentionIds, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$CommentModelCopyWith<$Res> implements $CommentModelCopyWith<$Res> {
  factory _$CommentModelCopyWith(_CommentModel value, $Res Function(_CommentModel) _then) = __$CommentModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') String id,@JsonKey(name: 'post_id') String postId,@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'content') String content,@UtcDateTimeConverter()@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'username') String? username,@JsonKey(name: 'photo_url') String? photoUrl,@JsonKey(name: 'parent_comment_id') String? parentCommentId,@JsonKey(includeFromJson: false, includeToJson: false) List<CommentModel> replies,@JsonKey(name: 'likes_count') int likesCount,@JsonKey(includeToJson: false) bool isLiked,@JsonKey(name: 'reply_count') int replyCount,@StringListConverter()@JsonKey(name: 'mention_ids') List<String> mentionIds,@JsonKey(name: 'is_active') bool isActive
});




}
/// @nodoc
class __$CommentModelCopyWithImpl<$Res>
    implements _$CommentModelCopyWith<$Res> {
  __$CommentModelCopyWithImpl(this._self, this._then);

  final _CommentModel _self;
  final $Res Function(_CommentModel) _then;

/// Create a copy of CommentModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? postId = null,Object? userId = null,Object? content = null,Object? createdAt = null,Object? username = freezed,Object? photoUrl = freezed,Object? parentCommentId = freezed,Object? replies = null,Object? likesCount = null,Object? isLiked = null,Object? replyCount = null,Object? mentionIds = null,Object? isActive = null,}) {
  return _then(_CommentModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,parentCommentId: freezed == parentCommentId ? _self.parentCommentId : parentCommentId // ignore: cast_nullable_to_non_nullable
as String?,replies: null == replies ? _self._replies : replies // ignore: cast_nullable_to_non_nullable
as List<CommentModel>,likesCount: null == likesCount ? _self.likesCount : likesCount // ignore: cast_nullable_to_non_nullable
as int,isLiked: null == isLiked ? _self.isLiked : isLiked // ignore: cast_nullable_to_non_nullable
as bool,replyCount: null == replyCount ? _self.replyCount : replyCount // ignore: cast_nullable_to_non_nullable
as int,mentionIds: null == mentionIds ? _self._mentionIds : mentionIds // ignore: cast_nullable_to_non_nullable
as List<String>,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
