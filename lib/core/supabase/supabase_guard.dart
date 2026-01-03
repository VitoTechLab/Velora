import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:velora/core/errors/exceptions.dart';
import 'package:velora/core/supabase/postgrest_error_mapper.dart';
import 'package:velora/core/utils/log_alias.dart';

Future<T> guardSupabase<T>(
  Future<T> Function() action, {
  required String op,
  required String tag,
}) async {
  try {
    return await action();
  } on PostgrestException catch (error, stackTrace) {
    final mapped = mapPostgrestException(error);

    if (mapped is NotFoundException) {
      logw('Supabase op=$op not found: ${error.message}', tag: tag);
    } else if (mapped is ValidationException) {
      logw('Supabase op=$op validation: ${error.message}', tag: tag);
    } else {
      loge(
        'Supabase op=$op failed',
        tag: tag,
        error: error,
        stackTrace: stackTrace,
      );
    }

    throw mapped;
  } on AppException {
    rethrow;
  } catch (error, stackTrace) {
    loge(
      'Unknown error op=$op',
      tag: tag,
      error: error,
      stackTrace: stackTrace,
    );
    throw ServerException(error.toString());
  }
}
