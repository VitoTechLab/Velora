// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_upload_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MediaUploadEvent {

 List<File> get files; String get userId;
/// Create a copy of MediaUploadEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MediaUploadEventCopyWith<MediaUploadEvent> get copyWith => _$MediaUploadEventCopyWithImpl<MediaUploadEvent>(this as MediaUploadEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MediaUploadEvent&&const DeepCollectionEquality().equals(other.files, files)&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(files),userId);

@override
String toString() {
  return 'MediaUploadEvent(files: $files, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $MediaUploadEventCopyWith<$Res>  {
  factory $MediaUploadEventCopyWith(MediaUploadEvent value, $Res Function(MediaUploadEvent) _then) = _$MediaUploadEventCopyWithImpl;
@useResult
$Res call({
 List<File> files, String userId
});




}
/// @nodoc
class _$MediaUploadEventCopyWithImpl<$Res>
    implements $MediaUploadEventCopyWith<$Res> {
  _$MediaUploadEventCopyWithImpl(this._self, this._then);

  final MediaUploadEvent _self;
  final $Res Function(MediaUploadEvent) _then;

/// Create a copy of MediaUploadEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? files = null,Object? userId = null,}) {
  return _then(_self.copyWith(
files: null == files ? _self.files : files // ignore: cast_nullable_to_non_nullable
as List<File>,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MediaUploadEvent].
extension MediaUploadEventPatterns on MediaUploadEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UploadForPostEvent value)?  uploadForPost,TResult Function( UploadForCampaignEvent value)?  uploadForCampaign,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UploadForPostEvent() when uploadForPost != null:
return uploadForPost(_that);case UploadForCampaignEvent() when uploadForCampaign != null:
return uploadForCampaign(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UploadForPostEvent value)  uploadForPost,required TResult Function( UploadForCampaignEvent value)  uploadForCampaign,}){
final _that = this;
switch (_that) {
case UploadForPostEvent():
return uploadForPost(_that);case UploadForCampaignEvent():
return uploadForCampaign(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UploadForPostEvent value)?  uploadForPost,TResult? Function( UploadForCampaignEvent value)?  uploadForCampaign,}){
final _that = this;
switch (_that) {
case UploadForPostEvent() when uploadForPost != null:
return uploadForPost(_that);case UploadForCampaignEvent() when uploadForCampaign != null:
return uploadForCampaign(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( List<File> files,  String userId,  String postId)?  uploadForPost,TResult Function( List<File> files,  String userId,  String campaignId)?  uploadForCampaign,required TResult orElse(),}) {final _that = this;
switch (_that) {
case UploadForPostEvent() when uploadForPost != null:
return uploadForPost(_that.files,_that.userId,_that.postId);case UploadForCampaignEvent() when uploadForCampaign != null:
return uploadForCampaign(_that.files,_that.userId,_that.campaignId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( List<File> files,  String userId,  String postId)  uploadForPost,required TResult Function( List<File> files,  String userId,  String campaignId)  uploadForCampaign,}) {final _that = this;
switch (_that) {
case UploadForPostEvent():
return uploadForPost(_that.files,_that.userId,_that.postId);case UploadForCampaignEvent():
return uploadForCampaign(_that.files,_that.userId,_that.campaignId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( List<File> files,  String userId,  String postId)?  uploadForPost,TResult? Function( List<File> files,  String userId,  String campaignId)?  uploadForCampaign,}) {final _that = this;
switch (_that) {
case UploadForPostEvent() when uploadForPost != null:
return uploadForPost(_that.files,_that.userId,_that.postId);case UploadForCampaignEvent() when uploadForCampaign != null:
return uploadForCampaign(_that.files,_that.userId,_that.campaignId);case _:
  return null;

}
}

}

/// @nodoc


class UploadForPostEvent implements MediaUploadEvent {
  const UploadForPostEvent({required final  List<File> files, required this.userId, required this.postId}): _files = files;
  

 final  List<File> _files;
@override List<File> get files {
  if (_files is EqualUnmodifiableListView) return _files;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_files);
}

@override final  String userId;
 final  String postId;

/// Create a copy of MediaUploadEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UploadForPostEventCopyWith<UploadForPostEvent> get copyWith => _$UploadForPostEventCopyWithImpl<UploadForPostEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadForPostEvent&&const DeepCollectionEquality().equals(other._files, _files)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.postId, postId) || other.postId == postId));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_files),userId,postId);

@override
String toString() {
  return 'MediaUploadEvent.uploadForPost(files: $files, userId: $userId, postId: $postId)';
}


}

/// @nodoc
abstract mixin class $UploadForPostEventCopyWith<$Res> implements $MediaUploadEventCopyWith<$Res> {
  factory $UploadForPostEventCopyWith(UploadForPostEvent value, $Res Function(UploadForPostEvent) _then) = _$UploadForPostEventCopyWithImpl;
@override @useResult
$Res call({
 List<File> files, String userId, String postId
});




}
/// @nodoc
class _$UploadForPostEventCopyWithImpl<$Res>
    implements $UploadForPostEventCopyWith<$Res> {
  _$UploadForPostEventCopyWithImpl(this._self, this._then);

  final UploadForPostEvent _self;
  final $Res Function(UploadForPostEvent) _then;

/// Create a copy of MediaUploadEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? files = null,Object? userId = null,Object? postId = null,}) {
  return _then(UploadForPostEvent(
files: null == files ? _self._files : files // ignore: cast_nullable_to_non_nullable
as List<File>,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UploadForCampaignEvent implements MediaUploadEvent {
  const UploadForCampaignEvent({required final  List<File> files, required this.userId, required this.campaignId}): _files = files;
  

 final  List<File> _files;
@override List<File> get files {
  if (_files is EqualUnmodifiableListView) return _files;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_files);
}

@override final  String userId;
 final  String campaignId;

/// Create a copy of MediaUploadEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UploadForCampaignEventCopyWith<UploadForCampaignEvent> get copyWith => _$UploadForCampaignEventCopyWithImpl<UploadForCampaignEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadForCampaignEvent&&const DeepCollectionEquality().equals(other._files, _files)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_files),userId,campaignId);

@override
String toString() {
  return 'MediaUploadEvent.uploadForCampaign(files: $files, userId: $userId, campaignId: $campaignId)';
}


}

/// @nodoc
abstract mixin class $UploadForCampaignEventCopyWith<$Res> implements $MediaUploadEventCopyWith<$Res> {
  factory $UploadForCampaignEventCopyWith(UploadForCampaignEvent value, $Res Function(UploadForCampaignEvent) _then) = _$UploadForCampaignEventCopyWithImpl;
@override @useResult
$Res call({
 List<File> files, String userId, String campaignId
});




}
/// @nodoc
class _$UploadForCampaignEventCopyWithImpl<$Res>
    implements $UploadForCampaignEventCopyWith<$Res> {
  _$UploadForCampaignEventCopyWithImpl(this._self, this._then);

  final UploadForCampaignEvent _self;
  final $Res Function(UploadForCampaignEvent) _then;

/// Create a copy of MediaUploadEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? files = null,Object? userId = null,Object? campaignId = null,}) {
  return _then(UploadForCampaignEvent(
files: null == files ? _self._files : files // ignore: cast_nullable_to_non_nullable
as List<File>,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,campaignId: null == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
