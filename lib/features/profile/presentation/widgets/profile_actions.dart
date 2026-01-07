import 'package:flutter/material.dart';

class ProfileActions extends StatelessWidget {
  final bool isMe;
  final bool isFollowing;
  final bool isFollowRequestPending;
  final VoidCallback? onEditProfile;
  final VoidCallback? onShareProfile;
  final VoidCallback? onFollowToggle;
  final VoidCallback? onAddFriend;

  const ProfileActions({
    super.key,
    required this.isMe,
    this.isFollowing = false,
    this.isFollowRequestPending = false,
    this.onEditProfile,
    this.onShareProfile,
    this.onFollowToggle,
    this.onAddFriend,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final followLabel = isFollowRequestPending
        ? 'Requested'
        : isFollowing
        ? 'Following'
        : 'Follow';

    return Row(
      children: [
        if (isMe) ...[
          Expanded(
            child: _ActionButton(
              label: 'Edit profile',
              onPressed: onEditProfile,
              colorScheme: colorScheme,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: _ActionButton(
              label: 'Share profile',
              onPressed: onShareProfile,
              colorScheme: colorScheme,
            ),
          ),
        ] else ...[
          Expanded(
            child: _ActionButton(
              label: followLabel,
              onPressed: onFollowToggle,
              colorScheme: colorScheme,
              isPrimary: !isFollowing && !isFollowRequestPending,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: _ActionButton(
              label: 'Message',
              onPressed: () {
                // TODO: Navigate to chat
              },
              colorScheme: colorScheme,
            ),
          ),
        ],
        const SizedBox(width: 8),
        _IconActionButton(
          icon: isMe ? Icons.person_add_outlined : Icons.keyboard_arrow_down,
          onPressed: onAddFriend,
          colorScheme: colorScheme,
        ),
      ],
    );
  }
}

class _ActionButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final ColorScheme colorScheme;
  final bool isPrimary;

  const _ActionButton({
    required this.label,
    required this.onPressed,
    required this.colorScheme,
    this.isPrimary = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor: isPrimary
              ? colorScheme.primary
              : colorScheme.surfaceContainerHighest,
          foregroundColor: isPrimary
              ? colorScheme.onPrimary
              : colorScheme.onSurface,
          side: isPrimary
              ? BorderSide.none
              : BorderSide(
                  color: colorScheme.outline.withValues(alpha: 0.3),
                  width: 1,
                ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          padding: EdgeInsets.zero,
        ),
        child: Text(
          label,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}

class _IconActionButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  final ColorScheme colorScheme;

  const _IconActionButton({
    required this.icon,
    required this.onPressed,
    required this.colorScheme,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 32,
      height: 32,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor: colorScheme.surfaceContainerHighest,
          foregroundColor: colorScheme.onSurface,
          side: BorderSide(
            color: colorScheme.outline.withValues(alpha: 0.3),
            width: 1,
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          padding: EdgeInsets.zero,
        ),
        child: Icon(icon, size: 18),
      ),
    );
  }
}
