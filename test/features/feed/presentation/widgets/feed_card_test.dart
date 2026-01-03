import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:velora/features/feed/domain/entities/feed_entity.dart';
import 'package:velora/features/feed/presentation/bloc/feed_bloc.dart';
import 'package:velora/features/feed/presentation/bloc/feed_event.dart';
import 'package:velora/features/feed/presentation/bloc/feed_state.dart';
import 'package:velora/features/feed/presentation/widgets/feed_card.dart';

class _MockFeedBloc extends MockBloc<FeedEvent, FeedState>
    implements FeedBloc {}

void main() {
  setUpAll(() {
    registerFallbackValue(const FeedEvent.clearTransient());
  });
  late _MockFeedBloc bloc;
  const post = FeedEntity(
    id: 'post-1',
    userId: 'user-1',
    content: 'Feed content',
    createdAt: DateTime.utc(2024, 1, 1),
  );

  setUp(() {
    bloc = _MockFeedBloc();
    when(() => bloc.state).thenReturn(const FeedState());
    when(() => bloc.stream).thenAnswer(
      (_) => const Stream<FeedState>.empty(),
    );
    when(() => bloc.add(any())).thenReturn(null);
  });

  Widget buildWidget() {
    return MaterialApp(
      home: BlocProvider<FeedBloc>.value(
        value: bloc,
        child: Scaffold(
          body: FeedCard(post: post),
        ),
      ),
    );
  }

  testWidgets('tapping like triggers toggle event', (tester) async {
    await tester.pumpWidget(buildWidget());

    await tester.tap(find.byIcon(Icons.favorite_border).first);

    verify(() => bloc.add(const FeedEvent.toggleLikePost('post-1'))).called(1);
  });

  testWidgets('tapping bookmark triggers toggle bookmark event',
      (tester) async {
    await tester.pumpWidget(buildWidget());

    await tester.tap(find.byIcon(Icons.bookmark_border));

    verify(() => bloc.add(const FeedEvent.toggleBookmarkPost('post-1')))
        .called(1);
  });
}
