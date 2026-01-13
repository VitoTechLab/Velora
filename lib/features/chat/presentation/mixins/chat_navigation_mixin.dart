import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:velora/features/navigation/models/chat_detail_args.dart';
import 'package:velora/routes/app_router.dart';

/// Mixin for handling chat navigation consistently across screens
/// Provides unified navigation to chat screens
mixin ChatNavigationMixin {
  /// Navigate to chat detail screen
  /// For direct chats: pass peerUserId to create conversation on-demand
  /// For existing chats: navigates directly with conversationId
  void navigateToChatDetail(
    BuildContext context, {
    required String chatName,
    required String profileImageUrl,
    String? conversationId,
    String? peerUserId,
    bool isGroup = false,
    String chatSubtitle = '',
  }) {
    // Navigate using GoRouter with ChatDetailArgs
    context.pushNamed(
      AppRouteName.chatDetail,
      extra: ChatDetailArgs(
        conversationId: conversationId ?? '',
        chatName: chatName,
        chatSubtitle:
            chatSubtitle.isEmpty ? (isGroup ? 'Group' : 'Chat') : chatSubtitle,
        profileImageUrl: profileImageUrl,
        isGroup: isGroup,
        peerUserId: isGroup ? null : peerUserId,
      ),
    );
  }

  /// Navigate to chat with user
  /// Creates a direct conversation or navigates to existing one
  void navigateToChatWithUser(
    BuildContext context, {
    required String userId,
    required String username,
    String? avatarUrl,
    String? bio,
  }) {
    navigateToChatDetail(
      context,
      chatName: username,
      profileImageUrl: avatarUrl ?? 'https://i.pravatar.cc/150?u=$userId',
      peerUserId: userId,
      chatSubtitle: bio ?? '',
      isGroup: false,
    );
  }
}
