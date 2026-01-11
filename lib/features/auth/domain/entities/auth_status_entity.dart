/// Authentication status used across the application for routing and access control.
enum AuthStatusEntity {
  /// Initial state before authentication check
  unknown,

  /// User not logged in
  unauthenticated,

  /// User logged in but email not verified
  emailUnverified,

  /// User fully authenticated
  authenticated,
}
