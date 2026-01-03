// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent()';
}


}

/// @nodoc
class $AuthEventCopyWith<$Res>  {
$AuthEventCopyWith(AuthEvent _, $Res Function(AuthEvent) __);
}


/// Adds pattern-matching-related methods to [AuthEvent].
extension AuthEventPatterns on AuthEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AuthSignUpRequested value)?  signUpRequested,TResult Function( AuthSignInRequested value)?  signInRequested,TResult Function( AuthResetPasswordRequested value)?  resetPasswordRequested,TResult Function( AuthSignOutRequested value)?  signOutRequested,TResult Function( AuthSignInWithGoogleRequested value)?  signInWithGoogleRequested,TResult Function( AuthClearMessagesRequested value)?  clearMessagesRequested,TResult Function( AuthSupabaseSnapshotChanged value)?  authSupabaseSnapshotChanged,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AuthSignUpRequested() when signUpRequested != null:
return signUpRequested(_that);case AuthSignInRequested() when signInRequested != null:
return signInRequested(_that);case AuthResetPasswordRequested() when resetPasswordRequested != null:
return resetPasswordRequested(_that);case AuthSignOutRequested() when signOutRequested != null:
return signOutRequested(_that);case AuthSignInWithGoogleRequested() when signInWithGoogleRequested != null:
return signInWithGoogleRequested(_that);case AuthClearMessagesRequested() when clearMessagesRequested != null:
return clearMessagesRequested(_that);case AuthSupabaseSnapshotChanged() when authSupabaseSnapshotChanged != null:
return authSupabaseSnapshotChanged(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AuthSignUpRequested value)  signUpRequested,required TResult Function( AuthSignInRequested value)  signInRequested,required TResult Function( AuthResetPasswordRequested value)  resetPasswordRequested,required TResult Function( AuthSignOutRequested value)  signOutRequested,required TResult Function( AuthSignInWithGoogleRequested value)  signInWithGoogleRequested,required TResult Function( AuthClearMessagesRequested value)  clearMessagesRequested,required TResult Function( AuthSupabaseSnapshotChanged value)  authSupabaseSnapshotChanged,}){
final _that = this;
switch (_that) {
case AuthSignUpRequested():
return signUpRequested(_that);case AuthSignInRequested():
return signInRequested(_that);case AuthResetPasswordRequested():
return resetPasswordRequested(_that);case AuthSignOutRequested():
return signOutRequested(_that);case AuthSignInWithGoogleRequested():
return signInWithGoogleRequested(_that);case AuthClearMessagesRequested():
return clearMessagesRequested(_that);case AuthSupabaseSnapshotChanged():
return authSupabaseSnapshotChanged(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AuthSignUpRequested value)?  signUpRequested,TResult? Function( AuthSignInRequested value)?  signInRequested,TResult? Function( AuthResetPasswordRequested value)?  resetPasswordRequested,TResult? Function( AuthSignOutRequested value)?  signOutRequested,TResult? Function( AuthSignInWithGoogleRequested value)?  signInWithGoogleRequested,TResult? Function( AuthClearMessagesRequested value)?  clearMessagesRequested,TResult? Function( AuthSupabaseSnapshotChanged value)?  authSupabaseSnapshotChanged,}){
final _that = this;
switch (_that) {
case AuthSignUpRequested() when signUpRequested != null:
return signUpRequested(_that);case AuthSignInRequested() when signInRequested != null:
return signInRequested(_that);case AuthResetPasswordRequested() when resetPasswordRequested != null:
return resetPasswordRequested(_that);case AuthSignOutRequested() when signOutRequested != null:
return signOutRequested(_that);case AuthSignInWithGoogleRequested() when signInWithGoogleRequested != null:
return signInWithGoogleRequested(_that);case AuthClearMessagesRequested() when clearMessagesRequested != null:
return clearMessagesRequested(_that);case AuthSupabaseSnapshotChanged() when authSupabaseSnapshotChanged != null:
return authSupabaseSnapshotChanged(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String email,  String password)?  signUpRequested,TResult Function( String email,  String password)?  signInRequested,TResult Function( String email)?  resetPasswordRequested,TResult Function()?  signOutRequested,TResult Function()?  signInWithGoogleRequested,TResult Function()?  clearMessagesRequested,TResult Function( AuthSnapshot snapshot)?  authSupabaseSnapshotChanged,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AuthSignUpRequested() when signUpRequested != null:
return signUpRequested(_that.email,_that.password);case AuthSignInRequested() when signInRequested != null:
return signInRequested(_that.email,_that.password);case AuthResetPasswordRequested() when resetPasswordRequested != null:
return resetPasswordRequested(_that.email);case AuthSignOutRequested() when signOutRequested != null:
return signOutRequested();case AuthSignInWithGoogleRequested() when signInWithGoogleRequested != null:
return signInWithGoogleRequested();case AuthClearMessagesRequested() when clearMessagesRequested != null:
return clearMessagesRequested();case AuthSupabaseSnapshotChanged() when authSupabaseSnapshotChanged != null:
return authSupabaseSnapshotChanged(_that.snapshot);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String email,  String password)  signUpRequested,required TResult Function( String email,  String password)  signInRequested,required TResult Function( String email)  resetPasswordRequested,required TResult Function()  signOutRequested,required TResult Function()  signInWithGoogleRequested,required TResult Function()  clearMessagesRequested,required TResult Function( AuthSnapshot snapshot)  authSupabaseSnapshotChanged,}) {final _that = this;
switch (_that) {
case AuthSignUpRequested():
return signUpRequested(_that.email,_that.password);case AuthSignInRequested():
return signInRequested(_that.email,_that.password);case AuthResetPasswordRequested():
return resetPasswordRequested(_that.email);case AuthSignOutRequested():
return signOutRequested();case AuthSignInWithGoogleRequested():
return signInWithGoogleRequested();case AuthClearMessagesRequested():
return clearMessagesRequested();case AuthSupabaseSnapshotChanged():
return authSupabaseSnapshotChanged(_that.snapshot);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String email,  String password)?  signUpRequested,TResult? Function( String email,  String password)?  signInRequested,TResult? Function( String email)?  resetPasswordRequested,TResult? Function()?  signOutRequested,TResult? Function()?  signInWithGoogleRequested,TResult? Function()?  clearMessagesRequested,TResult? Function( AuthSnapshot snapshot)?  authSupabaseSnapshotChanged,}) {final _that = this;
switch (_that) {
case AuthSignUpRequested() when signUpRequested != null:
return signUpRequested(_that.email,_that.password);case AuthSignInRequested() when signInRequested != null:
return signInRequested(_that.email,_that.password);case AuthResetPasswordRequested() when resetPasswordRequested != null:
return resetPasswordRequested(_that.email);case AuthSignOutRequested() when signOutRequested != null:
return signOutRequested();case AuthSignInWithGoogleRequested() when signInWithGoogleRequested != null:
return signInWithGoogleRequested();case AuthClearMessagesRequested() when clearMessagesRequested != null:
return clearMessagesRequested();case AuthSupabaseSnapshotChanged() when authSupabaseSnapshotChanged != null:
return authSupabaseSnapshotChanged(_that.snapshot);case _:
  return null;

}
}

}

/// @nodoc


class AuthSignUpRequested implements AuthEvent {
  const AuthSignUpRequested({required this.email, required this.password});
  

 final  String email;
 final  String password;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthSignUpRequestedCopyWith<AuthSignUpRequested> get copyWith => _$AuthSignUpRequestedCopyWithImpl<AuthSignUpRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthSignUpRequested&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'AuthEvent.signUpRequested(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class $AuthSignUpRequestedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $AuthSignUpRequestedCopyWith(AuthSignUpRequested value, $Res Function(AuthSignUpRequested) _then) = _$AuthSignUpRequestedCopyWithImpl;
@useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class _$AuthSignUpRequestedCopyWithImpl<$Res>
    implements $AuthSignUpRequestedCopyWith<$Res> {
  _$AuthSignUpRequestedCopyWithImpl(this._self, this._then);

  final AuthSignUpRequested _self;
  final $Res Function(AuthSignUpRequested) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,}) {
  return _then(AuthSignUpRequested(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class AuthSignInRequested implements AuthEvent {
  const AuthSignInRequested({required this.email, required this.password});
  

 final  String email;
 final  String password;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthSignInRequestedCopyWith<AuthSignInRequested> get copyWith => _$AuthSignInRequestedCopyWithImpl<AuthSignInRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthSignInRequested&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'AuthEvent.signInRequested(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class $AuthSignInRequestedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $AuthSignInRequestedCopyWith(AuthSignInRequested value, $Res Function(AuthSignInRequested) _then) = _$AuthSignInRequestedCopyWithImpl;
@useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class _$AuthSignInRequestedCopyWithImpl<$Res>
    implements $AuthSignInRequestedCopyWith<$Res> {
  _$AuthSignInRequestedCopyWithImpl(this._self, this._then);

  final AuthSignInRequested _self;
  final $Res Function(AuthSignInRequested) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,}) {
  return _then(AuthSignInRequested(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class AuthResetPasswordRequested implements AuthEvent {
  const AuthResetPasswordRequested({required this.email});
  

 final  String email;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthResetPasswordRequestedCopyWith<AuthResetPasswordRequested> get copyWith => _$AuthResetPasswordRequestedCopyWithImpl<AuthResetPasswordRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthResetPasswordRequested&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'AuthEvent.resetPasswordRequested(email: $email)';
}


}

/// @nodoc
abstract mixin class $AuthResetPasswordRequestedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $AuthResetPasswordRequestedCopyWith(AuthResetPasswordRequested value, $Res Function(AuthResetPasswordRequested) _then) = _$AuthResetPasswordRequestedCopyWithImpl;
@useResult
$Res call({
 String email
});




}
/// @nodoc
class _$AuthResetPasswordRequestedCopyWithImpl<$Res>
    implements $AuthResetPasswordRequestedCopyWith<$Res> {
  _$AuthResetPasswordRequestedCopyWithImpl(this._self, this._then);

  final AuthResetPasswordRequested _self;
  final $Res Function(AuthResetPasswordRequested) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(AuthResetPasswordRequested(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class AuthSignOutRequested implements AuthEvent {
  const AuthSignOutRequested();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthSignOutRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.signOutRequested()';
}


}




/// @nodoc


class AuthSignInWithGoogleRequested implements AuthEvent {
  const AuthSignInWithGoogleRequested();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthSignInWithGoogleRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.signInWithGoogleRequested()';
}


}




/// @nodoc


class AuthClearMessagesRequested implements AuthEvent {
  const AuthClearMessagesRequested();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthClearMessagesRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.clearMessagesRequested()';
}


}




/// @nodoc


class AuthSupabaseSnapshotChanged implements AuthEvent {
  const AuthSupabaseSnapshotChanged({required this.snapshot});
  

 final  AuthSnapshot snapshot;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthSupabaseSnapshotChangedCopyWith<AuthSupabaseSnapshotChanged> get copyWith => _$AuthSupabaseSnapshotChangedCopyWithImpl<AuthSupabaseSnapshotChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthSupabaseSnapshotChanged&&(identical(other.snapshot, snapshot) || other.snapshot == snapshot));
}


@override
int get hashCode => Object.hash(runtimeType,snapshot);

@override
String toString() {
  return 'AuthEvent.authSupabaseSnapshotChanged(snapshot: $snapshot)';
}


}

/// @nodoc
abstract mixin class $AuthSupabaseSnapshotChangedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $AuthSupabaseSnapshotChangedCopyWith(AuthSupabaseSnapshotChanged value, $Res Function(AuthSupabaseSnapshotChanged) _then) = _$AuthSupabaseSnapshotChangedCopyWithImpl;
@useResult
$Res call({
 AuthSnapshot snapshot
});




}
/// @nodoc
class _$AuthSupabaseSnapshotChangedCopyWithImpl<$Res>
    implements $AuthSupabaseSnapshotChangedCopyWith<$Res> {
  _$AuthSupabaseSnapshotChangedCopyWithImpl(this._self, this._then);

  final AuthSupabaseSnapshotChanged _self;
  final $Res Function(AuthSupabaseSnapshotChanged) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? snapshot = null,}) {
  return _then(AuthSupabaseSnapshotChanged(
snapshot: null == snapshot ? _self.snapshot : snapshot // ignore: cast_nullable_to_non_nullable
as AuthSnapshot,
  ));
}


}

// dart format on
