import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:velora/features/settings/presentation/widgets/edge_to_edge_section.dart';
import 'package:velora/features/settings/presentation/widgets/settings_section.dart';
import 'package:velora/features/settings/presentation/widgets/settings_page_scaffold.dart';
import 'package:velora/l10n/app_localizations.dart';

class AccessibilityScreen extends HookWidget {
  const AccessibilityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tabController = useTabController(initialLength: 3);

    final fontSize = useState(16.0);
    final highContrast = useState(false);
    final lineSpacing = useState(1.4);
    final fontFamily = useState('Inter');
    final textAlign = useState(TextAlign.left);
    final motionReduced = useState(false);

    Future<void> loadPrefs() async {
      final prefs = await SharedPreferences.getInstance();
      fontSize.value = prefs.getDouble('settings_fontSize') ?? 16;
      highContrast.value = prefs.getBool('settings_highContrast') ?? false;
      lineSpacing.value = prefs.getDouble('settings_lineSpacing') ?? 1.4;
      fontFamily.value = prefs.getString('settings_fontFamily') ?? 'Inter';
      final alignIndex = prefs.getInt('settings_textAlign') ?? 0;
      textAlign.value = TextAlign.values[alignIndex];
      motionReduced.value = prefs.getBool('settings_motionReduced') ?? false;
    }

    Future<void> persist(void Function(SharedPreferences prefs) action) async {
      final prefs = await SharedPreferences.getInstance();
      action(prefs);
    }

    useEffect(() {
      loadPrefs();
      return null;
    }, []);

    final t = AppLocalizations.of(context)!;

    return SettingsPageScaffold(
      title: t.settingsAppearanceAccessibilityTitle,
      subtitle: t.settingsAppearanceAccessibilitySubtitle,
      padding: EdgeInsets.zero,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
            child: TabBar(
              controller: tabController,
              tabs: [
                Tab(
                  icon: const Icon(Icons.text_fields),
                  text: t.settingsAppearanceAccessibilityTabText,
                ),
                Tab(
                  icon: const Icon(Icons.palette_outlined),
                  text: t.settingsAppearanceAccessibilityTabAppearance,
                ),
                Tab(
                  icon: const Icon(Icons.view_agenda_outlined),
                  text: t.settingsAppearanceAccessibilityTabLayout,
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                _TextTab(
                  fontSize: fontSize,
                  fontFamily: fontFamily,
                  textAlign: textAlign,
                  persist: persist,
                ),
                _AppearanceTab(
                  highContrast: highContrast,
                  motionReduced: motionReduced,
                  persist: persist,
                ),
                _LayoutTab(
                  lineSpacing: lineSpacing,
                  textAlign: textAlign,
                  persist: persist,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _TextTab extends StatelessWidget {
  const _TextTab({
    required this.fontSize,
    required this.fontFamily,
    required this.textAlign,
    required this.persist,
  });

  final ValueNotifier<double> fontSize;
  final ValueNotifier<String> fontFamily;
  final ValueNotifier<TextAlign> textAlign;
  final Future<void> Function(void Function(SharedPreferences)) persist;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final t = AppLocalizations.of(context)!;
    return ListView(
      padding: const EdgeInsets.only(bottom: 24),
      children: [
        SettingsSection(
          title: t.settingsAppearanceAccessibilityFontSizeTitle,
          subtitle: t.settingsAppearanceAccessibilityFontSizeSubtitle,
          child: Column(
            children: [
              Slider(
                value: fontSize.value,
                min: 12,
                max: 24,
                divisions: 6,
                label: t.settingsAppearanceAccessibilityFontSizeLabel(
                  fontSize.value,
                ),
                onChanged: (value) {
                  fontSize.value = value;
                  persist(
                    (prefs) => prefs.setDouble('settings_fontSize', value),
                  );
                },
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  t.settingsAppearanceAccessibilityFontSample(fontSize.value),
                  style: theme.textTheme.bodyMedium?.copyWith(
                    fontSize: fontSize.value,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        SettingsSection(
          title: t.settingsAppearanceAccessibilityFontFamilyTitle,
          child: SegmentedButton<String>(
            segments: const [
              ButtonSegment(value: 'Inter', label: Text('Inter')),
              ButtonSegment(value: 'DM Sans', label: Text('DM Sans')),
              ButtonSegment(value: 'Serif', label: Text('Serif')),
            ],
            selected: {fontFamily.value},
            onSelectionChanged: (value) {
              fontFamily.value = value.first;
              persist(
                (prefs) => prefs.setString('settings_fontFamily', value.first),
              );
            },
          ),
        ),
        const SizedBox(height: 8),
        SettingsSection(
          title: t.settingsAppearanceAccessibilityTextAlignmentTitle,
          child: SegmentedButton<TextAlign>(
            segments: const [
              ButtonSegment(
                value: TextAlign.left,
                label: Icon(Icons.format_align_left),
              ),
              ButtonSegment(
                value: TextAlign.center,
                label: Icon(Icons.format_align_center),
              ),
              ButtonSegment(
                value: TextAlign.justify,
                label: Icon(Icons.format_align_justify),
              ),
            ],
            selected: {textAlign.value},
            onSelectionChanged: (value) {
              textAlign.value = value.first;
              persist(
                (prefs) =>
                    prefs.setInt('settings_textAlign', value.first.index),
              );
            },
          ),
        ),
        const SizedBox(height: 2),
        EdgeToEdgeSection(
          title: t.settingsAppearanceAccessibilityPreviewTitle,
          child: Text(
            t.settingsAppearanceAccessibilityPreviewBody,
            textAlign: textAlign.value,
            style: theme.textTheme.bodyMedium?.copyWith(
              fontSize: fontSize.value,
              color: theme.colorScheme.onSurface,
            ),
          ),
        ),
      ],
    );
  }
}

class _AppearanceTab extends StatelessWidget {
  const _AppearanceTab({
    required this.highContrast,
    required this.motionReduced,
    required this.persist,
  });

  final ValueNotifier<bool> highContrast;
  final ValueNotifier<bool> motionReduced;
  final Future<void> Function(void Function(SharedPreferences)) persist;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final t = AppLocalizations.of(context)!;
    return ListView(
      padding: const EdgeInsets.only(bottom: 24),
      children: [
        SettingsSection(
          title: t.settingsAppearanceAccessibilityAppearanceHighContrastTitle,
          subtitle:
              t.settingsAppearanceAccessibilityAppearanceHighContrastSubtitle,
          child: Row(
            children: [
              Expanded(
                child: Text(
                  t.settingsAppearanceAccessibilityAppearanceHighContrastToggle,
                  style: textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Switch.adaptive(
                value: highContrast.value,
                onChanged: (value) {
                  highContrast.value = value;
                  persist(
                    (prefs) => prefs.setBool('settings_highContrast', value),
                  );
                },
                activeTrackColor: colorScheme.primary,
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        SettingsSection(
          title: t.settingsAppearanceAccessibilityAppearanceReduceTitle,
          subtitle: t.settingsAppearanceAccessibilityAppearanceReduceSubtitle,
          child: Row(
            children: [
              Expanded(
                child: Text(
                  t.settingsAppearanceAccessibilityAppearanceReduceToggle,
                  style: textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Switch.adaptive(
                value: motionReduced.value,
                onChanged: (value) {
                  motionReduced.value = value;
                  persist(
                    (prefs) => prefs.setBool('settings_motionReduced', value),
                  );
                },
                activeTrackColor: colorScheme.primary,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _LayoutTab extends StatelessWidget {
  const _LayoutTab({
    required this.lineSpacing,
    required this.textAlign,
    required this.persist,
  });

  final ValueNotifier<double> lineSpacing;
  final ValueNotifier<TextAlign> textAlign;
  final Future<void> Function(void Function(SharedPreferences)) persist;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final t = AppLocalizations.of(context)!;
    return ListView(
      padding: const EdgeInsets.only(bottom: 24),
      children: [
        SettingsSection(
          title: t.settingsAppearanceAccessibilityLayoutLineSpacing,
          child: Slider(
            value: lineSpacing.value,
            min: 1.0,
            max: 2.0,
            divisions: 10,
            label: lineSpacing.value.toStringAsFixed(1),
            onChanged: (value) {
              lineSpacing.value = value;
              persist(
                (prefs) => prefs.setDouble('settings_lineSpacing', value),
              );
            },
          ),
        ),
        const SizedBox(height: 2),
        EdgeToEdgeSection(
          title: t.settingsAppearanceAccessibilityPreviewTitle,
          child: Text(
            t.settingsAppearanceAccessibilityLayoutPreviewBody,
            textAlign: textAlign.value,
            style: theme.textTheme.bodyMedium?.copyWith(
              height: lineSpacing.value,
            ),
          ),
        ),
      ],
    );
  }
}
