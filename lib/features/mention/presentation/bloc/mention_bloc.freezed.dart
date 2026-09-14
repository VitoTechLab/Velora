// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mention_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MentionEvent {

 bool get isRefresh;
/// Create a copy of MentionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MentionEventCopyWith<MentionEvent> get copyWith => _$MentionEventCopyWithImpl<MentionEvent>(this as MentionEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MentionEvent&&(identical(other.isRefresh, isRefresh) || other.isRefresh == isRefresh));
}


@override
int get hashCode => Object.hash(runtimeType,isRefresh);

@override
String toString() {
  return 'MentionEvent(isRefresh: $isRefresh)';
}


}

/// @nodoc
abstract mixin class $MentionEventCopyWith<$Res>  {
  factory $MentionEventCopyWith(MentionEvent value, $Res Function(MentionEvent) _then) = _$MentionEventCopyWithImpl;
@useResult
$Res call({
 bool isRefresh
});




}
/// @nodoc
class _$MentionEventCopyWithImpl<$Res>
    implements $MentionEventCopyWith<$Res> {
  _$MentionEventCopyWithImpl(this._self, this._then);

  final MentionEvent _self;
  final $Res Function(MentionEvent) _then;

/// Create a copy of MentionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isRefresh = null,}) {
  return _then(_self.copyWith(
isRefresh: null == isRefresh ? _self.isRefresh : isRefresh // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [MentionEvent].
extension MentionEventPatterns on MentionEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FetchMyMentions value)?  fetchMyMentions,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FetchMyMentions() when fetchMyMentions != null:
return fetchMyMentions(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FetchMyMentions value)  fetchMyMentions,}){
final _that = this;
switch (_that) {
case _FetchMyMentions():
return fetchMyMentions(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FetchMyMentions value)?  fetchMyMentions,}){
final _that = this;
switch (_that) {
case _FetchMyMentions() when fetchMyMentions != null:
return fetchMyMentions(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool isRefresh)?  fetchMyMentions,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FetchMyMentions() when fetchMyMentions != null:
return fetchMyMentions(_that.isRefresh);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool isRefresh)  fetchMyMentions,}) {final _that = this;
switch (_that) {
case _FetchMyMentions():
return fetchMyMentions(_that.isRefresh);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool isRefresh)?  fetchMyMentions,}) {final _that = this;
switch (_that) {
case _FetchMyMentions() when fetchMyMentions != null:
return fetchMyMentions(_that.isRefresh);case _:
  return null;

}
}

}

/// @nodoc


class _FetchMyMentions implements MentionEvent {
  const _FetchMyMentions({this.isRefresh = false});
  

@override@JsonKey() final  bool isRefresh;

/// Create a copy of MentionEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FetchMyMentionsCopyWith<_FetchMyMentions> get copyWith => __$FetchMyMentionsCopyWithImpl<_FetchMyMentions>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchMyMentions&&(identical(other.isRefresh, isRefresh) || other.isRefresh == isRefresh));
}


@override
int get hashCode => Object.hash(runtimeType,isRefresh);

@override
String toString() {
  return 'MentionEvent.fetchMyMentions(isRefresh: $isRefresh)';
}


}

/// @nodoc
abstract mixin class _$FetchMyMentionsCopyWith<$Res> implements $MentionEventCopyWith<$Res> {
  factory _$FetchMyMentionsCopyWith(_FetchMyMentions value, $Res Function(_FetchMyMentions) _then) = __$FetchMyMentionsCopyWithImpl;
@override @useResult
$Res call({
 bool isRefresh
});




}
/// @nodoc
class __$FetchMyMentionsCopyWithImpl<$Res>
    implements _$FetchMyMentionsCopyWith<$Res> {
  __$FetchMyMentionsCopyWithImpl(this._self, this._then);

  final _FetchMyMentions _self;
  final $Res Function(_FetchMyMentions) _then;

/// Create a copy of MentionEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isRefresh = null,}) {
  return _then(_FetchMyMentions(
isRefresh: null == isRefresh ? _self.isRefresh : isRefresh // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$MentionState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MentionState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MentionState()';
}


}

/// @nodoc
class $MentionStateCopyWith<$Res>  {
$MentionStateCopyWith(MentionState _, $Res Function(MentionState) __);
}


/// Adds pattern-matching-related methods to [MentionState].
extension MentionStatePatterns on MentionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Loaded value)?  loaded,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Loaded value)  loaded,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Loaded():
return loaded(_that);case _Error():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Loaded value)?  loaded,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<MentionEntity> mentions,  bool hasReachedMax)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.mentions,_that.hasReachedMax);case _Error() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<MentionEntity> mentions,  bool hasReachedMax)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Loaded():
return loaded(_that.mentions,_that.hasReachedMax);case _Error():
return error(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<MentionEntity> mentions,  bool hasReachedMax)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.mentions,_that.hasReachedMax);case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements MentionState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MentionState.initial()';
}


}




/// @nodoc


class _Loading implements MentionState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MentionState.loading()';
}


}




/// @nodoc


class _Loaded implements MentionState {
  const _Loaded({required final  List<MentionEntity> mentions, this.hasReachedMax = false}): _mentions = mentions;
  

 final  List<MentionEntity> _mentions;
 List<MentionEntity> get mentions {
  if (_mentions is EqualUnmodifiableListView) return _mentions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mentions);
}

@JsonKey() final  bool hasReachedMax;

/// Create a copy of MentionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&const DeepCollectionEquality().equals(other._mentions, _mentions)&&(identical(other.hasReachedMax, hasReachedMax) || other.hasReachedMax == hasReachedMax));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_mentions),hasReachedMax);

@override
String toString() {
  return 'MentionState.loaded(mentions: $mentions, hasReachedMax: $hasReachedMax)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $MentionStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 List<MentionEntity> mentions, bool hasReachedMax
});




}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of MentionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? mentions = null,Object? hasReachedMax = null,}) {
  return _then(_Loaded(
mentions: null == mentions ? _self._mentions : mentions // ignore: cast_nullable_to_non_nullable
as List<MentionEntity>,hasReachedMax: null == hasReachedMax ? _self.hasReachedMax : hasReachedMax // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _Error implements MentionState {
  const _Error(this.message);
  

 final  String message;

/// Create a copy of MentionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'MentionState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $MentionStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of MentionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
