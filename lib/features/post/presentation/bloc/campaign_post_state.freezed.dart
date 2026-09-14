// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaign_post_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CampaignPostState {

 CampaignEntity? get createdCampaign; bool get isSubmitting; String? get errorMessage; String? get message;
/// Create a copy of CampaignPostState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CampaignPostStateCopyWith<CampaignPostState> get copyWith => _$CampaignPostStateCopyWithImpl<CampaignPostState>(this as CampaignPostState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CampaignPostState&&(identical(other.createdCampaign, createdCampaign) || other.createdCampaign == createdCampaign)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,createdCampaign,isSubmitting,errorMessage,message);

@override
String toString() {
  return 'CampaignPostState(createdCampaign: $createdCampaign, isSubmitting: $isSubmitting, errorMessage: $errorMessage, message: $message)';
}


}

/// @nodoc
abstract mixin class $CampaignPostStateCopyWith<$Res>  {
  factory $CampaignPostStateCopyWith(CampaignPostState value, $Res Function(CampaignPostState) _then) = _$CampaignPostStateCopyWithImpl;
@useResult
$Res call({
 CampaignEntity? createdCampaign, bool isSubmitting, String? errorMessage, String? message
});


$CampaignEntityCopyWith<$Res>? get createdCampaign;

}
/// @nodoc
class _$CampaignPostStateCopyWithImpl<$Res>
    implements $CampaignPostStateCopyWith<$Res> {
  _$CampaignPostStateCopyWithImpl(this._self, this._then);

  final CampaignPostState _self;
  final $Res Function(CampaignPostState) _then;

/// Create a copy of CampaignPostState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdCampaign = freezed,Object? isSubmitting = null,Object? errorMessage = freezed,Object? message = freezed,}) {
  return _then(_self.copyWith(
createdCampaign: freezed == createdCampaign ? _self.createdCampaign : createdCampaign // ignore: cast_nullable_to_non_nullable
as CampaignEntity?,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of CampaignPostState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CampaignEntityCopyWith<$Res>? get createdCampaign {
    if (_self.createdCampaign == null) {
    return null;
  }

  return $CampaignEntityCopyWith<$Res>(_self.createdCampaign!, (value) {
    return _then(_self.copyWith(createdCampaign: value));
  });
}
}


/// Adds pattern-matching-related methods to [CampaignPostState].
extension CampaignPostStatePatterns on CampaignPostState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CampaignPostState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CampaignPostState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CampaignPostState value)  $default,){
final _that = this;
switch (_that) {
case _CampaignPostState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CampaignPostState value)?  $default,){
final _that = this;
switch (_that) {
case _CampaignPostState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CampaignEntity? createdCampaign,  bool isSubmitting,  String? errorMessage,  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CampaignPostState() when $default != null:
return $default(_that.createdCampaign,_that.isSubmitting,_that.errorMessage,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CampaignEntity? createdCampaign,  bool isSubmitting,  String? errorMessage,  String? message)  $default,) {final _that = this;
switch (_that) {
case _CampaignPostState():
return $default(_that.createdCampaign,_that.isSubmitting,_that.errorMessage,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CampaignEntity? createdCampaign,  bool isSubmitting,  String? errorMessage,  String? message)?  $default,) {final _that = this;
switch (_that) {
case _CampaignPostState() when $default != null:
return $default(_that.createdCampaign,_that.isSubmitting,_that.errorMessage,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _CampaignPostState implements CampaignPostState {
  const _CampaignPostState({this.createdCampaign, this.isSubmitting = false, this.errorMessage, this.message});
  

@override final  CampaignEntity? createdCampaign;
@override@JsonKey() final  bool isSubmitting;
@override final  String? errorMessage;
@override final  String? message;

/// Create a copy of CampaignPostState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CampaignPostStateCopyWith<_CampaignPostState> get copyWith => __$CampaignPostStateCopyWithImpl<_CampaignPostState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CampaignPostState&&(identical(other.createdCampaign, createdCampaign) || other.createdCampaign == createdCampaign)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,createdCampaign,isSubmitting,errorMessage,message);

@override
String toString() {
  return 'CampaignPostState(createdCampaign: $createdCampaign, isSubmitting: $isSubmitting, errorMessage: $errorMessage, message: $message)';
}


}

/// @nodoc
abstract mixin class _$CampaignPostStateCopyWith<$Res> implements $CampaignPostStateCopyWith<$Res> {
  factory _$CampaignPostStateCopyWith(_CampaignPostState value, $Res Function(_CampaignPostState) _then) = __$CampaignPostStateCopyWithImpl;
@override @useResult
$Res call({
 CampaignEntity? createdCampaign, bool isSubmitting, String? errorMessage, String? message
});


@override $CampaignEntityCopyWith<$Res>? get createdCampaign;

}
/// @nodoc
class __$CampaignPostStateCopyWithImpl<$Res>
    implements _$CampaignPostStateCopyWith<$Res> {
  __$CampaignPostStateCopyWithImpl(this._self, this._then);

  final _CampaignPostState _self;
  final $Res Function(_CampaignPostState) _then;

/// Create a copy of CampaignPostState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdCampaign = freezed,Object? isSubmitting = null,Object? errorMessage = freezed,Object? message = freezed,}) {
  return _then(_CampaignPostState(
createdCampaign: freezed == createdCampaign ? _self.createdCampaign : createdCampaign // ignore: cast_nullable_to_non_nullable
as CampaignEntity?,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of CampaignPostState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CampaignEntityCopyWith<$Res>? get createdCampaign {
    if (_self.createdCampaign == null) {
    return null;
  }

  return $CampaignEntityCopyWith<$Res>(_self.createdCampaign!, (value) {
    return _then(_self.copyWith(createdCampaign: value));
  });
}
}

// dart format on
