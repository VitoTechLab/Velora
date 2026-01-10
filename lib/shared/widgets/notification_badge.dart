import 'package:flutter/material.dart';

/// A notification badge that appears on top-right of an icon
/// Similar to Instagram's notification badge design
class NotificationBadge extends StatelessWidget {
  const NotificationBadge({
    super.key,
    required this.child,
    this.count = 0,
    this.showBadge = false,
    this.maxCount = 99,
    this.badgeColor,
    this.textColor,
    this.size = 18,
    this.fontSize = 10,
  });

  final Widget child;
  final int count;
  final bool showBadge;
  final int maxCount;
  final Color? badgeColor;
  final Color? textColor;
  final double size;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final effectiveBadgeColor = badgeColor ?? Colors.red;
    final effectiveTextColor = textColor ?? Colors.white;

    // Show badge if showBadge is true OR if count > 0
    final shouldShowBadge = showBadge || count > 0;

    if (!shouldShowBadge) {
      return child;
    }

    return Stack(
      clipBehavior: Clip.none,
      children: [
        child,
        Positioned(
          top: -4,
          right: -4,
          child: Container(
            constraints: BoxConstraints(minWidth: size, minHeight: size),
            padding: count > 0
                ? const EdgeInsets.symmetric(horizontal: 5, vertical: 2)
                : null,
            decoration: BoxDecoration(
              color: effectiveBadgeColor,
              shape: count > 0 ? BoxShape.rectangle : BoxShape.circle,
              borderRadius: count > 0 ? BorderRadius.circular(10) : null,
              border: Border.all(color: colorScheme.surface, width: 2),
            ),
            child: count > 0
                ? Center(
                    child: Text(
                      count > maxCount ? '$maxCount+' : count.toString(),
                      style: TextStyle(
                        color: effectiveTextColor,
                        fontSize: fontSize,
                        fontWeight: FontWeight.bold,
                        height: 1.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )
                : null,
          ),
        ),
      ],
    );
  }
}
