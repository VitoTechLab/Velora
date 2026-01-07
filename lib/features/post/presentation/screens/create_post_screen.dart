import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:velora/core/ui/app_messenger.dart';
import 'package:velora/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:velora/features/media/presentation/cubit/media_upload_cubit.dart';
import 'package:velora/features/media/presentation/cubit/media_upload_state.dart';
import 'package:velora/features/navigation/models/more_option_post_args.dart';
import 'package:velora/features/post/domain/entities/more_option_data.dart';
import 'package:velora/features/post/presentation/bloc/post_bloc.dart';
import 'package:velora/features/post/presentation/bloc/post_event.dart';
import 'package:velora/features/post/presentation/bloc/post_state.dart';
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

    void showCreatePostDialog() {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (dialogContext) =>
            BlocListener<MediaUploadCubit, MediaUploadState>(
              listener: (context, uploadState) {
                uploadState.when(
                  initial: () {},
                  uploading: () {},
                  success: (mediaAssets) {
                    final imageUrls = mediaAssets
                        .where((asset) => asset.resourceType == 'image')
                        .map((asset) => asset.secureUrl)
                        .toList();
                    final videoUrls = mediaAssets
                        .where((asset) => asset.resourceType == 'video')
                        .map((asset) => asset.secureUrl)
                        .toList();

                    final userId = context.read<AuthBloc>().state.userId ?? '';

                    final options = moreOptions.value;
                    context.read<PostBloc>().add(
                      CreatePostEvent(
                        userId: userId,
                        content: captionController.text.trim(),
                        imageUrls: imageUrls,
                        videoUrls: videoUrls,
                        commentsEnabled: options.commentsEnabled,
                        hideLikeCount: options.hideLikeCount,
                        hideCommentCount: options.hideCommentCount,
                        hideShareCount: options.hideShareCount,
                        hideLikesList: options.hideLikesList,
                      ),
                    );
                  },
                  failure: (errorMessage) {
                    Navigator.of(dialogContext).pop();
                    AppMessenger.showToast(
                      message: t.postCreateUploadFailed(errorMessage),
                      icon: Icons.error_outline,
                      isError: true,
                      duration: const Duration(seconds: 3),
                    );
                  },
                );
              },
              child: BlocListener<PostBloc, PostState>(
                listener: (context, postState) {
                  if (postState.createdPost != null) {
                    Navigator.of(dialogContext).pop();
                    Navigator.of(context).pop();
                    Navigator.of(context).pop();

                    context.read<PostBloc>().add(
                      const PostEvent.clearPostTransient(),
                    );

                    AppMessenger.showToast(
                      message: t.postCreateSuccess,
                      icon: Icons.check_circle_outline,
                      duration: const Duration(seconds: 3),
                    );
                  } else if (postState.errorCreatePost != null) {
                    Navigator.of(dialogContext).pop();
                    AppMessenger.showToast(
                      message: t.postCreateFailure(
                        postState.errorCreatePost ?? '',
                      ),
                      icon: Icons.error_outline,
                      isError: true,
                      duration: const Duration(seconds: 3),
                    );
                  }
                },
                child: AlertDialog(
                  title: Text(
                    t.postCreateDialogTitle,
                    style: textTheme.titleMedium?.copyWith(
                      color: colorScheme.onSurface,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  content: BlocBuilder<MediaUploadCubit, MediaUploadState>(
                    builder: (context, uploadState) {
                      return uploadState.when(
                        initial: () => Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CircularProgressIndicator(
                              color: colorScheme.primary,
                            ),
                            const SizedBox(height: 16),
                            Text(
                              t.postCreateDialogPreparing,
                              style: textTheme.bodyMedium,
                            ),
                          ],
                        ),
                        uploading: () => Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CircularProgressIndicator(
                              color: colorScheme.primary,
                            ),
                            const SizedBox(height: 16),
                            Text(
                              t.postCreateDialogUploading,
                              style: textTheme.bodyMedium,
                            ),
                          ],
                        ),
                        success: (_) => BlocBuilder<PostBloc, PostState>(
                          builder: (context, postState) {
                            if (postState.isCreatingPost) {
                              return Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CircularProgressIndicator(
                                    color: colorScheme.primary,
                                  ),
                                  const SizedBox(height: 16),
                                  Text(
                                    t.postCreateDialogCreating,
                                    style: textTheme.bodyMedium,
                                  ),
                                ],
                              );
                            }
                            return Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.check_circle,
                                  color: colorScheme.tertiary,
                                  size: 48,
                                ),
                                const SizedBox(height: 16),
                                Text(
                                  t.postCreateSuccess,
                                  style: textTheme.bodyMedium?.copyWith(
                                    color: colorScheme.onSurface,
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                        failure: (error) => Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.error,
                              color: colorScheme.error,
                              size: 48,
                            ),
                            const SizedBox(height: 16),
                            Text(
                              t.postCreateDialogError(error),
                              style: textTheme.bodyMedium?.copyWith(
                                color: colorScheme.onSurface,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
      );

      final userId = context.read<AuthBloc>().state.userId ?? '';
      final postId = DateTime.now().millisecondsSinceEpoch.toString();

      context.read<MediaUploadCubit>().uploadForPost(
        files: selectedMediaState.value,
        userId: userId,
        postId: postId,
      );
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

      showCreatePostDialog();
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
        actions: [
          Semantics(
            button: true,
            label: t.postCreatePublishTooltip,
            hint: t.postCreatePublishHint,
            child: TextButton(
              onPressed: onPublishPressed,
              child: Text(
                t.postCreatePublishLabel,
                style: textTheme.labelLarge?.copyWith(
                  color: colorScheme.primary,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: SafeArea(
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
              const SliverToBoxAdapter(child: SizedBox(height: 100)),
            ],
          ),
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
