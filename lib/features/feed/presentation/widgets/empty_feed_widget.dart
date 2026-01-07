import 'package:flutter/material.dart';
import 'package:velora/l10n/app_localizations.dart';

class EmptyFeedWidget extends StatelessWidget {
  final String? message;
  final String? subtitle;
  final VoidCallback? onRefresh;

  const EmptyFeedWidget({
    super.key,
    this.message,
    this.subtitle,
    this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final t = AppLocalizations.of(context)!;
    final primaryMessage = message ?? t.feedEmptyMessage;
    final secondaryMessage = subtitle ?? t.feedEmptySubtitle;

    return Semantics(
      container: true,
      label: primaryMessage,
      hint: onRefresh != null
          ? t.feedEmptyHint(secondaryMessage)
          : secondaryMessage,
      child: ExcludeSemantics(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ExcludeSemantics(
                  child: Icon(
                    Icons.inbox_outlined,
                    size: 120,
                    color: colorScheme.outlineVariant,
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  primaryMessage,
                  style: textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: colorScheme.onSurface,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                Text(
                  secondaryMessage,
                  style: textTheme.bodyMedium?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                  textAlign: TextAlign.center,
                ),
                if (onRefresh != null) ...[
                  const SizedBox(height: 24),
                  Semantics(
                    button: true,
                    label: t.feedRefreshButtonSemantic,
                    child: ExcludeSemantics(
                      child: ElevatedButton.icon(
                        onPressed: onRefresh,
                        icon: const Icon(Icons.refresh),
                        label: Text(t.feedRefreshButton),
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 12,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
