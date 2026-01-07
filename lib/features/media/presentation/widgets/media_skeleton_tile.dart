import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// Shimmer tile untuk skeleton loading
class MediaSkeletonTile extends HookWidget {
  const MediaSkeletonTile({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useAnimationController(
      duration: const Duration(milliseconds: 1400),
    );
    final randomAspect = useMemoized(() {
      final random = Random();
      return 0.7 + random.nextInt(6) * 0.1;
    }, const []);

    useEffect(() {
      controller.repeat();
      return null;
    }, [controller]);

    return AspectRatio(
      aspectRatio: randomAspect,
      child: AnimatedBuilder(
        animation: controller,
        builder: (context, child) {
          final offset = controller.value;
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              gradient: LinearGradient(
                begin: Alignment(-1 + offset * 2, -1),
                end: Alignment(1 + offset * 2, 1),
                colors: const [
                  Color(0xFF1A1A1A),
                  Color(0xFF252525),
                  Color(0xFF1A1A1A),
                ],
                stops: const [0.0, 0.5, 1.0],
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Stack(
                children: [
                  // Shimmer effect overlay
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(-1 + offset * 2, 0),
                          end: Alignment(1 + offset * 2, 0),
                          colors: [
                            Colors.transparent,
                            Colors.white.withValues(alpha: 0.03),
                            Colors.transparent,
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
