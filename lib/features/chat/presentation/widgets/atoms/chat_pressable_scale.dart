import 'package:flutter/material.dart';

class ChatPressableScale extends StatefulWidget {
  final Widget child;
  final VoidCallback? onTap;
  final BorderRadiusGeometry borderRadius;
  final double pressedScale;
  final bool enabled;

  const ChatPressableScale({
    super.key,
    required this.child,
    this.onTap,
    this.borderRadius = const BorderRadius.all(Radius.circular(18)),
    this.pressedScale = 0.97,
    this.enabled = true,
  });

  @override
  State<ChatPressableScale> createState() => _ChatPressableScaleState();
}

class _ChatPressableScaleState extends State<ChatPressableScale> {
  bool _isPressed = false;

  void _setPressed(bool value) {
    if (!widget.enabled || _isPressed == value) return;
    setState(() => _isPressed = value);
  }

  @override
  Widget build(BuildContext context) {
    final canTap = widget.enabled && widget.onTap != null;

    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: canTap ? widget.onTap : null,
      onTapDown: canTap ? (_) => _setPressed(true) : null,
      onTapUp: canTap
          ? (_) {
              _setPressed(false);
            }
          : null,
      onTapCancel: canTap ? () => _setPressed(false) : null,
      child: AnimatedScale(
        scale: _isPressed ? widget.pressedScale : 1,
        duration: const Duration(milliseconds: 110),
        curve: Curves.easeOutCubic,
        child: widget.child,
      ),
    );
  }
}
