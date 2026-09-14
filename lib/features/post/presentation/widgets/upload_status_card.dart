import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velora/core/ui/app_messenger.dart';
import 'package:velora/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:velora/features/media/presentation/bloc/media_upload_bloc.dart';
import 'package:velora/features/media/presentation/bloc/media_upload_state.dart';
import 'package:velora/features/post/presentation/bloc/post_bloc.dart';
import 'package:velora/features/post/presentation/bloc/post_event.dart';
import 'package:velora/features/post/presentation/bloc/post_state.dart';
import 'package:velora/features/post/services/post_draft_service.dart';
import 'package:velora/features/feed/presentation/bloc/feed_bloc.dart';
import 'package:velora/features/feed/presentation/bloc/feed_event.dart';
import 'package:velora/l10n/app_localizations.dart';

/// Status card displayed during post upload process
class UploadStatusCard extends StatelessWidget {
  const UploadStatusCard({super.key, required this.onComplete});

  final VoidCallback onComplete;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final t = AppLocalizations.of(context)!;

    return BlocListener<MediaUploadBloc, MediaUploadState>(
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
            final caption = PostDraftService.getCaption();

            context.read<PostBloc>().add(
              CreatePostEvent(
                userId: userId,
                content: caption,
                mediaUrls: [...imageUrls, ...videoUrls],
                allowComments: true,
                allowShare: true,
              ),
            );
          },
          failure: (errorMessage) {
            AppMessenger.showToast(
              message: t.postCreateUploadFailed(errorMessage),
              icon: Icons.error_outline,
              isError: true,
              duration: const Duration(seconds: 3),
            );
            onComplete();
          },
        );
      },
      child: BlocListener<PostBloc, PostState>(
        listener: (context, postState) {
          if (postState.createdPost != null) {
            // Add post to feed immediately (auto-add without refresh)
            context.read<FeedBloc>().add(
              FeedEvent.addNewPost(postState.createdPost!),
            );

            // Clear draft
            PostDraftService.clear();

            AppMessenger.showToast(
              message: t.postCreateSuccess,
              icon: Icons.check_circle_outline,
              duration: const Duration(seconds: 2),
            );

            context.read<PostBloc>().add(const PostEvent.clearPostTransient());

            // Wait a bit before completing to show success state
            Future.delayed(const Duration(milliseconds: 1500), onComplete);
          } else if (postState.errorCreatePost != null) {
            AppMessenger.showToast(
              message: t.postCreateFailure(postState.errorCreatePost ?? ''),
              icon: Icons.error_outline,
              isError: true,
              duration: const Duration(seconds: 3),
            );
            onComplete();
          }
        },
        child: Container(
          margin: const EdgeInsets.all(16),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: colorScheme.surfaceContainerHighest.withValues(alpha: 0.5),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: colorScheme.outline.withValues(alpha: 0.2),
              width: 1,
            ),
          ),
          child: BlocBuilder<MediaUploadBloc, MediaUploadState>(
            builder: (context, uploadState) {
              return uploadState.when(
                initial: () => _buildUploadingRow(
                  colorScheme,
                  textTheme,
                  t.postCreateDialogPreparing,
                ),
                uploading: () => _buildUploadingRow(
                  colorScheme,
                  textTheme,
                  t.postCreateDialogUploading,
                ),
                success: (_) => BlocBuilder<PostBloc, PostState>(
                  builder: (context, postState) {
                    if (postState.isCreatingPost) {
                      return _buildUploadingRow(
                        colorScheme,
                        textTheme,
                        t.postCreateDialogCreating,
                      );
                    }
                    return _buildSuccessRow(
                      colorScheme,
                      textTheme,
                      t.postCreateSuccess,
                    );
                  },
                ),
                failure: (error) => _buildErrorRow(
                  colorScheme,
                  textTheme,
                  t.postCreateDialogError(error),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildUploadingRow(
    ColorScheme colorScheme,
    TextTheme textTheme,
    String message,
  ) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: colorScheme.primaryContainer.withValues(alpha: 0.4),
            shape: BoxShape.circle,
          ),
          child: SizedBox(
            width: 24,
            height: 24,
            child: CircularProgressIndicator(
              strokeWidth: 2.5,
              color: colorScheme.primary,
            ),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Text(
            message,
            style: textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSurface,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.1,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSuccessRow(
    ColorScheme colorScheme,
    TextTheme textTheme,
    String message,
  ) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: colorScheme.tertiary.withValues(alpha: 0.2),
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.check_circle_rounded,
            color: colorScheme.tertiary,
            size: 24,
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Text(
            message,
            style: textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSurface,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.1,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildErrorRow(
    ColorScheme colorScheme,
    TextTheme textTheme,
    String message,
  ) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: colorScheme.error.withValues(alpha: 0.2),
            shape: BoxShape.circle,
          ),
          child: Icon(Icons.error_rounded, color: colorScheme.error, size: 24),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Text(
            message,
            style: textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSurface,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.1,
            ),
          ),
        ),
      ],
    );
  }
}
