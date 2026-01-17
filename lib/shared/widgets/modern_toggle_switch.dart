import 'package:flutter/material.dart';

/// Modern custom toggle switch with gradient and animations
///
/// A reusable toggle switch component with modern design featuring:
/// - Gradient backgrounds for active state
/// - Smooth animations (250ms)
/// - Shadow effects
/// - Customizable colors via theme
class ModernToggleSwitch extends StatelessWidget {
  const ModernToggleSwitch({
    super.key,
    required this.value,
    required this.onChanged,
    this.activeColor,
    this.inactiveColor,
    this.thumbColor,
  });

  /// Current toggle state
  final bool value;

  /// Callback when toggle state changes
  final ValueChanged<bool> onChanged;

  /// Active track color (defaults to primary gradient)
  final Color? activeColor;

  /// Inactive track color (defaults to surfaceContainerHighest)
  final Color? inactiveColor;

  /// Thumb color (defaults to onPrimary when active, onSurfaceVariant when inactive)
  final Color? thumbColor;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    final activeTrackColor = activeColor ?? colorScheme.primary;
    final inactiveTrackColor =
        inactiveColor ?? colorScheme.surfaceContainerHighest;
    final activeThumbColor = thumbColor ?? colorScheme.onPrimary;
    final inactiveThumbColor =
        thumbColor ?? colorScheme.onSurfaceVariant.withValues(alpha: 0.8);

    return GestureDetector(
      onTap: () => onChanged(!value),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeInOut,
        width: 56,
        height: 32,
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          gradient: value
              ? LinearGradient(
                  colors: [
                    activeTrackColor,
                    activeTrackColor.withValues(alpha: 0.85),
                  ],
                )
              : null,
          color: value ? null : inactiveTrackColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: value
                ? activeTrackColor.withValues(alpha: 0.3)
                : colorScheme.outline.withValues(alpha: 0.3),
            width: 1.5,
          ),
          boxShadow: value
              ? [
                  BoxShadow(
                    color: activeTrackColor.withValues(alpha: 0.3),
                    blurRadius: 12,
                    offset: const Offset(0, 2),
                  ),
                ]
              : [
                  BoxShadow(
                    color: colorScheme.shadow.withValues(alpha: 0.08),
                    blurRadius: 4,
                    offset: const Offset(0, 1),
                  ),
                ],
        ),
        child: AnimatedAlign(
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeInOut,
          alignment: value ? Alignment.centerRight : Alignment.centerLeft,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 250),
            curve: Curves.easeInOut,
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              color: value ? activeThumbColor : inactiveThumbColor,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: value
                      ? activeTrackColor.withValues(alpha: 0.4)
                      : colorScheme.shadow.withValues(alpha: 0.15),
                  blurRadius: value ? 8 : 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: value
                ? Icon(
                    Icons.check,
                    size: 14,
                    color: activeTrackColor,
                  )
                : null,
          ),
        ),
      ),
    );
  }
}
