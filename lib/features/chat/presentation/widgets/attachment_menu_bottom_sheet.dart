import 'package:flutter/material.dart';
import 'package:velora/l10n/app_localizations.dart';

class AttachmentMenuBottomSheet extends StatelessWidget {
  final VoidCallback onGalleryTap;
  final VoidCallback onCameraTap;
  final VoidCallback onLocationTap;
  final VoidCallback onContactTap;
  final VoidCallback onDocumentTap;
  final VoidCallback onAudioTap;
  final VoidCallback onPollTap;
  final VoidCallback onEventTap;
  final VoidCallback onAiImagesTap;

  const AttachmentMenuBottomSheet({
    super.key,
    required this.onGalleryTap,
    required this.onCameraTap,
    required this.onLocationTap,
    required this.onContactTap,
    required this.onDocumentTap,
    required this.onAudioTap,
    required this.onPollTap,
    required this.onEventTap,
    required this.onAiImagesTap,
  });

  static Future<void> show(
    BuildContext context, {
    required VoidCallback onGalleryTap,
    required VoidCallback onCameraTap,
    required VoidCallback onLocationTap,
    required VoidCallback onContactTap,
    required VoidCallback onDocumentTap,
    required VoidCallback onAudioTap,
    required VoidCallback onPollTap,
    required VoidCallback onEventTap,
    required VoidCallback onAiImagesTap,
  }) {
    return showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) => AttachmentMenuBottomSheet(
        onGalleryTap: onGalleryTap,
        onCameraTap: onCameraTap,
        onLocationTap: onLocationTap,
        onContactTap: onContactTap,
        onDocumentTap: onDocumentTap,
        onAudioTap: onAudioTap,
        onPollTap: onPollTap,
        onEventTap: onEventTap,
        onAiImagesTap: onAiImagesTap,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final t = AppLocalizations.of(context)!;

    return Container(
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
      ),
      child: SafeArea(
        top: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 12),
            Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: colorScheme.onSurfaceVariant.withValues(alpha: 0.4),
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _AttachmentMenuItem(
                        icon: Icons.image_outlined,
                        label: t.chatAttachmentGallery,
                        color: const Color(0xFF2196F3),
                        onTap: () {
                          Navigator.pop(context);
                          onGalleryTap();
                        },
                      ),
                      _AttachmentMenuItem(
                        icon: Icons.camera_alt_outlined,
                        label: t.chatAttachmentCamera,
                        color: const Color(0xFFE91E63),
                        onTap: () {
                          Navigator.pop(context);
                          onCameraTap();
                        },
                      ),
                      _AttachmentMenuItem(
                        icon: Icons.location_on_outlined,
                        label: t.chatAttachmentLocation,
                        color: const Color(0xFF00BFA5),
                        onTap: () {
                          Navigator.pop(context);
                          onLocationTap();
                        },
                      ),
                      _AttachmentMenuItem(
                        icon: Icons.person_outline,
                        label: t.chatAttachmentContact,
                        color: const Color(0xFF2196F3),
                        onTap: () {
                          Navigator.pop(context);
                          onContactTap();
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _AttachmentMenuItem(
                        icon: Icons.description_outlined,
                        label: t.chatAttachmentDocument,
                        color: const Color(0xFF7C4DFF),
                        onTap: () {
                          Navigator.pop(context);
                          onDocumentTap();
                        },
                      ),
                      _AttachmentMenuItem(
                        icon: Icons.headset_outlined,
                        label: t.chatAttachmentAudio,
                        color: const Color(0xFFFF6F00),
                        onTap: () {
                          Navigator.pop(context);
                          onAudioTap();
                        },
                      ),
                      _AttachmentMenuItem(
                        icon: Icons.poll_outlined,
                        label: t.chatAttachmentPoll,
                        color: const Color(0xFFFFB300),
                        onTap: () {
                          Navigator.pop(context);
                          onPollTap();
                        },
                      ),
                      _AttachmentMenuItem(
                        icon: Icons.event_outlined,
                        label: t.chatAttachmentEvent,
                        color: const Color(0xFFE91E63),
                        onTap: () {
                          Navigator.pop(context);
                          onEventTap();
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(width: 12),
                      _AttachmentMenuItem(
                        icon: Icons.auto_awesome_outlined,
                        label: t.chatAttachmentAiImages,
                        color: const Color(0xFF2196F3),
                        onTap: () {
                          Navigator.pop(context);
                          onAiImagesTap();
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}

class _AttachmentMenuItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;
  final VoidCallback onTap;

  const _AttachmentMenuItem({
    required this.icon,
    required this.label,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final t = AppLocalizations.of(context)!;

    return Semantics(
      button: true,
      label: label,
      hint: t.chatAttachmentSelectHint(label),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: SizedBox(
          width: 72,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  color: colorScheme.surfaceContainerHighest,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Icon(icon, color: color, size: 28),
              ),
              const SizedBox(height: 8),
              Text(
                label,
                style: textTheme.bodySmall?.copyWith(
                  color: colorScheme.onSurface,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
