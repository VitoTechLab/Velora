import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:velora/core/utils/log_alias.dart';

class SupabaseInitializer {
  const SupabaseInitializer._();

  static bool _initialized = false;

  static Future<SupabaseClient?> initialize() async {
    if (_initialized) {
      return Supabase.instance.client;
    }

    final supabaseUrl = dotenv.get(
      'SUPABASE_URL',
      fallback: 'https://tijcakstwzujiloygutb.supabase.co',
    );
    final supabaseAnonKey = dotenv.get(
      'SUPABASE_ANON_KEY',
      fallback:
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRpamNha3N0d3p1amlsb3lndXRiIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjUxOTY2NTIsImV4cCI6MjA4MDc3MjY1Mn0.OCUPxofIx3ZY_ore0iK8eZ4_Dk2izBJpU8OEZNeEVJU',
    );

    if (supabaseUrl.isEmpty || supabaseAnonKey.isEmpty) {
      logw('Supabase env missing; skipping initialization');
      return null;
    }

    try {
      await Supabase.initialize(url: supabaseUrl, anonKey: supabaseAnonKey);
      _initialized = true;
      logi('Supabase initialized');
      return Supabase.instance.client;
    } catch (error, stackTrace) {
      loge(
        'Failed to initialize Supabase',
        error: error,
        stackTrace: stackTrace,
      );
      return null;
    }
  }
}
