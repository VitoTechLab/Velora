// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_content_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EventPayloadModel {

/// From message_event_payload table
@JsonKey(name: 'message_id') String get messageId;@JsonKey(name: 'title') String get title;@JsonKey(name: 'description') String? get description;@JsonKey(name: 'location_name') String? get locationName;@JsonKey(name: 'address') String? get address;@JsonKey(name: 'is_online') bool get isOnline;@JsonKey(name: 'meeting_url') String? get meetingUrl;@JsonKey(name: 'cover_url') String? get coverUrl;@UtcDateTimeConverter()@JsonKey(name: 'starts_at') DateTime get startsAt;@NullableUtcDateTimeConverter()@JsonKey(name: 'ends_at') DateTime? get endsAt;/// RSVP counts from v_event_with_rsvp view
@JsonKey(name: 'going_count') int get goingCount;@JsonKey(name: 'interested_count') int get interestedCount;@JsonKey(name: 'not_going_count') int get notGoingCount;/// Current user's RSVP status: 'going', 'interested', 'not_going'
@JsonKey(name: 'user_response') String? get userResponse;
/// Create a copy of EventPayloadModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventPayloadModelCopyWith<EventPayloadModel> get copyWith => _$EventPayloadModelCopyWithImpl<EventPayloadModel>(this as EventPayloadModel, _$identity);

  /// Serializes this EventPayloadModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventPayloadModel&&(identical(other.messageId, messageId) || other.messageId == messageId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.locationName, locationName) || other.locationName == locationName)&&(identical(other.address, address) || other.address == address)&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline)&&(identical(other.meetingUrl, meetingUrl) || other.meetingUrl == meetingUrl)&&(identical(other.coverUrl, coverUrl) || other.coverUrl == coverUrl)&&(identical(other.startsAt, startsAt) || other.startsAt == startsAt)&&(identical(other.endsAt, endsAt) || other.endsAt == endsAt)&&(identical(other.goingCount, goingCount) || other.goingCount == goingCount)&&(identical(other.interestedCount, interestedCount) || other.interestedCount == interestedCount)&&(identical(other.notGoingCount, notGoingCount) || other.notGoingCount == notGoingCount)&&(identical(other.userResponse, userResponse) || other.userResponse == userResponse));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,messageId,title,description,locationName,address,isOnline,meetingUrl,coverUrl,startsAt,endsAt,goingCount,interestedCount,notGoingCount,userResponse);

@override
String toString() {
  return 'EventPayloadModel(messageId: $messageId, title: $title, description: $description, locationName: $locationName, address: $address, isOnline: $isOnline, meetingUrl: $meetingUrl, coverUrl: $coverUrl, startsAt: $startsAt, endsAt: $endsAt, goingCount: $goingCount, interestedCount: $interestedCount, notGoingCount: $notGoingCount, userResponse: $userResponse)';
}


}

/// @nodoc
abstract mixin class $EventPayloadModelCopyWith<$Res>  {
  factory $EventPayloadModelCopyWith(EventPayloadModel value, $Res Function(EventPayloadModel) _then) = _$EventPayloadModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'message_id') String messageId,@JsonKey(name: 'title') String title,@JsonKey(name: 'description') String? description,@JsonKey(name: 'location_name') String? locationName,@JsonKey(name: 'address') String? address,@JsonKey(name: 'is_online') bool isOnline,@JsonKey(name: 'meeting_url') String? meetingUrl,@JsonKey(name: 'cover_url') String? coverUrl,@UtcDateTimeConverter()@JsonKey(name: 'starts_at') DateTime startsAt,@NullableUtcDateTimeConverter()@JsonKey(name: 'ends_at') DateTime? endsAt,@JsonKey(name: 'going_count') int goingCount,@JsonKey(name: 'interested_count') int interestedCount,@JsonKey(name: 'not_going_count') int notGoingCount,@JsonKey(name: 'user_response') String? userResponse
});




}
/// @nodoc
class _$EventPayloadModelCopyWithImpl<$Res>
    implements $EventPayloadModelCopyWith<$Res> {
  _$EventPayloadModelCopyWithImpl(this._self, this._then);

  final EventPayloadModel _self;
  final $Res Function(EventPayloadModel) _then;

/// Create a copy of EventPayloadModel
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


/// Adds pattern-matching-related methods to [EventPayloadModel].
extension EventPayloadModelPatterns on EventPayloadModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EventPayloadModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EventPayloadModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EventPayloadModel value)  $default,){
final _that = this;
switch (_that) {
case _EventPayloadModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EventPayloadModel value)?  $default,){
final _that = this;
switch (_that) {
case _EventPayloadModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'message_id')  String messageId, @JsonKey(name: 'title')  String title, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'location_name')  String? locationName, @JsonKey(name: 'address')  String? address, @JsonKey(name: 'is_online')  bool isOnline, @JsonKey(name: 'meeting_url')  String? meetingUrl, @JsonKey(name: 'cover_url')  String? coverUrl, @UtcDateTimeConverter()@JsonKey(name: 'starts_at')  DateTime startsAt, @NullableUtcDateTimeConverter()@JsonKey(name: 'ends_at')  DateTime? endsAt, @JsonKey(name: 'going_count')  int goingCount, @JsonKey(name: 'interested_count')  int interestedCount, @JsonKey(name: 'not_going_count')  int notGoingCount, @JsonKey(name: 'user_response')  String? userResponse)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EventPayloadModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'message_id')  String messageId, @JsonKey(name: 'title')  String title, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'location_name')  String? locationName, @JsonKey(name: 'address')  String? address, @JsonKey(name: 'is_online')  bool isOnline, @JsonKey(name: 'meeting_url')  String? meetingUrl, @JsonKey(name: 'cover_url')  String? coverUrl, @UtcDateTimeConverter()@JsonKey(name: 'starts_at')  DateTime startsAt, @NullableUtcDateTimeConverter()@JsonKey(name: 'ends_at')  DateTime? endsAt, @JsonKey(name: 'going_count')  int goingCount, @JsonKey(name: 'interested_count')  int interestedCount, @JsonKey(name: 'not_going_count')  int notGoingCount, @JsonKey(name: 'user_response')  String? userResponse)  $default,) {final _that = this;
switch (_that) {
case _EventPayloadModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'message_id')  String messageId, @JsonKey(name: 'title')  String title, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'location_name')  String? locationName, @JsonKey(name: 'address')  String? address, @JsonKey(name: 'is_online')  bool isOnline, @JsonKey(name: 'meeting_url')  String? meetingUrl, @JsonKey(name: 'cover_url')  String? coverUrl, @UtcDateTimeConverter()@JsonKey(name: 'starts_at')  DateTime startsAt, @NullableUtcDateTimeConverter()@JsonKey(name: 'ends_at')  DateTime? endsAt, @JsonKey(name: 'going_count')  int goingCount, @JsonKey(name: 'interested_count')  int interestedCount, @JsonKey(name: 'not_going_count')  int notGoingCount, @JsonKey(name: 'user_response')  String? userResponse)?  $default,) {final _that = this;
switch (_that) {
case _EventPayloadModel() when $default != null:
return $default(_that.messageId,_that.title,_that.description,_that.locationName,_that.address,_that.isOnline,_that.meetingUrl,_that.coverUrl,_that.startsAt,_that.endsAt,_that.goingCount,_that.interestedCount,_that.notGoingCount,_that.userResponse);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EventPayloadModel implements EventPayloadModel {
  const _EventPayloadModel({@JsonKey(name: 'message_id') required this.messageId, @JsonKey(name: 'title') required this.title, @JsonKey(name: 'description') this.description, @JsonKey(name: 'location_name') this.locationName, @JsonKey(name: 'address') this.address, @JsonKey(name: 'is_online') this.isOnline = false, @JsonKey(name: 'meeting_url') this.meetingUrl, @JsonKey(name: 'cover_url') this.coverUrl, @UtcDateTimeConverter()@JsonKey(name: 'starts_at') required this.startsAt, @NullableUtcDateTimeConverter()@JsonKey(name: 'ends_at') this.endsAt, @JsonKey(name: 'going_count') this.goingCount = 0, @JsonKey(name: 'interested_count') this.interestedCount = 0, @JsonKey(name: 'not_going_count') this.notGoingCount = 0, @JsonKey(name: 'user_response') this.userResponse});
  factory _EventPayloadModel.fromJson(Map<String, dynamic> json) => _$EventPayloadModelFromJson(json);

/// From message_event_payload table
@override@JsonKey(name: 'message_id') final  String messageId;
@override@JsonKey(name: 'title') final  String title;
@override@JsonKey(name: 'description') final  String? description;
@override@JsonKey(name: 'location_name') final  String? locationName;
@override@JsonKey(name: 'address') final  String? address;
@override@JsonKey(name: 'is_online') final  bool isOnline;
@override@JsonKey(name: 'meeting_url') final  String? meetingUrl;
@override@JsonKey(name: 'cover_url') final  String? coverUrl;
@override@UtcDateTimeConverter()@JsonKey(name: 'starts_at') final  DateTime startsAt;
@override@NullableUtcDateTimeConverter()@JsonKey(name: 'ends_at') final  DateTime? endsAt;
/// RSVP counts from v_event_with_rsvp view
@override@JsonKey(name: 'going_count') final  int goingCount;
@override@JsonKey(name: 'interested_count') final  int interestedCount;
@override@JsonKey(name: 'not_going_count') final  int notGoingCount;
/// Current user's RSVP status: 'going', 'interested', 'not_going'
@override@JsonKey(name: 'user_response') final  String? userResponse;

/// Create a copy of EventPayloadModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventPayloadModelCopyWith<_EventPayloadModel> get copyWith => __$EventPayloadModelCopyWithImpl<_EventPayloadModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EventPayloadModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventPayloadModel&&(identical(other.messageId, messageId) || other.messageId == messageId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.locationName, locationName) || other.locationName == locationName)&&(identical(other.address, address) || other.address == address)&&(identical(other.isOnline, isOnline) || other.isOnline == isOnline)&&(identical(other.meetingUrl, meetingUrl) || other.meetingUrl == meetingUrl)&&(identical(other.coverUrl, coverUrl) || other.coverUrl == coverUrl)&&(identical(other.startsAt, startsAt) || other.startsAt == startsAt)&&(identical(other.endsAt, endsAt) || other.endsAt == endsAt)&&(identical(other.goingCount, goingCount) || other.goingCount == goingCount)&&(identical(other.interestedCount, interestedCount) || other.interestedCount == interestedCount)&&(identical(other.notGoingCount, notGoingCount) || other.notGoingCount == notGoingCount)&&(identical(other.userResponse, userResponse) || other.userResponse == userResponse));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,messageId,title,description,locationName,address,isOnline,meetingUrl,coverUrl,startsAt,endsAt,goingCount,interestedCount,notGoingCount,userResponse);

@override
String toString() {
  return 'EventPayloadModel(messageId: $messageId, title: $title, description: $description, locationName: $locationName, address: $address, isOnline: $isOnline, meetingUrl: $meetingUrl, coverUrl: $coverUrl, startsAt: $startsAt, endsAt: $endsAt, goingCount: $goingCount, interestedCount: $interestedCount, notGoingCount: $notGoingCount, userResponse: $userResponse)';
}


}

/// @nodoc
abstract mixin class _$EventPayloadModelCopyWith<$Res> implements $EventPayloadModelCopyWith<$Res> {
  factory _$EventPayloadModelCopyWith(_EventPayloadModel value, $Res Function(_EventPayloadModel) _then) = __$EventPayloadModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'message_id') String messageId,@JsonKey(name: 'title') String title,@JsonKey(name: 'description') String? description,@JsonKey(name: 'location_name') String? locationName,@JsonKey(name: 'address') String? address,@JsonKey(name: 'is_online') bool isOnline,@JsonKey(name: 'meeting_url') String? meetingUrl,@JsonKey(name: 'cover_url') String? coverUrl,@UtcDateTimeConverter()@JsonKey(name: 'starts_at') DateTime startsAt,@NullableUtcDateTimeConverter()@JsonKey(name: 'ends_at') DateTime? endsAt,@JsonKey(name: 'going_count') int goingCount,@JsonKey(name: 'interested_count') int interestedCount,@JsonKey(name: 'not_going_count') int notGoingCount,@JsonKey(name: 'user_response') String? userResponse
});




}
/// @nodoc
class __$EventPayloadModelCopyWithImpl<$Res>
    implements _$EventPayloadModelCopyWith<$Res> {
  __$EventPayloadModelCopyWithImpl(this._self, this._then);

  final _EventPayloadModel _self;
  final $Res Function(_EventPayloadModel) _then;

/// Create a copy of EventPayloadModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? messageId = null,Object? title = null,Object? description = freezed,Object? locationName = freezed,Object? address = freezed,Object? isOnline = null,Object? meetingUrl = freezed,Object? coverUrl = freezed,Object? startsAt = null,Object? endsAt = freezed,Object? goingCount = null,Object? interestedCount = null,Object? notGoingCount = null,Object? userResponse = freezed,}) {
  return _then(_EventPayloadModel(
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
