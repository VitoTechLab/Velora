import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:velora/core/utils/format_utils.dart';
import 'package:velora/features/chat/domain/entities/conversation_list_entity.dart';
import 'package:velora/features/chat/presentation/bloc/chat_message_bloc.dart';
import 'package:velora/features/chat/presentation/bloc/chat_message_event.dart';
import 'package:velora/features/chat/presentation/bloc/chat_message_state.dart';
import 'package:velora/features/chat/presentation/widgets/chat_list_item.dart';
import 'package:velora/features/navigation/models/chat_detail_args.dart';
import 'package:velora/l10n/app_localizations.dart';
import 'package:velora/routes/app_router.dart';

/// Modular conversation list widget
/// Handles filtering, search, and navigation
/// Prevents rebuilds of parent widget
class ConversationListWidget extends StatelessWidget {
  final ScrollController scrollController;

  const ConversationListWidget({
    super.key,
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final t = AppLocalizations.of(context)!;

    return BlocBuilder<ChatMessageBloc, ChatMessageState>(
      builder: (context, state) {
        if (state.isLoadingConversations) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state.conversationsError != null) {
          return _buildErrorView(context, state, colorScheme, textTheme, t);
        }

        final filteredConversations = _getFilteredConversations(state);

        if (filteredConversations.isEmpty) {
          return _buildEmptyView(context, state, colorScheme, textTheme, t);
        }

        return _buildConversationList(
          context,
          filteredConversations,
          t,
        );
      },
    );
  }

  /// Apply search and filter to conversations
  List<ConversationListEntity> _getFilteredConversations(
    ChatMessageState state,
  ) {
    var conversations = state.conversations;
    final searchQuery = state.searchQuery.trim().toLowerCase();

    if (searchQuery.isNotEmpty) {
      // Apply search filter
      return conversations.where((conv) {
        final name = (conv.otherUserFullName ?? conv.otherUserUsername ?? '')
            .toLowerCase();
        final lastMessage = (conv.lastMessageBody ?? '').toLowerCase();
        return name.contains(searchQuery) || lastMessage.contains(searchQuery);
      }).toList();
    }

    // Apply category filter
    return conversations.where((conv) {
      switch (state.selectedFilter) {
        case 'unread':
          return conv.unreadCount > 0;
        case 'favourites':
          // TODO: Add isFavourite field to ConversationListEntity
          return false;
        case 'groups':
          // Heuristic: treat conversations without a specific otherUserId as groups
          return conv.otherUserId == null;
        case 'all':
        default:
          return true;
      }
    }).toList();
  }

  Widget _buildErrorView(
    BuildContext context,
    ChatMessageState state,
    ColorScheme colorScheme,
    TextTheme textTheme,
    AppLocalizations t,
  ) {
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
                    const ChatMessageEvent.loadConversationList(),
                  );
            },
            icon: const Icon(Icons.refresh),
            label: Text(t.chatScreenRetry),
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyView(
    BuildContext context,
    ChatMessageState state,
    ColorScheme colorScheme,
    TextTheme textTheme,
    AppLocalizations t,
  ) {
    final hasSearch = state.searchQuery.trim().isNotEmpty;
    final isFiltered = state.selectedFilter != 'all';

    return Center(
      child: TweenAnimationBuilder<double>(
        tween: Tween(begin: 0.0, end: 1.0),
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeOutCubic,
        builder: (context, value, child) {
          return Transform.scale(
            scale: 0.9 + (0.1 * value),
            child: Opacity(
              opacity: value,
              child: child,
            ),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ShaderMask(
              shaderCallback: (bounds) => LinearGradient(
                colors: [
                  colorScheme.primary.withValues(alpha: 0.6),
                  colorScheme.secondary.withValues(alpha: 0.6),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ).createShader(bounds),
              child: Icon(
                hasSearch ? Icons.search_off : Icons.chat_bubble_outline,
                size: 80,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              hasSearch
                  ? 'No results for "${state.searchQuery}"'
                  : isFiltered
                      ? 'No ${state.selectedFilter} chats'
                      : t.chatScreenNoChats,
              style: textTheme.titleLarge?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              hasSearch
                  ? 'Try searching for something else'
                  : isFiltered
                      ? 'Try selecting a different filter'
                      : t.chatScreenNoChatsHint,
              style: textTheme.bodyMedium?.copyWith(
                color: colorScheme.outline,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildConversationList(
    BuildContext context,
    List<ConversationListEntity> conversations,
    AppLocalizations t,
  ) {
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
          return TweenAnimationBuilder<double>(
            key: ValueKey('chat_${conversation.conversationId}'),
            tween: Tween(begin: 0.0, end: 1.0),
            duration: Duration(milliseconds: 300 + (index * 50).clamp(0, 500)),
            curve: Curves.easeOutCubic,
            builder: (context, value, child) {
              return Transform.translate(
                offset: Offset(0, 20 * (1 - value)),
                child: Opacity(
                  opacity: value,
                  child: child,
                ),
              );
            },
            child: _ConversationListItemWidget(
              conversation: conversation,
              t: t,
            ),
          );
        },
      ),
    );
  }
}

/// Separate widget for list item to prevent rebuilds
class _ConversationListItemWidget extends StatelessWidget {
  final ConversationListEntity conversation;
  final AppLocalizations t;

  const _ConversationListItemWidget({
    required this.conversation,
    required this.t,
  });

  @override
  Widget build(BuildContext context) {
    final isGroup = conversation.otherUserId == null;

    // Check if peer user is typing (for 1-on-1 chats only)
    return BlocSelector<ChatMessageBloc, ChatMessageState, bool>(
      selector: (state) {
        if (isGroup) return false;
        return state.typingUsers.containsKey(conversation.otherUserId);
      },
      builder: (context, isTyping) {
        // Determine message preview - show typing if peer is typing
        final messagePreview = isTyping
            ? t.chatScreenTyping
            : (conversation.lastMessageBody ?? '');

        return ChatListItem(
          profileImageUrl: conversation.otherUserAvatarUrl ??
              'https://i.pravatar.cc/150?img=12',
          name: conversation.otherUserFullName ??
              conversation.otherUserUsername ??
              (isGroup ? t.chatScreenUnnamedGroup : t.chatScreenUnnamed),
          message: messagePreview,
          time: conversation.lastMessageAt != null
              ? FormatUtils.formatChatListTime(conversation.lastMessageAt!)
              : '',
          isRead: conversation.unreadCount == 0,
          messageType: null,
          unreadCount:
              conversation.unreadCount > 0 ? conversation.unreadCount : null,
          isGroup: isGroup,
          isTyping: isTyping,
          onTap: () {
            context.pushNamed(
              AppRouteName.chatDetail,
              extra: ChatDetailArgs(
                conversationId: conversation.conversationId,
                chatName: conversation.otherUserFullName ??
                    conversation.otherUserUsername ??
                    (isGroup ? t.chatScreenUnnamedGroup : t.chatScreenUnnamed),
                chatSubtitle: isGroup
                    ? t.chatDetailGroupSubtitle
                    : t.chatDetailSelfSubtitle,
                profileImageUrl: conversation.otherUserAvatarUrl ??
                    'https://i.pravatar.cc/150?img=12',
                isGroup: isGroup,
                peerUserId: isGroup ? null : conversation.otherUserId,
              ),
            );
          },
        );
      },
    );
  }
}
