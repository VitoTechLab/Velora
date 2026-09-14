import 'package:flutter/material.dart';

class AuthBrandMark extends StatelessWidget {
  const AuthBrandMark({
    super.key,
    this.size = 72,
    this.borderRadius = 12,
    this.icon = Icons.favorite_rounded,
    this.iconSize = 34,
    this.label = 'Velora',
  });
  final double size;
  final double borderRadius;
  final IconData icon;
  final double iconSize;
  final String label;
  @override
  Widget build(BuildContext context) => Image.asset(
    'assets/images/logo-velora.png',
    width: size,
    height: size,
    fit: BoxFit.contain,
    semanticLabel: label,
  );
}
