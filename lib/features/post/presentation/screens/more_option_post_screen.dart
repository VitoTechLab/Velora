import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:velora/features/post/domain/entities/more_option_data.dart';
import 'package:velora/l10n/app_localizations.dart';

/// More Options Screen untuk post
/// Menampilkan opsi tambahan seperti turn off commenting, hide like count, dll
class MoreOptionPostScreen extends HookWidget {
  final MoreOptionData initialOptions;

  const MoreOptionPostScreen({
    super.key,
    this.initialOptions = const MoreOptionData(),
  });
  @override
  Widget build(BuildContext context) {
    final turnOffCommenting = useState(!initialOptions.commentsEnabled);
    final hideLikeCount = useState(initialOptions.hideLikeCount);
    final hideShareCount = useState(initialOptions.hideShareCount);
    final hideCommentCount = useState(initialOptions.hideCommentCount);
    final hideLikesList = useState(initialOptions.hideLikesList);

    useEffect(
      () {
        turnOffCommenting.value = !initialOptions.commentsEnabled;
        hideLikeCount.value = initialOptions.hideLikeCount;
        hideShareCount.value = initialOptions.hideShareCount;
        hideCommentCount.value = initialOptions.hideCommentCount;
        hideLikesList.value = initialOptions.hideLikesList;
        return null;
      },
      [
        initialOptions.commentsEnabled,
        initialOptions.hideLikeCount,
        initialOptions.hideShareCount,
        initialOptions.hideCommentCount,
        initialOptions.hideLikesList,
      ],
    );

    void onBackPressed() {
      final result = MoreOptionData(
        commentsEnabled: !turnOffCommenting.value,
        hideLikeCount: hideLikeCount.value,
        hideShareCount: hideShareCount.value,
        hideCommentCount: hideCommentCount.value,
        hideLikesList: hideLikesList.value,
      );
      Navigator.pop(context, result);
    }

    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final t = AppLocalizations.of(context)!;
    final backgroundColor = colorScheme.surfaceContainerLowest;

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: colorScheme.surfaceContainerHigh,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: colorScheme.onSurface),
          onPressed: onBackPressed,
        ),
        title: Text(
          t.postMoreOptionsTitle,
          style: textTheme.titleMedium?.copyWith(
            color: colorScheme.onSurface,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: false,
      ),
      body: ListView(
        children: [
          // Header section
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              t.postMoreOptionsHeader,
              style: textTheme.bodySmall?.copyWith(
                color: colorScheme.onSurface.withValues(alpha: 0.6),
              ),
            ),
          ),

          // Turn off commenting
          _buildOptionTile(
            icon: Icons.chat_bubble_outline,
            title: t.postMoreOptionsTurnOffCommentsTitle,
            subtitle: t.postMoreOptionsTurnOffCommentsSubtitle,
            value: turnOffCommenting.value,
            onChanged: (value) {
              turnOffCommenting.value = value;
            },
            colorScheme: colorScheme,
            textTheme: textTheme,
            t: t,
          ),

          const Divider(height: 1),

          // Hide like count
          _buildOptionTile(
            icon: Icons.favorite_border,
            title: t.postMoreOptionsHideLikeCountTitle,
            subtitle: null,
            value: hideLikeCount.value,
            onChanged: (value) {
              hideLikeCount.value = value;
            },
            colorScheme: colorScheme,
            textTheme: textTheme,
            t: t,
          ),

          const Divider(height: 1),

          // Hide share count
          _buildOptionTile(
            icon: Icons.share_outlined,
            title: t.postMoreOptionsHideShareCountTitle,
            subtitle: t.postMoreOptionsHideShareCountSubtitle,
            value: hideShareCount.value,
            onChanged: (value) {
              hideShareCount.value = value;
            },
            colorScheme: colorScheme,
            textTheme: textTheme,
            t: t,
          ),

          const Divider(height: 1),

          // Hide comment count
          _buildOptionTile(
            icon: Icons.chat_bubble_outline,
            title: t.postMoreOptionsHideCommentCountTitle,
            subtitle: null,
            value: hideCommentCount.value,
            onChanged: (value) {
              hideCommentCount.value = value;
            },
            colorScheme: colorScheme,
            textTheme: textTheme,
            t: t,
          ),

          const Divider(height: 1),

          // Hide likes list
          _buildOptionTile(
            icon: Icons.people_outline,
            title: t.postMoreOptionsHideLikesListTitle,
            subtitle: t.postMoreOptionsHideLikesListSubtitle,
            value: hideLikesList.value,
            onChanged: (value) {
              hideLikesList.value = value;
            },
            colorScheme: colorScheme,
            textTheme: textTheme,
            t: t,
          ),
        ],
      ),
    );
  }

  Widget _buildOptionTile({
    required IconData icon,
    required String title,
    String? subtitle,
    required bool value,
    required ValueChanged<bool> onChanged,
    required ColorScheme colorScheme,
    required TextTheme textTheme,
    required AppLocalizations t,
  }) {
    final hint = value
        ? t.postToggleHintEnable(title)
        : t.postToggleHintDisable(title);
    return Semantics(
      container: true,
      toggled: value,
      label: title,
      hint: hint,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          children: [
            // Icon
            Container(
              width: 24,
              height: 24,
              alignment: Alignment.center,
              child: Icon(icon, size: 24, color: colorScheme.onSurface),
            ),
            const SizedBox(width: 16),

            // Text content
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: textTheme.bodyMedium?.copyWith(
                      color: colorScheme.onSurface,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  if (subtitle != null) ...[
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: textTheme.bodySmall?.copyWith(
                        color: colorScheme.onSurface.withValues(alpha: 0.6),
                        height: 1.4,
                      ),
                    ),
                  ],
                ],
              ),
            ),

            const SizedBox(width: 16),

            // Toggle switch
            Switch(
              value: value,
              onChanged: onChanged,
              activeThumbColor: colorScheme.primary,
            ),
          ],
        ),
      ),
    );
  }
}
