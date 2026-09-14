import 'package:flutter/material.dart';
import 'package:velora/shared/widgets/content_state.dart';

class ProfileEmptyState extends StatelessWidget {
  const ProfileEmptyState({
    super.key,
    required this.icon,
    required this.title,
    required this.message,
  });
  final IconData icon;
  final String title;
  final String message;
  @override
  Widget build(BuildContext context) =>
      ContentState(title: title, message: message, icon: icon);
}
