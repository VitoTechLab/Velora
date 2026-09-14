import 'package:flutter/material.dart';
import 'package:velora/features/profile/presentation/widgets/atoms/profile_empty_state.dart';

class ProfileSavedSection extends StatelessWidget {
  const ProfileSavedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProfileEmptyState(
      icon: Icons.bookmark_border_rounded,
      title: 'Saved cases will live here',
      message:
          'Saved campaigns, reports, and cases can become a personal action list instead of a passive bookmark grid.',
    );
  }
}
