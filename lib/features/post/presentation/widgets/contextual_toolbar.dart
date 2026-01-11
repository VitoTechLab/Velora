import 'package:flutter/material.dart';
import 'package:velora/core/themes/color_material.dart';
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
        boxShadow: [
          BoxShadow(
            color: MaterialColorsCustom.shadowColor.withValues(alpha: 0.1),
            blurRadius: 12,
            offset: const Offset(0, -4),
          ),
        ],
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
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 24, color: MaterialColorsCustom.brandEmerald),
            const SizedBox(height: 4),
            Text(
              label,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: MaterialColorsCustom.greyMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
