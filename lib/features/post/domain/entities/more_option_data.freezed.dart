// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'more_option_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MoreOptionData {

 bool get commentsEnabled; bool get hideLikeCount; bool get hideShareCount; bool get hideCommentCount; bool get hideLikesList;
/// Create a copy of MoreOptionData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MoreOptionDataCopyWith<MoreOptionData> get copyWith => _$MoreOptionDataCopyWithImpl<MoreOptionData>(this as MoreOptionData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MoreOptionData&&(identical(other.commentsEnabled, commentsEnabled) || other.commentsEnabled == commentsEnabled)&&(identical(other.hideLikeCount, hideLikeCount) || other.hideLikeCount == hideLikeCount)&&(identical(other.hideShareCount, hideShareCount) || other.hideShareCount == hideShareCount)&&(identical(other.hideCommentCount, hideCommentCount) || other.hideCommentCount == hideCommentCount)&&(identical(other.hideLikesList, hideLikesList) || other.hideLikesList == hideLikesList));
}


@override
int get hashCode => Object.hash(runtimeType,commentsEnabled,hideLikeCount,hideShareCount,hideCommentCount,hideLikesList);

@override
String toString() {
  return 'MoreOptionData(commentsEnabled: $commentsEnabled, hideLikeCount: $hideLikeCount, hideShareCount: $hideShareCount, hideCommentCount: $hideCommentCount, hideLikesList: $hideLikesList)';
}


}

/// @nodoc
abstract mixin class $MoreOptionDataCopyWith<$Res>  {
  factory $MoreOptionDataCopyWith(MoreOptionData value, $Res Function(MoreOptionData) _then) = _$MoreOptionDataCopyWithImpl;
@useResult
$Res call({
 bool commentsEnabled, bool hideLikeCount, bool hideShareCount, bool hideCommentCount, bool hideLikesList
});




}
/// @nodoc
class _$MoreOptionDataCopyWithImpl<$Res>
    implements $MoreOptionDataCopyWith<$Res> {
  _$MoreOptionDataCopyWithImpl(this._self, this._then);

  final MoreOptionData _self;
  final $Res Function(MoreOptionData) _then;

/// Create a copy of MoreOptionData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? commentsEnabled = null,Object? hideLikeCount = null,Object? hideShareCount = null,Object? hideCommentCount = null,Object? hideLikesList = null,}) {
  return _then(_self.copyWith(
commentsEnabled: null == commentsEnabled ? _self.commentsEnabled : commentsEnabled // ignore: cast_nullable_to_non_nullable
as bool,hideLikeCount: null == hideLikeCount ? _self.hideLikeCount : hideLikeCount // ignore: cast_nullable_to_non_nullable
as bool,hideShareCount: null == hideShareCount ? _self.hideShareCount : hideShareCount // ignore: cast_nullable_to_non_nullable
as bool,hideCommentCount: null == hideCommentCount ? _self.hideCommentCount : hideCommentCount // ignore: cast_nullable_to_non_nullable
as bool,hideLikesList: null == hideLikesList ? _self.hideLikesList : hideLikesList // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [MoreOptionData].
extension MoreOptionDataPatterns on MoreOptionData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MoreOptionData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MoreOptionData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MoreOptionData value)  $default,){
final _that = this;
switch (_that) {
case _MoreOptionData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MoreOptionData value)?  $default,){
final _that = this;
switch (_that) {
case _MoreOptionData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool commentsEnabled,  bool hideLikeCount,  bool hideShareCount,  bool hideCommentCount,  bool hideLikesList)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MoreOptionData() when $default != null:
return $default(_that.commentsEnabled,_that.hideLikeCount,_that.hideShareCount,_that.hideCommentCount,_that.hideLikesList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool commentsEnabled,  bool hideLikeCount,  bool hideShareCount,  bool hideCommentCount,  bool hideLikesList)  $default,) {final _that = this;
switch (_that) {
case _MoreOptionData():
return $default(_that.commentsEnabled,_that.hideLikeCount,_that.hideShareCount,_that.hideCommentCount,_that.hideLikesList);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool commentsEnabled,  bool hideLikeCount,  bool hideShareCount,  bool hideCommentCount,  bool hideLikesList)?  $default,) {final _that = this;
switch (_that) {
case _MoreOptionData() when $default != null:
return $default(_that.commentsEnabled,_that.hideLikeCount,_that.hideShareCount,_that.hideCommentCount,_that.hideLikesList);case _:
  return null;

}
}

}

/// @nodoc


class _MoreOptionData implements MoreOptionData {
  const _MoreOptionData({this.commentsEnabled = true, this.hideLikeCount = false, this.hideShareCount = false, this.hideCommentCount = false, this.hideLikesList = false});
  

@override@JsonKey() final  bool commentsEnabled;
@override@JsonKey() final  bool hideLikeCount;
@override@JsonKey() final  bool hideShareCount;
@override@JsonKey() final  bool hideCommentCount;
@override@JsonKey() final  bool hideLikesList;

/// Create a copy of MoreOptionData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MoreOptionDataCopyWith<_MoreOptionData> get copyWith => __$MoreOptionDataCopyWithImpl<_MoreOptionData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MoreOptionData&&(identical(other.commentsEnabled, commentsEnabled) || other.commentsEnabled == commentsEnabled)&&(identical(other.hideLikeCount, hideLikeCount) || other.hideLikeCount == hideLikeCount)&&(identical(other.hideShareCount, hideShareCount) || other.hideShareCount == hideShareCount)&&(identical(other.hideCommentCount, hideCommentCount) || other.hideCommentCount == hideCommentCount)&&(identical(other.hideLikesList, hideLikesList) || other.hideLikesList == hideLikesList));
}


@override
int get hashCode => Object.hash(runtimeType,commentsEnabled,hideLikeCount,hideShareCount,hideCommentCount,hideLikesList);

@override
String toString() {
  return 'MoreOptionData(commentsEnabled: $commentsEnabled, hideLikeCount: $hideLikeCount, hideShareCount: $hideShareCount, hideCommentCount: $hideCommentCount, hideLikesList: $hideLikesList)';
}


}

/// @nodoc
abstract mixin class _$MoreOptionDataCopyWith<$Res> implements $MoreOptionDataCopyWith<$Res> {
  factory _$MoreOptionDataCopyWith(_MoreOptionData value, $Res Function(_MoreOptionData) _then) = __$MoreOptionDataCopyWithImpl;
@override @useResult
$Res call({
 bool commentsEnabled, bool hideLikeCount, bool hideShareCount, bool hideCommentCount, bool hideLikesList
});




}
/// @nodoc
class __$MoreOptionDataCopyWithImpl<$Res>
    implements _$MoreOptionDataCopyWith<$Res> {
  __$MoreOptionDataCopyWithImpl(this._self, this._then);

  final _MoreOptionData _self;
  final $Res Function(_MoreOptionData) _then;

/// Create a copy of MoreOptionData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? commentsEnabled = null,Object? hideLikeCount = null,Object? hideShareCount = null,Object? hideCommentCount = null,Object? hideLikesList = null,}) {
  return _then(_MoreOptionData(
commentsEnabled: null == commentsEnabled ? _self.commentsEnabled : commentsEnabled // ignore: cast_nullable_to_non_nullable
as bool,hideLikeCount: null == hideLikeCount ? _self.hideLikeCount : hideLikeCount // ignore: cast_nullable_to_non_nullable
as bool,hideShareCount: null == hideShareCount ? _self.hideShareCount : hideShareCount // ignore: cast_nullable_to_non_nullable
as bool,hideCommentCount: null == hideCommentCount ? _self.hideCommentCount : hideCommentCount // ignore: cast_nullable_to_non_nullable
as bool,hideLikesList: null == hideLikesList ? _self.hideLikesList : hideLikesList // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
