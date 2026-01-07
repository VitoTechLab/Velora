import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:velora/core/ui/app_messenger.dart';
import 'package:velora/features/settings/presentation/widgets/settings_section.dart';
import 'package:velora/features/settings/presentation/widgets/settings_page_scaffold.dart';
import 'package:velora/features/settings/presentation/widgets/settings_tile.dart';
import 'package:velora/l10n/app_localizations.dart';

class ThemeScreen extends HookWidget {
  const ThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeMode = useState('System');
    final dynamicColor = useState(true);
    final cornerRadius = useState(16.0);
    final selectedPalette = useState('Ocean');

    Future<void> load() async {
      final prefs = await SharedPreferences.getInstance();
      themeMode.value = prefs.getString('theme_mode') ?? 'System';
      dynamicColor.value = prefs.getBool('theme_dynamic') ?? true;
      cornerRadius.value = prefs.getDouble('theme_corner') ?? 16.0;
      selectedPalette.value = prefs.getString('theme_palette') ?? 'Ocean';
    }

    Future<void> save(String key, dynamic value) async {
      final prefs = await SharedPreferences.getInstance();
      switch (value) {
        case String():
          await prefs.setString(key, value);
        case bool():
          await prefs.setBool(key, value);
        case double():
          await prefs.setDouble(key, value);
      }
    }

    useEffect(() {
      load();
      return null;
    }, []);

    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

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
                mode: themeMode.value,
                dynamicColor: dynamicColor.value,
                cornerRadius: cornerRadius.value,
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
                    selected: {themeMode.value},
                    onSelectionChanged: (selection) {
                      final value = selection.first;
                      themeMode.value = value;
                      save('theme_mode', value);
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
              title: t.settingsAppearanceThemeColorSection,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          t.settingsAppearanceThemeColorDynamic,
                          style: theme.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Switch.adaptive(
                        value: dynamicColor.value,
                        onChanged: (val) {
                          dynamicColor.value = val;
                          save('theme_dynamic', val);
                        },
                        activeColor: colorScheme.primary,
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  if (!dynamicColor.value)
                    Wrap(
                      spacing: 12,
                      runSpacing: 12,
                      children: _paletteOptions.map((option) {
                        final isSelected =
                            selectedPalette.value == option.label;
                        return _ColorChip(
                          option: option,
                          selected: isSelected,
                          onSelected: () {
                            selectedPalette.value = option.label;
                            save('theme_palette', option.label);
                          },
                        );
                      }).toList(),
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
                          cornerRadius.value.round(),
                        ),
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: colorScheme.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Slider(
                    value: cornerRadius.value,
                    min: 0,
                    max: 32,
                    divisions: 32,
                    onChanged: (value) => cornerRadius.value = value,
                    onChangeEnd: (value) => save('theme_corner', value),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _RadiusPreview(
                        radius: 0,
                        label: t.settingsAppearanceThemeShapeSquare,
                      ),
                      _RadiusPreview(
                        radius: 8,
                        label: t.settingsAppearanceThemeShapeSmall,
                      ),
                      _RadiusPreview(
                        radius: 16,
                        label: t.settingsAppearanceThemeShapeMedium,
                      ),
                      _RadiusPreview(
                        radius: 24,
                        label: t.settingsAppearanceThemeShapeLarge,
                      ),
                      _RadiusPreview(
                        radius: 32,
                        label: t.settingsAppearanceThemeShapeMax,
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
          style: Theme.of(
            context,
          ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700),
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

class _ColorChip extends StatelessWidget {
  const _ColorChip({
    required this.option,
    required this.selected,
    required this.onSelected,
  });

  final _PaletteOption option;
  final bool selected;
  final VoidCallback onSelected;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return FilterChip(
      label: Text(option.label),
      avatar: CircleAvatar(backgroundColor: option.color),
      selected: selected,
      onSelected: (_) => onSelected(),
      selectedColor: colorScheme.primary.withValues(alpha: 0.12),
      checkmarkColor: colorScheme.primary,
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
            color: colorScheme.surfaceContainerHigh,
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
        const SizedBox(height: 4),
        Text(label, style: Theme.of(context).textTheme.bodySmall),
      ],
    );
  }
}

class _PaletteOption {
  const _PaletteOption({required this.label, required this.color});

  final String label;
  final Color color;
}

const _paletteOptions = [
  _PaletteOption(label: 'Ocean', color: Color(0xFF0F7AFE)),
  _PaletteOption(label: 'Velvet', color: Color(0xFF8644FF)),
  _PaletteOption(label: 'Forest', color: Color(0xFF1FA274)),
  _PaletteOption(label: 'Sunset', color: Color(0xFFFF8F3F)),
  _PaletteOption(label: 'Rose', color: Color(0xFFE73C7E)),
  _PaletteOption(label: 'Aqua', color: Color(0xFF00B8D9)),
];

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
