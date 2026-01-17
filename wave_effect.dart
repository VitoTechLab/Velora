import 'package:flutter/material.dart';
import 'dart:math' as math;

/// Wave effect widget - creates animated wave patterns
class WaveEffect extends StatefulWidget {
  final Color color1;
  final Color color2;
  final double height;
  final int waveCount;
  final Duration duration;

  const WaveEffect({
    super.key,
    required this.color1,
    required this.color2,
    this.height = 150,
    this.waveCount = 2,
    this.duration = const Duration(seconds: 4),
  });

  @override
  State<WaveEffect> createState() => _WaveEffectState();
}

class _WaveEffectState extends State<WaveEffect>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: widget.duration)
      ..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return CustomPaint(
            painter: WavePainter(
              animation: _controller.value,
              color1: widget.color1,
              color2: widget.color2,
              waveCount: widget.waveCount,
            ),
            size: Size(MediaQuery.of(context).size.width, widget.height),
          );
        },
      ),
    );
  }
}

class WavePainter extends CustomPainter {
  final double animation;
  final Color color1;
  final Color color2;
  final int waveCount;

  WavePainter({
    required this.animation,
    required this.color1,
    required this.color2,
    required this.waveCount,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint1 = Paint()
      ..color = color1.withOpacity(0.5)
      ..style = PaintingStyle.fill;

    final paint2 = Paint()
      ..color = color2.withOpacity(0.3)
      ..style = PaintingStyle.fill;

    // Draw first wave
    _drawWave(canvas, size, paint1, animation, 0);

    // Draw second wave (offset)
    if (waveCount > 1) {
      _drawWave(canvas, size, paint2, animation, math.pi);
    }
  }

  void _drawWave(
    Canvas canvas,
    Size size,
    Paint paint,
    double animation,
    double offset,
  ) {
    final path = Path();
    final waveHeight = size.height * 0.3;
    final waveLength = size.width;

    path.moveTo(0, size.height);

    for (double i = 0; i <= size.width; i++) {
      final double y =
          size.height / 2 +
          math.sin(
                (i / waveLength * 2 * math.pi) +
                    (animation * 2 * math.pi) +
                    offset,
              ) *
              waveHeight;
      path.lineTo(i, y);
    }

    path.lineTo(size.width, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(WavePainter oldDelegate) => true;
}
