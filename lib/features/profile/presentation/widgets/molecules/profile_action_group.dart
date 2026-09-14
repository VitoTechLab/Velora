import 'package:flutter/material.dart';
import 'package:velora/features/profile/presentation/widgets/atoms/profile_action_button.dart';

class ProfileActionGroup extends StatelessWidget {
  const ProfileActionGroup({
    super.key,
    required this.isMe,
    required this.isFollowing,
    required this.isFollowRequestPending,
    required this.onEditProfile,
    required this.onSettings,
    required this.onFollowToggle,
    required this.onMessage,
  });

  final bool isMe;
  final bool isFollowing;
  final bool isFollowRequestPending;
  final VoidCallback? onEditProfile;
  final VoidCallback? onSettings;
  final VoidCallback? onFollowToggle;
  final VoidCallback? onMessage;

  @override
  Widget build(BuildContext context) {
    final followLabel = isFollowRequestPending
        ? 'Requested'
        : isFollowing
            ? 'Following'
            : 'Support updates';

    return Row(
      children: [
        Expanded(
          child: ProfileActionButton(
            label: isMe ? 'Edit profile' : followLabel,
            icon: isMe ? Icons.edit_outlined : Icons.favorite_outline_rounded,
            isPrimary: !isMe && !isFollowing && !isFollowRequestPending,
            onPressed: isMe ? onEditProfile : onFollowToggle,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: ProfileActionButton(
            label: isMe ? 'Settings' : 'Message',
            icon: isMe ? Icons.settings_outlined : Icons.chat_bubble_outline,
            onPressed: isMe ? onSettings : onMessage,
          ),
        ),
      ],
    );
  }
}
