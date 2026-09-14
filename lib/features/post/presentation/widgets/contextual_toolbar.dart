import 'package:flutter/material.dart';
import 'package:velora/l10n/app_localizations.dart';

/// Contextual toolbar with location, link, and campaign actions
class ContextualToolbar extends StatelessWidget {
  const ContextualToolbar({
    super.key,
    required this.onAddLocation,
    required this.onAddLink,
    required this.onAddCampaign,
  });

  final VoidCallback onAddLocation;
  final VoidCallback onAddLink;
  final VoidCallback onAddCampaign;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final t = AppLocalizations.of(context)!;
    return Container(
      decoration: BoxDecoration(
        color: colorScheme.surface,
        border: Border(
          top: BorderSide(
            color: colorScheme.outlineVariant.withValues(alpha: 0.3),
            width: 1,
          ),
        ),
      ),
      child: SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _ToolbarAction(
                icon: Icons.location_on_outlined,
                label: t.postToolbarLocation,
                onTap: onAddLocation,
              ),
              _ToolbarAction(
                icon: Icons.link,
                label: t.postToolbarLink,
                onTap: onAddLink,
              ),
              _ToolbarAction(
                icon: Icons.campaign_outlined,
                label: t.postToolbarCampaign,
                onTap: onAddCampaign,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ToolbarAction extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _ToolbarAction({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: colorScheme.primaryContainer.withValues(alpha: 0.4),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Icon(icon, size: 24, color: colorScheme.primary),
              ),
              const SizedBox(height: 8),
              Text(
                label,
                style: textTheme.bodySmall?.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: colorScheme.onSurfaceVariant,
                  letterSpacing: 0.2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
