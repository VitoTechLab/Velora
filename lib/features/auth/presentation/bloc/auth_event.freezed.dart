// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signUpRequested,
    required TResult Function(String email, String password) signInRequested,
    required TResult Function(String email) resetPasswordRequested,
    required TResult Function() signOutRequested,
    required TResult Function() signInWithGoogleRequested,
    required TResult Function() clearMessagesRequested,
    required TResult Function(AuthSnapshot snapshot)
        authSupabaseSnapshotChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signUpRequested,
    TResult? Function(String email, String password)? signInRequested,
    TResult? Function(String email)? resetPasswordRequested,
    TResult? Function()? signOutRequested,
    TResult? Function()? signInWithGoogleRequested,
    TResult? Function()? clearMessagesRequested,
    TResult? Function(AuthSnapshot snapshot)? authSupabaseSnapshotChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signUpRequested,
    TResult Function(String email, String password)? signInRequested,
    TResult Function(String email)? resetPasswordRequested,
    TResult Function()? signOutRequested,
    TResult Function()? signInWithGoogleRequested,
    TResult Function()? clearMessagesRequested,
    TResult Function(AuthSnapshot snapshot)? authSupabaseSnapshotChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthSignUpRequested value) signUpRequested,
    required TResult Function(AuthSignInRequested value) signInRequested,
    required TResult Function(AuthResetPasswordRequested value)
        resetPasswordRequested,
    required TResult Function(AuthSignOutRequested value) signOutRequested,
    required TResult Function(AuthSignInWithGoogleRequested value)
        signInWithGoogleRequested,
    required TResult Function(AuthClearMessagesRequested value)
        clearMessagesRequested,
    required TResult Function(AuthSupabaseSnapshotChanged value)
        authSupabaseSnapshotChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthSignUpRequested value)? signUpRequested,
    TResult? Function(AuthSignInRequested value)? signInRequested,
    TResult? Function(AuthResetPasswordRequested value)? resetPasswordRequested,
    TResult? Function(AuthSignOutRequested value)? signOutRequested,
    TResult? Function(AuthSignInWithGoogleRequested value)?
        signInWithGoogleRequested,
    TResult? Function(AuthClearMessagesRequested value)? clearMessagesRequested,
    TResult? Function(AuthSupabaseSnapshotChanged value)?
        authSupabaseSnapshotChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthSignUpRequested value)? signUpRequested,
    TResult Function(AuthSignInRequested value)? signInRequested,
    TResult Function(AuthResetPasswordRequested value)? resetPasswordRequested,
    TResult Function(AuthSignOutRequested value)? signOutRequested,
    TResult Function(AuthSignInWithGoogleRequested value)?
        signInWithGoogleRequested,
    TResult Function(AuthClearMessagesRequested value)? clearMessagesRequested,
    TResult Function(AuthSupabaseSnapshotChanged value)?
        authSupabaseSnapshotChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SignUpEvent value)?  signUp,TResult Function( SignInEvent value)?  signIn,TResult Function( ResetPasswordEvent value)?  resetPassword,TResult Function( SignOutEvent value)?  signOut,TResult Function( SignInWithGoogleEvent value)?  signInWithGoogle,TResult Function( ClearMessagesEvent value)?  clearMessages,TResult Function( AuthSnapshotChangedEvent value)?  authSnapshotChanged,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SignUpEvent() when signUp != null:
return signUp(_that);case SignInEvent() when signIn != null:
return signIn(_that);case ResetPasswordEvent() when resetPassword != null:
return resetPassword(_that);case SignOutEvent() when signOut != null:
return signOut(_that);case SignInWithGoogleEvent() when signInWithGoogle != null:
return signInWithGoogle(_that);case ClearMessagesEvent() when clearMessages != null:
return clearMessages(_that);case AuthSnapshotChangedEvent() when authSnapshotChanged != null:
return authSnapshotChanged(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SignUpEvent value)  signUp,required TResult Function( SignInEvent value)  signIn,required TResult Function( ResetPasswordEvent value)  resetPassword,required TResult Function( SignOutEvent value)  signOut,required TResult Function( SignInWithGoogleEvent value)  signInWithGoogle,required TResult Function( ClearMessagesEvent value)  clearMessages,required TResult Function( AuthSnapshotChangedEvent value)  authSnapshotChanged,}){
final _that = this;
switch (_that) {
case SignUpEvent():
return signUp(_that);case SignInEvent():
return signIn(_that);case ResetPasswordEvent():
return resetPassword(_that);case SignOutEvent():
return signOut(_that);case SignInWithGoogleEvent():
return signInWithGoogle(_that);case ClearMessagesEvent():
return clearMessages(_that);case AuthSnapshotChangedEvent():
return authSnapshotChanged(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SignUpEvent value)?  signUp,TResult? Function( SignInEvent value)?  signIn,TResult? Function( ResetPasswordEvent value)?  resetPassword,TResult? Function( SignOutEvent value)?  signOut,TResult? Function( SignInWithGoogleEvent value)?  signInWithGoogle,TResult? Function( ClearMessagesEvent value)?  clearMessages,TResult? Function( AuthSnapshotChangedEvent value)?  authSnapshotChanged,}){
final _that = this;
switch (_that) {
case SignUpEvent() when signUp != null:
return signUp(_that);case SignInEvent() when signIn != null:
return signIn(_that);case ResetPasswordEvent() when resetPassword != null:
return resetPassword(_that);case SignOutEvent() when signOut != null:
return signOut(_that);case SignInWithGoogleEvent() when signInWithGoogle != null:
return signInWithGoogle(_that);case ClearMessagesEvent() when clearMessages != null:
return clearMessages(_that);case AuthSnapshotChangedEvent() when authSnapshotChanged != null:
return authSnapshotChanged(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String email,  String password)?  signUp,TResult Function( String email,  String password)?  signIn,TResult Function( String email)?  resetPassword,TResult Function()?  signOut,TResult Function()?  signInWithGoogle,TResult Function()?  clearMessages,TResult Function( AuthSnapshotEntity snapshot)?  authSnapshotChanged,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SignUpEvent() when signUp != null:
return signUp(_that.email,_that.password);case SignInEvent() when signIn != null:
return signIn(_that.email,_that.password);case ResetPasswordEvent() when resetPassword != null:
return resetPassword(_that.email);case SignOutEvent() when signOut != null:
return signOut();case SignInWithGoogleEvent() when signInWithGoogle != null:
return signInWithGoogle();case ClearMessagesEvent() when clearMessages != null:
return clearMessages();case AuthSnapshotChangedEvent() when authSnapshotChanged != null:
return authSnapshotChanged(_that.snapshot);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String email,  String password)  signUp,required TResult Function( String email,  String password)  signIn,required TResult Function( String email)  resetPassword,required TResult Function()  signOut,required TResult Function()  signInWithGoogle,required TResult Function()  clearMessages,required TResult Function( AuthSnapshotEntity snapshot)  authSnapshotChanged,}) {final _that = this;
switch (_that) {
case SignUpEvent():
return signUp(_that.email,_that.password);case SignInEvent():
return signIn(_that.email,_that.password);case ResetPasswordEvent():
return resetPassword(_that.email);case SignOutEvent():
return signOut();case SignInWithGoogleEvent():
return signInWithGoogle();case ClearMessagesEvent():
return clearMessages();case AuthSnapshotChangedEvent():
return authSnapshotChanged(_that.snapshot);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String email,  String password)?  signUp,TResult? Function( String email,  String password)?  signIn,TResult? Function( String email)?  resetPassword,TResult? Function()?  signOut,TResult? Function()?  signInWithGoogle,TResult? Function()?  clearMessages,TResult? Function( AuthSnapshotEntity snapshot)?  authSnapshotChanged,}) {final _that = this;
switch (_that) {
case SignUpEvent() when signUp != null:
return signUp(_that.email,_that.password);case SignInEvent() when signIn != null:
return signIn(_that.email,_that.password);case ResetPasswordEvent() when resetPassword != null:
return resetPassword(_that.email);case SignOutEvent() when signOut != null:
return signOut();case SignInWithGoogleEvent() when signInWithGoogle != null:
return signInWithGoogle();case ClearMessagesEvent() when clearMessages != null:
return clearMessages();case AuthSnapshotChangedEvent() when authSnapshotChanged != null:
return authSnapshotChanged(_that.snapshot);case _:
  return null;

}
}

/// @nodoc
abstract class _$$AuthSignUpRequestedImplCopyWith<$Res> {
  factory _$$AuthSignUpRequestedImplCopyWith(_$AuthSignUpRequestedImpl value,
          $Res Function(_$AuthSignUpRequestedImpl) then) =
      __$$AuthSignUpRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$AuthSignUpRequestedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthSignUpRequestedImpl>
    implements _$$AuthSignUpRequestedImplCopyWith<$Res> {
  __$$AuthSignUpRequestedImplCopyWithImpl(_$AuthSignUpRequestedImpl _value,
      $Res Function(_$AuthSignUpRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$AuthSignUpRequestedImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthSignUpRequestedImpl implements AuthSignUpRequested {
  const _$AuthSignUpRequestedImpl(
      {required this.email, required this.password});

class SignUpEvent implements AuthEvent {
  const SignUpEvent({required this.email, required this.password});
  

  @override
  String toString() {
    return 'AuthEvent.signUpRequested(email: $email, password: $password)';
  }

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpEventCopyWith<SignUpEvent> get copyWith => _$SignUpEventCopyWithImpl<SignUpEvent>(this, _$identity);

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthSignUpRequestedImplCopyWith<_$AuthSignUpRequestedImpl> get copyWith =>
      __$$AuthSignUpRequestedImplCopyWithImpl<_$AuthSignUpRequestedImpl>(
          this, _$identity);

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpEvent&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}

abstract class AuthSignUpRequested implements AuthEvent {
  const factory AuthSignUpRequested(
      {required final String email,
      required final String password}) = _$AuthSignUpRequestedImpl;

@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'AuthEvent.signUp(email: $email, password: $password)';
}


  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthSignUpRequestedImplCopyWith<_$AuthSignUpRequestedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract mixin class $SignUpEventCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $SignUpEventCopyWith(SignUpEvent value, $Res Function(SignUpEvent) _then) = _$SignUpEventCopyWithImpl;
@useResult
$Res call({
 String email, String password
});




}

/// @nodoc
class _$SignUpEventCopyWithImpl<$Res>
    implements $SignUpEventCopyWith<$Res> {
  _$SignUpEventCopyWithImpl(this._self, this._then);

  final SignUpEvent _self;
  final $Res Function(SignUpEvent) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,}) {
  return _then(SignUpEvent(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$AuthSignInRequestedImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthSignInRequestedImpl implements AuthSignInRequested {
  const _$AuthSignInRequestedImpl(
      {required this.email, required this.password});

class SignInEvent implements AuthEvent {
  const SignInEvent({required this.email, required this.password});
  

  @override
  String toString() {
    return 'AuthEvent.signInRequested(email: $email, password: $password)';
  }

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignInEventCopyWith<SignInEvent> get copyWith => _$SignInEventCopyWithImpl<SignInEvent>(this, _$identity);

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthSignInRequestedImplCopyWith<_$AuthSignInRequestedImpl> get copyWith =>
      __$$AuthSignInRequestedImplCopyWithImpl<_$AuthSignInRequestedImpl>(
          this, _$identity);

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInEvent&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}

abstract class AuthSignInRequested implements AuthEvent {
  const factory AuthSignInRequested(
      {required final String email,
      required final String password}) = _$AuthSignInRequestedImpl;

@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'AuthEvent.signIn(email: $email, password: $password)';
}


  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthSignInRequestedImplCopyWith<_$AuthSignInRequestedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract mixin class $SignInEventCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $SignInEventCopyWith(SignInEvent value, $Res Function(SignInEvent) _then) = _$SignInEventCopyWithImpl;
@useResult
$Res call({
 String email, String password
});




}

/// @nodoc
class _$SignInEventCopyWithImpl<$Res>
    implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._self, this._then);

  final SignInEvent _self;
  final $Res Function(SignInEvent) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,}) {
  return _then(SignInEvent(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$AuthResetPasswordRequestedImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthResetPasswordRequestedImpl implements AuthResetPasswordRequested {
  const _$AuthResetPasswordRequestedImpl({required this.email});

class ResetPasswordEvent implements AuthEvent {
  const ResetPasswordEvent({required this.email});
  

  @override
  String toString() {
    return 'AuthEvent.resetPasswordRequested(email: $email)';
  }

<<<<<<< HEAD
/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
=======
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthResetPasswordRequestedImplCopyWith<_$AuthResetPasswordRequestedImpl>
      get copyWith => __$$AuthResetPasswordRequestedImplCopyWithImpl<
          _$AuthResetPasswordRequestedImpl>(this, _$identity);

<<<<<<< HEAD
@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetPasswordEvent&&(identical(other.email, email) || other.email == email));
=======
  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signUpRequested,
    required TResult Function(String email, String password) signInRequested,
    required TResult Function(String email) resetPasswordRequested,
    required TResult Function() signOutRequested,
    required TResult Function() signInWithGoogleRequested,
    required TResult Function() clearMessagesRequested,
    required TResult Function(AuthSnapshot snapshot)
        authSupabaseSnapshotChanged,
  }) {
    return resetPasswordRequested(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signUpRequested,
    TResult? Function(String email, String password)? signInRequested,
    TResult? Function(String email)? resetPasswordRequested,
    TResult? Function()? signOutRequested,
    TResult? Function()? signInWithGoogleRequested,
    TResult? Function()? clearMessagesRequested,
    TResult? Function(AuthSnapshot snapshot)? authSupabaseSnapshotChanged,
  }) {
    return resetPasswordRequested?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signUpRequested,
    TResult Function(String email, String password)? signInRequested,
    TResult Function(String email)? resetPasswordRequested,
    TResult Function()? signOutRequested,
    TResult Function()? signInWithGoogleRequested,
    TResult Function()? clearMessagesRequested,
    TResult Function(AuthSnapshot snapshot)? authSupabaseSnapshotChanged,
    required TResult orElse(),
  }) {
    if (resetPasswordRequested != null) {
      return resetPasswordRequested(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthSignUpRequested value) signUpRequested,
    required TResult Function(AuthSignInRequested value) signInRequested,
    required TResult Function(AuthResetPasswordRequested value)
        resetPasswordRequested,
    required TResult Function(AuthSignOutRequested value) signOutRequested,
    required TResult Function(AuthSignInWithGoogleRequested value)
        signInWithGoogleRequested,
    required TResult Function(AuthClearMessagesRequested value)
        clearMessagesRequested,
    required TResult Function(AuthSupabaseSnapshotChanged value)
        authSupabaseSnapshotChanged,
  }) {
    return resetPasswordRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthSignUpRequested value)? signUpRequested,
    TResult? Function(AuthSignInRequested value)? signInRequested,
    TResult? Function(AuthResetPasswordRequested value)? resetPasswordRequested,
    TResult? Function(AuthSignOutRequested value)? signOutRequested,
    TResult? Function(AuthSignInWithGoogleRequested value)?
        signInWithGoogleRequested,
    TResult? Function(AuthClearMessagesRequested value)? clearMessagesRequested,
    TResult? Function(AuthSupabaseSnapshotChanged value)?
        authSupabaseSnapshotChanged,
  }) {
    return resetPasswordRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthSignUpRequested value)? signUpRequested,
    TResult Function(AuthSignInRequested value)? signInRequested,
    TResult Function(AuthResetPasswordRequested value)? resetPasswordRequested,
    TResult Function(AuthSignOutRequested value)? signOutRequested,
    TResult Function(AuthSignInWithGoogleRequested value)?
        signInWithGoogleRequested,
    TResult Function(AuthClearMessagesRequested value)? clearMessagesRequested,
    TResult Function(AuthSupabaseSnapshotChanged value)?
        authSupabaseSnapshotChanged,
    required TResult orElse(),
  }) {
    if (resetPasswordRequested != null) {
      return resetPasswordRequested(this);
    }
    return orElse();
  }
>>>>>>> fd2118c7948154593cd39da330b75baffc54f46d
}

abstract class AuthResetPasswordRequested implements AuthEvent {
  const factory AuthResetPasswordRequested({required final String email}) =
      _$AuthResetPasswordRequestedImpl;

<<<<<<< HEAD
@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'AuthEvent.resetPassword(email: $email)';
}

=======
  String get email;
>>>>>>> fd2118c7948154593cd39da330b75baffc54f46d

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthResetPasswordRequestedImplCopyWith<_$AuthResetPasswordRequestedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
<<<<<<< HEAD
abstract mixin class $ResetPasswordEventCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $ResetPasswordEventCopyWith(ResetPasswordEvent value, $Res Function(ResetPasswordEvent) _then) = _$ResetPasswordEventCopyWithImpl;
@useResult
$Res call({
 String email
});




=======
abstract class _$$AuthSignOutRequestedImplCopyWith<$Res> {
  factory _$$AuthSignOutRequestedImplCopyWith(_$AuthSignOutRequestedImpl value,
          $Res Function(_$AuthSignOutRequestedImpl) then) =
      __$$AuthSignOutRequestedImplCopyWithImpl<$Res>;
>>>>>>> fd2118c7948154593cd39da330b75baffc54f46d
}

/// @nodoc
<<<<<<< HEAD
class _$ResetPasswordEventCopyWithImpl<$Res>
    implements $ResetPasswordEventCopyWith<$Res> {
  _$ResetPasswordEventCopyWithImpl(this._self, this._then);

  final ResetPasswordEvent _self;
  final $Res Function(ResetPasswordEvent) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(ResetPasswordEvent(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

=======
class __$$AuthSignOutRequestedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthSignOutRequestedImpl>
    implements _$$AuthSignOutRequestedImplCopyWith<$Res> {
  __$$AuthSignOutRequestedImplCopyWithImpl(_$AuthSignOutRequestedImpl _value,
      $Res Function(_$AuthSignOutRequestedImpl) _then)
      : super(_value, _then);
>>>>>>> fd2118c7948154593cd39da330b75baffc54f46d

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthSignOutRequestedImpl implements AuthSignOutRequested {
  const _$AuthSignOutRequestedImpl();

<<<<<<< HEAD
class SignOutEvent implements AuthEvent {
  const SignOutEvent();
  
=======
  @override
  String toString() {
    return 'AuthEvent.signOutRequested()';
  }
>>>>>>> fd2118c7948154593cd39da330b75baffc54f46d

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthSignOutRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signUpRequested,
    required TResult Function(String email, String password) signInRequested,
    required TResult Function(String email) resetPasswordRequested,
    required TResult Function() signOutRequested,
    required TResult Function() signInWithGoogleRequested,
    required TResult Function() clearMessagesRequested,
    required TResult Function(AuthSnapshot snapshot)
        authSupabaseSnapshotChanged,
  }) {
    return signOutRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signUpRequested,
    TResult? Function(String email, String password)? signInRequested,
    TResult? Function(String email)? resetPasswordRequested,
    TResult? Function()? signOutRequested,
    TResult? Function()? signInWithGoogleRequested,
    TResult? Function()? clearMessagesRequested,
    TResult? Function(AuthSnapshot snapshot)? authSupabaseSnapshotChanged,
  }) {
    return signOutRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signUpRequested,
    TResult Function(String email, String password)? signInRequested,
    TResult Function(String email)? resetPasswordRequested,
    TResult Function()? signOutRequested,
    TResult Function()? signInWithGoogleRequested,
    TResult Function()? clearMessagesRequested,
    TResult Function(AuthSnapshot snapshot)? authSupabaseSnapshotChanged,
    required TResult orElse(),
  }) {
    if (signOutRequested != null) {
      return signOutRequested();
    }
    return orElse();
  }

<<<<<<< HEAD
@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignOutEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.signOut()';
}


}




/// @nodoc


class SignInWithGoogleEvent implements AuthEvent {
  const SignInWithGoogleEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInWithGoogleEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.signInWithGoogle()';
}


}




/// @nodoc


class ClearMessagesEvent implements AuthEvent {
  const ClearMessagesEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClearMessagesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.clearMessages()';
}


}




/// @nodoc


class AuthSnapshotChangedEvent implements AuthEvent {
  const AuthSnapshotChangedEvent({required this.snapshot});
  

 final  AuthSnapshotEntity snapshot;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthSnapshotChangedEventCopyWith<AuthSnapshotChangedEvent> get copyWith => _$AuthSnapshotChangedEventCopyWithImpl<AuthSnapshotChangedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthSnapshotChangedEvent&&(identical(other.snapshot, snapshot) || other.snapshot == snapshot));
}


@override
int get hashCode => Object.hash(runtimeType,snapshot);

@override
String toString() {
  return 'AuthEvent.authSnapshotChanged(snapshot: $snapshot)';
}


}

/// @nodoc
abstract mixin class $AuthSnapshotChangedEventCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $AuthSnapshotChangedEventCopyWith(AuthSnapshotChangedEvent value, $Res Function(AuthSnapshotChangedEvent) _then) = _$AuthSnapshotChangedEventCopyWithImpl;
@useResult
$Res call({
 AuthSnapshotEntity snapshot
});




=======
  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthSignUpRequested value) signUpRequested,
    required TResult Function(AuthSignInRequested value) signInRequested,
    required TResult Function(AuthResetPasswordRequested value)
        resetPasswordRequested,
    required TResult Function(AuthSignOutRequested value) signOutRequested,
    required TResult Function(AuthSignInWithGoogleRequested value)
        signInWithGoogleRequested,
    required TResult Function(AuthClearMessagesRequested value)
        clearMessagesRequested,
    required TResult Function(AuthSupabaseSnapshotChanged value)
        authSupabaseSnapshotChanged,
  }) {
    return signOutRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthSignUpRequested value)? signUpRequested,
    TResult? Function(AuthSignInRequested value)? signInRequested,
    TResult? Function(AuthResetPasswordRequested value)? resetPasswordRequested,
    TResult? Function(AuthSignOutRequested value)? signOutRequested,
    TResult? Function(AuthSignInWithGoogleRequested value)?
        signInWithGoogleRequested,
    TResult? Function(AuthClearMessagesRequested value)? clearMessagesRequested,
    TResult? Function(AuthSupabaseSnapshotChanged value)?
        authSupabaseSnapshotChanged,
  }) {
    return signOutRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthSignUpRequested value)? signUpRequested,
    TResult Function(AuthSignInRequested value)? signInRequested,
    TResult Function(AuthResetPasswordRequested value)? resetPasswordRequested,
    TResult Function(AuthSignOutRequested value)? signOutRequested,
    TResult Function(AuthSignInWithGoogleRequested value)?
        signInWithGoogleRequested,
    TResult Function(AuthClearMessagesRequested value)? clearMessagesRequested,
    TResult Function(AuthSupabaseSnapshotChanged value)?
        authSupabaseSnapshotChanged,
    required TResult orElse(),
  }) {
    if (signOutRequested != null) {
      return signOutRequested(this);
    }
    return orElse();
  }
}

abstract class AuthSignOutRequested implements AuthEvent {
  const factory AuthSignOutRequested() = _$AuthSignOutRequestedImpl;
}

/// @nodoc
abstract class _$$AuthSignInWithGoogleRequestedImplCopyWith<$Res> {
  factory _$$AuthSignInWithGoogleRequestedImplCopyWith(
          _$AuthSignInWithGoogleRequestedImpl value,
          $Res Function(_$AuthSignInWithGoogleRequestedImpl) then) =
      __$$AuthSignInWithGoogleRequestedImplCopyWithImpl<$Res>;
>>>>>>> fd2118c7948154593cd39da330b75baffc54f46d
}

/// @nodoc
<<<<<<< HEAD
class _$AuthSnapshotChangedEventCopyWithImpl<$Res>
    implements $AuthSnapshotChangedEventCopyWith<$Res> {
  _$AuthSnapshotChangedEventCopyWithImpl(this._self, this._then);

  final AuthSnapshotChangedEvent _self;
  final $Res Function(AuthSnapshotChangedEvent) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? snapshot = null,}) {
  return _then(AuthSnapshotChangedEvent(
snapshot: null == snapshot ? _self.snapshot : snapshot // ignore: cast_nullable_to_non_nullable
as AuthSnapshotEntity,
  ));
=======
class __$$AuthSignInWithGoogleRequestedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthSignInWithGoogleRequestedImpl>
    implements _$$AuthSignInWithGoogleRequestedImplCopyWith<$Res> {
  __$$AuthSignInWithGoogleRequestedImplCopyWithImpl(
      _$AuthSignInWithGoogleRequestedImpl _value,
      $Res Function(_$AuthSignInWithGoogleRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
>>>>>>> fd2118c7948154593cd39da330b75baffc54f46d
}

/// @nodoc

class _$AuthSignInWithGoogleRequestedImpl
    implements AuthSignInWithGoogleRequested {
  const _$AuthSignInWithGoogleRequestedImpl();

  @override
  String toString() {
    return 'AuthEvent.signInWithGoogleRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthSignInWithGoogleRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signUpRequested,
    required TResult Function(String email, String password) signInRequested,
    required TResult Function(String email) resetPasswordRequested,
    required TResult Function() signOutRequested,
    required TResult Function() signInWithGoogleRequested,
    required TResult Function() clearMessagesRequested,
    required TResult Function(AuthSnapshot snapshot)
        authSupabaseSnapshotChanged,
  }) {
    return signInWithGoogleRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signUpRequested,
    TResult? Function(String email, String password)? signInRequested,
    TResult? Function(String email)? resetPasswordRequested,
    TResult? Function()? signOutRequested,
    TResult? Function()? signInWithGoogleRequested,
    TResult? Function()? clearMessagesRequested,
    TResult? Function(AuthSnapshot snapshot)? authSupabaseSnapshotChanged,
  }) {
    return signInWithGoogleRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signUpRequested,
    TResult Function(String email, String password)? signInRequested,
    TResult Function(String email)? resetPasswordRequested,
    TResult Function()? signOutRequested,
    TResult Function()? signInWithGoogleRequested,
    TResult Function()? clearMessagesRequested,
    TResult Function(AuthSnapshot snapshot)? authSupabaseSnapshotChanged,
    required TResult orElse(),
  }) {
    if (signInWithGoogleRequested != null) {
      return signInWithGoogleRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthSignUpRequested value) signUpRequested,
    required TResult Function(AuthSignInRequested value) signInRequested,
    required TResult Function(AuthResetPasswordRequested value)
        resetPasswordRequested,
    required TResult Function(AuthSignOutRequested value) signOutRequested,
    required TResult Function(AuthSignInWithGoogleRequested value)
        signInWithGoogleRequested,
    required TResult Function(AuthClearMessagesRequested value)
        clearMessagesRequested,
    required TResult Function(AuthSupabaseSnapshotChanged value)
        authSupabaseSnapshotChanged,
  }) {
    return signInWithGoogleRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthSignUpRequested value)? signUpRequested,
    TResult? Function(AuthSignInRequested value)? signInRequested,
    TResult? Function(AuthResetPasswordRequested value)? resetPasswordRequested,
    TResult? Function(AuthSignOutRequested value)? signOutRequested,
    TResult? Function(AuthSignInWithGoogleRequested value)?
        signInWithGoogleRequested,
    TResult? Function(AuthClearMessagesRequested value)? clearMessagesRequested,
    TResult? Function(AuthSupabaseSnapshotChanged value)?
        authSupabaseSnapshotChanged,
  }) {
    return signInWithGoogleRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthSignUpRequested value)? signUpRequested,
    TResult Function(AuthSignInRequested value)? signInRequested,
    TResult Function(AuthResetPasswordRequested value)? resetPasswordRequested,
    TResult Function(AuthSignOutRequested value)? signOutRequested,
    TResult Function(AuthSignInWithGoogleRequested value)?
        signInWithGoogleRequested,
    TResult Function(AuthClearMessagesRequested value)? clearMessagesRequested,
    TResult Function(AuthSupabaseSnapshotChanged value)?
        authSupabaseSnapshotChanged,
    required TResult orElse(),
  }) {
    if (signInWithGoogleRequested != null) {
      return signInWithGoogleRequested(this);
    }
    return orElse();
  }
}

abstract class AuthSignInWithGoogleRequested implements AuthEvent {
  const factory AuthSignInWithGoogleRequested() =
      _$AuthSignInWithGoogleRequestedImpl;
}

/// @nodoc
abstract class _$$AuthClearMessagesRequestedImplCopyWith<$Res> {
  factory _$$AuthClearMessagesRequestedImplCopyWith(
          _$AuthClearMessagesRequestedImpl value,
          $Res Function(_$AuthClearMessagesRequestedImpl) then) =
      __$$AuthClearMessagesRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthClearMessagesRequestedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthClearMessagesRequestedImpl>
    implements _$$AuthClearMessagesRequestedImplCopyWith<$Res> {
  __$$AuthClearMessagesRequestedImplCopyWithImpl(
      _$AuthClearMessagesRequestedImpl _value,
      $Res Function(_$AuthClearMessagesRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthClearMessagesRequestedImpl implements AuthClearMessagesRequested {
  const _$AuthClearMessagesRequestedImpl();

  @override
  String toString() {
    return 'AuthEvent.clearMessagesRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthClearMessagesRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signUpRequested,
    required TResult Function(String email, String password) signInRequested,
    required TResult Function(String email) resetPasswordRequested,
    required TResult Function() signOutRequested,
    required TResult Function() signInWithGoogleRequested,
    required TResult Function() clearMessagesRequested,
    required TResult Function(AuthSnapshot snapshot)
        authSupabaseSnapshotChanged,
  }) {
    return clearMessagesRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signUpRequested,
    TResult? Function(String email, String password)? signInRequested,
    TResult? Function(String email)? resetPasswordRequested,
    TResult? Function()? signOutRequested,
    TResult? Function()? signInWithGoogleRequested,
    TResult? Function()? clearMessagesRequested,
    TResult? Function(AuthSnapshot snapshot)? authSupabaseSnapshotChanged,
  }) {
    return clearMessagesRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signUpRequested,
    TResult Function(String email, String password)? signInRequested,
    TResult Function(String email)? resetPasswordRequested,
    TResult Function()? signOutRequested,
    TResult Function()? signInWithGoogleRequested,
    TResult Function()? clearMessagesRequested,
    TResult Function(AuthSnapshot snapshot)? authSupabaseSnapshotChanged,
    required TResult orElse(),
  }) {
    if (clearMessagesRequested != null) {
      return clearMessagesRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthSignUpRequested value) signUpRequested,
    required TResult Function(AuthSignInRequested value) signInRequested,
    required TResult Function(AuthResetPasswordRequested value)
        resetPasswordRequested,
    required TResult Function(AuthSignOutRequested value) signOutRequested,
    required TResult Function(AuthSignInWithGoogleRequested value)
        signInWithGoogleRequested,
    required TResult Function(AuthClearMessagesRequested value)
        clearMessagesRequested,
    required TResult Function(AuthSupabaseSnapshotChanged value)
        authSupabaseSnapshotChanged,
  }) {
    return clearMessagesRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthSignUpRequested value)? signUpRequested,
    TResult? Function(AuthSignInRequested value)? signInRequested,
    TResult? Function(AuthResetPasswordRequested value)? resetPasswordRequested,
    TResult? Function(AuthSignOutRequested value)? signOutRequested,
    TResult? Function(AuthSignInWithGoogleRequested value)?
        signInWithGoogleRequested,
    TResult? Function(AuthClearMessagesRequested value)? clearMessagesRequested,
    TResult? Function(AuthSupabaseSnapshotChanged value)?
        authSupabaseSnapshotChanged,
  }) {
    return clearMessagesRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthSignUpRequested value)? signUpRequested,
    TResult Function(AuthSignInRequested value)? signInRequested,
    TResult Function(AuthResetPasswordRequested value)? resetPasswordRequested,
    TResult Function(AuthSignOutRequested value)? signOutRequested,
    TResult Function(AuthSignInWithGoogleRequested value)?
        signInWithGoogleRequested,
    TResult Function(AuthClearMessagesRequested value)? clearMessagesRequested,
    TResult Function(AuthSupabaseSnapshotChanged value)?
        authSupabaseSnapshotChanged,
    required TResult orElse(),
  }) {
    if (clearMessagesRequested != null) {
      return clearMessagesRequested(this);
    }
    return orElse();
  }
}

abstract class AuthClearMessagesRequested implements AuthEvent {
  const factory AuthClearMessagesRequested() = _$AuthClearMessagesRequestedImpl;
}

/// @nodoc
abstract class _$$AuthSupabaseSnapshotChangedImplCopyWith<$Res> {
  factory _$$AuthSupabaseSnapshotChangedImplCopyWith(
          _$AuthSupabaseSnapshotChangedImpl value,
          $Res Function(_$AuthSupabaseSnapshotChangedImpl) then) =
      __$$AuthSupabaseSnapshotChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthSnapshot snapshot});
}

/// @nodoc
class __$$AuthSupabaseSnapshotChangedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthSupabaseSnapshotChangedImpl>
    implements _$$AuthSupabaseSnapshotChangedImplCopyWith<$Res> {
  __$$AuthSupabaseSnapshotChangedImplCopyWithImpl(
      _$AuthSupabaseSnapshotChangedImpl _value,
      $Res Function(_$AuthSupabaseSnapshotChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? snapshot = null,
  }) {
    return _then(_$AuthSupabaseSnapshotChangedImpl(
      snapshot: null == snapshot
          ? _value.snapshot
          : snapshot // ignore: cast_nullable_to_non_nullable
              as AuthSnapshot,
    ));
  }
}

/// @nodoc

class _$AuthSupabaseSnapshotChangedImpl implements AuthSupabaseSnapshotChanged {
  const _$AuthSupabaseSnapshotChangedImpl({required this.snapshot});

  @override
  final AuthSnapshot snapshot;

  @override
  String toString() {
    return 'AuthEvent.authSupabaseSnapshotChanged(snapshot: $snapshot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthSupabaseSnapshotChangedImpl &&
            (identical(other.snapshot, snapshot) ||
                other.snapshot == snapshot));
  }

  @override
  int get hashCode => Object.hash(runtimeType, snapshot);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthSupabaseSnapshotChangedImplCopyWith<_$AuthSupabaseSnapshotChangedImpl>
      get copyWith => __$$AuthSupabaseSnapshotChangedImplCopyWithImpl<
          _$AuthSupabaseSnapshotChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signUpRequested,
    required TResult Function(String email, String password) signInRequested,
    required TResult Function(String email) resetPasswordRequested,
    required TResult Function() signOutRequested,
    required TResult Function() signInWithGoogleRequested,
    required TResult Function() clearMessagesRequested,
    required TResult Function(AuthSnapshot snapshot)
        authSupabaseSnapshotChanged,
  }) {
    return authSupabaseSnapshotChanged(snapshot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signUpRequested,
    TResult? Function(String email, String password)? signInRequested,
    TResult? Function(String email)? resetPasswordRequested,
    TResult? Function()? signOutRequested,
    TResult? Function()? signInWithGoogleRequested,
    TResult? Function()? clearMessagesRequested,
    TResult? Function(AuthSnapshot snapshot)? authSupabaseSnapshotChanged,
  }) {
    return authSupabaseSnapshotChanged?.call(snapshot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signUpRequested,
    TResult Function(String email, String password)? signInRequested,
    TResult Function(String email)? resetPasswordRequested,
    TResult Function()? signOutRequested,
    TResult Function()? signInWithGoogleRequested,
    TResult Function()? clearMessagesRequested,
    TResult Function(AuthSnapshot snapshot)? authSupabaseSnapshotChanged,
    required TResult orElse(),
  }) {
    if (authSupabaseSnapshotChanged != null) {
      return authSupabaseSnapshotChanged(snapshot);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthSignUpRequested value) signUpRequested,
    required TResult Function(AuthSignInRequested value) signInRequested,
    required TResult Function(AuthResetPasswordRequested value)
        resetPasswordRequested,
    required TResult Function(AuthSignOutRequested value) signOutRequested,
    required TResult Function(AuthSignInWithGoogleRequested value)
        signInWithGoogleRequested,
    required TResult Function(AuthClearMessagesRequested value)
        clearMessagesRequested,
    required TResult Function(AuthSupabaseSnapshotChanged value)
        authSupabaseSnapshotChanged,
  }) {
    return authSupabaseSnapshotChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthSignUpRequested value)? signUpRequested,
    TResult? Function(AuthSignInRequested value)? signInRequested,
    TResult? Function(AuthResetPasswordRequested value)? resetPasswordRequested,
    TResult? Function(AuthSignOutRequested value)? signOutRequested,
    TResult? Function(AuthSignInWithGoogleRequested value)?
        signInWithGoogleRequested,
    TResult? Function(AuthClearMessagesRequested value)? clearMessagesRequested,
    TResult? Function(AuthSupabaseSnapshotChanged value)?
        authSupabaseSnapshotChanged,
  }) {
    return authSupabaseSnapshotChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthSignUpRequested value)? signUpRequested,
    TResult Function(AuthSignInRequested value)? signInRequested,
    TResult Function(AuthResetPasswordRequested value)? resetPasswordRequested,
    TResult Function(AuthSignOutRequested value)? signOutRequested,
    TResult Function(AuthSignInWithGoogleRequested value)?
        signInWithGoogleRequested,
    TResult Function(AuthClearMessagesRequested value)? clearMessagesRequested,
    TResult Function(AuthSupabaseSnapshotChanged value)?
        authSupabaseSnapshotChanged,
    required TResult orElse(),
  }) {
    if (authSupabaseSnapshotChanged != null) {
      return authSupabaseSnapshotChanged(this);
    }
    return orElse();
  }
}

abstract class AuthSupabaseSnapshotChanged implements AuthEvent {
  const factory AuthSupabaseSnapshotChanged(
          {required final AuthSnapshot snapshot}) =
      _$AuthSupabaseSnapshotChangedImpl;

  AuthSnapshot get snapshot;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthSupabaseSnapshotChangedImplCopyWith<_$AuthSupabaseSnapshotChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
