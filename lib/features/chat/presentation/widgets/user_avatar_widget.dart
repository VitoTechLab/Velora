import 'package:flutter/material.dart';

/// Reusable user avatar widget with consistent styling
/// Prevents code duplication across chat screens
class UserAvatarWidget extends StatefulWidget {
  final String? avatarUrl;
  final String username;
  final double radius;
  final bool showOnlineIndicator;
  final bool isOnline;
  final bool showGradientBorder;

  const UserAvatarWidget({
    super.key,
    this.avatarUrl,
    required this.username,
    this.radius = 28,
    this.showOnlineIndicator = false,
    this.isOnline = false,
    this.showGradientBorder = false,
  });

  @override
  State<UserAvatarWidget> createState() => _UserAvatarWidgetState();
}

class _UserAvatarWidgetState extends State<UserAvatarWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _pulseController;
  late Animation<double> _pulseAnimation;

  @override
  void initState() {
    super.initState();
    _pulseController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    _pulseAnimation = Tween<double>(begin: 1.0, end: 1.2).animate(
      CurvedAnimation(parent: _pulseController, curve: Curves.easeInOut),
    );
    if (widget.showOnlineIndicator && widget.isOnline) {
      _pulseController.repeat(reverse: true);
    }
  }

  @override
  void didUpdateWidget(UserAvatarWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.showOnlineIndicator && widget.isOnline) {
      if (!_pulseController.isAnimating) {
        _pulseController.repeat(reverse: true);
      }
    } else {
      _pulseController.stop();
    }
  }

  @override
  void dispose() {
    _pulseController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    Widget avatar = CircleAvatar(
      radius: widget.radius,
      backgroundImage: widget.avatarUrl != null && widget.avatarUrl!.isNotEmpty
          ? NetworkImage(widget.avatarUrl!)
          : null,
      backgroundColor: widget.avatarUrl == null || widget.avatarUrl!.isEmpty
          ? colorScheme.surfaceContainerHighest
          : Colors.transparent,
      child: widget.avatarUrl == null || widget.avatarUrl!.isEmpty
          ? ShaderMask(
              shaderCallback: (bounds) => LinearGradient(
                colors: [
                  colorScheme.primary,
                  colorScheme.secondary,
                ],
              ).createShader(bounds),
              child: Text(
                widget.username.isNotEmpty
                    ? widget.username[0].toUpperCase()
                    : '?',
                style: (widget.radius > 24
                        ? textTheme.titleLarge
                        : widget.radius > 20
                            ? textTheme.titleMedium
                            : textTheme.titleSmall)
                    ?.copyWith(
                        color: Colors.white, fontWeight: FontWeight.w600),
              ),
            )
          : null,
    );

    if (widget.showGradientBorder) {
      avatar = Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [
              colorScheme.primary,
              colorScheme.secondary,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          boxShadow: [
            BoxShadow(
              color: colorScheme.primary.withValues(alpha: 0.3),
              blurRadius: 8,
              spreadRadius: 1,
            ),
          ],
        ),
        padding: const EdgeInsets.all(2.5),
        child: avatar,
      );
    }

    return Stack(
      children: [
        TweenAnimationBuilder<double>(
          tween: Tween(begin: 0.0, end: 1.0),
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeOutCubic,
          builder: (context, value, child) {
            return Transform.scale(
              scale: 0.9 + (0.1 * value),
              child: Opacity(
                opacity: value,
                child: child,
              ),
            );
          },
          child: avatar,
        ),
        if (widget.showOnlineIndicator && widget.isOnline)
          Positioned(
            right: 0,
            bottom: 0,
            child: AnimatedBuilder(
              animation: _pulseAnimation,
              builder: (context, child) {
                return Container(
                  width: widget.radius * 0.35,
                  height: widget.radius * 0.35,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFF00E676),
                        Color(0xFF00C853),
                      ],
                    ),
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: colorScheme.surface,
                      width: 2.5,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFF00E676)
                            .withValues(alpha: 0.4 * _pulseAnimation.value),
                        blurRadius: 8 * _pulseAnimation.value,
                        spreadRadius: 2 * _pulseAnimation.value,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
      ],
    );
  }
}
