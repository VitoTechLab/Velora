import 'package:flutter/material.dart';

class ChatIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  final String tooltip;
  final bool emphasized;
  final double size;

  const ChatIconButton({
    super.key,
    required this.icon,
    required this.tooltip,
    this.onPressed,
    this.emphasized = false,
    this.size = 42,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return IconButton(
      tooltip: tooltip,
      onPressed: onPressed,
      icon: Icon(icon, size: 22),
      style: IconButton.styleFrom(
        minimumSize: const Size(48, 48),
        backgroundColor: emphasized ? colorScheme.primary : Colors.transparent,
        foregroundColor: emphasized
            ? colorScheme.onPrimary
            : colorScheme.onSurfaceVariant,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
