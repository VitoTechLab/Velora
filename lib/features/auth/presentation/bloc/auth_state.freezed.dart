// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthState {
  AuthStatus get status => throw _privateConstructorUsedError;
  AuthLoadingType get loadingType => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;

<<<<<<< HEAD
 AuthStatusEntity get status; AuthLoadingType get loadingType; String? get message; String? get errorMessage; String? get userId;
/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthStateCopyWith<AuthState> get copyWith => _$AuthStateCopyWithImpl<AuthState>(this as AuthState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState&&(identical(other.status, status) || other.status == status)&&(identical(other.loadingType, loadingType) || other.loadingType == loadingType)&&(identical(other.message, message) || other.message == message)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,status,loadingType,message,errorMessage,userId);

@override
String toString() {
  return 'AuthState(status: $status, loadingType: $loadingType, message: $message, errorMessage: $errorMessage, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $AuthStateCopyWith<$Res>  {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) _then) = _$AuthStateCopyWithImpl;
@useResult
$Res call({
 AuthStatusEntity status, AuthLoadingType loadingType, String? message, String? errorMessage, String? userId
});




=======
  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {AuthStatus status,
      AuthLoadingType loadingType,
      String? message,
      String? errorMessage,
      String? userId});
>>>>>>> fd2118c7948154593cd39da330b75baffc54f46d
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

<<<<<<< HEAD
/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? loadingType = null,Object? message = freezed,Object? errorMessage = freezed,Object? userId = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AuthStatusEntity,loadingType: null == loadingType ? _self.loadingType : loadingType // ignore: cast_nullable_to_non_nullable
as AuthLoadingType,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
=======
  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? loadingType = null,
    Object? message = freezed,
    Object? errorMessage = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
      loadingType: null == loadingType
          ? _value.loadingType
          : loadingType // ignore: cast_nullable_to_non_nullable
              as AuthLoadingType,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
>>>>>>> fd2118c7948154593cd39da330b75baffc54f46d
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AuthStatus status,
      AuthLoadingType loadingType,
      String? message,
      String? errorMessage,
      String? userId});
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

<<<<<<< HEAD
/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns on AuthState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthState value)  $default,){
final _that = this;
switch (_that) {
case _AuthState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthState value)?  $default,){
final _that = this;
switch (_that) {
case _AuthState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AuthStatusEntity status,  AuthLoadingType loadingType,  String? message,  String? errorMessage,  String? userId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthState() when $default != null:
return $default(_that.status,_that.loadingType,_that.message,_that.errorMessage,_that.userId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AuthStatusEntity status,  AuthLoadingType loadingType,  String? message,  String? errorMessage,  String? userId)  $default,) {final _that = this;
switch (_that) {
case _AuthState():
return $default(_that.status,_that.loadingType,_that.message,_that.errorMessage,_that.userId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AuthStatusEntity status,  AuthLoadingType loadingType,  String? message,  String? errorMessage,  String? userId)?  $default,) {final _that = this;
switch (_that) {
case _AuthState() when $default != null:
return $default(_that.status,_that.loadingType,_that.message,_that.errorMessage,_that.userId);case _:
  return null;

}
}

=======
  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? loadingType = null,
    Object? message = freezed,
    Object? errorMessage = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$AuthStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
      loadingType: null == loadingType
          ? _value.loadingType
          : loadingType // ignore: cast_nullable_to_non_nullable
              as AuthLoadingType,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
>>>>>>> fd2118c7948154593cd39da330b75baffc54f46d
}

/// @nodoc

class _$AuthStateImpl extends _AuthState {
  const _$AuthStateImpl(
      {this.status = AuthStatus.unknown,
      this.loadingType = AuthLoadingType.none,
      this.message,
      this.errorMessage,
      this.userId})
      : super._();

<<<<<<< HEAD
class _AuthState extends AuthState {
  const _AuthState({this.status = AuthStatusEntity.unknown, this.loadingType = AuthLoadingType.none, this.message, this.errorMessage, this.userId}): super._();
  

@override@JsonKey() final  AuthStatusEntity status;
@override@JsonKey() final  AuthLoadingType loadingType;
@override final  String? message;
@override final  String? errorMessage;
@override final  String? userId;
=======
  @override
  @JsonKey()
  final AuthStatus status;
  @override
  @JsonKey()
  final AuthLoadingType loadingType;
  @override
  final String? message;
  @override
  final String? errorMessage;
  @override
  final String? userId;

  @override
  String toString() {
    return 'AuthState(status: $status, loadingType: $loadingType, message: $message, errorMessage: $errorMessage, userId: $userId)';
  }
>>>>>>> fd2118c7948154593cd39da330b75baffc54f46d

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.loadingType, loadingType) ||
                other.loadingType == loadingType) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, loadingType, message, errorMessage, userId);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState extends AuthState {
  const factory _AuthState(
      {final AuthStatus status,
      final AuthLoadingType loadingType,
      final String? message,
      final String? errorMessage,
      final String? userId}) = _$AuthStateImpl;
  const _AuthState._() : super._();

  @override
  AuthStatus get status;
  @override
  AuthLoadingType get loadingType;
  @override
  String? get message;
  @override
  String? get errorMessage;
  @override
  String? get userId;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
<<<<<<< HEAD


}

/// @nodoc
abstract mixin class _$AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(_AuthState value, $Res Function(_AuthState) _then) = __$AuthStateCopyWithImpl;
@override @useResult
$Res call({
 AuthStatusEntity status, AuthLoadingType loadingType, String? message, String? errorMessage, String? userId
});




}
/// @nodoc
class __$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(this._self, this._then);

  final _AuthState _self;
  final $Res Function(_AuthState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? loadingType = null,Object? message = freezed,Object? errorMessage = freezed,Object? userId = freezed,}) {
  return _then(_AuthState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AuthStatusEntity,loadingType: null == loadingType ? _self.loadingType : loadingType // ignore: cast_nullable_to_non_nullable
as AuthLoadingType,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
=======
>>>>>>> fd2118c7948154593cd39da330b75baffc54f46d
