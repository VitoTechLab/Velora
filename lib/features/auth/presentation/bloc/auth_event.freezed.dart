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
    required TResult Function(String email, String password) signUp,
    required TResult Function(String email, String password) signIn,
    required TResult Function(String email) resetPassword,
    required TResult Function() signOut,
    required TResult Function() signInWithGoogle,
    required TResult Function() clearMessages,
    required TResult Function(AuthSnapshotEntity snapshot) authSnapshotChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signUp,
    TResult? Function(String email, String password)? signIn,
    TResult? Function(String email)? resetPassword,
    TResult? Function()? signOut,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? clearMessages,
    TResult? Function(AuthSnapshotEntity snapshot)? authSnapshotChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signUp,
    TResult Function(String email, String password)? signIn,
    TResult Function(String email)? resetPassword,
    TResult Function()? signOut,
    TResult Function()? signInWithGoogle,
    TResult Function()? clearMessages,
    TResult Function(AuthSnapshotEntity snapshot)? authSnapshotChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpEvent value) signUp,
    required TResult Function(SignInEvent value) signIn,
    required TResult Function(ResetPasswordEvent value) resetPassword,
    required TResult Function(SignOutEvent value) signOut,
    required TResult Function(SignInWithGoogleEvent value) signInWithGoogle,
    required TResult Function(ClearMessagesEvent value) clearMessages,
    required TResult Function(AuthSnapshotChangedEvent value)
        authSnapshotChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpEvent value)? signUp,
    TResult? Function(SignInEvent value)? signIn,
    TResult? Function(ResetPasswordEvent value)? resetPassword,
    TResult? Function(SignOutEvent value)? signOut,
    TResult? Function(SignInWithGoogleEvent value)? signInWithGoogle,
    TResult? Function(ClearMessagesEvent value)? clearMessages,
    TResult? Function(AuthSnapshotChangedEvent value)? authSnapshotChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpEvent value)? signUp,
    TResult Function(SignInEvent value)? signIn,
    TResult Function(ResetPasswordEvent value)? resetPassword,
    TResult Function(SignOutEvent value)? signOut,
    TResult Function(SignInWithGoogleEvent value)? signInWithGoogle,
    TResult Function(ClearMessagesEvent value)? clearMessages,
    TResult Function(AuthSnapshotChangedEvent value)? authSnapshotChanged,
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

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SignUpEventImplCopyWith<$Res> {
  factory _$$SignUpEventImplCopyWith(
          _$SignUpEventImpl value, $Res Function(_$SignUpEventImpl) then) =
      __$$SignUpEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$SignUpEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignUpEventImpl>
    implements _$$SignUpEventImplCopyWith<$Res> {
  __$$SignUpEventImplCopyWithImpl(
      _$SignUpEventImpl _value, $Res Function(_$SignUpEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SignUpEventImpl(
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

class _$SignUpEventImpl implements SignUpEvent {
  const _$SignUpEventImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.signUp(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpEventImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpEventImplCopyWith<_$SignUpEventImpl> get copyWith =>
      __$$SignUpEventImplCopyWithImpl<_$SignUpEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signUp,
    required TResult Function(String email, String password) signIn,
    required TResult Function(String email) resetPassword,
    required TResult Function() signOut,
    required TResult Function() signInWithGoogle,
    required TResult Function() clearMessages,
    required TResult Function(AuthSnapshotEntity snapshot) authSnapshotChanged,
  }) {
    return signUp(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signUp,
    TResult? Function(String email, String password)? signIn,
    TResult? Function(String email)? resetPassword,
    TResult? Function()? signOut,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? clearMessages,
    TResult? Function(AuthSnapshotEntity snapshot)? authSnapshotChanged,
  }) {
    return signUp?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signUp,
    TResult Function(String email, String password)? signIn,
    TResult Function(String email)? resetPassword,
    TResult Function()? signOut,
    TResult Function()? signInWithGoogle,
    TResult Function()? clearMessages,
    TResult Function(AuthSnapshotEntity snapshot)? authSnapshotChanged,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpEvent value) signUp,
    required TResult Function(SignInEvent value) signIn,
    required TResult Function(ResetPasswordEvent value) resetPassword,
    required TResult Function(SignOutEvent value) signOut,
    required TResult Function(SignInWithGoogleEvent value) signInWithGoogle,
    required TResult Function(ClearMessagesEvent value) clearMessages,
    required TResult Function(AuthSnapshotChangedEvent value)
        authSnapshotChanged,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpEvent value)? signUp,
    TResult? Function(SignInEvent value)? signIn,
    TResult? Function(ResetPasswordEvent value)? resetPassword,
    TResult? Function(SignOutEvent value)? signOut,
    TResult? Function(SignInWithGoogleEvent value)? signInWithGoogle,
    TResult? Function(ClearMessagesEvent value)? clearMessages,
    TResult? Function(AuthSnapshotChangedEvent value)? authSnapshotChanged,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpEvent value)? signUp,
    TResult Function(SignInEvent value)? signIn,
    TResult Function(ResetPasswordEvent value)? resetPassword,
    TResult Function(SignOutEvent value)? signOut,
    TResult Function(SignInWithGoogleEvent value)? signInWithGoogle,
    TResult Function(ClearMessagesEvent value)? clearMessages,
    TResult Function(AuthSnapshotChangedEvent value)? authSnapshotChanged,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class SignUpEvent implements AuthEvent {
  const factory SignUpEvent(
      {required final String email,
      required final String password}) = _$SignUpEventImpl;

  String get email;
  String get password;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpEventImplCopyWith<_$SignUpEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInEventImplCopyWith<$Res> {
  factory _$$SignInEventImplCopyWith(
          _$SignInEventImpl value, $Res Function(_$SignInEventImpl) then) =
      __$$SignInEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$SignInEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignInEventImpl>
    implements _$$SignInEventImplCopyWith<$Res> {
  __$$SignInEventImplCopyWithImpl(
      _$SignInEventImpl _value, $Res Function(_$SignInEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SignInEventImpl(
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

class _$SignInEventImpl implements SignInEvent {
  const _$SignInEventImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.signIn(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInEventImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInEventImplCopyWith<_$SignInEventImpl> get copyWith =>
      __$$SignInEventImplCopyWithImpl<_$SignInEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signUp,
    required TResult Function(String email, String password) signIn,
    required TResult Function(String email) resetPassword,
    required TResult Function() signOut,
    required TResult Function() signInWithGoogle,
    required TResult Function() clearMessages,
    required TResult Function(AuthSnapshotEntity snapshot) authSnapshotChanged,
  }) {
    return signIn(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signUp,
    TResult? Function(String email, String password)? signIn,
    TResult? Function(String email)? resetPassword,
    TResult? Function()? signOut,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? clearMessages,
    TResult? Function(AuthSnapshotEntity snapshot)? authSnapshotChanged,
  }) {
    return signIn?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signUp,
    TResult Function(String email, String password)? signIn,
    TResult Function(String email)? resetPassword,
    TResult Function()? signOut,
    TResult Function()? signInWithGoogle,
    TResult Function()? clearMessages,
    TResult Function(AuthSnapshotEntity snapshot)? authSnapshotChanged,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpEvent value) signUp,
    required TResult Function(SignInEvent value) signIn,
    required TResult Function(ResetPasswordEvent value) resetPassword,
    required TResult Function(SignOutEvent value) signOut,
    required TResult Function(SignInWithGoogleEvent value) signInWithGoogle,
    required TResult Function(ClearMessagesEvent value) clearMessages,
    required TResult Function(AuthSnapshotChangedEvent value)
        authSnapshotChanged,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpEvent value)? signUp,
    TResult? Function(SignInEvent value)? signIn,
    TResult? Function(ResetPasswordEvent value)? resetPassword,
    TResult? Function(SignOutEvent value)? signOut,
    TResult? Function(SignInWithGoogleEvent value)? signInWithGoogle,
    TResult? Function(ClearMessagesEvent value)? clearMessages,
    TResult? Function(AuthSnapshotChangedEvent value)? authSnapshotChanged,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpEvent value)? signUp,
    TResult Function(SignInEvent value)? signIn,
    TResult Function(ResetPasswordEvent value)? resetPassword,
    TResult Function(SignOutEvent value)? signOut,
    TResult Function(SignInWithGoogleEvent value)? signInWithGoogle,
    TResult Function(ClearMessagesEvent value)? clearMessages,
    TResult Function(AuthSnapshotChangedEvent value)? authSnapshotChanged,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class SignInEvent implements AuthEvent {
  const factory SignInEvent(
      {required final String email,
      required final String password}) = _$SignInEventImpl;

  String get email;
  String get password;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignInEventImplCopyWith<_$SignInEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetPasswordEventImplCopyWith<$Res> {
  factory _$$ResetPasswordEventImplCopyWith(_$ResetPasswordEventImpl value,
          $Res Function(_$ResetPasswordEventImpl) then) =
      __$$ResetPasswordEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$ResetPasswordEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ResetPasswordEventImpl>
    implements _$$ResetPasswordEventImplCopyWith<$Res> {
  __$$ResetPasswordEventImplCopyWithImpl(_$ResetPasswordEventImpl _value,
      $Res Function(_$ResetPasswordEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$ResetPasswordEventImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ResetPasswordEventImpl implements ResetPasswordEvent {
  const _$ResetPasswordEventImpl({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.resetPassword(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPasswordEventImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetPasswordEventImplCopyWith<_$ResetPasswordEventImpl> get copyWith =>
      __$$ResetPasswordEventImplCopyWithImpl<_$ResetPasswordEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signUp,
    required TResult Function(String email, String password) signIn,
    required TResult Function(String email) resetPassword,
    required TResult Function() signOut,
    required TResult Function() signInWithGoogle,
    required TResult Function() clearMessages,
    required TResult Function(AuthSnapshotEntity snapshot) authSnapshotChanged,
  }) {
    return resetPassword(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signUp,
    TResult? Function(String email, String password)? signIn,
    TResult? Function(String email)? resetPassword,
    TResult? Function()? signOut,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? clearMessages,
    TResult? Function(AuthSnapshotEntity snapshot)? authSnapshotChanged,
  }) {
    return resetPassword?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signUp,
    TResult Function(String email, String password)? signIn,
    TResult Function(String email)? resetPassword,
    TResult Function()? signOut,
    TResult Function()? signInWithGoogle,
    TResult Function()? clearMessages,
    TResult Function(AuthSnapshotEntity snapshot)? authSnapshotChanged,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpEvent value) signUp,
    required TResult Function(SignInEvent value) signIn,
    required TResult Function(ResetPasswordEvent value) resetPassword,
    required TResult Function(SignOutEvent value) signOut,
    required TResult Function(SignInWithGoogleEvent value) signInWithGoogle,
    required TResult Function(ClearMessagesEvent value) clearMessages,
    required TResult Function(AuthSnapshotChangedEvent value)
        authSnapshotChanged,
  }) {
    return resetPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpEvent value)? signUp,
    TResult? Function(SignInEvent value)? signIn,
    TResult? Function(ResetPasswordEvent value)? resetPassword,
    TResult? Function(SignOutEvent value)? signOut,
    TResult? Function(SignInWithGoogleEvent value)? signInWithGoogle,
    TResult? Function(ClearMessagesEvent value)? clearMessages,
    TResult? Function(AuthSnapshotChangedEvent value)? authSnapshotChanged,
  }) {
    return resetPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpEvent value)? signUp,
    TResult Function(SignInEvent value)? signIn,
    TResult Function(ResetPasswordEvent value)? resetPassword,
    TResult Function(SignOutEvent value)? signOut,
    TResult Function(SignInWithGoogleEvent value)? signInWithGoogle,
    TResult Function(ClearMessagesEvent value)? clearMessages,
    TResult Function(AuthSnapshotChangedEvent value)? authSnapshotChanged,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(this);
    }
    return orElse();
  }
}

abstract class ResetPasswordEvent implements AuthEvent {
  const factory ResetPasswordEvent({required final String email}) =
      _$ResetPasswordEventImpl;

  String get email;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResetPasswordEventImplCopyWith<_$ResetPasswordEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignOutEventImplCopyWith<$Res> {
  factory _$$SignOutEventImplCopyWith(
          _$SignOutEventImpl value, $Res Function(_$SignOutEventImpl) then) =
      __$$SignOutEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignOutEventImpl>
    implements _$$SignOutEventImplCopyWith<$Res> {
  __$$SignOutEventImplCopyWithImpl(
      _$SignOutEventImpl _value, $Res Function(_$SignOutEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignOutEventImpl implements SignOutEvent {
  const _$SignOutEventImpl();

  @override
  String toString() {
    return 'AuthEvent.signOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignOutEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signUp,
    required TResult Function(String email, String password) signIn,
    required TResult Function(String email) resetPassword,
    required TResult Function() signOut,
    required TResult Function() signInWithGoogle,
    required TResult Function() clearMessages,
    required TResult Function(AuthSnapshotEntity snapshot) authSnapshotChanged,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signUp,
    TResult? Function(String email, String password)? signIn,
    TResult? Function(String email)? resetPassword,
    TResult? Function()? signOut,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? clearMessages,
    TResult? Function(AuthSnapshotEntity snapshot)? authSnapshotChanged,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signUp,
    TResult Function(String email, String password)? signIn,
    TResult Function(String email)? resetPassword,
    TResult Function()? signOut,
    TResult Function()? signInWithGoogle,
    TResult Function()? clearMessages,
    TResult Function(AuthSnapshotEntity snapshot)? authSnapshotChanged,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpEvent value) signUp,
    required TResult Function(SignInEvent value) signIn,
    required TResult Function(ResetPasswordEvent value) resetPassword,
    required TResult Function(SignOutEvent value) signOut,
    required TResult Function(SignInWithGoogleEvent value) signInWithGoogle,
    required TResult Function(ClearMessagesEvent value) clearMessages,
    required TResult Function(AuthSnapshotChangedEvent value)
        authSnapshotChanged,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpEvent value)? signUp,
    TResult? Function(SignInEvent value)? signIn,
    TResult? Function(ResetPasswordEvent value)? resetPassword,
    TResult? Function(SignOutEvent value)? signOut,
    TResult? Function(SignInWithGoogleEvent value)? signInWithGoogle,
    TResult? Function(ClearMessagesEvent value)? clearMessages,
    TResult? Function(AuthSnapshotChangedEvent value)? authSnapshotChanged,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpEvent value)? signUp,
    TResult Function(SignInEvent value)? signIn,
    TResult Function(ResetPasswordEvent value)? resetPassword,
    TResult Function(SignOutEvent value)? signOut,
    TResult Function(SignInWithGoogleEvent value)? signInWithGoogle,
    TResult Function(ClearMessagesEvent value)? clearMessages,
    TResult Function(AuthSnapshotChangedEvent value)? authSnapshotChanged,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class SignOutEvent implements AuthEvent {
  const factory SignOutEvent() = _$SignOutEventImpl;
}

/// @nodoc
abstract class _$$SignInWithGoogleEventImplCopyWith<$Res> {
  factory _$$SignInWithGoogleEventImplCopyWith(
          _$SignInWithGoogleEventImpl value,
          $Res Function(_$SignInWithGoogleEventImpl) then) =
      __$$SignInWithGoogleEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInWithGoogleEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignInWithGoogleEventImpl>
    implements _$$SignInWithGoogleEventImplCopyWith<$Res> {
  __$$SignInWithGoogleEventImplCopyWithImpl(_$SignInWithGoogleEventImpl _value,
      $Res Function(_$SignInWithGoogleEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignInWithGoogleEventImpl implements SignInWithGoogleEvent {
  const _$SignInWithGoogleEventImpl();

  @override
  String toString() {
    return 'AuthEvent.signInWithGoogle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInWithGoogleEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signUp,
    required TResult Function(String email, String password) signIn,
    required TResult Function(String email) resetPassword,
    required TResult Function() signOut,
    required TResult Function() signInWithGoogle,
    required TResult Function() clearMessages,
    required TResult Function(AuthSnapshotEntity snapshot) authSnapshotChanged,
  }) {
    return signInWithGoogle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signUp,
    TResult? Function(String email, String password)? signIn,
    TResult? Function(String email)? resetPassword,
    TResult? Function()? signOut,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? clearMessages,
    TResult? Function(AuthSnapshotEntity snapshot)? authSnapshotChanged,
  }) {
    return signInWithGoogle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signUp,
    TResult Function(String email, String password)? signIn,
    TResult Function(String email)? resetPassword,
    TResult Function()? signOut,
    TResult Function()? signInWithGoogle,
    TResult Function()? clearMessages,
    TResult Function(AuthSnapshotEntity snapshot)? authSnapshotChanged,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpEvent value) signUp,
    required TResult Function(SignInEvent value) signIn,
    required TResult Function(ResetPasswordEvent value) resetPassword,
    required TResult Function(SignOutEvent value) signOut,
    required TResult Function(SignInWithGoogleEvent value) signInWithGoogle,
    required TResult Function(ClearMessagesEvent value) clearMessages,
    required TResult Function(AuthSnapshotChangedEvent value)
        authSnapshotChanged,
  }) {
    return signInWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpEvent value)? signUp,
    TResult? Function(SignInEvent value)? signIn,
    TResult? Function(ResetPasswordEvent value)? resetPassword,
    TResult? Function(SignOutEvent value)? signOut,
    TResult? Function(SignInWithGoogleEvent value)? signInWithGoogle,
    TResult? Function(ClearMessagesEvent value)? clearMessages,
    TResult? Function(AuthSnapshotChangedEvent value)? authSnapshotChanged,
  }) {
    return signInWithGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpEvent value)? signUp,
    TResult Function(SignInEvent value)? signIn,
    TResult Function(ResetPasswordEvent value)? resetPassword,
    TResult Function(SignOutEvent value)? signOut,
    TResult Function(SignInWithGoogleEvent value)? signInWithGoogle,
    TResult Function(ClearMessagesEvent value)? clearMessages,
    TResult Function(AuthSnapshotChangedEvent value)? authSnapshotChanged,
    required TResult orElse(),
  }) {
    if (signInWithGoogle != null) {
      return signInWithGoogle(this);
    }
    return orElse();
  }
}

abstract class SignInWithGoogleEvent implements AuthEvent {
  const factory SignInWithGoogleEvent() = _$SignInWithGoogleEventImpl;
}

/// @nodoc
abstract class _$$ClearMessagesEventImplCopyWith<$Res> {
  factory _$$ClearMessagesEventImplCopyWith(_$ClearMessagesEventImpl value,
          $Res Function(_$ClearMessagesEventImpl) then) =
      __$$ClearMessagesEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearMessagesEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ClearMessagesEventImpl>
    implements _$$ClearMessagesEventImplCopyWith<$Res> {
  __$$ClearMessagesEventImplCopyWithImpl(_$ClearMessagesEventImpl _value,
      $Res Function(_$ClearMessagesEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearMessagesEventImpl implements ClearMessagesEvent {
  const _$ClearMessagesEventImpl();

  @override
  String toString() {
    return 'AuthEvent.clearMessages()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearMessagesEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signUp,
    required TResult Function(String email, String password) signIn,
    required TResult Function(String email) resetPassword,
    required TResult Function() signOut,
    required TResult Function() signInWithGoogle,
    required TResult Function() clearMessages,
    required TResult Function(AuthSnapshotEntity snapshot) authSnapshotChanged,
  }) {
    return clearMessages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signUp,
    TResult? Function(String email, String password)? signIn,
    TResult? Function(String email)? resetPassword,
    TResult? Function()? signOut,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? clearMessages,
    TResult? Function(AuthSnapshotEntity snapshot)? authSnapshotChanged,
  }) {
    return clearMessages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signUp,
    TResult Function(String email, String password)? signIn,
    TResult Function(String email)? resetPassword,
    TResult Function()? signOut,
    TResult Function()? signInWithGoogle,
    TResult Function()? clearMessages,
    TResult Function(AuthSnapshotEntity snapshot)? authSnapshotChanged,
    required TResult orElse(),
  }) {
    if (clearMessages != null) {
      return clearMessages();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpEvent value) signUp,
    required TResult Function(SignInEvent value) signIn,
    required TResult Function(ResetPasswordEvent value) resetPassword,
    required TResult Function(SignOutEvent value) signOut,
    required TResult Function(SignInWithGoogleEvent value) signInWithGoogle,
    required TResult Function(ClearMessagesEvent value) clearMessages,
    required TResult Function(AuthSnapshotChangedEvent value)
        authSnapshotChanged,
  }) {
    return clearMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpEvent value)? signUp,
    TResult? Function(SignInEvent value)? signIn,
    TResult? Function(ResetPasswordEvent value)? resetPassword,
    TResult? Function(SignOutEvent value)? signOut,
    TResult? Function(SignInWithGoogleEvent value)? signInWithGoogle,
    TResult? Function(ClearMessagesEvent value)? clearMessages,
    TResult? Function(AuthSnapshotChangedEvent value)? authSnapshotChanged,
  }) {
    return clearMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpEvent value)? signUp,
    TResult Function(SignInEvent value)? signIn,
    TResult Function(ResetPasswordEvent value)? resetPassword,
    TResult Function(SignOutEvent value)? signOut,
    TResult Function(SignInWithGoogleEvent value)? signInWithGoogle,
    TResult Function(ClearMessagesEvent value)? clearMessages,
    TResult Function(AuthSnapshotChangedEvent value)? authSnapshotChanged,
    required TResult orElse(),
  }) {
    if (clearMessages != null) {
      return clearMessages(this);
    }
    return orElse();
  }
}

abstract class ClearMessagesEvent implements AuthEvent {
  const factory ClearMessagesEvent() = _$ClearMessagesEventImpl;
}

/// @nodoc
abstract class _$$AuthSnapshotChangedEventImplCopyWith<$Res> {
  factory _$$AuthSnapshotChangedEventImplCopyWith(
          _$AuthSnapshotChangedEventImpl value,
          $Res Function(_$AuthSnapshotChangedEventImpl) then) =
      __$$AuthSnapshotChangedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthSnapshotEntity snapshot});
}

/// @nodoc
class __$$AuthSnapshotChangedEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthSnapshotChangedEventImpl>
    implements _$$AuthSnapshotChangedEventImplCopyWith<$Res> {
  __$$AuthSnapshotChangedEventImplCopyWithImpl(
      _$AuthSnapshotChangedEventImpl _value,
      $Res Function(_$AuthSnapshotChangedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? snapshot = null,
  }) {
    return _then(_$AuthSnapshotChangedEventImpl(
      snapshot: null == snapshot
          ? _value.snapshot
          : snapshot // ignore: cast_nullable_to_non_nullable
              as AuthSnapshotEntity,
    ));
  }
}

/// @nodoc

class _$AuthSnapshotChangedEventImpl implements AuthSnapshotChangedEvent {
  const _$AuthSnapshotChangedEventImpl({required this.snapshot});

  @override
  final AuthSnapshotEntity snapshot;

  @override
  String toString() {
    return 'AuthEvent.authSnapshotChanged(snapshot: $snapshot)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthSnapshotChangedEventImpl &&
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
  _$$AuthSnapshotChangedEventImplCopyWith<_$AuthSnapshotChangedEventImpl>
      get copyWith => __$$AuthSnapshotChangedEventImplCopyWithImpl<
          _$AuthSnapshotChangedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signUp,
    required TResult Function(String email, String password) signIn,
    required TResult Function(String email) resetPassword,
    required TResult Function() signOut,
    required TResult Function() signInWithGoogle,
    required TResult Function() clearMessages,
    required TResult Function(AuthSnapshotEntity snapshot) authSnapshotChanged,
  }) {
    return authSnapshotChanged(snapshot);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signUp,
    TResult? Function(String email, String password)? signIn,
    TResult? Function(String email)? resetPassword,
    TResult? Function()? signOut,
    TResult? Function()? signInWithGoogle,
    TResult? Function()? clearMessages,
    TResult? Function(AuthSnapshotEntity snapshot)? authSnapshotChanged,
  }) {
    return authSnapshotChanged?.call(snapshot);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signUp,
    TResult Function(String email, String password)? signIn,
    TResult Function(String email)? resetPassword,
    TResult Function()? signOut,
    TResult Function()? signInWithGoogle,
    TResult Function()? clearMessages,
    TResult Function(AuthSnapshotEntity snapshot)? authSnapshotChanged,
    required TResult orElse(),
  }) {
    if (authSnapshotChanged != null) {
      return authSnapshotChanged(snapshot);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpEvent value) signUp,
    required TResult Function(SignInEvent value) signIn,
    required TResult Function(ResetPasswordEvent value) resetPassword,
    required TResult Function(SignOutEvent value) signOut,
    required TResult Function(SignInWithGoogleEvent value) signInWithGoogle,
    required TResult Function(ClearMessagesEvent value) clearMessages,
    required TResult Function(AuthSnapshotChangedEvent value)
        authSnapshotChanged,
  }) {
    return authSnapshotChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpEvent value)? signUp,
    TResult? Function(SignInEvent value)? signIn,
    TResult? Function(ResetPasswordEvent value)? resetPassword,
    TResult? Function(SignOutEvent value)? signOut,
    TResult? Function(SignInWithGoogleEvent value)? signInWithGoogle,
    TResult? Function(ClearMessagesEvent value)? clearMessages,
    TResult? Function(AuthSnapshotChangedEvent value)? authSnapshotChanged,
  }) {
    return authSnapshotChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpEvent value)? signUp,
    TResult Function(SignInEvent value)? signIn,
    TResult Function(ResetPasswordEvent value)? resetPassword,
    TResult Function(SignOutEvent value)? signOut,
    TResult Function(SignInWithGoogleEvent value)? signInWithGoogle,
    TResult Function(ClearMessagesEvent value)? clearMessages,
    TResult Function(AuthSnapshotChangedEvent value)? authSnapshotChanged,
    required TResult orElse(),
  }) {
    if (authSnapshotChanged != null) {
      return authSnapshotChanged(this);
    }
    return orElse();
  }
}

abstract class AuthSnapshotChangedEvent implements AuthEvent {
  const factory AuthSnapshotChangedEvent(
          {required final AuthSnapshotEntity snapshot}) =
      _$AuthSnapshotChangedEventImpl;

  AuthSnapshotEntity get snapshot;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthSnapshotChangedEventImplCopyWith<_$AuthSnapshotChangedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
