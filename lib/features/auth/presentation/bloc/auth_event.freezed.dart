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

}

/// @nodoc


class SignUpEvent implements AuthEvent {
  const SignUpEvent({required this.email, required this.password});
  

 final  String email;
 final  String password;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpEventCopyWith<SignUpEvent> get copyWith => _$SignUpEventCopyWithImpl<SignUpEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpEvent&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'AuthEvent.signUp(email: $email, password: $password)';
}


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


}

/// @nodoc


class SignInEvent implements AuthEvent {
  const SignInEvent({required this.email, required this.password});
  

 final  String email;
 final  String password;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignInEventCopyWith<SignInEvent> get copyWith => _$SignInEventCopyWithImpl<SignInEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInEvent&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'AuthEvent.signIn(email: $email, password: $password)';
}


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


}

/// @nodoc


class ResetPasswordEvent implements AuthEvent {
  const ResetPasswordEvent({required this.email});
  

 final  String email;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResetPasswordEventCopyWith<ResetPasswordEvent> get copyWith => _$ResetPasswordEventCopyWithImpl<ResetPasswordEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetPasswordEvent&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'AuthEvent.resetPassword(email: $email)';
}


}

/// @nodoc
abstract mixin class $ResetPasswordEventCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $ResetPasswordEventCopyWith(ResetPasswordEvent value, $Res Function(ResetPasswordEvent) _then) = _$ResetPasswordEventCopyWithImpl;
@useResult
$Res call({
 String email
});




}
/// @nodoc
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


}

/// @nodoc


class SignOutEvent implements AuthEvent {
  const SignOutEvent();
  






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




}
/// @nodoc
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
}


}

// dart format on
