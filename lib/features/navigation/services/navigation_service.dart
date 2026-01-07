import 'package:flutter/material.dart';

/// Provides a single source of truth for imperative navigation.
///
/// Widgets that need to trigger navigation outside of the widget tree
/// (e.g. services, notifications, or overlays) can access the
/// [navigatorKey] via dependency injection and use the exposed helpers.
class NavigationService {
  NavigationService({GlobalKey<NavigatorState>? navigatorKey})
    : navigatorKey = navigatorKey ?? GlobalKey<NavigatorState>();

  /// Root navigator key used throughout the app.
  final GlobalKey<NavigatorState> navigatorKey;

  /// Convenience getter for the current navigation context.
  BuildContext? get context => navigatorKey.currentContext;

  /// Pushes a route by name if the navigator is available.
  Future<T?>? pushNamed<T extends Object?>(
    String routeName, {
    Object? arguments,
  }) {
    return navigatorKey.currentState?.pushNamed<T>(
      routeName,
      arguments: arguments,
    );
  }

  /// Pops the current route if possible.
  bool pop<T extends Object?>([T? result]) {
    final navigator = navigatorKey.currentState;
    if (navigator == null || !navigator.canPop()) {
      return false;
    }
    navigator.pop(result);
    return true;
  }

  /// Pops routes until the provided predicate returns true.
  void popUntil(bool Function(Route<dynamic>) predicate) {
    navigatorKey.currentState?.popUntil(predicate);
  }
}
