import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:velora/core/errors/exceptions.dart';

AppException mapPostgrestException(PostgrestException error) {
  final message = error.message;
  final code = (error.code ?? '').toString();
  final details = (error.details ?? '').toString();

  final lower = '${message.toLowerCase()} ${details.toLowerCase()}';

  // Not found patterns
  if (lower.contains('not found') ||
      lower.contains('0 rows') ||
      lower.contains('results contain 0 rows')) {
    return NotFoundException(message);
  }

  // Validation / constraint patterns (Postgres + PostgREST common codes)
  const validationCodes = {
    '22P02', // invalid_text_representation
    '22007', // invalid_datetime_format
    '23502', // not_null_violation
    '23503', // foreign_key_violation
    '23505', // unique_violation
    '23514', // check_violation
    'PGRST100',
    'PGRST101',
    'PGRST102',
    'PGRST103',
    'PGRST104',
    'PGRST105',
    'PGRST106',
    'PGRST107',
    'PGRST108',
    'PGRST109',
    'PGRST110',
  };

  if (validationCodes.contains(code) ||
      lower.contains('violates') ||
      lower.contains('invalid') ||
      lower.contains('constraint') ||
      lower.contains('check constraint') ||
      lower.contains('foreign key') ||
      lower.contains('not-null') ||
      lower.contains('duplicate key')) {
    return ValidationException(message);
  }

  return ServerException(message);
}
