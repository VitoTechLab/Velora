import 'package:flutter/material.dart';

class ProfileImpactTabs extends StatelessWidget {
  const ProfileImpactTabs({super.key, required this.controller});
  final TabController controller;
  @override
  Widget build(BuildContext context) => TabBar(
    controller: controller,
    isScrollable: true,
    tabAlignment: TabAlignment.start,
    tabs: const [
      Tab(text: 'Overview'),
      Tab(text: 'Reports'),
      Tab(text: 'Supported'),
      Tab(text: 'Saved'),
    ],
  );
}
