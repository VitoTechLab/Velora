import 'package:flutter/material.dart';
import 'package:velora/features/settings/presentation/widgets/edge_to_edge_section.dart';
import 'package:velora/features/settings/presentation/widgets/settings_page_scaffold.dart';
import 'package:velora/features/settings/presentation/widgets/settings_tile.dart';
import 'package:velora/l10n/app_localizations.dart';

/// Instagram-style about section using the shared settings primitives.
class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final t = AppLocalizations.of(context)!;

    return SettingsPageScaffold(
      title: t.settingsHelpAboutTitle,
      padding: EdgeInsets.zero,
      child: ListView(
        padding: const EdgeInsets.only(bottom: 24),
        children: [
          const SizedBox(height: 12),
          Semantics(
            label: t.settingsHelpAboutSemantics,
            container: true,
            child: EdgeToEdgeSection(
              backgroundColor: Colors.transparent,
              padding: EdgeInsets.zero,
              child: Container(
                padding: const EdgeInsets.all(28),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [colorScheme.primary, colorScheme.secondary],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(28),
                ),
                child: Column(
                  children: [
                    Container(
                      width: 96,
                      height: 96,
                      decoration: BoxDecoration(
                        color: colorScheme.onPrimary.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Icon(
                        Icons.volunteer_activism,
                        size: 56,
                        color: colorScheme.onPrimary,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      t.settingsHelpAboutBrandName,
                      style: textTheme.headlineSmall?.copyWith(
                        color: colorScheme.onPrimary,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      t.settingsHelpAboutTagline,
                      style: textTheme.bodyMedium?.copyWith(
                        color: colorScheme.onPrimary.withOpacity(0.8),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: colorScheme.onPrimary.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        t.settingsHelpAboutVersion,
                        style: textTheme.labelLarge?.copyWith(
                          color: colorScheme.onPrimary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 2),
          EdgeToEdgeSection(
            title: t.settingsHelpAboutWhyTitle,
            child: Column(
              children: [
                Text(
                  t.settingsHelpAboutWhyDescription,
                  textAlign: TextAlign.center,
                  style: textTheme.bodyMedium?.copyWith(height: 1.5),
                ),
                const SizedBox(height: 16),
                Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    _StatChip(
                      icon: Icons.campaign,
                      label: t.settingsHelpAboutStatCampaigns,
                      color: colorScheme.primary,
                    ),
                    _StatChip(
                      icon: Icons.people_alt,
                      label: t.settingsHelpAboutStatSupporters,
                      color: colorScheme.secondary,
                    ),
                    _StatChip(
                      icon: Icons.verified,
                      label: t.settingsHelpAboutStatTrust,
                      color: colorScheme.tertiary,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 2),
          _TileGroup(
            title: t.settingsHelpAboutDevTitle,
            tiles: [
              SettingsTileData(
                title: 'VitoTechLab',
                subtitle: t.settingsHelpAboutDevOrgSubtitle,
                icon: Icons.code,
                iconColor: colorScheme.primary,
                trailing: IconButton(
                  icon: Icon(Icons.open_in_new, color: colorScheme.primary),
                  onPressed: () {},
                ),
              ),
              SettingsTileData(
                title: 'Vito Ananda',
                subtitle: t.settingsHelpAboutDevFounderSubtitle,
                icon: Icons.person_outline,
                iconColor: colorScheme.secondary,
                trailing: IconButton(
                  icon: Icon(
                    Icons.email_outlined,
                    color: colorScheme.secondary,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          const SizedBox(height: 2),
          _TileGroup(
            title: t.settingsHelpAboutContactTitle,
            tiles: [
              SettingsTileData(
                title: t.settingsHelpEmailTitle,
                subtitle: t.settingsHelpEmailSubtitle,
                icon: Icons.email_outlined,
                iconColor: colorScheme.primary,
                onTap: () {},
              ),
              SettingsTileData(
                title: t.settingsHelpAboutLiveChatTitle,
                subtitle: t.settingsHelpAboutLiveChatSubtitle,
                icon: Icons.chat_bubble_outline,
                iconColor: colorScheme.tertiary,
                onTap: () {},
              ),
              SettingsTileData(
                title: t.settingsHelpAboutReportBugTitle,
                subtitle: t.settingsHelpAboutReportBugSubtitle,
                icon: Icons.bug_report_outlined,
                iconColor: colorScheme.error,
                onTap: () {},
              ),
              SettingsTileData(
                title: t.settingsHelpAboutSuggestFeatureTitle,
                subtitle: t.settingsHelpAboutSuggestFeatureSubtitle,
                icon: Icons.lightbulb_outline,
                iconColor: colorScheme.secondary,
                onTap: () {},
              ),
            ],
          ),
          const SizedBox(height: 2),
          EdgeToEdgeSection(
            title: t.settingsHelpAboutConnectTitle,
            child: Wrap(
              alignment: WrapAlignment.spaceEvenly,
              spacing: 16,
              runSpacing: 12,
              children: [
                _SocialButton(
                  icon: Icons.public,
                  label: t.settingsHelpAboutSocialWebsite,
                  color: const Color(0xFF166EF6),
                ),
                _SocialButton(
                  icon: Icons.camera_alt_outlined,
                  label: t.settingsHelpAboutSocialInstagram,
                  color: const Color(0xFFE4405F),
                ),
                _SocialButton(
                  icon: Icons.tag,
                  label: t.settingsHelpAboutSocialThreads,
                  color: const Color(0xFF1DA1F2),
                ),
                _SocialButton(
                  icon: Icons.facebook,
                  label: t.settingsHelpAboutSocialFacebook,
                  color: const Color(0xFF1877F2),
                ),
              ],
            ),
          ),
          const SizedBox(height: 2),
          _TileGroup(
            title: t.settingsHelpAboutLegalTitle,
            tiles: [
              SettingsTileData(
                title: t.settingsHelpAboutPrivacy,
                icon: Icons.privacy_tip_outlined,
                iconColor: colorScheme.primary,
                onTap: () {},
              ),
              SettingsTileData(
                title: t.settingsHelpAboutTerms,
                icon: Icons.gavel_outlined,
                iconColor: colorScheme.secondary,
                onTap: () {},
              ),
              SettingsTileData(
                title: t.settingsHelpAboutCookie,
                icon: Icons.cookie_outlined,
                iconColor: colorScheme.tertiary,
                onTap: () {},
              ),
              SettingsTileData(
                title: t.settingsHelpAboutLicenses,
                icon: Icons.code_outlined,
                iconColor: colorScheme.primary,
                onTap: () {},
              ),
            ],
          ),
          const SizedBox(height: 2),
          EdgeToEdgeSection(
            title: t.settingsHelpAboutEnjoyTitle,
            child: Column(
              children: [
                Icon(Icons.star_rate, size: 48, color: colorScheme.primary),
                const SizedBox(height: 12),
                Text(
                  t.settingsHelpAboutEnjoySubtitle,
                  style: textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 12),
                FilledButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.star_outline),
                  label: Text(t.settingsHelpAboutRateButton),
                ),
              ],
            ),
          ),
          const SizedBox(height: 2),
          EdgeToEdgeSection(
            title: t.settingsHelpAboutAcknowledgementsTitle,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    Chip(
                      label: Text(t.settingsHelpAboutAcknowledgementFlutter),
                    ),
                    Chip(label: Text(t.settingsHelpAboutAcknowledgementDart)),
                    Chip(
                      label: Text(t.settingsHelpAboutAcknowledgementFirebase),
                    ),
                    Chip(
                      label: Text(t.settingsHelpAboutAcknowledgementSupabase),
                    ),
                    Chip(
                      label: Text(t.settingsHelpAboutAcknowledgementMaterial),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Text(
                  t.settingsHelpAboutAcknowledgementsThanks,
                  style: textTheme.bodySmall?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 2),
          EdgeToEdgeSection(
            backgroundColor: Colors.transparent,
            child: Column(
              children: [
                Text(
                  t.settingsHelpAboutFooterCopyright,
                  style: textTheme.bodySmall?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  t.settingsHelpAboutFooterMadeWith,
                  style: textTheme.bodySmall?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _TileGroup extends StatelessWidget {
  const _TileGroup({required this.title, required this.tiles});

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
                color: colorScheme.outlineVariant.withOpacity(0.4),
              ),
          ],
        ],
      ),
    );
  }
}

class _StatChip extends StatelessWidget {
  const _StatChip({
    required this.icon,
    required this.label,
    required this.color,
  });

  final IconData icon;
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Chip(
      avatar: Icon(icon, size: 16, color: color),
      label: Text(label, style: theme.textTheme.labelMedium),
      backgroundColor: color.withOpacity(0.08),
      side: BorderSide(color: color.withOpacity(0.2)),
    );
  }
}

class _SocialButton extends StatelessWidget {
  const _SocialButton({
    required this.icon,
    required this.label,
    required this.color,
    this.onTap
  });

  final IconData icon;
  final String label;
  final Color color;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Semantics(
      button: onTap != null,
      label: label,
      child: InkWell(
        borderRadius: BorderRadius.circular(24),
        onTap: onTap,
        child: Column(
          children: [
            CircleAvatar(
              radius: 24,
              backgroundColor: color.withOpacity(0.12),
              child: Icon(icon, color: color),
            ),
            const SizedBox(height: 6),
            Text(
              label,
              style: textTheme.labelSmall?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
