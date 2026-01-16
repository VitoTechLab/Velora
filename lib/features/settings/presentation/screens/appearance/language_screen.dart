import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:velora/core/ui/app_messenger.dart';
import 'package:velora/features/settings/presentation/bloc/settings_bloc.dart';
import 'package:velora/features/settings/presentation/bloc/settings_state.dart';
import 'package:velora/features/settings/presentation/widgets/settings_section.dart';
import 'package:velora/features/settings/presentation/widgets/settings_page_scaffold.dart';
import 'package:velora/l10n/app_localizations.dart';

/// Instagram-style language selector with search and preview
/// Minimal list: EN, ID, KO, JA, ZH
/// Now connected to SettingsBloc for real-time language switching
class LanguageScreen extends HookWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final searchQuery = useState('');

    // ✅ Only 5 supported languages
    const languages = [
      _LanguageData('en', 'English', '🇺🇸'),
      _LanguageData('id', 'Bahasa Indonesia', '🇮🇩'),
      _LanguageData('ko', '한국어 (Korean)', '🇰🇷'),
      _LanguageData('ja', '日本語 (Japanese)', '🇯🇵'),
      _LanguageData('zh', '中文 (Mandarin)', '🇨🇳'),
    ];

    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    return BlocBuilder<SettingsBloc, SettingsState>(
      buildWhen: (prev, curr) => prev.languageCode != curr.languageCode,
      builder: (context, settingsState) {
        final selectedLanguage = settingsState.languageCode;

        final filteredLanguages = languages.where((lang) {
          final query = searchQuery.value.toLowerCase();
          return lang.name.toLowerCase().contains(query) ||
              lang.code.toLowerCase().contains(query);
        }).toList();

        final currentLanguage = languages.firstWhere(
          (lang) => lang.code == selectedLanguage,
          orElse: () => languages.first,
        );

        return SettingsPageScaffold(
          title: t.settingsAppearanceLanguageTitle,
          padding: EdgeInsets.zero,
          child: Column(
            children: [
              const SizedBox(height: 12),
              Semantics(
                label: t.settingsAppearanceLanguagePreviewSemantics,
                container: true,
                child: SettingsSection(
                  child: Row(
                    children: [
                      Container(
                        width: 48,
                        height: 48,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: colorScheme.primary.withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          currentLanguage.flag,
                          style: const TextStyle(fontSize: 24),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              t.settingsAppearanceLanguageCurrentLabel,
                              style: textTheme.labelSmall?.copyWith(
                                color: colorScheme.onSurfaceVariant,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              currentLanguage.name,
                              style: textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Icon(Icons.check_circle, color: colorScheme.primary),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 8),
              SettingsSection(
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: t.settingsAppearanceLanguageSearchHint,
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: searchQuery.value.isNotEmpty
                        ? IconButton(
                            icon: const Icon(Icons.clear),
                            onPressed: () => searchQuery.value = '',
                          )
                        : null,
                  ),
                  onChanged: (value) => searchQuery.value = value,
                ),
              ),
              const SizedBox(height: 8),
              Expanded(
                child: filteredLanguages.isEmpty
                    ? SettingsSection(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.search_off,
                              size: 48,
                              color: colorScheme.onSurfaceVariant,
                            ),
                            const SizedBox(height: 12),
                            Text(
                              t.settingsAppearanceLanguageEmpty,
                              style: textTheme.titleMedium,
                            ),
                          ],
                        ),
                      )
                    : ListView.separated(
                        padding: EdgeInsets.zero,
                        itemBuilder: (context, index) {
                          final language = filteredLanguages[index];
                          final isSelected = language.code == selectedLanguage;
                          final tileColor = colorScheme.surface;

                          return Material(
                            color: tileColor,
                            child: InkWell(
                              onTap: () {
                                // Update language via SettingsBloc
                                context.read<SettingsBloc>().add(
                                      UpdateLanguageEvent(
                                        languageCode: language.code,
                                      ),
                                    );

                                // Show confirmation toast
                                AppMessenger.showToast(
                                  message: t.settingsAppearanceLanguageToast(
                                    language.name,
                                  ),
                                  icon: Icons.check_circle_outline,
                                  duration: const Duration(seconds: 2),
                                );
                              },
                              overlayColor: WidgetStateProperty.resolveWith((
                                states,
                              ) {
                                if (states.contains(WidgetState.pressed)) {
                                  return colorScheme.onSurface.withValues(
                                    alpha: 0.06,
                                  );
                                }
                                if (states.contains(WidgetState.hovered)) {
                                  return colorScheme.onSurface.withValues(
                                    alpha: 0.03,
                                  );
                                }
                                if (states.contains(WidgetState.focused)) {
                                  return colorScheme.onSurface.withValues(
                                    alpha: 0.04,
                                  );
                                }
                                return null;
                              }),
                              child: ListTile(
                                onTap: null,
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 6,
                                ),
                                leading: SizedBox(
                                  width: 40,
                                  child: Center(
                                    child: Text(
                                      language.flag,
                                      style: const TextStyle(fontSize: 20),
                                    ),
                                  ),
                                ),
                                title: Text(
                                  language.name,
                                  style: textTheme.bodyLarge?.copyWith(
                                    fontWeight: isSelected
                                        ? FontWeight.w700
                                        : FontWeight.w500,
                                  ),
                                ),
                                subtitle: Text(
                                  language.code.toUpperCase(),
                                  style: textTheme.bodySmall?.copyWith(
                                    color: colorScheme.onSurfaceVariant,
                                  ),
                                ),
                                trailing: isSelected
                                    ? Icon(
                                        Icons.check_circle,
                                        color: colorScheme.primary,
                                      )
                                    : null,
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (_, __) => const SizedBox(height: 8),
                        itemCount: filteredLanguages.length,
                      ),
              ),
              const SizedBox(height: 8),
              SettingsSection(
                child: Row(
                  children: [
                    Icon(
                      Icons.info_outline,
                      size: 16,
                      color: colorScheme.onSurfaceVariant,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        t.settingsAppearanceLanguageRestartNote,
                        style: textTheme.bodySmall?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _LanguageData {
  final String code;
  final String name;
  final String flag;

  const _LanguageData(this.code, this.name, this.flag);
}
