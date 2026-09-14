import 'package:flutter/material.dart';

class ProfileBadge extends StatelessWidget {
  const ProfileBadge({
    super.key,
    required this.label,
    required this.icon,
    this.isStrong = false,
  });

  final String label;
  final IconData icon;
  final bool isStrong;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final color = isStrong ? colorScheme.primary : colorScheme.tertiary;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 15, color: color),
        const SizedBox(width: 4),
        Flexible(
          child: Text(
            label,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(
              context,
            ).textTheme.bodySmall?.copyWith(color: color),
          ),
        ),
      ],
    );
  }
}
