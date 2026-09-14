import 'package:flutter/material.dart';

class AuthFeedbackBanner extends StatelessWidget {
  const AuthFeedbackBanner({
    super.key,
    required this.message,
    required this.isError,
  });

  final String? message;
  final bool isError;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final color = isError ? colorScheme.error : colorScheme.tertiary;
    final visible = message != null && message!.isNotEmpty;

    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 240),
      switchInCurve: Curves.easeOutCubic,
      switchOutCurve: Curves.easeInCubic,
      transitionBuilder: (child, animation) {
        return FadeTransition(
          opacity: animation,
          child: SizeTransition(
            sizeFactor: animation,
            axisAlignment: -1,
            child: child,
          ),
        );
      },
      child: visible
          ? Container(
              key: ValueKey(message),
              width: double.infinity,
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: color.withValues(alpha: 0.12),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: color.withValues(alpha: 0.28)),
              ),
              child: Row(
                children: [
                  Icon(
                    isError
                        ? Icons.error_outline_rounded
                        : Icons.check_circle_outline_rounded,
                    color: color,
                    size: 20,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      message!,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: colorScheme.onSurface,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ],
              ),
            )
          : const SizedBox.shrink(key: ValueKey('empty')),
    );
  }
}
