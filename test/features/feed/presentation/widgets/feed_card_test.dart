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
import 'package:velora/features/feed/presentation/widgets/feed_card.dart';
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

  final post = FeedEntity(
    id: 'post-1',
    userId: 'user-1',
    username: 'testuser',
    content: 'Feed content',
    createdAt: DateTime.utc(2024, 1, 1),
    isLiked: false,
    likesCount: 10,
    commentsCount: 5,
    isBookmarked: false,
  );

  setUp(() {
    feedBloc = _MockFeedBloc();
    socialBloc = _MockSocialRelationBloc();
    when(() => feedBloc.state).thenReturn(const FeedState());
    when(() => feedBloc.stream).thenAnswer((_) => const Stream<FeedState>.empty());
    when(() => feedBloc.add(any())).thenReturn(null);
    when(() => socialBloc.state).thenReturn(const SocialRelationState());
    when(() => socialBloc.stream)
        .thenAnswer((_) => const Stream<SocialRelationState>.empty());
    when(() => socialBloc.add(any())).thenReturn(null);
  });

  Widget buildWidget() {
    return MaterialApp(
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
        child: Scaffold(body: FeedCard(post: post)),
      ),
    );
  }

  testWidgets('renders post content correctly', (tester) async {
    await tester.pumpWidget(buildWidget());
    await tester.pump(const Duration(milliseconds: 100));

    expect(find.text('testuser'), findsWidgets);
    expect(find.textContaining('Feed content', findRichText: true), findsWidgets);
  });

  testWidgets('tapping like triggers toggle event', (tester) async {
    await tester.pumpWidget(buildWidget());
    await tester.pump(const Duration(milliseconds: 100));

    final likeButton = find.byIcon(Icons.favorite_border).first;
    await tester.tap(likeButton);
    await tester.pump();

    verify(() => feedBloc.add(const FeedEvent.toggleLikePost('post-1')))
        .called(1);
  });

  testWidgets('tapping bookmark triggers toggle bookmark event', (
    tester,
  ) async {
    await tester.pumpWidget(buildWidget());
    await tester.pump(const Duration(milliseconds: 100));

    final bookmarkButton = find.byIcon(Icons.bookmark_border);
    await tester.tap(bookmarkButton);
    await tester.pump();

    verify(() => feedBloc.add(const FeedEvent.toggleBookmarkPost('post-1')))
        .called(1);
  });

  testWidgets('displays like count', (tester) async {
    await tester.pumpWidget(buildWidget());
    await tester.pump(const Duration(milliseconds: 100));

    expect(find.text('10'), findsOneWidget);
  });
}
