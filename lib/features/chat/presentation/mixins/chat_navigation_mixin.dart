import 'package:flutter/material.dart';
import 'package:velora/features/chat/presentation/screens/chat_detail_screen.dart';

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
    // Navigate directly - conversation will be created in ChatDetailScreen if needed
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ChatDetailScreen(
          conversationId: conversationId ?? '',
          chatName: chatName,
          chatSubtitle: chatSubtitle.isEmpty
              ? (isGroup ? 'Group' : 'Chat')
              : chatSubtitle,
          profileImageUrl: profileImageUrl,
          isGroup: isGroup,
          peerUserId: isGroup ? null : peerUserId,
        ),
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
