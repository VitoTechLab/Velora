enum AuthMode {
  signIn,
  signUp;

  bool get isSignIn => this == AuthMode.signIn;
  bool get isSignUp => this == AuthMode.signUp;
}
