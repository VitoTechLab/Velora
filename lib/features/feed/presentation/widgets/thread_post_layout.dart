import 'package:flutter/material.dart';

/// Shared conversation layout: the author anchors the text, media and replies.
/// Media stays inside the post column; gallery pickers retain their own grids.
class ThreadPostLayout extends StatelessWidget {
  const ThreadPostLayout({
    super.key,
    required this.avatar,
    required this.header,
    required this.content,
    required this.actions,
    this.media,
    this.campaign,
    this.hasReplies = false,
  });
  final Widget avatar;
  final Widget header;
  final Widget content;
  final Widget actions;
  final Widget? media;
  final Widget? campaign;
  final bool hasReplies;
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: colors.surface,
        border: Border(
          bottom: BorderSide(color: colors.outlineVariant, width: .75),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 4),
        child: Stack(
          children: [
            if (hasReplies)
              Positioned(
                left: 19,
                top: 48,
                bottom: 24,
                child: ExcludeSemantics(
                  child: ColoredBox(
                    color: colors.outlineVariant,
                    child: const SizedBox(width: 1),
                  ),
                ),
              ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 40,
                  height: 48,
                  child: Align(alignment: Alignment.topCenter, child: avatar),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      header,
                      content,
                      if (campaign != null)
                        Padding(
                          padding: const EdgeInsets.only(bottom: 12),
                          child: campaign,
                        ),
                      if (media != null)
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: media,
                          ),
                        ),
                      actions,
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
