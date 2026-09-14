import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:velora/core/di/service_locator.dart';
import 'package:velora/features/chat/presentation/bloc/chat_message_bloc.dart';
import 'package:velora/features/chat/presentation/bloc/chat_message_event.dart';
import 'package:velora/features/chat/presentation/bloc/chat_message_state.dart';
import 'package:velora/features/chat/presentation/widgets/chat_widgets.dart';
import 'package:velora/l10n/app_localizations.dart';
import 'package:velora/routes/app_router.dart';

class ChatScreen extends HookWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final t = AppLocalizations.of(context)!;

    final scrollController = useScrollController();

    final animationController = useAnimationController(
      duration: const Duration(milliseconds: 300),
    );
    final fadeAnimation = useMemoized(
      () =>
          CurvedAnimation(parent: animationController, curve: Curves.easeInOut),
      [animationController],
    );

    useEffect(() {
      animationController.forward();
      return null;
    }, [animationController]);

    final backgroundColor = colorScheme.surface;

    final bloc = useMemoized(() => getIt<ChatMessageBloc>(), []);

    useEffect(() {
      return () => bloc.close();
    }, [bloc]);

    useEffect(() {
      bloc.add(const LoadConversationListEvent());
      return null;
    }, [bloc]);

    useEffect(() {
      void onRouteChange() {
        if (!bloc.isClosed) {
          bloc.add(const RefreshConversationListEvent());
        }
      }

      final router = GoRouter.of(context);
      router.routerDelegate.addListener(onRouteChange);
      return () => router.routerDelegate.removeListener(onRouteChange);
    }, [bloc]);

    return BlocProvider.value(
      value: bloc,
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(color: colorScheme.surface),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          toolbarHeight: 64,
          title: TweenAnimationBuilder<double>(
            duration: const Duration(milliseconds: 600),
            tween: Tween(begin: 0.0, end: 1.0),
            curve: Curves.easeOutCubic,
            builder: (context, value, child) {
              return Opacity(
                opacity: value,
                child: Transform.translate(
                  offset: Offset(-20 * (1 - value), 0),
                  child: child,
                ),
              );
            },
            child: Semantics(
              header: true,
              child: Text(
                t.chatScreenTitle,
                style: textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: colorScheme.onSurface,
                  letterSpacing: 0.5,
                ),
              ),
            ),
          ),
          actions: [
            TweenAnimationBuilder<double>(
              duration: const Duration(milliseconds: 500),
              tween: Tween(begin: 0.0, end: 1.0),
              curve: Curves.easeOutBack,
              builder: (context, value, child) {
                return Transform.scale(
                  scale: 0.82 + (0.18 * value),
                  child: Opacity(opacity: value.clamp(0.0, 1.0), child: child),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 12),
                child: ChatIconButton(
                  icon: Icons.more_horiz_rounded,
                  tooltip: t.chatScreenNewChatLabel,
                  onPressed: () {
                    // Chat options will be connected to future campaign/chat filters.
                  },
                ),
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: FadeTransition(
            opacity: fadeAnimation,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
                  child: Column(
                    children: [
                      TweenAnimationBuilder<double>(
                        duration: const Duration(milliseconds: 600),
                        tween: Tween(begin: 0.0, end: 1.0),
                        curve: Curves.easeOutCubic,
                        builder: (context, value, child) {
                          return Opacity(
                            opacity: value,
                            child: Transform.translate(
                              offset: Offset(0, 20 * (1 - value)),
                              child: child,
                            ),
                          );
                        },
                        child: ChatSearchField(
                          hintText: t.chatSearchBarPlaceholder,
                          onTap: () =>
                              context.pushNamed(AppRouteName.searchFollowUser),
                        ),
                      ),
                      const SizedBox(height: 12),
                      TweenAnimationBuilder<double>(
                        duration: const Duration(milliseconds: 700),
                        tween: Tween(begin: 0.0, end: 1.0),
                        curve: Curves.easeOutCubic,
                        builder: (context, value, child) {
                          return Opacity(
                            opacity: value,
                            child: Transform.translate(
                              offset: Offset(0, 20 * (1 - value)),
                              child: child,
                            ),
                          );
                        },
                        child:
                            BlocSelector<
                              ChatMessageBloc,
                              ChatMessageState,
                              String
                            >(
                              selector: (state) => state.selectedFilter,
                              builder: (context, selectedFilter) {
                                return ChatFilterChips(
                                  selectedFilter: selectedFilter,
                                  onFilterSelected: (filter) {
                                    context.read<ChatMessageBloc>().add(
                                      ChatMessageEvent.setChatFilter(filter),
                                    );
                                  },
                                );
                              },
                            ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: TweenAnimationBuilder<double>(
                    duration: const Duration(milliseconds: 800),
                    tween: Tween(begin: 0.0, end: 1.0),
                    curve: Curves.easeOutCubic,
                    builder: (context, value, child) {
                      return Opacity(opacity: value, child: child);
                    },
                    child: ConversationListWidget(
                      scrollController: scrollController,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
