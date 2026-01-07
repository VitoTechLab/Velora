
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:realtime_client/realtime_client.dart';
import 'package:postgrest/postgrest.dart';
import 'package:velora/core/errors/exceptions.dart';
import 'package:velora/core/supabase/supabase_constants.dart';
import 'package:velora/features/feed/data/datasources/feed_remote_datasource_impl.dart';
import 'package:velora/features/feed/data/models/comment_model.dart';
import 'package:velora/features/feed/data/models/feed_model.dart';
import '../../../../helpers/mock_supabase.dart';

void main() {
  setUpAll(() {
    registerFallbackValue(MockPostgrestQueryBuilder());
    registerFallbackValue(MockPostgrestFilterBuilder<Map<String, dynamic>>());
    registerFallbackValue(MockPostgrestTransformBuilder<dynamic>());
  });
  late MockSupabaseClient supabaseClient;
  late MockSupabaseAuth auth;
  late FeedRemoteDataSourceImpl dataSource;

  setUp(() {
    supabaseClient = MockSupabaseClient();
    auth = MockSupabaseAuth();
    when(() => supabaseClient.auth).thenReturn(auth);
    dataSource = FeedRemoteDataSourceImpl(supabaseClient: supabaseClient);
  });

  group('_requireUserId', () {
    test('throws UnauthenticatedException when user is null', () async {
      when(() => auth.currentUser).thenReturn(null);

      expect(
        () => dataSource.toggleLikePost('post-1'),
        throwsA(isA<UnauthenticatedException>()),
      );
    });
  });

  group('getFeed', () {
    test('returns mapped posts with pagination metadata', () async {
      final queryBuilder = MockPostgrestQueryBuilder();
      final filterBuilder = MockPostgrestFilterBuilder<Map<String, dynamic>>();
      final firstOrder = MockPostgrestTransformBuilder<PostgrestList>();
      final secondOrder = MockPostgrestTransformBuilder<PostgrestList>();
      final limitBuilder = MockPostgrestTransformBuilder<PostgrestList>();

      when(
        () => supabaseClient.from(SupabaseTables.feedPostsView),
      ).thenReturn(queryBuilder);
      when(() => queryBuilder.select()).thenReturn(filterBuilder);
      when(
        () => filterBuilder.order(
          any(),
          ascending: any(named: 'ascending'),
          nullsFirst: any(named: 'nullsFirst'),
          referencedTable: any(named: 'referencedTable'),
        ),
      ).thenReturn(firstOrder);
      when(
        () => firstOrder.order(
          any(),
          ascending: any(named: 'ascending'),
          nullsFirst: any(named: 'nullsFirst'),
          referencedTable: any(named: 'referencedTable'),
        ),
      ).thenReturn(secondOrder);
      when(
        () => secondOrder.limit(
          any(),
          referencedTable: any(named: 'referencedTable'),
        ),
      ).thenReturn(limitBuilder);
      final feed = FeedModel(
        id: 'post-1',
        userId: 'user-1',
        content: 'Hello',
        createdAt: DateTime.utc(2024, 1, 1),
      );
      when(
        () => limitBuilder.then<dynamic>(any(), onError: any(named: 'onError')),
      ).thenAnswer((invocation) {
        final onValue =
            invocation.positionalArguments[0] as dynamic Function(dynamic);
        return Future.value(
          onValue([feed.toJson(), feed.copyWith(id: 'post-2').toJson()]),
        );
      });

      final result = await dataSource.getFeed(limit: 1);

      expect(result.posts.length, 1);
      expect(result.hasMore, isTrue);
      expect(result.nextCursor?.id, equals('post-1'));
    });
  });

  group('addComment', () {
    test('inserts comment and returns model', () async {
      final user = MockSupabaseUser();
      when(() => auth.currentUser).thenReturn(user);
      when(() => user.id).thenReturn('user-1');

      final queryBuilder = MockPostgrestQueryBuilder();
      final insertBuilder = MockPostgrestFilterBuilder<Map<String, dynamic>>();
      final selectBuilder = MockPostgrestTransformBuilder<PostgrestList>();
      final singleBuilder = MockPostgrestTransformBuilder<PostgrestMap>();

      when(
        () => supabaseClient.from(SupabaseTables.feedComments),
      ).thenReturn(queryBuilder);
      when(() => queryBuilder.insert(any())).thenReturn(insertBuilder);
      when(() => insertBuilder.select()).thenReturn(selectBuilder);
      when(() => selectBuilder.single()).thenReturn(singleBuilder);

      final comment = CommentModel(
        id: 'comment-1',
        postId: 'post-1',
        userId: 'user-1',
        content: 'Nice!',
        createdAt: DateTime.utc(2024, 5, 1),
      );

      when(
        () =>
            singleBuilder.then<dynamic>(any(), onError: any(named: 'onError')),
      ).thenAnswer((invocation) {
        final onValue =
            invocation.positionalArguments[0] as dynamic Function(dynamic);
        return Future.value(onValue(comment.toJson()));
      });

      final result = await dataSource.addComment(
        postId: 'post-1',
        content: 'Nice!',
      );

      expect(result.id, equals('comment-1'));
      verify(() => queryBuilder.insert(any())).called(1);
    });
  });

  group('toggleBookmarkPost', () {
    final user = MockSupabaseUser();

    setUp(() {
      when(() => auth.currentUser).thenReturn(user);
      when(() => user.id).thenReturn('user-1');
    });

    test('inserts bookmark when none exists', () async {
      final queryBuilder = MockPostgrestQueryBuilder();
      final selectBuilder = MockPostgrestFilterBuilder<Map<String, dynamic>>();
      final maybeBuilder = MockPostgrestTransformBuilder<PostgrestMap?>();
      final insertBuilder = MockPostgrestFilterBuilder<Map<String, dynamic>>();

      when(
        () => supabaseClient.from(SupabaseTables.feedPostBookmarks),
      ).thenReturn(queryBuilder);
      when(() => queryBuilder.select()).thenReturn(selectBuilder);
      when(() => selectBuilder.eq(any(), any())).thenReturn(selectBuilder);
      when(() => selectBuilder.maybeSingle()).thenReturn(maybeBuilder);

      when(
        () => maybeBuilder.then<dynamic>(any(), onError: any(named: 'onError')),
      ).thenAnswer((invocation) {
        final onValue =
            invocation.positionalArguments[0] as dynamic Function(dynamic);
        return Future.value(onValue(null));
      });

      when(() => queryBuilder.insert(any())).thenReturn(insertBuilder);
      when(
        () =>
            insertBuilder.then<dynamic>(any(), onError: any(named: 'onError')),
      ).thenAnswer((invocation) {
        final onValue =
            invocation.positionalArguments[0] as dynamic Function(dynamic);
        return Future.value(onValue(null));
      });

      await dataSource.toggleBookmarkPost('post-1');

      verify(() => queryBuilder.insert(any())).called(1);
    });
  });

  group('watchNewComments', () {
    late MockRealtimeChannel channel;
    late void Function(PostgresChangePayload) capturedCallback;

    setUp(() {
      channel = MockRealtimeChannel();
      when(() => supabaseClient.channel(any())).thenReturn(channel);
      when(
        () => channel.onPostgresChanges(
          event: any(named: 'event'),
          schema: any(named: 'schema'),
          table: any(named: 'table'),
          filter: any(named: 'filter'),
          callback: any(named: 'callback'),
        ),
      ).thenAnswer((invocation) {
        capturedCallback =
            invocation.namedArguments[#callback]
                as void Function(PostgresChangePayload);
        return channel;
      });
      when(() => channel.subscribe()).thenReturn(channel);
      when(() => channel.unsubscribe()).thenAnswer((_) async => channel);
    });

    test('emits comment when Supabase payload received', () async {
      final stream = dataSource.watchNewComments(postId: 'post-1');

      final commentJson = CommentModel(
        id: 'comment-1',
        postId: 'post-1',
        userId: 'user-1',
        content: 'Nice!',
        createdAt: DateTime.utc(2024, 5, 1),
      ).toJson();

      final payload = PostgresChangePayload(
        schema: 'public',
        table: SupabaseTables.feedComments,
        commitTimestamp: DateTime.now(),
        eventType: PostgresChangeEvent.insert,
        newRecord: commentJson,
        oldRecord: const {},
        errors: null,
      );

      expectLater(
        stream,
        emits(
          predicate<CommentModel>(
            (value) => value.id == 'comment-1' && value.content == 'Nice!',
          ),
        ),
      );

      capturedCallback(payload);
    });

    test('stopWatch unsubscribes active channel', () async {
      dataSource.watchNewComments(postId: 'post-1');

      await dataSource.stopWatch();

      verify(() => channel.unsubscribe()).called(1);
    });
  });
}
