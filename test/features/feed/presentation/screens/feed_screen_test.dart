import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:velora/features/feed/domain/entities/feed_entity.dart';
import 'package:velora/features/feed/presentation/bloc/feed_bloc.dart';
import 'package:velora/features/feed/presentation/bloc/feed_event.dart';
import 'package:velora/features/feed/presentation/bloc/feed_state.dart';
import 'package:velora/features/feed/presentation/screens/feed_screen.dart';
import 'package:velora/features/feed/presentation/widgets/feed_loading_shimmer.dart';

class _MockFeedBloc extends MockBloc<FeedEvent, FeedState>
    implements FeedBloc {}

void main() {
  setUpAll(() {
    registerFallbackValue(const FeedEvent.clearTransient());
  });
  late _MockFeedBloc bloc;

  setUp(() {
    bloc = _MockFeedBloc();
    when(() => bloc.add(any())).thenReturn(null);
  });

  Future<void> pumpScreen(
    WidgetTester tester, {
    required FeedState state,
  }) async {
    when(() => bloc.state).thenReturn(state);
    when(() => bloc.stream).thenAnswer(
      (_) => const Stream<FeedState>.empty(),
    );
    await tester.pumpWidget(
      MaterialApp(
        home: BlocProvider<FeedBloc>.value(
          value: bloc,
          child: const FeedScreen(),
        ),
      ),
    );
    await tester.pump();
  }

  testWidgets('shows shimmer when loading initial feed', (tester) async {
    await pumpScreen(
      tester,
      state: const FeedState(isLoadingInitial: true),
    );

    expect(find.byType(FeedLoadingShimmer), findsOneWidget);
    verify(() => bloc.add(const FeedEvent.loadInitialFeed())).called(1);
  });

  testWidgets('renders posts when available', (tester) async {
    await pumpScreen(
      tester,
      state: FeedState(
        posts: [
          FeedEntity(
            id: 'post-1',
            userId: 'user-1',
            content: 'Content',
            createdAt: DateTime.utc(2024, 1, 1),
          ),
        ],
      ),
    );

    expect(find.text('Content'), findsOneWidget);
  });
}
