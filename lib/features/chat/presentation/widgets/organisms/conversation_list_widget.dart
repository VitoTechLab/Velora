import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:velora/core/utils/format_utils.dart';
import 'package:velora/features/chat/domain/entities/conversation_list_entity.dart';
import 'package:velora/features/chat/presentation/bloc/chat_message_bloc.dart';
import 'package:velora/features/chat/presentation/bloc/chat_message_event.dart';
import 'package:velora/features/chat/presentation/bloc/chat_message_state.dart';
import 'package:velora/features/chat/presentation/bloc/user_presence_bloc.dart';
import 'package:velora/features/chat/presentation/bloc/user_presence_state.dart';
import 'package:velora/features/chat/presentation/widgets/atoms/chat_skeleton_tile.dart';
import 'package:velora/features/chat/presentation/widgets/atoms/chat_state_view.dart';
import 'package:velora/features/chat/presentation/widgets/molecules/chat_list_item.dart';
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
    final t = AppLocalizations.of(context)!;

    return BlocBuilder<ChatMessageBloc, ChatMessageState>(
      builder: (context, state) {
        if (state.isLoadingConversations) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 8,
            itemBuilder: (context, index) => const ChatSkeletonTile(),
          );
        }

        if (state.conversationsError != null) {
          return _buildErrorView(context, state, t);
        }

        final filteredConversations = _getFilteredConversations(state);

        if (filteredConversations.isEmpty) {
          return _buildEmptyView(state, t);
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
    AppLocalizations t,
  ) {
    return ChatStateView(
      icon: Icons.cloud_off_rounded,
      title: t.commonError,
      message: state.conversationsError!,
      actionLabel: t.chatScreenRetry,
      isError: true,
      onAction: () {
        context.read<ChatMessageBloc>().add(
              const ChatMessageEvent.loadConversationList(),
            );
      },
    );
  }

  Widget _buildEmptyView(
    ChatMessageState state,
    AppLocalizations t,
  ) {
    final hasSearch = state.searchQuery.trim().isNotEmpty;
    final isFiltered = state.selectedFilter != 'all';

    return ChatStateView(
      icon: hasSearch ? Icons.search_off_rounded : Icons.forum_outlined,
      title: hasSearch
          ? 'No results for "${state.searchQuery}"'
          : isFiltered
              ? 'No ${state.selectedFilter} chats'
              : t.chatScreenNoChats,
      message: hasSearch
          ? 'Try searching for something else'
          : isFiltered
              ? 'Try selecting a different filter'
              : t.chatScreenNoChatsHint,
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
    final currentUserId = Supabase.instance.client.auth.currentUser?.id;
    final isLastMessageFromMe =
        conversation.lastMessageSenderId == currentUserId;
    // If unread count is 0 and last message is from me, it means recipient has read it
    final isLastMessageRead =
        isLastMessageFromMe && conversation.unreadCount == 0;

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

        return BlocSelector<UserPresenceBloc, UserPresenceState, bool>(
          selector: (state) {
            if (isGroup || conversation.otherUserId == null) return false;
            return state.onlineUsers[conversation.otherUserId] ?? false;
          },
          builder: (context, isOnline) {
            final displayName = conversation.otherUserFullName ??
                conversation.otherUserUsername ??
                (isGroup ? t.chatScreenUnnamedGroup : t.chatScreenUnnamed);
            final avatarUrl = conversation.otherUserAvatarUrl ??
                'https://i.pravatar.cc/150?img=12';

            return ChatListItem(
              profileImageUrl: avatarUrl,
              name: displayName,
              message: messagePreview,
              time: conversation.lastMessageAt != null
                  ? FormatUtils.formatChatListTime(conversation.lastMessageAt!)
                  : '',
              isRead: conversation.unreadCount == 0,
              messageType: _inferMessageType(conversation.lastMessageBody),
              unreadCount: conversation.unreadCount > 0
                  ? conversation.unreadCount
                  : null,
              isGroup: isGroup,
              isOnline: isOnline,
              isTyping: isTyping,
              isLastMessageFromMe: isLastMessageFromMe,
              isLastMessageRead: isLastMessageRead,
              onTap: () {
                context.pushNamed(
                  AppRouteName.chatDetail,
                  extra: ChatDetailArgs(
                    conversationId: conversation.conversationId,
                    chatName: displayName,
                    chatSubtitle: isGroup
                        ? t.chatDetailGroupSubtitle
                        : t.chatDetailSelfSubtitle,
                    profileImageUrl: avatarUrl,
                    isGroup: isGroup,
                    peerUserId: isGroup ? null : conversation.otherUserId,
                  ),
                );
              },
            );
          },
        );
      },
    );
  }

  String? _inferMessageType(String? value) {
    final text = value?.trim().toLowerCase();
    if (text == null || text.isEmpty) return null;
    if (text.contains('photo') || text.contains('foto')) return 'photo';
    if (text.contains('video')) return 'video';
    if (text.contains('audio') || text.contains('voice')) return 'audio';
    if (text.contains('document') || text.contains('dokumen')) {
      return 'document';
    }
    if (text.contains('poll') || text.contains('jajak')) return 'poll';
    if (text.contains('event') || text.contains('acara')) return 'event';
    return null;
  }
}
