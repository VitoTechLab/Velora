import 'package:flutter/material.dart';

class ChatSkeletonTile extends StatefulWidget {
  const ChatSkeletonTile({super.key});

  @override
  State<ChatSkeletonTile> createState() => _ChatSkeletonTileState();
}

class _ChatSkeletonTileState extends State<ChatSkeletonTile>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, _) {
        final alpha = 0.36 + (_controller.value * 0.22);
        final blockColor =
            colorScheme.surfaceContainerHighest.withValues(alpha: alpha);

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 9),
          child: Row(
            children: [
              _SkeletonBlock(
                width: 52,
                height: 52,
                radius: 999,
                color: blockColor,
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _SkeletonBlock(
                      width: double.infinity,
                      height: 14,
                      radius: 8,
                      color: blockColor,
                    ),
                    const SizedBox(height: 10),
                    _SkeletonBlock(
                      width: 180,
                      height: 12,
                      radius: 8,
                      color: blockColor,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _SkeletonBlock extends StatelessWidget {
  final double width;
  final double height;
  final double radius;
  final Color color;

  const _SkeletonBlock({
    required this.width,
    required this.height,
    required this.radius,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius),
      ),
    );
  }
}
