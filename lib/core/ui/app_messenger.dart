import 'package:flutter/material.dart';

class AppMessenger {
  AppMessenger._();

  /// Attach this to MaterialApp.router(scaffoldMessengerKey: ...)
  static final messengerKey = GlobalKey<ScaffoldMessengerState>();

  static ScaffoldMessengerState? get _state => messengerKey.currentState;

  /// Basic show snackbar (will hide current first)
  static void showSnackBar(SnackBar snackBar) {
    final state = _state;
    if (state == null) return;

    state
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

  /// Toast-like snackbar style (floating + rounded + shadow)
  static void showToast({
    required String message,
    IconData? icon,
    bool isError = false,
    Duration duration = const Duration(seconds: 2),
  }) {
    final bg = isError ? Colors.red.shade600 : Colors.black87;

    showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        elevation: 0,
        backgroundColor: Colors.transparent,
        duration: duration,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        padding: EdgeInsets.zero,
        content: Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
          decoration: BoxDecoration(
            color: bg,
            borderRadius: BorderRadius.circular(14),
            boxShadow: const [
              BoxShadow(
                blurRadius: 16,
                offset: Offset(0, 6),
                color: Colors.black26,
              ),
            ],
          ),
          child: Row(
            children: [
              if (icon != null) ...[
                Icon(icon, color: Colors.white, size: 18),
                const SizedBox(width: 10),
              ],
              Expanded(
                child: Text(
                  message,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 13.5,
                    height: 1.2,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static void hideCurrent() {
    _state?.hideCurrentSnackBar();
  }

  static void clear() {
    _state?.clearSnackBars();
  }
}
