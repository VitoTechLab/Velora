import 'package:flutter/material.dart';
import 'package:velora/features/profile/presentation/widgets/atoms/profile_empty_state.dart';

class ProfileSupportedSection extends StatelessWidget {
  const ProfileSupportedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProfileEmptyState(
      icon: Icons.volunteer_activism_outlined,
      title: 'Supported causes are private for now',
      message:
          'When donation and campaign support history is connected, this tab can show impact updates and transparent progress.',
    );
  }
}
