import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:velora/core/ui/app_messenger.dart';
import 'package:velora/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:velora/features/media/presentation/bloc/media_upload_bloc.dart';
import 'package:velora/features/media/presentation/bloc/media_upload_event.dart';
import 'package:velora/features/navigation/models/more_option_post_args.dart';
import 'package:velora/features/post/services/post_draft_service.dart';
import 'package:velora/features/post/domain/entities/more_option_data.dart';
import 'package:velora/features/post/presentation/widgets/caption_input_section.dart';
import 'package:velora/features/post/presentation/widgets/media_preview_carousel.dart';
import 'package:velora/l10n/app_localizations.dart';
import 'package:velora/routes/app_router.dart';

/// Screen for creating a new feed post with media
class PostFeedScreen extends HookWidget {
  const PostFeedScreen({super.key, required this.selectedMedia});

  final List<File> selectedMedia;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final t = AppLocalizations.of(context)!;

    final captionController = useTextEditingController();
    final captionFocusNode = useFocusNode();
    final selectedMediaState = useState<List<File>>(
      List<File>.from(selectedMedia),
    );

    final moreOptions = useState(const MoreOptionData());

    final animationController = useAnimationController(
      duration: const Duration(milliseconds: 300),
    );
    final fadeAnimation = useMemoized(
      () =>
          CurvedAnimation(parent: animationController, curve: Curves.easeInOut),
      [animationController],
    );
    useEffect(() {
      animationController.forward();
      return null;
    }, [animationController]);

    /// Navigate to more options screen
    Future<void> navigateToMoreOptions() async {
      final args = MoreOptionPostArgs(initialOptions: moreOptions.value);
      final result = await context.pushNamed<MoreOptionData>(
        AppRouteName.moreOptions,
        extra: args,
      );

      if (!context.mounted || result == null) return;

      moreOptions.value = result;
    }

    /// Handle post publish with validation and upload
    void onPublishPressed() {
      if (selectedMediaState.value.isEmpty) {
        AppMessenger.showToast(
          message: t.postCreateSelectMediaError,
          icon: Icons.info_outline,
          duration: const Duration(seconds: 2),
        );
        return;
      }

      final userId = context.read<AuthBloc>().state.userId ?? '';
      final caption = captionController.text.trim();

      // Save draft untuk diambil nanti oleh upload status card
      PostDraftService.saveDraft(caption: caption, userId: userId);

      // Navigate to feed immediately
      context.go('/');

      // Start upload process
      final postId = DateTime.now().millisecondsSinceEpoch.toString();

      context.read<MediaUploadBloc>().add(
        MediaUploadEvent.uploadForPost(
          files: selectedMediaState.value,
          userId: userId,
          postId: postId,
        ),
      );
    }

    final backgroundColor = colorScheme.surfaceContainerLowest;
    final iconColor = colorScheme.onSurface;
    final titleStyle = textTheme.titleMedium?.copyWith(
      color: colorScheme.onSurface,
      fontWeight: FontWeight.w600,
    );

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: colorScheme.surface,
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
              onTap: () => Navigator.pop(context),
              borderRadius: BorderRadius.circular(12),
              child: Icon(Icons.arrow_back, color: iconColor),
            ),
          ),
        ),
        title: ShaderMask(
          shaderCallback: (bounds) => LinearGradient(
            colors: [colorScheme.primary, colorScheme.secondary],
          ).createShader(bounds),
          child: Text(
            t.postCreateTitle,
            style:
                titleStyle?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.2,
                ) ??
                TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.2,
                ),
          ),
        ),
        centerTitle: false,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: FadeTransition(
                opacity: fadeAnimation,
                child: CustomScrollView(
                  slivers: [
                    if (selectedMediaState.value.isNotEmpty)
                      SliverToBoxAdapter(
                        child: Semantics(
                          label: t.postCreateMediaLabel,
                          hint: t.postCreateMediaHint,
                          child: MediaPreviewCarousel(
                            mediaFiles: selectedMediaState.value,
                          ),
                        ),
                      ),
                    SliverToBoxAdapter(
                      child: CaptionInputSection(
                        controller: captionController,
                        focusNode: captionFocusNode,
                        maxLength: 2000,
                      ),
                    ),
                    const SliverToBoxAdapter(child: Divider(height: 1)),
                    SliverToBoxAdapter(
                      child: _buildActionTile(
                        icon: Icons.music_note_outlined,
                        title: t.postCreateActionAddAudio,
                        onTap: () {},
                        colorScheme: colorScheme,
                        textTheme: textTheme,
                        t: t,
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: _buildActionTile(
                        icon: Icons.person_add_outlined,
                        title: t.postCreateActionTagPeople,
                        onTap: () {},
                        colorScheme: colorScheme,
                        textTheme: textTheme,
                        t: t,
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: _buildActionTile(
                        icon: Icons.location_on_outlined,
                        title: t.postCreateActionAddLocation,
                        onTap: () {},
                        colorScheme: colorScheme,
                        textTheme: textTheme,
                        t: t,
                      ),
                    ),
                    const SliverToBoxAdapter(child: Divider(height: 1)),
                    SliverToBoxAdapter(
                      child: _buildActionTile(
                        icon: Icons.people_outline,
                        title: t.postCreateActionAudience,
                        trailing: Text(
                          t.postCreateAudienceFollowers,
                          style: textTheme.bodyMedium?.copyWith(
                            color: colorScheme.onSurface.withValues(alpha: 0.6),
                          ),
                        ),
                        onTap: () {},
                        colorScheme: colorScheme,
                        textTheme: textTheme,
                        t: t,
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: _buildActionTile(
                        icon: Icons.more_horiz,
                        title: t.postCreateActionMoreOptions,
                        onTap: navigateToMoreOptions,
                        colorScheme: colorScheme,
                        textTheme: textTheme,
                        t: t,
                      ),
                    ),
                    const SliverToBoxAdapter(child: SizedBox(height: 16)),
                  ],
                ),
              ),
            ),

            // Fixed bottom Share button
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: colorScheme.surface,
                border: Border(
                  top: BorderSide(
                    color: colorScheme.outlineVariant.withValues(alpha: 0.3),
                    width: 1,
                  ),
                ),
              ),
              child: Semantics(
                button: true,
                label: t.postCreatePublishTooltip,
                hint: t.postCreatePublishHint,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: colorScheme.primary,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: onPublishPressed,
                      borderRadius: BorderRadius.circular(16),
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.send_rounded,
                              color: colorScheme.onPrimary,
                              size: 20,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              t.postCreatePublishLabel,
                              style: textTheme.labelLarge?.copyWith(
                                color: colorScheme.onPrimary,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.3,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Build action tile widget for post options
  Widget _buildActionTile({
    required IconData icon,
    required String title,
    Widget? trailing,
    required VoidCallback onTap,
    required ColorScheme colorScheme,
    required TextTheme textTheme,
    required AppLocalizations t,
  }) {
    final hint = trailing != null
        ? t.postCreateActionHintAdjust(title)
        : t.postCreateActionHintOpen(title);
    return Semantics(
      button: true,
      label: title,
      hint: hint,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        decoration: BoxDecoration(
          color: colorScheme.surfaceContainerHighest.withValues(alpha: 0.3),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: colorScheme.outline.withValues(alpha: 0.15),
            width: 1,
          ),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(12),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              child: Row(
                children: [
                  // Icon with gradient background
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: colorScheme.primaryContainer.withValues(
                        alpha: 0.4,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(icon, size: 20, color: colorScheme.primary),
                  ),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Text(
                      title,
                      style: textTheme.bodyMedium?.copyWith(
                        color: colorScheme.onSurface,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.1,
                      ),
                    ),
                  ),
                  if (trailing != null) ...[const SizedBox(width: 8), trailing],
                  if (trailing == null)
                    Icon(
                      Icons.chevron_right,
                      color: colorScheme.onSurfaceVariant.withValues(
                        alpha: 0.5,
                      ),
                      size: 20,
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
