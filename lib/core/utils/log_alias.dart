import 'app_logger.dart';

void logd(Object? message, {String? tag}) => AppLogger.d(message, tag: tag);
void logi(Object? message, {String? tag}) => AppLogger.i(message, tag: tag);
void logw(Object? message, {String? tag}) => AppLogger.w(message, tag: tag);
void loge(
  Object? message, {
  String? tag,
  Object? error,
  StackTrace? stackTrace,
}) => AppLogger.e(message, tag: tag, error: error, stackTrace: stackTrace);
