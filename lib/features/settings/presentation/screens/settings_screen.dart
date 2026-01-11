import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:velora/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:velora/features/auth/presentation/bloc/auth_event.dart';
import 'package:velora/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:velora/features/profile/presentation/bloc/profile_event.dart';
import 'package:velora/features/profile/presentation/bloc/profile_state.dart';
import 'package:velora/features/settings/presentation/widgets/settings_section_card.dart';
import 'package:velora/features/settings/presentation/widgets/settings_tile.dart';
import 'package:velora/l10n/app_localizations.dart';
import 'package:velora/routes/app_router.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final t = AppLocalizations.of(context)!;
    final background = Color.lerp(
      theme.colorScheme.surface,
      theme.colorScheme.surfaceContainerHighest,
      theme.brightness == Brightness.dark ? 0.08 : 0.25,
    );

    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              pinned: true,
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    t.settingsAccountsCenterTitle,
                    style: theme.textTheme.titleLarge,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    t.settingsAccountsCenterSubtitle,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
              actions: [
                IconButton(
                  icon: const Icon(Icons.search),
                  tooltip: t.settingsSearchTooltip,
                  onPressed: () {
                    showSearch(
                      context: context,
                      delegate: _SettingsSearchDelegate(),
                    );
                  },
                ),
                const SizedBox(width: 4),
              ],
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(12, 12, 12, 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const _AccountHeroCard(),
                    const SizedBox(height: 24),
                    SettingsSectionCard(
                      title: t.settingsConnectedTitle,
                      subtitle: t.settingsConnectedSubtitle,
                      tiles: [
                        SettingsTileData(
                          title: t.settingsTileProfilesTitle,
                          subtitle: t.settingsTileProfilesSubtitle,
                          icon: Icons.person_outline,
                          iconColor: const Color(0xFF00A86B),
                          onTap: () => _openNamed(
                            context,
                            AppRouteName.settingsProfiles,
                          ),
                        ),
                        SettingsTileData(
                          title: t.settingsTileActivityTitle,
                          subtitle: t.settingsTileActivitySubtitle,
                          icon: Icons.history,
                          iconColor: const Color(0xFF00BCD4),
                          onTap: () => _openNamed(
                            context,
                            AppRouteName.settingsActivity,
                          ),
                        ),
                      ],
                    ),
                    SettingsSectionCard(
                      title: t.settingsAccountTitle,
                      tiles: [
                        SettingsTileData(
                          title: t.settingsTilePasswordSecurityTitle,
                          subtitle: t.settingsTilePasswordSecuritySubtitle,
                          icon: Icons.shield_outlined,
                          iconColor: const Color(0xFF00A86B),
                          onTap: () => _openNamed(
                            context,
                            AppRouteName.settingsPasswordSecurity,
                          ),
                        ),
                        SettingsTileData(
                          title: t.settingsTilePersonalDetailsTitle,
                          subtitle: t.settingsTilePersonalDetailsSubtitle,
                          icon: Icons.badge_outlined,
                          iconColor: const Color(0xFF3B82F6),
                          onTap: () => _openNamed(
                            context,
                            AppRouteName.settingsEditProfile,
                          ),
                        ),
                        SettingsTileData(
                          title: t.settingsTileInfoPermissionsTitle,
                          subtitle: t.settingsTileInfoPermissionsSubtitle,
                          icon: Icons.verified_user_outlined,
                          iconColor: const Color(0xFF10B981),
                          onTap: () =>
                              _openNamed(context, AppRouteName.settingsPrivacy),
                        ),
                        SettingsTileData(
                          title: t.settingsTileAdPreferencesTitle,
                          subtitle: t.settingsTileAdPreferencesSubtitle,
                          icon: Icons.campaign_outlined,
                          iconColor: const Color(0xFFFF6B6B),
                          onTap: () => _openNamed(
                            context,
                            AppRouteName.settingsActivity,
                          ),
                        ),
                      ],
                    ),
                    SettingsSectionCard(
                      title: t.settingsWalletTitle,
                      tiles: [
                        SettingsTileData(
                          title: t.settingsTileVeloraPayTitle,
                          subtitle: t.settingsTileVeloraPaySubtitle,
                          icon: Icons.account_balance_wallet_outlined,
                          iconColor: const Color(0xFF00BCD4),
                          onTap: () => _openNamed(
                            context,
                            AppRouteName.settingsWalletDashboard,
                          ),
                        ),
                      ],
                    ),
                    SettingsSectionCard(
                      title: t.settingsPersonalizationTitle,
                      tiles: [
                        SettingsTileData(
                          title: t.settingsTileNotificationsTitle,
                          subtitle: t.settingsTileNotificationsSubtitle,
                          icon: Icons.notifications_active_outlined,
                          iconColor: const Color(0xFFFF6B6B),
                          onTap: () => _openNamed(
                            context,
                            AppRouteName.settingsNotificationDetail,
                          ),
                        ),
                        SettingsTileData(
                          title: t.settingsTileThemeTitle,
                          subtitle: t.settingsTileThemeSubtitle,
                          icon: Icons.dark_mode_outlined,
                          iconColor: const Color(0xFF8B5CF6),
                          onTap: () =>
                              _openNamed(context, AppRouteName.settingsTheme),
                        ),
                        SettingsTileData(
                          title: t.settingsTileLanguageTitle,
                          subtitle: t.settingsTileLanguageSubtitle,
                          icon: Icons.language_outlined,
                          iconColor: const Color(0xFF3B82F6),
                          onTap: () => _openNamed(
                            context,
                            AppRouteName.settingsLanguage,
                          ),
                        ),
                        SettingsTileData(
                          title: t.settingsTileAccessibilityTitle,
                          subtitle: t.settingsTileAccessibilitySubtitle,
                          icon: Icons.accessibility_new,
                          iconColor: const Color(0xFF10B981),
                          onTap: () => _openNamed(
                            context,
                            AppRouteName.settingsAccessibility,
                          ),
                        ),
                      ],
                    ),
                    SettingsSectionCard(
                      title: t.settingsHelpTitle,
                      tiles: [
                        SettingsTileData(
                          title: t.settingsTileHelpCenterTitle,
                          subtitle: t.settingsTileHelpCenterSubtitle,
                          icon: Icons.help_outline,
                          iconColor: const Color(0xFF3B82F6),
                          onTap: () =>
                              _openNamed(context, AppRouteName.settingsHelp),
                        ),
                        SettingsTileData(
                          title: t.settingsTileFaqTitle,
                          subtitle: t.settingsTileFaqSubtitle,
                          icon: Icons.menu_book_outlined,
                          iconColor: const Color(0xFFF59E0B),
                          onTap: () =>
                              _openNamed(context, AppRouteName.settingsFaq),
                        ),
                        SettingsTileData(
                          title: t.settingsTileAboutTitle,
                          subtitle: t.settingsTileAboutSubtitle,
                          icon: Icons.info_outline,
                          iconColor: const Color(0xFF8B5CF6),
                          onTap: () =>
                              _openNamed(context, AppRouteName.settingsAbout),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.surface,
                        borderRadius: BorderRadius.circular(28),
                      ),
                      child: ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 8,
                        ),
                        leading: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.error.withValues(
                              alpha: 0.1,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(
                            Icons.logout,
                            color: theme.colorScheme.error,
                            size: 24,
                          ),
                        ),
                        title: Text(
                          'Log out',
                          style: theme.textTheme.titleMedium?.copyWith(
                            color: theme.colorScheme.error,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        trailing: Icon(
                          Icons.chevron_right,
                          color: theme.colorScheme.error,
                        ),
                        onTap: () {
                          context.read<AuthBloc>().add(
                            const AuthSignOutRequested(),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static void _openNamed(BuildContext context, String routeName) {
    context.pushNamed(routeName);
  }
}

class _AccountHeroCard extends StatefulWidget {
  const _AccountHeroCard();

  @override
  State<_AccountHeroCard> createState() => _AccountHeroCardState();
}

class _AccountHeroCardState extends State<_AccountHeroCard> {
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
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final t = AppLocalizations.of(context)!;
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, profileState) {
        final profile = profileState.profile;
        return Semantics(
          container: true,
          label: t.settingsHeroSemanticsLabel,
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  colorScheme.primary.withValues(alpha: 0.2),
                  colorScheme.secondary.withValues(alpha: 0.08),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(28),
              border: Border.all(
                color: colorScheme.primary.withValues(alpha: 0.2),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 36,
                      backgroundImage: const NetworkImage(
                        'https://images.unsplash.com/photo-1504593811423-6dd665756598?auto=format&fit=crop&w=200',
                      ),
                      backgroundColor: colorScheme.surfaceContainerHighest,
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            profile?.username ?? '...',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            t.settingsHeroNetworks,
                            style: theme.textTheme.bodyMedium?.copyWith(
                              color: colorScheme.onSurfaceVariant,
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton.filledTonal(
                      onPressed: () {},
                      icon: const Icon(Icons.swap_horiz),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () => context.pushNamed(
                    AppRouteName.settingsAccountType,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: colorScheme.surface.withValues(alpha: 0.8),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.account_circle_outlined,
                          color: colorScheme.primary,
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                t.settingsHeroAccountType,
                                style: theme.textTheme.bodyMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                t.settingsHeroAccountTypeSubtitle,
                                style: theme.textTheme.bodySmall?.copyWith(
                                  color: colorScheme.onSurfaceVariant,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.chevron_right,
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _SettingsSearchDelegate extends SearchDelegate<void> {
  List<String> _entries(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return [
      t.settingsSearchProfiles,
      t.settingsSearchPassword,
      t.settingsSearchSecurity,
      t.settingsSearchNotifications,
      t.settingsSearchPrivacy,
      t.settingsSearchLanguage,
      t.settingsSearchTheme,
      t.settingsSearchHelp,
      t.settingsSearchPayments,
    ];
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(icon: const Icon(Icons.clear), onPressed: () => query = ''),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () => close(context, null),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final results = _entries(context)
        .where((entry) => entry.toLowerCase().contains(query.toLowerCase()))
        .toList();
    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (_, index) {
        final item = results[index];
        return ListTile(title: Text(item), onTap: () => close(context, null));
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return buildResults(context);
  }
}
