/// Arguments for navigating to chat detail screen
class ChatDetailArgs {
  final String conversationId;
  final String chatName;
  final String chatSubtitle;
  final String profileImageUrl;
  final bool isGroup;
  final String? peerUserId;

  const ChatDetailArgs({
    required this.conversationId,
    required this.chatName,
    required this.chatSubtitle,
    required this.profileImageUrl,
    required this.isGroup,
    this.peerUserId,
  });
}
