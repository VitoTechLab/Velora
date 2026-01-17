import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:velora/features/post/domain/entities/more_option_data.dart';
import 'package:velora/l10n/app_localizations.dart';
import 'package:velora/shared/widgets/modern_toggle_switch.dart';

class MoreOptionPostScreen extends HookWidget {
  final MoreOptionData initialOptions;

  const MoreOptionPostScreen({
    super.key,
    this.initialOptions = const MoreOptionData(),
  });
  @override
  Widget build(BuildContext context) {
    final allowComments = useState(initialOptions.allowComments);
    final allowShare = useState(initialOptions.allowShare);

    useEffect(
      () {
        allowComments.value = initialOptions.allowComments;
        allowShare.value = initialOptions.allowShare;
        return null;
      },
      [initialOptions.allowComments, initialOptions.allowShare],
    );

    void onBackPressed() {
      final result = MoreOptionData(
        allowComments: allowComments.value,
        allowShare: allowShare.value,
      );
      Navigator.pop(context, result);
    }

    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final t = AppLocalizations.of(context)!;
    final backgroundColor = colorScheme.surfaceContainerLowest;

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                colorScheme.surface,
                colorScheme.surfaceContainerLowest,
              ],
            ),
            border: Border(
              bottom: BorderSide(
                color: colorScheme.outlineVariant.withValues(alpha: 0.3),
                width: 1,
              ),
            ),
          ),
        ),
        leading: Container(
          margin: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: colorScheme.surfaceContainerHighest.withValues(alpha: 0.5),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onBackPressed,
              borderRadius: BorderRadius.circular(12),
              child: Icon(Icons.arrow_back, color: colorScheme.onSurface),
            ),
          ),
        ),
        title: ShaderMask(
          shaderCallback: (bounds) => LinearGradient(
            colors: [
              colorScheme.primary,
              colorScheme.secondary,
            ],
          ).createShader(bounds),
          child: Text(
            t.postMoreOptionsTitle,
            style: textTheme.titleMedium?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.2,
            ),
          ),
        ),
        centerTitle: false,
      ),
      body: ListView(
        children: [
          // Header section
          Container(
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  colorScheme.primaryContainer.withValues(alpha: 0.2),
                  colorScheme.secondaryContainer.withValues(alpha: 0.1),
                ],
              ),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: colorScheme.outline.withValues(alpha: 0.2),
                width: 1,
              ),
            ),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        colorScheme.primary.withValues(alpha: 0.2),
                        colorScheme.secondary.withValues(alpha: 0.15),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    Icons.info_outline,
                    size: 20,
                    color: colorScheme.primary,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    t.postMoreOptionsHeader,
                    style: textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurface.withValues(alpha: 0.7),
                      fontSize: 13,
                      letterSpacing: 0.1,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Allow commenting
          _buildOptionTile(
            icon: Icons.chat_bubble_outline,
            title: t.postMoreOptionsTurnOffCommentsTitle,
            subtitle: t.postMoreOptionsTurnOffCommentsSubtitle,
            value: !allowComments.value, // Inverted: "Turn off" = !allowComments
            onChanged: (value) {
              allowComments.value = !value;
            },
            colorScheme: colorScheme,
            textTheme: textTheme,
            t: t,
          ),

          const Divider(height: 1),

          // Allow share
          _buildOptionTile(
            icon: Icons.share_outlined,
            title: t.postMoreOptionsHideShareCountTitle,
            subtitle: t.postMoreOptionsHideShareCountSubtitle,
            value: !allowShare.value, // Inverted: "Turn off" = !allowShare
            onChanged: (value) {
              allowShare.value = !value;
            },
            colorScheme: colorScheme,
            textTheme: textTheme,
            t: t,
          ),
        ],
      ),
    );
  }

  Widget _buildOptionTile({
    required IconData icon,
    required String title,
    String? subtitle,
    required bool value,
    required ValueChanged<bool> onChanged,
    required ColorScheme colorScheme,
    required TextTheme textTheme,
    required AppLocalizations t,
  }) {
    final hint = value
        ? t.postToggleHintEnable(title)
        : t.postToggleHintDisable(title);
    return Semantics(
      container: true,
      toggled: value,
      label: title,
      hint: hint,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: colorScheme.surfaceContainerHighest.withValues(alpha: 0.5),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: value
                ? colorScheme.primary.withValues(alpha: 0.3)
                : colorScheme.outline.withValues(alpha: 0.2),
            width: 1.5,
          ),
          boxShadow: [
            BoxShadow(
              color: value
                  ? colorScheme.primary.withValues(alpha: 0.08)
                  : colorScheme.shadow.withValues(alpha: 0.05),
              blurRadius: value ? 12 : 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            // Icon with gradient background
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    colorScheme.primaryContainer.withValues(alpha: 0.4),
                    colorScheme.secondaryContainer.withValues(alpha: 0.3),
                  ],
                ),
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: colorScheme.primary.withValues(alpha: 0.1),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Icon(
                icon,
                size: 24,
                color: colorScheme.primary,
              ),
            ),
            const SizedBox(width: 16),

            // Text content
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: textTheme.bodyMedium?.copyWith(
                      color: colorScheme.onSurface,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.1,
                    ),
                  ),
                  if (subtitle != null) ...[
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: textTheme.bodySmall?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                        height: 1.4,
                        fontSize: 12,
                        letterSpacing: 0.1,
                      ),
                    ),
                  ],
                ],
              ),
            ),

            const SizedBox(width: 16),

            // Modern toggle switch
            ModernToggleSwitch(
              value: value,
              onChanged: onChanged,
            ),
          ],
        ),
      ),
    );
  }
}
