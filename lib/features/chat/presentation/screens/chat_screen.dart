import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:velora/core/di/service_locator.dart';
import 'package:velora/features/chat/presentation/bloc/chat_message_bloc.dart';
import 'package:velora/features/chat/presentation/bloc/chat_message_event.dart';
import 'package:velora/features/chat/presentation/bloc/chat_message_state.dart';
import 'package:velora/features/chat/presentation/screens/chat_detail_screen.dart';
import 'package:velora/features/chat/presentation/widgets/chat_filter_chips.dart';
import 'package:velora/features/chat/presentation/widgets/chat_list_item.dart';
import 'package:velora/features/chat/presentation/widgets/chat_search_bar.dart';
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

    final selectedFilter = useState<String>('all');
    final searchController = useTextEditingController();
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
                      ChatSearchBar(
                        controller: searchController,
                        onChanged: (value) {
                          // Implement search functionality
                        },
                      ),
                      const SizedBox(height: 12),
                      ChatFilterChips(
                        selectedFilter: selectedFilter.value,
                        onFilterSelected: (filter) {
                          selectedFilter.value = filter;
                        },
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: BlocBuilder<ChatMessageBloc, ChatMessageState>(
                    builder: (context, state) {
                      if (state.isLoadingConversations) {
                        return const Center(child: CircularProgressIndicator());
                      }

                      if (state.conversationsError != null) {
                        return Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.error_outline,
                                size: 64,
                                color: colorScheme.error,
                              ),
                              const SizedBox(height: 16),
                              Text(
                                state.conversationsError!,
                                style: textTheme.bodyLarge?.copyWith(
                                  color: colorScheme.error,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 16),
                              FilledButton.icon(
                                onPressed: () {
                                  context.read<ChatMessageBloc>().add(
                                    const LoadConversationListEvent(),
                                  );
                                },
                                icon: const Icon(Icons.refresh),
                                label: Text(t.chatScreenRetry),
                              ),
                            ],
                          ),
                        );
                      }

                      final conversations = state.conversations;

                      if (conversations.isEmpty) {
                        return Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.chat_bubble_outline,
                                size: 80,
                                color: colorScheme.outline,
                              ),
                              const SizedBox(height: 16),
                              Text(
                                t.chatScreenNoChats,
                                style: textTheme.titleLarge?.copyWith(
                                  color: colorScheme.onSurfaceVariant,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                t.chatScreenNoChatsHint,
                                style: textTheme.bodyMedium?.copyWith(
                                  color: colorScheme.outline,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        );
                      }

                      return Semantics(
                        label: t.chatScreenListLabel,
                        hint: t.chatScreenListHint,
                        child: ListView.builder(
                          controller: scrollController,
                          physics: const AlwaysScrollableScrollPhysics(
                            parent: BouncingScrollPhysics(),
                          ),
                          itemCount: conversations.length,
                          itemBuilder: (context, index) {
                            final conversation = conversations[index];
                            final isGroup = conversation.type == 'group';

                            return ChatListItem(
                              key: ValueKey(
                                'chat_${conversation.conversationId}',
                              ),
                              profileImageUrl:
                                  conversation.photoUrl ??
                                  'https://i.pravatar.cc/150?img=12',
                              name:
                                  conversation.title ??
                                  (isGroup
                                      ? t.chatScreenUnnamedGroup
                                      : t.chatScreenUnnamed),
                              message: conversation.lastMessagePreview ?? '',
                              time: conversation.lastMessageAt != null
                                  ? _formatTime(conversation.lastMessageAt!)
                                  : '',
                              isRead: conversation.unreadCount == 0,
                              messageType: _getMessageType(
                                conversation.lastMessageKind,
                              ),
                              unreadCount: conversation.unreadCount > 0
                                  ? conversation.unreadCount
                                  : null,
                              isGroup: isGroup,
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ChatDetailScreen(
                                      conversationId:
                                          conversation.conversationId,
                                      chatName:
                                          conversation.title ??
                                          (isGroup
                                              ? t.chatScreenUnnamedGroup
                                              : t.chatScreenUnnamed),
                                      chatSubtitle: isGroup
                                          ? t.chatDetailGroupSubtitle
                                          : t.chatDetailSelfSubtitle,
                                      profileImageUrl:
                                          conversation.photoUrl ??
                                          'https://i.pravatar.cc/150?img=12',
                                      isGroup: isGroup,
                                      peerUserId: isGroup
                                          ? null
                                          : conversation.userId,
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String _formatTime(DateTime dateTime) {
    final now = DateTime.now();
    final difference = now.difference(dateTime);

    if (difference.inDays == 0) {
      return '${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}';
    } else if (difference.inDays == 1) {
      return 'Yesterday';
    } else if (difference.inDays < 7) {
      final weekday = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
      return weekday[dateTime.weekday - 1];
    } else {
      return '${dateTime.day}/${dateTime.month}/${dateTime.year}';
    }
  }

  String? _getMessageType(String? kind) {
    if (kind == null) return null;
    return kind; // 'text', 'media', 'call', etc.
  }
}
