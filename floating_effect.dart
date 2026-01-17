import 'package:flutter/material.dart';
import 'dart:math' as math;

/// Floating effect widget - creates floating decorative elements
class FloatingEffect extends StatefulWidget {
  final List<FloatingObject> objects;
  final Duration duration;

  const FloatingEffect({
    super.key,
    required this.objects,
    this.duration = const Duration(seconds: 3),
  });

  @override
  State<FloatingEffect> createState() => _FloatingEffectState();
}

class _FloatingEffectState extends State<FloatingEffect>
    with TickerProviderStateMixin {
  late List<AnimationController> _controllers;
  late List<Animation<double>> _animations;

  @override
  void initState() {
    super.initState();
    _controllers = [];
    _animations = [];

    for (int i = 0; i < widget.objects.length; i++) {
      final controller = AnimationController(
        vsync: this,
        duration: Duration(
          milliseconds: widget.duration.inMilliseconds + (i * 500),
        ),
      )..repeat(reverse: true);

      final animation = Tween<double>(
        begin: 0.0,
        end: widget.objects[i].floatDistance,
      ).animate(CurvedAnimation(parent: controller, curve: Curves.easeInOut));

      _controllers.add(controller);
      _animations.add(animation);
    }
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: List.generate(widget.objects.length, (index) {
        final obj = widget.objects[index];
        return AnimatedBuilder(
          animation: _animations[index],
          builder: (context, child) {
            return Positioned(
              left: obj.left,
              top: obj.top + _animations[index].value,
              child: Transform.rotate(
                angle: _animations[index].value * 0.1,
                child: Opacity(opacity: obj.opacity, child: obj.child),
              ),
            );
          },
        );
      }),
    );
  }
}

class FloatingObject {
  final Widget child;
  final double left;
  final double top;
  final double floatDistance;
  final double opacity;

  const FloatingObject({
    required this.child,
    required this.left,
    required this.top,
    this.floatDistance = 20,
    this.opacity = 0.6,
  });
}

/// Pre-built floating shapes
class FloatingShapes extends StatelessWidget {
  final Color color;
  final int shapeCount;

  const FloatingShapes({super.key, required this.color, this.shapeCount = 5});

  @override
  Widget build(BuildContext context) {
    final random = math.Random(42); // Fixed seed for consistency
    final size = MediaQuery.of(context).size;

    return FloatingEffect(
      objects: List.generate(shapeCount, (index) {
        return FloatingObject(
          left: random.nextDouble() * size.width * 0.8,
          top: random.nextDouble() * size.height * 0.6,
          floatDistance: 15 + random.nextDouble() * 15,
          opacity: 0.15 + random.nextDouble() * 0.15,
          child: Container(
            width: 40 + random.nextDouble() * 60,
            height: 40 + random.nextDouble() * 60,
            decoration: BoxDecoration(
              color: color,
              shape: index % 3 == 0 ? BoxShape.circle : BoxShape.rectangle,
              borderRadius: index % 3 != 0 ? BorderRadius.circular(15) : null,
            ),
          ),
        );
      }),
    );
  }
}
