import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

/// Defines the log level the application cares about.
enum AppLogLevel { debug, info, warning, error }

class AppLogger {
  AppLogger._();

  static AppLogLevel minLevel = AppLogLevel.debug;
  static String defaultTag = 'APP';
  static bool showTimestamp = true;

  static final Logger _logger = Logger(
    printer: PrettyPrinter(
      methodCount: 0,
      errorMethodCount: 5,
      lineLength: 100,
      colors: true,
      printEmojis: true,
    ),
  );

  static void d(Object? message, {String? tag}) {
    if (!_canLog(AppLogLevel.debug)) return;
    _log(Level.debug, message, tag: tag);
  }

  static void i(Object? message, {String? tag}) {
    if (!_canLog(AppLogLevel.info)) return;
    _log(Level.info, message, tag: tag);
  }

  static void w(Object? message, {String? tag}) {
    if (!_canLog(AppLogLevel.warning)) return;
    _log(Level.warning, message, tag: tag);
  }

  static void e(
    Object? message, {
    String? tag,
    Object? error,
    StackTrace? stackTrace,
  }) {
    if (!_canLog(AppLogLevel.error)) return;
    _log(Level.error, message, tag: tag, error: error, stackTrace: stackTrace);
  }

  static bool _canLog(AppLogLevel level) {
    if (!kDebugMode) return false;
    return level.index >= minLevel.index;
  }

  static void _log(
    Level level,
    Object? message, {
    String? tag,
    Object? error,
    StackTrace? stackTrace,
  }) {
    final now = DateTime.now();
    final timestamp = showTimestamp ? '[${now.toIso8601String()}] ' : '';
    final resolvedTag = tag ?? defaultTag;

    final formatted = StringBuffer()
      ..write(timestamp)
      ..write('[$resolvedTag] ')
      ..write(message);

    _logger.log(
      level,
      formatted.toString(),
      error: error,
      stackTrace: stackTrace,
    );
  }
}
