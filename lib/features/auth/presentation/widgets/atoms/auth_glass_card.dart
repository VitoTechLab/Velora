import 'package:flutter/material.dart';

class AuthGlassCard extends StatelessWidget {
  const AuthGlassCard({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) =>
      Padding(padding: const EdgeInsets.all(16), child: child);
}
