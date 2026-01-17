import 'package:flutter/material.dart';

/// Parallax scrolling effect widget - creates depth illusion
/// Usage: Wrap your scrollable content with this widget
class ParallaxScrollEffect extends StatefulWidget {
  final Widget child;
  final double speed;
  final List<ParallaxLayer> layers;

  const ParallaxScrollEffect({
    super.key,
    required this.child,
    this.speed = 0.5,
    this.layers = const [],
  });

  @override
  State<ParallaxScrollEffect> createState() => _ParallaxScrollEffectState();
}

class _ParallaxScrollEffectState extends State<ParallaxScrollEffect> {
  final ScrollController _scrollController = ScrollController();
  double _scrollOffset = 0.0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      setState(() {
        _scrollOffset = _scrollController.offset;
      });
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background parallax layers
        ...widget.layers.map((layer) {
          return Positioned(
            top: -_scrollOffset * layer.speed,
            left: 0,
            right: 0,
            child: Opacity(opacity: layer.opacity, child: layer.child),
          );
        }),

        // Main scrollable content
        NotificationListener<ScrollNotification>(
          onNotification: (notification) {
            if (notification is ScrollUpdateNotification) {
              setState(() {
                _scrollOffset = notification.metrics.pixels;
              });
            }
            return false;
          },
          child: widget.child,
        ),
      ],
    );
  }
}

class ParallaxLayer {
  final Widget child;
  final double speed;
  final double opacity;

  const ParallaxLayer({
    required this.child,
    this.speed = 0.3,
    this.opacity = 0.5,
  });
}

/// Simple parallax background with decorative shapes
class ParallaxBackground extends StatelessWidget {
  final Color color1;
  final Color color2;
  final double scrollOffset;

  const ParallaxBackground({
    super.key,
    required this.color1,
    required this.color2,
    this.scrollOffset = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Stack(
        children: [
          // Layer 1 - Slowest
          Transform.translate(
            offset: Offset(0, -scrollOffset * 0.2),
            child: Opacity(
              opacity: 0.3,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: color1.withOpacity(0.2),
                ),
                margin: const EdgeInsets.only(left: -50, top: 50),
                width: 200,
                height: 200,
              ),
            ),
          ),

          // Layer 2 - Medium
          Transform.translate(
            offset: Offset(0, -scrollOffset * 0.4),
            child: Opacity(
              opacity: 0.4,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: color2.withOpacity(0.2),
                ),
                margin: const EdgeInsets.only(right: -80, top: 120),
                alignment: Alignment.topRight,
                width: 250,
                height: 250,
              ),
            ),
          ),

          // Layer 3 - Fastest
          Transform.translate(
            offset: Offset(0, -scrollOffset * 0.6),
            child: Opacity(
              opacity: 0.5,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: color1.withOpacity(0.15),
                ),
                margin: const EdgeInsets.only(left: 100, top: 200),
                width: 150,
                height: 150,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
