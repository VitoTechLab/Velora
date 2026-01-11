import 'package:mocktail/mocktail.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class MockSupabaseClient extends Mock implements SupabaseClient {}

// class MockGoTrueClient extends Mock implements SupabaseAuth{}
class MockGoTrueClient extends Mock implements GoTrueClient {}

class MockSupabaseUser extends Mock implements User {}

class MockRealtimeChannel extends Mock implements RealtimeChannel {}

class MockSupabaseQueryBuilder extends Mock implements SupabaseQueryBuilder {}

class MockPostgrestQueryBuilder extends Mock implements PostgrestQueryBuilder {}

class MockPostgrestFilterBuilder<T> extends Mock
    implements PostgrestFilterBuilder<T> {}

class MockPostgrestTransformBuilder<T> extends Mock
    implements PostgrestTransformBuilder<T> {}
