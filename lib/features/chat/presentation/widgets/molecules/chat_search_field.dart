import 'package:flutter/material.dart';
import 'package:velora/features/chat/presentation/widgets/atoms/chat_glass_surface.dart';
import 'package:velora/features/chat/presentation/widgets/atoms/chat_pressable_scale.dart';

class ChatSearchField extends StatelessWidget {
  final String hintText;
  final VoidCallback onTap;

  const ChatSearchField({
    super.key,
    required this.hintText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Semantics(
      button: true,
      label: hintText,
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(999),
        child: ChatPressableScale(
          onTap: onTap,
          borderRadius: BorderRadius.circular(999),
          pressedScale: 0.985,
          child: ChatGlassSurface(
            accent: true,
            borderRadius: BorderRadius.circular(999),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              children: [
                Icon(
                  Icons.search_rounded,
                  color: colorScheme.primary,
                  size: 21,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    hintText,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Icon(
                  Icons.tune_rounded,
                  color: colorScheme.onSurfaceVariant.withValues(alpha: 0.62),
                  size: 18,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
