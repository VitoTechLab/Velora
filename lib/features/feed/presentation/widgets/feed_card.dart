import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:go_router/go_router.dart';
import 'package:velora/core/ui/app_messenger.dart';
import 'package:velora/core/utils/format_utils.dart';
import 'package:velora/routes/app_router.dart';
import 'package:velora/features/feed/domain/entities/feed_entity.dart';
import 'package:velora/features/feed/presentation/bloc/feed_bloc.dart';
import 'package:velora/features/feed/presentation/bloc/feed_event.dart';
import 'package:velora/features/social_relation/presentation/bloc/social_relation_bloc.dart';
import 'package:velora/features/social_relation/presentation/bloc/social_relation_event.dart';
import 'package:velora/features/social_relation/presentation/bloc/social_relation_state.dart';
import 'package:velora/l10n/app_localizations.dart';

class FeedCard extends HookWidget {
  final FeedEntity post;
  final VoidCallback? onTap;
  final VoidCallback? onCommentTap;

  const FeedCard({
    super.key,
    required this.post,
    this.onTap,
    this.onCommentTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final t = AppLocalizations.of(context)!;
    final author = post.username ?? t.feedUnknownUser;
    final timeAgo = FormatUtils.formatTimeAgo(post.createdAt, context: context);
    final summary = post.content.isEmpty
        ? t.feedPostSummaryFallback
        : post.content.split('\n').first.trim();

    final isLiked = useState(post.isLiked);
    final likesCount = useState<int?>(post.likesCount);
    final isBookmarked = useState(post.isBookmarked);
    final isFollowing = useState(post.isFollowing);
    final hasFollowRequest = useState(post.isFollowRequestPending);

    useEffect(
      () {
        isLiked.value = post.isLiked;
        likesCount.value = post.likesCount;
        isBookmarked.value = post.isBookmarked;
        isFollowing.value = post.isFollowing;
        hasFollowRequest.value = post.isFollowRequestPending;
        return null;
      },
      [
        post.id,
        post.isLiked,
        post.likesCount,
        post.isBookmarked,
        post.isFollowing,
        post.isFollowRequestPending,
      ],
    );

    void handleLikeToggle() {
      isLiked.value = !isLiked.value;
      if (likesCount.value != null) {
        likesCount.value =
            isLiked.value ? likesCount.value! + 1 : likesCount.value! - 1;
      }

      context.read<FeedBloc>().add(FeedEvent.toggleLikePost(post.id));
    }

    void handleBookmarkToggle() {
      isBookmarked.value = !isBookmarked.value;

      context.read<FeedBloc>().add(FeedEvent.toggleBookmarkPost(post.id));
    }

    void handleFollowToggle() {
      // Cek apakah SocialRelationBloc tersedia
      try {
        final socialBloc = context.read<SocialRelationBloc>();

        if (isFollowing.value) {
          // Unfollow user
          isFollowing.value = false;
          socialBloc.add(SocialRelationEvent.unfollowUser(post.userId));
        } else if (hasFollowRequest.value) {
          // Cancel follow request (untuk private account)
          hasFollowRequest.value = false;
          socialBloc.add(SocialRelationEvent.cancelFollowRequest(post.userId));
        } else {
          // Follow user atau send request (backend akan handle based on privacy)
          // Untuk public account: langsung follow
          // Untuk private account: send follow request
          socialBloc.add(SocialRelationEvent.followUser(post.userId));

          // Optimistically update UI
          // Backend/bloc akan update state yang sebenarnya
          isFollowing.value = true;
        }
      } catch (e) {
        // Fallback jika SocialRelationBloc tidak ada di context
        AppMessenger.showToast(
          message: 'Follow feature unavailable',
          icon: Icons.error_outline,
        );
      }
    }

    return BlocListener<SocialRelationBloc, SocialRelationState>(
      listenWhen: (prev, curr) =>
          prev.isFollowing != curr.isFollowing ||
          prev.hasFollowRequestPending != curr.hasFollowRequestPending ||
          prev.successMessage != curr.successMessage ||
          prev.errorFollow != curr.errorFollow,
      listener: (context, state) {
        // Update state setelah follow/unfollow berhasil
        if (state.isFollowing && !isFollowing.value) {
          isFollowing.value = true;
          hasFollowRequest.value = false;
        } else if (!state.isFollowing && isFollowing.value) {
          isFollowing.value = false;
        }

        // Update jika follow request pending (private account)
        if (state.hasFollowRequestPending) {
          hasFollowRequest.value = true;
          isFollowing.value = false;
        }

        // Show success message
        if (state.successMessage != null) {
          AppMessenger.showToast(
            message: state.successMessage!,
            icon: Icons.check_circle_outline,
          );
        }

        // Show error message
        if (state.errorFollow != null) {
          // Rollback optimistic update
          isFollowing.value = post.isFollowing;
          hasFollowRequest.value = post.isFollowRequestPending;

          AppMessenger.showToast(
            message: state.errorFollow!,
            icon: Icons.error_outline,
          );
        }
      },
      child: Semantics(
        button: onTap != null,
        label: t.feedPostSemantics(author, summary, timeAgo),
        hint: onTap != null ? t.feedOpenPostHint : null,
        child: ExcludeSemantics(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            padding: const EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              color: colorScheme.surface,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeader(
                  context,
                  textTheme,
                  colorScheme,
                  t,
                  isFollowing.value,
                  hasFollowRequest.value,
                  handleFollowToggle,
                ),
                if (post.imageUrls.isNotEmpty)
                  _buildImageStrip(context, colorScheme, t),
                _buildActionBar(
                  context,
                  colorScheme,
                  textTheme,
                  isLiked.value,
                  likesCount.value,
                  isBookmarked.value,
                  handleLikeToggle,
                  handleBookmarkToggle,
                  onCommentTap ?? onTap,
                  t,
                ),
                _buildContent(context, textTheme, t),
                if (post.campaignId != null)
                  _buildCampaignCard(context, colorScheme, textTheme, t),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(
    BuildContext context,
    TextTheme textTheme,
    ColorScheme colorScheme,
    AppLocalizations t,
    bool isFollowing,
    bool hasFollowRequest,
    VoidCallback onFollowToggle,
  ) {
    // Subtitle untuk sound/music (bisa dari campaign atau music attribute)
    final subtitle = post.campaignTitle;
    final hasSubtitle = subtitle != null && subtitle.isNotEmpty;

    void navigateToUserProfile() {
      if (!post.isMe) {
        context.pushNamed(
          AppRouteName.userProfile,
          pathParameters: {'userId': post.userId},
        );
      }
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Row(
        children: [
          GestureDetector(
            onTap: navigateToUserProfile,
            child: CircleAvatar(
              radius: 18,
              backgroundImage: post.photoUrl != null
                  ? CachedNetworkImageProvider(post.photoUrl!)
                  : null,
              child: post.photoUrl == null
                  ? const Icon(Icons.person, size: 20)
                  : null,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: hasSubtitle
                  ? MainAxisAlignment.center
                  : MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Flexible(
                      child: GestureDetector(
                        onTap: navigateToUserProfile,
                        child: Text(
                          post.username ?? t.feedUnknownUser,
                          style: textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '• ${FormatUtils.formatTimeAgo(post.createdAt, context: context)}',
                      style: textTheme.bodySmall?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                if (hasSubtitle) ...[
                  const SizedBox(height: 2),
                  Row(
                    children: [
                      Icon(
                        Icons.music_note,
                        size: 12,
                        color: colorScheme.onSurfaceVariant,
                      ),
                      const SizedBox(width: 4),
                      Flexible(
                        child: Text(
                          subtitle,
                          style: textTheme.bodySmall?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                            fontSize: 12,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ],
            ),
          ),
          // Follow button - only show when not own post, not following, and no pending request
          if (!post.isMe && !isFollowing && !hasFollowRequest) ...[
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    colorScheme.primary,
                    colorScheme.primary.withValues(alpha: 0.85),
                  ],
                ),
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: colorScheme.primary.withValues(alpha: 0.3),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: onFollowToggle,
                  borderRadius: BorderRadius.circular(8),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    child: Text(
                      'Follow',
                      style: textTheme.labelMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 13,
                        color: colorScheme.onPrimary,
                        letterSpacing: 0.2,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
          ],
          IconButton(
            icon: const Icon(Icons.more_vert, size: 20),
            onPressed: () {
              // Show options menu
            },
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
          ),
        ],
      ),
    );
  }

  Widget _buildContent(
    BuildContext context,
    TextTheme textTheme,
    AppLocalizations t,
  ) {
    if (post.content.isEmpty) return const SizedBox.shrink();

    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 6, 12, 4),
      child: RichText(
        text: TextSpan(
          style: textTheme.bodyMedium?.copyWith(fontSize: 14),
          children: [
            TextSpan(
              text: '${post.username ?? t.feedUnknownUser} ',
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
            TextSpan(text: post.content),
          ],
        ),
      ),
    );
  }

  Widget _buildImageStrip(
    BuildContext context,
    ColorScheme colorScheme,
    AppLocalizations t,
  ) {
    if (post.imageUrls.length == 1) {
      return Semantics(
        image: true,
        label: t.feedPostImageLabel,
        child: ExcludeSemantics(
          child: AspectRatio(
            aspectRatio: 1.0,
            child: CachedNetworkImage(
              imageUrl: post.imageUrls.first,
              fit: BoxFit.cover,
              width: double.infinity,
              placeholder: (context, url) => Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      colorScheme.surfaceContainerHighest,
                      colorScheme.surfaceContainerHigh,
                    ],
                  ),
                ),
                child: Center(
                  child: CircularProgressIndicator(
                    strokeWidth: 2.5,
                    color: colorScheme.primary.withValues(alpha: 0.6),
                  ),
                ),
              ),
              errorWidget: (context, url, error) => Container(
                color: colorScheme.surfaceContainerHighest,
                child: const Icon(Icons.error),
              ),
            ),
          ),
        ),
      );
    }

    return AspectRatio(
      aspectRatio: 1.0,
      child: PageView.builder(
        itemCount: post.imageUrls.length,
        itemBuilder: (context, index) {
          return Semantics(
            image: true,
            label: t.feedPostImagePositionLabel(
              index + 1,
              post.imageUrls.length,
            ),
            child: ExcludeSemantics(
              child: Stack(
                children: [
                  CachedNetworkImage(
                    imageUrl: post.imageUrls[index],
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                    placeholder: (context, url) => Container(
                      color: colorScheme.surfaceContainerHighest,
                      child: const Center(child: CircularProgressIndicator()),
                    ),
                    errorWidget: (context, url, error) => Container(
                      color: colorScheme.surfaceContainerHighest,
                      child: const Icon(Icons.error),
                    ),
                  ),
                  if (post.imageUrls.length > 1)
                    Positioned(
                      top: 12,
                      right: 12,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.black.withValues(alpha: 0.75),
                              Colors.black.withValues(alpha: 0.65),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(14),
                          border: Border.all(
                            color: Colors.white.withValues(alpha: 0.15),
                            width: 0.5,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.3),
                              blurRadius: 8,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Text(
                          '${index + 1}/${post.imageUrls.length}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.3,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildCampaignCard(
    BuildContext context,
    ColorScheme colorScheme,
    TextTheme textTheme,
    AppLocalizations t,
  ) {
    final campaignTitle = post.campaignTitle ?? t.feedCampaignFallback;
    return Semantics(
      button: true,
      label: t.feedOpenCampaignLabel(campaignTitle),
      child: ExcludeSemantics(
        child: InkWell(
          onTap: () {
            if (post.campaignId != null) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Scaffold(
                    appBar: AppBar(
                      title: const Text('Campaign Detail'),
                    ),
                    body: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            campaignTitle,
                            style: textTheme.headlineSmall,
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'Campaign ID: ${post.campaignId}',
                            style: textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }
          },
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  colorScheme.primary.withValues(alpha: 0.12),
                  colorScheme.primary.withValues(alpha: 0.06),
                ],
              ),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: colorScheme.primary.withValues(alpha: 0.25),
                width: 1.5,
              ),
              boxShadow: [
                BoxShadow(
                  color: colorScheme.primary.withValues(alpha: 0.08),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: colorScheme.primary.withValues(alpha: 0.15),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    Icons.campaign,
                    color: colorScheme.primary,
                    size: 18,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    campaignTitle,
                    style: textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: colorScheme.primary,
                      fontSize: 13,
                      letterSpacing: 0.1,
                    ),
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                  color: colorScheme.primary,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildActionBar(
    BuildContext context,
    ColorScheme colorScheme,
    TextTheme textTheme,
    bool isLiked,
    int? likesCount,
    bool isBookmarked,
    VoidCallback onLikeToggle,
    VoidCallback onBookmarkToggle,
    VoidCallback? commentTap,
    AppLocalizations t,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Row(
        children: [
          _ActionItem(
            icon: isLiked ? Icons.favorite : Icons.favorite_border,
            count: likesCount,
            isHidden: false,
            color: isLiked ? colorScheme.error : colorScheme.onSurface,
            onTap: onLikeToggle,
            semanticsLabel: isLiked ? t.feedUnlikeLabel : t.feedLikeLabel,
            semanticsHint: isLiked ? t.feedUnlikeHint : t.feedLikeHint,
            isToggled: isLiked,
          ),
          const SizedBox(width: 12),
          _ActionItem(
            icon: Icons.mode_comment_outlined,
            count: post.commentsCount,
            isHidden: false,
            color: colorScheme.onSurface,
            onTap: commentTap,
            semanticsLabel: t.feedViewCommentsLabel,
            semanticsHint: t.feedViewCommentsHint,
          ),
          const SizedBox(width: 12),
          _ActionItem(
            icon: Icons.send_outlined,
            count: null,
            isHidden: false,
            color: colorScheme.onSurface,
            onTap: () {
              AppMessenger.showToast(
                message: t.feedShareComingSoon,
                icon: Icons.send_outlined,
                duration: const Duration(seconds: 2),
              );
            },
            semanticsLabel: t.feedShareLabel,
            semanticsHint: t.feedShareHint,
          ),
          const Spacer(),
          Semantics(
            button: true,
            toggled: isBookmarked,
            label: isBookmarked
                ? t.feedRemoveBookmarkLabel
                : t.feedAddBookmarkLabel,
            child: ExcludeSemantics(
              child: InkWell(
                onTap: onBookmarkToggle,
                borderRadius: BorderRadius.circular(8),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Icon(
                    isBookmarked ? Icons.bookmark : Icons.bookmark_border,
                    size: 26,
                    color: colorScheme.onSurface,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ActionItem extends StatelessWidget {
  final IconData icon;
  final int? count;
  final bool isHidden;
  final Color? color;
  final VoidCallback? onTap;
  final String semanticsLabel;
  final String? semanticsHint;
  final bool isToggled;

  const _ActionItem({
    required this.icon,
    this.count,
    this.isHidden = false,
    this.color,
    this.onTap,
    required this.semanticsLabel,
    this.semanticsHint,
    this.isToggled = false,
  });

  @override
  Widget build(BuildContext context) {
    final baseColor = color ?? Theme.of(context).colorScheme.onSurfaceVariant;
    final textTheme = Theme.of(context).textTheme;

    return Semantics(
      button: true,
      toggled: isToggled,
      label: semanticsLabel,
      hint: semanticsHint,
      child: ExcludeSemantics(
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(24),
            splashColor: baseColor.withValues(alpha: 0.1),
            highlightColor: baseColor.withValues(alpha: 0.05),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AnimatedScale(
                    scale: isToggled ? 1.0 : 1.0,
                    duration: const Duration(milliseconds: 200),
                    child: Icon(
                      icon,
                      size: 27,
                      color: baseColor,
                      shadows: isToggled
                          ? [
                              Shadow(
                                color: baseColor.withValues(alpha: 0.3),
                                blurRadius: 8,
                              ),
                            ]
                          : null,
                    ),
                  ),
                  if (count != null && count! > 0) ...[
                    const SizedBox(width: 6),
                    Text(
                      FormatUtils.formatCount(count!, context: context),
                      style: textTheme.bodySmall?.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 13,
                        color: baseColor,
                        letterSpacing: 0.2,
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
