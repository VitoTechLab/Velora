import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:velora/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:velora/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:velora/features/profile/presentation/bloc/profile_event.dart';
import 'package:velora/features/profile/presentation/bloc/profile_state.dart';
import 'package:velora/features/settings/presentation/widgets/settings_section_card.dart';
import 'package:velora/features/settings/presentation/widgets/settings_tile.dart';
import 'package:velora/l10n/app_localizations.dart';
import 'package:velora/routes/app_router.dart';
import 'package:velora/shared/widgets/under_development_dialog.dart';

/// Screen to manage connected profiles/accounts
/// Shows current profile and option to add more profiles (coming soon)
class ProfilesListScreen extends StatefulWidget {
  const ProfilesListScreen({super.key});

  @override
  State<ProfilesListScreen> createState() => _ProfilesListScreenState();
}

class _ProfilesListScreenState extends State<ProfilesListScreen> {
  @override
  void initState() {
    super.initState();
    // Load current user profile
    final authState = context.read<AuthBloc>().state;
    if (authState.userId != null) {
      context.read<ProfileBloc>().add(
        LoadProfileEvent(userId: authState.userId!),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final authState = context.watch<AuthBloc>().state;
    
    return Scaffold(
      appBar: AppBar(
        title: Text(t.settingsTileProfilesTitle),
      ),
      body: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, profileState) {
          final profile = profileState.profile;
          
          return SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Current Profile Section
                SettingsSectionCard(
                  title: 'Current Profile',
                  tiles: [
                    SettingsTileData(
                      title: profile?.username ?? 'My Profile',
                      subtitle: profile?.email ?? authState.userId ?? '',
                      icon: Icons.person,
                      iconColor: const Color(0xFF00A86B),
                      onTap: () => context.go(AppRoutePath.profile),
                      trailing: const Icon(Icons.chevron_right),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                
                // Add More Profiles Section (Coming Soon)
                SettingsSectionCard(
                  title: 'Additional Profiles',
                  subtitle: 'Connect and manage multiple profiles',
                  tiles: [
                    SettingsTileData(
                      title: 'Add New Profile',
                      subtitle: 'Connect another profile to this account',
                      icon: Icons.add_circle_outline,
                      iconColor: const Color(0xFF3B82F6),
                      onTap: () => UnderDevelopmentDialog.show(context),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
