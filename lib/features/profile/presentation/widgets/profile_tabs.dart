import 'package:flutter/material.dart';

class ProfileTabs extends StatelessWidget {
  final TabController controller;

  const ProfileTabs({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: colorScheme.outline.withValues(alpha: 0.2),
            width: 0.5,
          ),
        ),
      ),
      child: TabBar(
        controller: controller,
        indicatorColor: colorScheme.onSurface,
        indicatorWeight: 1,
        labelColor: colorScheme.onSurface,
        unselectedLabelColor: colorScheme.onSurfaceVariant,
        tabs: const [
          Tab(icon: Icon(Icons.grid_on, size: 24)),
          Tab(icon: Icon(Icons.video_collection_outlined, size: 24)),
          Tab(icon: Icon(Icons.sync_outlined, size: 24)),
          Tab(icon: Icon(Icons.person_pin_outlined, size: 24)),
        ],
      ),
    );
  }
}
