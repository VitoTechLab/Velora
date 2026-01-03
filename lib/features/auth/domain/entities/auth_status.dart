/// Domain-level authentication status used across layers.
///
/// Presentation layer (`AuthState`) can wrap this enum.
enum AuthStatus { unknown, unauthenticated, emailUnverified, authenticated }
