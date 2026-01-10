import 'package:flutter/material.dart';

/// Provides imperative navigation for services and non-widget contexts.
class NavigationService {
  NavigationService({GlobalKey<NavigatorState>? navigatorKey})
    : navigatorKey = navigatorKey ?? GlobalKey<NavigatorState>();

  /// Root navigator key.
  final GlobalKey<NavigatorState> navigatorKey;

  /// Current navigation context.
  BuildContext? get context => navigatorKey.currentContext;

  /// Pushes a route by name.
  Future<T?>? pushNamed<T extends Object?>(
    String routeName, {
    Object? arguments,
  }) {
    return navigatorKey.currentState?.pushNamed<T>(
      routeName,
      arguments: arguments,
    );
  }

  /// Pops the current route.
  bool pop<T extends Object?>([T? result]) {
    final navigator = navigatorKey.currentState;
    if (navigator == null || !navigator.canPop()) {
      return false;
    }
    navigator.pop(result);
    return true;
  }

  /// Pops routes until predicate returns true.
  void popUntil(bool Function(Route<dynamic>) predicate) {
    navigatorKey.currentState?.popUntil(predicate);
  }
}
