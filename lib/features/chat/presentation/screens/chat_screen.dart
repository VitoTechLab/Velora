import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:velora/core/di/service_locator.dart';
import 'package:velora/features/chat/presentation/bloc/chat_message_bloc.dart';
import 'package:velora/features/chat/presentation/bloc/chat_message_event.dart';
import 'package:velora/features/chat/presentation/bloc/chat_message_state.dart';
import 'package:velora/features/chat/presentation/widgets/chat_filter_chips.dart';
import 'package:velora/features/chat/presentation/widgets/conversation_list_widget.dart';
import 'package:velora/l10n/app_localizations.dart';
import 'package:velora/routes/app_router.dart';

/// Optimized chat screen with modular conversation list
/// Uses BlocSelector to prevent unnecessary rebuilds
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
    final appBarColor = colorScheme.surface;

    return BlocProvider(
      create: (context) =>
          getIt<ChatMessageBloc>()..add(const LoadConversationListEvent()),
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          backgroundColor: appBarColor,
          elevation: 0,
          toolbarHeight: 64,
          title: Semantics(
            header: true,
            child: Text(
              t.chatScreenTitle,
              style: textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: colorScheme.onSurface,
              ),
            ),
          ),
          actions: [
            Semantics(
              button: true,
              label: t.chatScreenNewChatLabel,
              child: IconButton(
                icon: Icon(
                  Icons.add_box_outlined,
                  color: colorScheme.onSurface,
                ),
                onPressed: () {
                  context.pushNamed(AppRouteName.searchFollowUser);
                },
                tooltip: t.chatScreenNewChatTooltip,
              ),
            ),
            const SizedBox(width: 8),
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
                      GestureDetector(
                        onTap: () =>
                            context.pushNamed(AppRouteName.searchFollowUser),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 12,
                          ),
                          decoration: BoxDecoration(
                            color: colorScheme.surfaceContainerHighest,
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.search,
                                color: colorScheme.onSurfaceVariant,
                                size: 20,
                              ),
                              const SizedBox(width: 12),
                              Text(
                                'Search',
                                style: textTheme.bodyMedium?.copyWith(
                                  color: colorScheme.onSurfaceVariant
                                      .withOpacity(0.6),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      BlocSelector<ChatMessageBloc, ChatMessageState, String>(
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
                    ],
                  ),
                ),
                Expanded(
                  child: ConversationListWidget(
                    scrollController: scrollController,
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
