import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:velora/features/feed/domain/entities/feed_entity.dart';
import 'package:velora/features/feed/presentation/bloc/feed_bloc.dart';
import 'package:velora/features/feed/presentation/bloc/feed_event.dart';
import 'package:velora/features/feed/presentation/bloc/feed_state.dart';
import 'package:velora/features/feed/presentation/screens/feed_screen.dart';
import 'package:velora/features/feed/presentation/widgets/feed_loading_shimmer.dart';
import 'package:velora/features/social_relation/presentation/bloc/social_relation_bloc.dart';
import 'package:velora/features/social_relation/presentation/bloc/social_relation_event.dart';
import 'package:velora/features/social_relation/presentation/bloc/social_relation_state.dart';
import 'package:velora/l10n/app_localizations.dart';

class _MockFeedBloc extends MockBloc<FeedEvent, FeedState>
    implements FeedBloc {}

class _MockSocialRelationBloc
    extends MockBloc<SocialRelationEvent, SocialRelationState>
    implements SocialRelationBloc {}

void main() {
  setUpAll(() {
    registerFallbackValue(const FeedEvent.clearTransient());
    registerFallbackValue(const SocialRelationEvent.clearError());
  });

  late _MockFeedBloc feedBloc;
  late _MockSocialRelationBloc socialBloc;

  setUp(() {
    feedBloc = _MockFeedBloc();
    socialBloc = _MockSocialRelationBloc();
    when(() => feedBloc.add(any())).thenReturn(null);
    when(() => socialBloc.state).thenReturn(const SocialRelationState());
    when(() => socialBloc.stream)
        .thenAnswer((_) => const Stream<SocialRelationState>.empty());
  });

  Future<void> pumpScreen(
    WidgetTester tester, {
    required FeedState state,
  }) async {
    when(() => feedBloc.state).thenReturn(state);
    when(() => feedBloc.stream).thenAnswer((_) => const Stream<FeedState>.empty());
    await tester.pumpWidget(
      MaterialApp(
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [Locale('en')],
        home: MultiBlocProvider(
          providers: [
            BlocProvider<FeedBloc>.value(value: feedBloc),
            BlocProvider<SocialRelationBloc>.value(value: socialBloc),
          ],
          child: const FeedScreen(),
        ),
      ),
    );
    await tester.pump(const Duration(milliseconds: 100));
  }

  testWidgets('shows shimmer when loading initial feed', (tester) async {
    await pumpScreen(tester, state: const FeedState(isLoadingInitial: true));

    expect(find.byType(FeedLoadingShimmer), findsOneWidget);
    verify(() => feedBloc.add(const FeedEvent.loadInitialFeed())).called(1);
  });

  testWidgets('renders posts when available', (tester) async {
    await pumpScreen(
      tester,
      state: FeedState(
        posts: [
          FeedEntity(
            id: 'post-1',
            userId: 'user-1',
            username: 'testuser',
            content: 'Content',
            createdAt: DateTime.utc(2024, 1, 1),
          ),
        ],
      ),
    );

    expect(find.textContaining('Content', findRichText: true), findsWidgets);
  });

  testWidgets('shows empty state when no posts', (tester) async {
    await pumpScreen(tester, state: const FeedState(posts: []));

    expect(find.byType(FeedLoadingShimmer), findsNothing);
  });

  testWidgets('loads more posts when scrolling to bottom', (tester) async {
    final posts = List.generate(
      20,
      (i) => FeedEntity(
        id: 'post-$i',
        userId: 'user-$i',
        username: 'user$i',
        content: 'Content $i',
        createdAt: DateTime.utc(2024, 1, 1),
      ),
    );

    await pumpScreen(tester, state: FeedState(posts: posts, hasMore: true));

    // Scroll to bottom
    await tester.drag(find.byType(FeedScreen), const Offset(0, -500));
    await tester.pump();

    // Should trigger load more event
    verify(() => feedBloc.add(const FeedEvent.loadMoreFeed())).called(greaterThan(0));
  });
}
