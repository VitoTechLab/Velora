import 'package:flutter/material.dart';

class AuthImpactHalo extends StatelessWidget {
  const AuthImpactHalo({
    super.key,
    required this.child,
    this.size = 118,
    this.duration = const Duration(milliseconds: 4200),
  });
  final Widget child;
  final double size;
  final Duration duration;
  @override
  Widget build(BuildContext context) => SizedBox.square(
    dimension: size,
    child: Center(child: child),
  );
}
