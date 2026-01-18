import 'package:flutter/material.dart';
import 'package:velora/l10n/app_localizations.dart';

class AttachmentMenuBottomSheet extends StatefulWidget {
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
      isScrollControlled: false,
      isDismissible: true,
      enableDrag: true,
      elevation: 0,
      useRootNavigator: false,
      barrierColor: Colors.black.withValues(alpha: 0.5),
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
  State<AttachmentMenuBottomSheet> createState() =>
      _AttachmentMenuBottomSheetState();
}

class _AttachmentMenuBottomSheetState extends State<AttachmentMenuBottomSheet>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );

    _fadeAnimation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOutCubic,
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.1),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOutCubic,
    ));

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final t = AppLocalizations.of(context)!;

    return GestureDetector(
      onTap: () => Navigator.pop(context),
      behavior: HitTestBehavior.opaque,
      child: GestureDetector(
        onTap: () {}, // Prevent tap from propagating to parent
        child: FadeTransition(
          opacity: _fadeAnimation,
          child: SlideTransition(
            position: _slideAnimation,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    colorScheme.surface,
                    colorScheme.surfaceContainer,
                  ],
                ),
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(28)),
                boxShadow: [
                  BoxShadow(
                    color: colorScheme.shadow.withValues(alpha: 0.1),
                    blurRadius: 20,
                    offset: const Offset(0, -4),
                  ),
                ],
              ),
              child: SafeArea(
                top: false,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 12),
                    // Drag handle
                    Container(
                      width: 40,
                      height: 4,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            colorScheme.primary.withValues(alpha: 0.3),
                            colorScheme.secondary.withValues(alpha: 0.3),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                    const SizedBox(height: 20),
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
                                gradientColors: [
                                  colorScheme.primary,
                                  colorScheme.primary.withValues(alpha: 0.7),
                                ],
                                onTap: () {
                                  Navigator.pop(context);
                                  widget.onGalleryTap();
                                },
                                delay: 0,
                              ),
                              _AttachmentMenuItem(
                                icon: Icons.camera_alt_outlined,
                                label: t.chatAttachmentCamera,
                                gradientColors: [
                                  colorScheme.secondary,
                                  colorScheme.secondary.withValues(alpha: 0.7),
                                ],
                                onTap: () {
                                  Navigator.pop(context);
                                  widget.onCameraTap();
                                },
                                delay: 50,
                              ),
                              _AttachmentMenuItem(
                                icon: Icons.location_on_outlined,
                                label: t.chatAttachmentLocation,
                                gradientColors: [
                                  colorScheme.tertiary,
                                  colorScheme.tertiary.withValues(alpha: 0.7),
                                ],
                                onTap: () {
                                  Navigator.pop(context);
                                  widget.onLocationTap();
                                },
                                delay: 100,
                              ),
                              _AttachmentMenuItem(
                                icon: Icons.person_outline,
                                label: t.chatAttachmentContact,
                                gradientColors: [
                                  colorScheme.primary.withValues(alpha: 0.8),
                                  colorScheme.primary.withValues(alpha: 0.6),
                                ],
                                onTap: () {
                                  Navigator.pop(context);
                                  widget.onContactTap();
                                },
                                delay: 150,
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
                                gradientColors: [
                                  const Color(0xFF7C4DFF),
                                  const Color(0xFF7C4DFF).withValues(alpha: 0.7),
                                ],
                                onTap: () {
                                  Navigator.pop(context);
                                  widget.onDocumentTap();
                                },
                                delay: 200,
                              ),
                              _AttachmentMenuItem(
                                icon: Icons.headset_outlined,
                                label: t.chatAttachmentAudio,
                                gradientColors: [
                                  const Color(0xFFFF6F00),
                                  const Color(0xFFFF6F00).withValues(alpha: 0.7),
                                ],
                                onTap: () {
                                  Navigator.pop(context);
                                  widget.onAudioTap();
                                },
                                delay: 250,
                              ),
                              _AttachmentMenuItem(
                                icon: Icons.poll_outlined,
                                label: t.chatAttachmentPoll,
                                gradientColors: [
                                  const Color(0xFFFFB300),
                                  const Color(0xFFFFB300).withValues(alpha: 0.7),
                                ],
                                onTap: () {
                                  Navigator.pop(context);
                                  widget.onPollTap();
                                },
                                delay: 300,
                              ),
                              _AttachmentMenuItem(
                                icon: Icons.event_outlined,
                                label: t.chatAttachmentEvent,
                                gradientColors: [
                                  colorScheme.secondary,
                                  colorScheme.secondary.withValues(alpha: 0.7),
                                ],
                                onTap: () {
                                  Navigator.pop(context);
                                  widget.onEventTap();
                                },
                                delay: 350,
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
                                gradientColors: [
                                  colorScheme.primary,
                                  colorScheme.tertiary,
                                ],
                                onTap: () {
                                  Navigator.pop(context);
                                  widget.onAiImagesTap();
                                },
                                delay: 400,
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
            ),
          ),
        ),
      ),
    );
  }
}

class _AttachmentMenuItem extends StatefulWidget {
  final IconData icon;
  final String label;
  final List<Color> gradientColors;
  final VoidCallback onTap;
  final int delay;

  const _AttachmentMenuItem({
    required this.icon,
    required this.label,
    required this.gradientColors,
    required this.onTap,
    this.delay = 0,
  });

  @override
  State<_AttachmentMenuItem> createState() => _AttachmentMenuItemState();
}

class _AttachmentMenuItemState extends State<_AttachmentMenuItem>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _fadeAnimation;
  bool _isPressed = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _scaleAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.elasticOut,
      ),
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeOut,
      ),
    );

    Future.delayed(Duration(milliseconds: widget.delay), () {
      if (mounted) _controller.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final t = AppLocalizations.of(context)!;

    return FadeTransition(
      opacity: _fadeAnimation,
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: Semantics(
          button: true,
          label: widget.label,
          hint: t.chatAttachmentSelectHint(widget.label),
          child: GestureDetector(
            onTapDown: (_) => setState(() => _isPressed = true),
            onTapUp: (_) {
              setState(() => _isPressed = false);
              widget.onTap();
            },
            onTapCancel: () => setState(() => _isPressed = false),
            child: AnimatedScale(
              scale: _isPressed ? 0.9 : 1.0,
              duration: const Duration(milliseconds: 100),
              child: SizedBox(
                width: 72,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 56,
                      height: 56,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: widget.gradientColors
                              .map((c) => c.withValues(alpha: 0.15))
                              .toList(),
                        ),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: widget.gradientColors.first
                              .withValues(alpha: 0.2),
                          width: 1,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: widget.gradientColors.first
                                .withValues(alpha: 0.2),
                            blurRadius: 8,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: ShaderMask(
                        shaderCallback: (bounds) => LinearGradient(
                          colors: widget.gradientColors,
                        ).createShader(bounds),
                        child: Icon(
                          widget.icon,
                          color: Colors.white,
                          size: 28,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      widget.label,
                      style: textTheme.bodySmall?.copyWith(
                        color: colorScheme.onSurface,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.2,
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
