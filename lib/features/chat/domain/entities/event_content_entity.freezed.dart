// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_content_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EventPayloadEntity {

 String get messageId; String get title; String? get description; String? get locationName; String? get address; bool get isOnline; String? get meetingUrl; String? get coverUrl; DateTime get startsAt; DateTime? get endsAt;// RSVP counts from v_event_with_rsvp
 int get goingCount; int get interestedCount; int get notGoingCount;// Current user RSVP response: 'going', 'interested', 'not_going'
 String? get userResponse;
/// Create a copy of EventPayloadEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventPayloadEntityCopyWith<EventPayloadEntity> get copyWith => _$EventPayloadEntityCopyWithImpl<EventPayloadEntity>(this as EventPayloadEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventPayloadEntity&&(identical(other.messageId, messageId) || other.messageId == messageId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.locationName, locationName) || other.locationName == locationName)&&(identical(other.address, address) || other.address == address)&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline)&&(identical(other.meetingUrl, meetingUrl) || other.meetingUrl == meetingUrl)&&(identical(other.coverUrl, coverUrl) || other.coverUrl == coverUrl)&&(identical(other.startsAt, startsAt) || other.startsAt == startsAt)&&(identical(other.endsAt, endsAt) || other.endsAt == endsAt)&&(identical(other.goingCount, goingCount) || other.goingCount == goingCount)&&(identical(other.interestedCount, interestedCount) || other.interestedCount == interestedCount)&&(identical(other.notGoingCount, notGoingCount) || other.notGoingCount == notGoingCount)&&(identical(other.userResponse, userResponse) || other.userResponse == userResponse));
}


@override
int get hashCode => Object.hash(runtimeType,messageId,title,description,locationName,address,isOnline,meetingUrl,coverUrl,startsAt,endsAt,goingCount,interestedCount,notGoingCount,userResponse);

@override
String toString() {
  return 'EventPayloadEntity(messageId: $messageId, title: $title, description: $description, locationName: $locationName, address: $address, isOnline: $isOnline, meetingUrl: $meetingUrl, coverUrl: $coverUrl, startsAt: $startsAt, endsAt: $endsAt, goingCount: $goingCount, interestedCount: $interestedCount, notGoingCount: $notGoingCount, userResponse: $userResponse)';
}


}

/// @nodoc
abstract mixin class $EventPayloadEntityCopyWith<$Res>  {
  factory $EventPayloadEntityCopyWith(EventPayloadEntity value, $Res Function(EventPayloadEntity) _then) = _$EventPayloadEntityCopyWithImpl;
@useResult
$Res call({
 String messageId, String title, String? description, String? locationName, String? address, bool isOnline, String? meetingUrl, String? coverUrl, DateTime startsAt, DateTime? endsAt, int goingCount, int interestedCount, int notGoingCount, String? userResponse
});




}
/// @nodoc
class _$EventPayloadEntityCopyWithImpl<$Res>
    implements $EventPayloadEntityCopyWith<$Res> {
  _$EventPayloadEntityCopyWithImpl(this._self, this._then);

  final EventPayloadEntity _self;
  final $Res Function(EventPayloadEntity) _then;

/// Create a copy of EventPayloadEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? messageId = null,Object? title = null,Object? description = freezed,Object? locationName = freezed,Object? address = freezed,Object? isOnline = null,Object? meetingUrl = freezed,Object? coverUrl = freezed,Object? startsAt = null,Object? endsAt = freezed,Object? goingCount = null,Object? interestedCount = null,Object? notGoingCount = null,Object? userResponse = freezed,}) {
  return _then(_self.copyWith(
messageId: null == messageId ? _self.messageId : messageId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,locationName: freezed == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,isOnline: null == isOnline ? _self.isOnline : isOnline // ignore: cast_nullable_to_non_nullable
as bool,meetingUrl: freezed == meetingUrl ? _self.meetingUrl : meetingUrl // ignore: cast_nullable_to_non_nullable
as String?,coverUrl: freezed == coverUrl ? _self.coverUrl : coverUrl // ignore: cast_nullable_to_non_nullable
as String?,startsAt: null == startsAt ? _self.startsAt : startsAt // ignore: cast_nullable_to_non_nullable
as DateTime,endsAt: freezed == endsAt ? _self.endsAt : endsAt // ignore: cast_nullable_to_non_nullable
as DateTime?,goingCount: null == goingCount ? _self.goingCount : goingCount // ignore: cast_nullable_to_non_nullable
as int,interestedCount: null == interestedCount ? _self.interestedCount : interestedCount // ignore: cast_nullable_to_non_nullable
as int,notGoingCount: null == notGoingCount ? _self.notGoingCount : notGoingCount // ignore: cast_nullable_to_non_nullable
as int,userResponse: freezed == userResponse ? _self.userResponse : userResponse // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [EventPayloadEntity].
extension EventPayloadEntityPatterns on EventPayloadEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EventPayloadEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EventPayloadEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EventPayloadEntity value)  $default,){
final _that = this;
switch (_that) {
case _EventPayloadEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EventPayloadEntity value)?  $default,){
final _that = this;
switch (_that) {
case _EventPayloadEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String messageId,  String title,  String? description,  String? locationName,  String? address,  bool isOnline,  String? meetingUrl,  String? coverUrl,  DateTime startsAt,  DateTime? endsAt,  int goingCount,  int interestedCount,  int notGoingCount,  String? userResponse)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EventPayloadEntity() when $default != null:
return $default(_that.messageId,_that.title,_that.description,_that.locationName,_that.address,_that.isOnline,_that.meetingUrl,_that.coverUrl,_that.startsAt,_that.endsAt,_that.goingCount,_that.interestedCount,_that.notGoingCount,_that.userResponse);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String messageId,  String title,  String? description,  String? locationName,  String? address,  bool isOnline,  String? meetingUrl,  String? coverUrl,  DateTime startsAt,  DateTime? endsAt,  int goingCount,  int interestedCount,  int notGoingCount,  String? userResponse)  $default,) {final _that = this;
switch (_that) {
case _EventPayloadEntity():
return $default(_that.messageId,_that.title,_that.description,_that.locationName,_that.address,_that.isOnline,_that.meetingUrl,_that.coverUrl,_that.startsAt,_that.endsAt,_that.goingCount,_that.interestedCount,_that.notGoingCount,_that.userResponse);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String messageId,  String title,  String? description,  String? locationName,  String? address,  bool isOnline,  String? meetingUrl,  String? coverUrl,  DateTime startsAt,  DateTime? endsAt,  int goingCount,  int interestedCount,  int notGoingCount,  String? userResponse)?  $default,) {final _that = this;
switch (_that) {
case _EventPayloadEntity() when $default != null:
return $default(_that.messageId,_that.title,_that.description,_that.locationName,_that.address,_that.isOnline,_that.meetingUrl,_that.coverUrl,_that.startsAt,_that.endsAt,_that.goingCount,_that.interestedCount,_that.notGoingCount,_that.userResponse);case _:
  return null;

}
}

}

/// @nodoc


class _EventPayloadEntity implements EventPayloadEntity {
  const _EventPayloadEntity({required this.messageId, required this.title, this.description, this.locationName, this.address, this.isOnline = false, this.meetingUrl, this.coverUrl, required this.startsAt, this.endsAt, this.goingCount = 0, this.interestedCount = 0, this.notGoingCount = 0, this.userResponse});
  

@override final  String messageId;
@override final  String title;
@override final  String? description;
@override final  String? locationName;
@override final  String? address;
@override@JsonKey() final  bool isOnline;
@override final  String? meetingUrl;
@override final  String? coverUrl;
@override final  DateTime startsAt;
@override final  DateTime? endsAt;
// RSVP counts from v_event_with_rsvp
@override@JsonKey() final  int goingCount;
@override@JsonKey() final  int interestedCount;
@override@JsonKey() final  int notGoingCount;
// Current user RSVP response: 'going', 'interested', 'not_going'
@override final  String? userResponse;

/// Create a copy of EventPayloadEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventPayloadEntityCopyWith<_EventPayloadEntity> get copyWith => __$EventPayloadEntityCopyWithImpl<_EventPayloadEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventPayloadEntity&&(identical(other.messageId, messageId) || other.messageId == messageId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.locationName, locationName) || other.locationName == locationName)&&(identical(other.address, address) || other.address == address)&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline)&&(identical(other.meetingUrl, meetingUrl) || other.meetingUrl == meetingUrl)&&(identical(other.coverUrl, coverUrl) || other.coverUrl == coverUrl)&&(identical(other.startsAt, startsAt) || other.startsAt == startsAt)&&(identical(other.endsAt, endsAt) || other.endsAt == endsAt)&&(identical(other.goingCount, goingCount) || other.goingCount == goingCount)&&(identical(other.interestedCount, interestedCount) || other.interestedCount == interestedCount)&&(identical(other.notGoingCount, notGoingCount) || other.notGoingCount == notGoingCount)&&(identical(other.userResponse, userResponse) || other.userResponse == userResponse));
}


@override
int get hashCode => Object.hash(runtimeType,messageId,title,description,locationName,address,isOnline,meetingUrl,coverUrl,startsAt,endsAt,goingCount,interestedCount,notGoingCount,userResponse);

@override
String toString() {
  return 'EventPayloadEntity(messageId: $messageId, title: $title, description: $description, locationName: $locationName, address: $address, isOnline: $isOnline, meetingUrl: $meetingUrl, coverUrl: $coverUrl, startsAt: $startsAt, endsAt: $endsAt, goingCount: $goingCount, interestedCount: $interestedCount, notGoingCount: $notGoingCount, userResponse: $userResponse)';
}


}

/// @nodoc
abstract mixin class _$EventPayloadEntityCopyWith<$Res> implements $EventPayloadEntityCopyWith<$Res> {
  factory _$EventPayloadEntityCopyWith(_EventPayloadEntity value, $Res Function(_EventPayloadEntity) _then) = __$EventPayloadEntityCopyWithImpl;
@override @useResult
$Res call({
 String messageId, String title, String? description, String? locationName, String? address, bool isOnline, String? meetingUrl, String? coverUrl, DateTime startsAt, DateTime? endsAt, int goingCount, int interestedCount, int notGoingCount, String? userResponse
});




}
/// @nodoc
class __$EventPayloadEntityCopyWithImpl<$Res>
    implements _$EventPayloadEntityCopyWith<$Res> {
  __$EventPayloadEntityCopyWithImpl(this._self, this._then);

  final _EventPayloadEntity _self;
  final $Res Function(_EventPayloadEntity) _then;

/// Create a copy of EventPayloadEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? messageId = null,Object? title = null,Object? description = freezed,Object? locationName = freezed,Object? address = freezed,Object? isOnline = null,Object? meetingUrl = freezed,Object? coverUrl = freezed,Object? startsAt = null,Object? endsAt = freezed,Object? goingCount = null,Object? interestedCount = null,Object? notGoingCount = null,Object? userResponse = freezed,}) {
  return _then(_EventPayloadEntity(
messageId: null == messageId ? _self.messageId : messageId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,locationName: freezed == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,isOnline: null == isOnline ? _self.isOnline : isOnline // ignore: cast_nullable_to_non_nullable
as bool,meetingUrl: freezed == meetingUrl ? _self.meetingUrl : meetingUrl // ignore: cast_nullable_to_non_nullable
as String?,coverUrl: freezed == coverUrl ? _self.coverUrl : coverUrl // ignore: cast_nullable_to_non_nullable
as String?,startsAt: null == startsAt ? _self.startsAt : startsAt // ignore: cast_nullable_to_non_nullable
as DateTime,endsAt: freezed == endsAt ? _self.endsAt : endsAt // ignore: cast_nullable_to_non_nullable
as DateTime?,goingCount: null == goingCount ? _self.goingCount : goingCount // ignore: cast_nullable_to_non_nullable
as int,interestedCount: null == interestedCount ? _self.interestedCount : interestedCount // ignore: cast_nullable_to_non_nullable
as int,notGoingCount: null == notGoingCount ? _self.notGoingCount : notGoingCount // ignore: cast_nullable_to_non_nullable
as int,userResponse: freezed == userResponse ? _self.userResponse : userResponse // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
