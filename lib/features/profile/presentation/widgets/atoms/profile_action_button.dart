import 'package:flutter/material.dart';

class ProfileActionButton extends StatelessWidget {
  const ProfileActionButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.icon,
    this.isPrimary = false,
  });
  final String label;
  final VoidCallback? onPressed;
  final IconData? icon;
  final bool isPrimary;
  @override
  Widget build(BuildContext context) {
    final content = Wrap(
      alignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 8,
      runSpacing: 4,
      children: [
        if (icon != null) Icon(icon, size: 18),
        Text(label, textAlign: TextAlign.center),
      ],
    );
    return isPrimary
        ? FilledButton(onPressed: onPressed, child: content)
        : OutlinedButton(onPressed: onPressed, child: content);
  }
}
