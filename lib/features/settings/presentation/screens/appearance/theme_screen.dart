import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:velora/core/ui/app_messenger.dart';
import 'package:velora/features/settings/presentation/bloc/settings_bloc.dart';
import 'package:velora/features/settings/presentation/bloc/settings_event.dart';
import 'package:velora/features/settings/presentation/bloc/settings_state.dart';
import 'package:velora/features/settings/presentation/widgets/settings_section.dart';
import 'package:velora/features/settings/presentation/widgets/settings_page_scaffold.dart';
import 'package:velora/features/settings/presentation/widgets/settings_tile.dart';
import 'package:velora/l10n/app_localizations.dart';

/// Theme settings screen with real-time theme switching via SettingsBloc
///
/// Features:
/// - Theme mode: Light, Dark, System
/// - Dynamic color toggle (Material You)
/// - Corner radius customization
class ThemeScreen extends HookWidget {
  const ThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return BlocBuilder<SettingsBloc, SettingsState>(
      buildWhen: (prev, curr) =>
          prev.themeMode != curr.themeMode ||
          prev.dynamicColor != curr.dynamicColor ||
          prev.cornerRadius != curr.cornerRadius,
      builder: (context, settingsState) {
        // Convert themeMode from bloc to display format
        final themeModeDisplay = _toDisplayMode(settingsState.themeMode);

        return SettingsPageScaffold(
          title: t.settingsAppearanceThemeTitle,
          padding: EdgeInsets.zero,
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 12),
                SettingsSection(
                  child: _ThemePreview(
                    mode: themeModeDisplay,
                    dynamicColor: settingsState.dynamicColor,
                    cornerRadius: settingsState.cornerRadius,
                  ),
                ),
                const SizedBox(height: 8),
                SettingsSection(
                  title: t.settingsAppearanceThemeModeSection,
                  child: Column(
                    children: [
                      SegmentedButton<String>(
                        segments: [
                          ButtonSegment(
                            value: 'Light',
                            label: Text(t.settingsAppearanceThemeModeLight),
                            icon: const Icon(Icons.light_mode),
                          ),
                          ButtonSegment(
                            value: 'Dark',
                            label: Text(t.settingsAppearanceThemeModeDark),
                            icon: const Icon(Icons.dark_mode),
                          ),
                          ButtonSegment(
                            value: 'System',
                            label: Text(t.settingsAppearanceThemeModeAuto),
                            icon: const Icon(Icons.brightness_auto),
                          ),
                        ],
                        selected: {themeModeDisplay},
                        onSelectionChanged: (selection) {
                          final value = selection.first;
                          // Convert display mode to storage mode (lowercase)
                          context.read<SettingsBloc>().add(
                                UpdateThemeModeEvent(value.toLowerCase()),
                              );
                        },
                      ),
                      const SizedBox(height: 12),
                      Text(
                        t.settingsAppearanceThemeModeDescription,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                SettingsSection(
                  title: t.settingsAppearanceThemeShapeSection,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            t.settingsAppearanceThemeShapeCorner,
                            style: theme.textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            t.settingsAppearanceThemeShapeCornerValue(
                              settingsState.cornerRadius.round(),
                            ),
                            style: theme.textTheme.bodyMedium?.copyWith(
                              color: colorScheme.primary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Slider(
                        value: settingsState.cornerRadius,
                        min: 0,
                        max: 32,
                        divisions: 32,
                        onChanged: (value) {
                          context.read<SettingsBloc>().add(
                                UpdateCornerRadiusEvent(value),
                              );
                        },
                      ),
                      const SizedBox(height: 12),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _RadiusPreview(
                            radius: 0,
                            label: 'Square',
                          ),
                          _RadiusPreview(
                            radius: 8,
                            label: 'Small',
                          ),
                          _RadiusPreview(
                            radius: 16,
                            label: 'Medium',
                          ),
                          _RadiusPreview(
                            radius: 24,
                            label: 'Large',
                          ),
                          _RadiusPreview(
                            radius: 32,
                            label: 'Max',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                SettingsSection(
                  title: t.settingsAppearanceThemeAdvancedSection,
                  child: Column(
                    children: [
                      SettingsTile(
                        data: SettingsTileData(
                          title: t.settingsAppearanceThemeAccentTitle,
                          subtitle: t.settingsAppearanceThemeAccentSubtitle,
                          icon: Icons.colorize,
                          iconColor: colorScheme.primary,
                          trailing: Container(
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                              color: colorScheme.primary,
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          onTap: () {
                            AppMessenger.showToast(
                              message: t.settingsAppearanceThemeAccentToast,
                              icon: Icons.colorize,
                              duration: const Duration(seconds: 2),
                            );
                          },
                        ),
                      ),
                      Divider(
                        height: 0,
                        indent: 72,
                        endIndent: 16,
                        color: colorScheme.outlineVariant.withValues(alpha: 0.4),
                      ),
                      SettingsTile(
                        data: SettingsTileData(
                          title: t.settingsAppearanceThemeTypographyTitle,
                          subtitle: t.settingsAppearanceThemeTypographySubtitle,
                          icon: Icons.font_download,
                          iconColor: colorScheme.secondary,
                          onTap: () {
                            AppMessenger.showToast(
                              message: t.settingsAppearanceThemeTypographyToast,
                              icon: Icons.font_download,
                              duration: const Duration(seconds: 2),
                            );
                          },
                        ),
                      ),
                      Divider(
                        height: 0,
                        indent: 72,
                        endIndent: 16,
                        color: colorScheme.outlineVariant.withValues(alpha: 0.4),
                      ),
                      SettingsTile(
                        data: SettingsTileData(
                          title: t.settingsAppearanceThemeAnimationsTitle,
                          subtitle: t.settingsAppearanceThemeAnimationsSubtitle,
                          icon: Icons.animation_outlined,
                          iconColor: colorScheme.tertiary,
                          onTap: () {
                            AppMessenger.showToast(
                              message: t.settingsAppearanceThemeAnimationsToast,
                              icon: Icons.animation_outlined,
                              duration: const Duration(seconds: 2),
                            );
                          },
                        ),
                      ),
                    ],
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

class _ThemePreview extends StatelessWidget {
  const _ThemePreview({
    required this.mode,
    required this.dynamicColor,
    required this.cornerRadius,
  });

  final String mode;
  final bool dynamicColor;
  final double cornerRadius;

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final colorScheme = Theme.of(context).colorScheme;
    final gradient = dynamicColor
        ? [colorScheme.primary, colorScheme.secondary]
        : [colorScheme.surfaceTint, colorScheme.outline];
    final modeLabel = _localizedThemeModeLabel(t, mode);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          t.settingsAppearanceThemePreviewTitle,
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 12),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(cornerRadius),
            gradient: LinearGradient(
              colors: gradient,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(_themeIcon(mode), color: colorScheme.onPrimary, size: 32),
              const SizedBox(height: 12),
              Text(
                t.settingsAppearanceThemeModeLabel(modeLabel),
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: colorScheme.onPrimary,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 12),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: colorScheme.onPrimary.withValues(alpha: 0.2),
                  borderRadius: BorderRadius.circular(cornerRadius * 0.6),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      t.settingsAppearanceThemePreviewSampleCard,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: colorScheme.onPrimary,
                          ),
                    ),
                    Icon(Icons.chevron_right, color: colorScheme.onPrimary),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _RadiusPreview extends StatelessWidget {
  const _RadiusPreview({required this.radius, required this.label});

  final double radius;
  final String label;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Column(
      children: [
        Container(
          width: 46,
          height: 46,
          decoration: BoxDecoration(
            color: colorScheme.surfaceContainerHighest,
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
        const SizedBox(height: 4),
        Text(label, style: Theme.of(context).textTheme.bodySmall),
      ],
    );
  }
}

/// Converts stored mode ('light', 'dark', 'system') to display mode ('Light', 'Dark', 'System')
String _toDisplayMode(String mode) {
  switch (mode.toLowerCase()) {
    case 'light':
      return 'Light';
    case 'dark':
      return 'Dark';
    case 'system':
    default:
      return 'System';
  }
}

IconData _themeIcon(String mode) {
  switch (mode) {
    case 'Light':
      return Icons.light_mode;
    case 'Dark':
      return Icons.dark_mode;
    default:
      return Icons.brightness_auto;
  }
}

String _localizedThemeModeLabel(AppLocalizations t, String mode) {
  switch (mode) {
    case 'Light':
      return t.settingsAppearanceThemeModeLight;
    case 'Dark':
      return t.settingsAppearanceThemeModeDark;
    default:
      return t.settingsAppearanceThemeModeAuto;
  }
}
