import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:velora/core/ui/app_messenger.dart';
import 'package:velora/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:velora/features/media/presentation/cubit/media_upload_cubit.dart';
import 'package:velora/features/navigation/models/more_option_post_args.dart';
import 'package:velora/features/post/services/post_draft_service.dart';
import 'package:velora/features/post/domain/entities/more_option_data.dart';
import 'package:velora/features/post/presentation/widgets/caption_input_section.dart';
import 'package:velora/features/post/presentation/widgets/media_preview_carousel.dart';
import 'package:velora/l10n/app_localizations.dart';
import 'package:velora/routes/app_router.dart';

class CreatePostScreen extends HookWidget {
  final List<File> selectedMedia;

  const CreatePostScreen({super.key, required this.selectedMedia});

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

    Future<void> navigateToMoreOptions() async {
      final args = MoreOptionPostArgs(initialOptions: moreOptions.value);
      final result = await context.pushNamed<MoreOptionData>(
        AppRouteName.moreOptions,
        extra: args,
      );

      if (!context.mounted || result == null) return;

      moreOptions.value = result;
    }

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

      context.read<MediaUploadCubit>().uploadForPost(
        files: selectedMediaState.value,
        userId: userId,
        postId: postId,
      );
    }

    final backgroundColor = colorScheme.surfaceContainerLowest;
    final appBarColor = colorScheme.surfaceContainerHigh;
    final iconColor = colorScheme.onSurface;
    final titleStyle = textTheme.titleMedium?.copyWith(
      color: colorScheme.onSurface,
      fontWeight: FontWeight.w600,
    );

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: appBarColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: iconColor),
          onPressed: () => Navigator.pop(context),
          tooltip: t.commonGoBack,
        ),
        title: Text(
          t.postCreateTitle,
          style:
              titleStyle ??
              TextStyle(
                color: colorScheme.onSurface,
                fontSize: 18,
                fontWeight: FontWeight.w600,
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
                color: appBarColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.1),
                    blurRadius: 8,
                    offset: const Offset(0, -2),
                  ),
                ],
              ),
              child: Semantics(
                button: true,
                label: t.postCreatePublishTooltip,
                hint: t.postCreatePublishHint,
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: onPublishPressed,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: colorScheme.primary,
                      foregroundColor: colorScheme.onPrimary,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 0,
                    ),
                    child: Text(
                      t.postCreatePublishLabel,
                      style: textTheme.labelLarge?.copyWith(
                        color: colorScheme.onPrimary,
                        fontWeight: FontWeight.w600,
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
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Row(
            children: [
              Icon(icon, size: 24, color: colorScheme.onSurface),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  title,
                  style: textTheme.bodyMedium?.copyWith(
                    color: colorScheme.onSurface,
                  ),
                ),
              ),
              if (trailing != null) trailing,
              if (trailing == null)
                Icon(
                  Icons.chevron_right,
                  color: colorScheme.onSurface.withValues(alpha: 0.4),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
