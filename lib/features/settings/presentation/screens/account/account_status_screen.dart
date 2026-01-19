import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velora/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:velora/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:velora/features/profile/presentation/bloc/profile_event.dart';
import 'package:velora/features/profile/presentation/bloc/profile_state.dart';
import 'package:velora/features/settings/presentation/widgets/edge_to_edge_section.dart';
import 'package:velora/features/settings/presentation/widgets/settings_page_scaffold.dart';
import 'package:velora/features/settings/presentation/widgets/settings_tile.dart';
import 'package:velora/l10n/app_localizations.dart';
import 'package:intl/intl.dart';

class AccountStatusScreen extends StatefulWidget {
  const AccountStatusScreen({super.key});

  @override
  State<AccountStatusScreen> createState() => _AccountStatusScreenState();
}

class _AccountStatusScreenState extends State<AccountStatusScreen> {
  @override
  void initState() {
    super.initState();
    final authState = context.read<AuthBloc>().state;
    if (authState.userId != null) {
      context.read<ProfileBloc>().add(
        LoadProfileEvent(userId: authState.userId!),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final t = AppLocalizations.of(context)!;
    final authState = context.watch<AuthBloc>().state;

    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, profileState) {
        final profile = profileState.profile;
        final createdAt = profile?.createdAt;
        final memberSince = createdAt != null
            ? DateFormat('MMMM yyyy').format(createdAt)
            : 'N/A';

        return SettingsPageScaffold(
          title: t.settingsAccountStatusTitle,
          subtitle: t.settingsAccountStatusSubtitle,
          padding: EdgeInsets.zero,
          child: ListView(
            padding: const EdgeInsets.only(bottom: 24),
            children: [
              const SizedBox(height: 12),
              _AccountTileGroup(
                title: t.settingsAccountStatusInfoTitle,
                tiles: [
                  SettingsTileData(
                    title: t.settingsAccountStatusStandingTitle,
                    subtitle: t.settingsAccountStatusStandingSubtitle,
                    icon: Icons.verified_user_outlined,
                    iconColor: colorScheme.secondary,
                  ),
                  SettingsTileData(
                    title: t.settingsAccountStatusEmailTitle,
                    subtitle: profile?.email ?? authState.userId ?? 'N/A',
                    icon: Icons.email_outlined,
                    iconColor: colorScheme.primary,
                  ),
                  SettingsTileData(
                    title: t.settingsAccountStatusPhoneTitle,
                    subtitle: 'Not set',
                    icon: Icons.phone_outlined,
                    iconColor: colorScheme.secondary,
                  ),
                ],
              ),
              const SizedBox(height: 2),
              _AccountTileGroup(
                title: t.settingsAccountStatusMetricsTitle,
                tiles: [
                  SettingsTileData(
                    title: t.settingsAccountStatusMemberSinceTitle,
                    subtitle: memberSince,
                    icon: Icons.calendar_today_outlined,
                    iconColor: colorScheme.tertiary,
                  ),
                  SettingsTileData(
                    title: t.settingsAccountStatusCampaignsTitle,
                    subtitle: '0 active campaigns',
                    icon: Icons.campaign_outlined,
                    iconColor: colorScheme.secondary,
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

class _AccountTileGroup extends StatelessWidget {
  const _AccountTileGroup({required this.title, required this.tiles});

  final String title;
  final List<SettingsTileData> tiles;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return EdgeToEdgeSection(
      title: title,
      child: Column(
        children: [
          for (int i = 0; i < tiles.length; i++) ...[
            SettingsTile(data: tiles[i]),
            if (i != tiles.length - 1)
              Divider(
                height: 0,
                indent: tiles[i].icon != null ? 72 : 16,
                endIndent: 16,
                color: colorScheme.outlineVariant.withValues(alpha: 0.4),
              ),
          ],
        ],
      ),
    );
  }
}
