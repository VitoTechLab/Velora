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
        final name = (conv.title ?? '').toLowerCase();
        final lastMessage = (conv.lastMessagePreview ?? '').toLowerCase();
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
          return conv.type == 'group';
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            hasSearch ? Icons.search_off : Icons.chat_bubble_outline,
            size: 80,
            color: colorScheme.outline,
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
        // Performance optimization: provide item extent hint
        itemExtent: 84, // Approximate height of ChatListItem
        itemCount: conversations.length,
        itemBuilder: (context, index) {
          final conversation = conversations[index];
          return _ConversationListItemWidget(
            key: ValueKey('chat_${conversation.conversationId}'),
            conversation: conversation,
            t: t,
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
    super.key,
    required this.conversation,
    required this.t,
  });

  @override
  Widget build(BuildContext context) {
    final isGroup = conversation.type == 'group';

    return ChatListItem(
      profileImageUrl:
          conversation.photoUrl ?? 'https://i.pravatar.cc/150?img=12',
      name: conversation.title ??
          (isGroup ? t.chatScreenUnnamedGroup : t.chatScreenUnnamed),
      message: conversation.lastMessagePreview ?? '',
      time: conversation.lastMessageAt != null
          ? FormatUtils.formatChatListTime(conversation.lastMessageAt!)
          : '',
      isRead: conversation.unreadCount == 0,
      messageType: conversation.lastMessageKind,
      unreadCount: conversation.unreadCount > 0 ? conversation.unreadCount : null,
      isGroup: isGroup,
      onTap: () {
        context.pushNamed(
          AppRouteName.chatDetail,
          extra: ChatDetailArgs(
            conversationId: conversation.conversationId,
            chatName: conversation.title ??
                (isGroup ? t.chatScreenUnnamedGroup : t.chatScreenUnnamed),
            chatSubtitle: isGroup
                ? t.chatDetailGroupSubtitle
                : t.chatDetailSelfSubtitle,
            profileImageUrl:
                conversation.photoUrl ?? 'https://i.pravatar.cc/150?img=12',
            isGroup: isGroup,
            peerUserId: isGroup ? null : conversation.userId,
          ),
        );
      },
    );
  }
}
