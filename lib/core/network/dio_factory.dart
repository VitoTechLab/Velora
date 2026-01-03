import 'package:dio/dio.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

/// Central place to create configured Dio clients.
class DioFactory {
  DioFactory._();

  /// Supabase Edge Functions client
  ///
  /// - Base URL: `${SUPABASE_URL}/functions/v1`
  /// - Headers:
  ///   - `apikey`: SUPABASE_ANON_KEY
  ///   - `Authorization`: Bearer <accessToken or anonKey>
  static Dio createSupabaseFunctionsClient() {
    const supabaseUrl = String.fromEnvironment(
      'SUPABASE_URL',
      defaultValue: 'https://tijcakstwzujiloygutb.supabase.co',
    );
    const supabaseAnonKey = String.fromEnvironment(
      'SUPABASE_ANON_KEY',
      defaultValue: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRpamNha3N0d3p1amlsb3lndXRiIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjUxOTY2NTIsImV4cCI6MjA4MDc3MjY1Mn0.OCUPxofIx3ZY_ore0iK8eZ4_Dk2izBJpU8OEZNeEVJU',
    );

    if (supabaseUrl.isEmpty || supabaseAnonKey.isEmpty) {
      throw StateError(
        'Supabase env missing. Ensure SUPABASE_URL and SUPABASE_ANON_KEY are set.',
      );
    }

    final dio = Dio(
      BaseOptions(
        baseUrl: '$supabaseUrl/functions/v1',
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 30),
      ),
    );

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          String token = supabaseAnonKey;

          try {
            final client = Supabase.instance.client;
            final session = client.auth.currentSession;
            if (session != null && session.accessToken.isNotEmpty) {
              token = session.accessToken;
            }
          } catch (_) {
            // Supabase might not be initialized yet; fall back to anon key
          }

          options.headers;
          options.headers['apikey'] = supabaseAnonKey;
          options.headers['Authorization'] = 'Bearer $token';

          handler.next(options);
        },
      ),
    );

    return dio;
  }

  /// Cloudinary client (no baseUrl, uses full upload URL)
  static Dio createCloudinaryClient() {
    return Dio(
      BaseOptions(
        connectTimeout: const Duration(seconds: 15),
        receiveTimeout: const Duration(seconds: 60),
      ),
    );
  }
}
