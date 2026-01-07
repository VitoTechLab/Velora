import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:velora/l10n/app_localizations.dart';

class CommentInputField extends HookWidget {
  final TextEditingController? controller;
  final String? hintText;
  final VoidCallback? onSend;
  final bool isLoading;
  final String? replyToUsername;
  final VoidCallback? onCancelReply;

  const CommentInputField({
    super.key,
    this.controller,
    this.hintText,
    this.onSend,
    this.isLoading = false,
    this.replyToUsername,
    this.onCancelReply,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final t = AppLocalizations.of(context)!;
    final internalController = controller ?? useTextEditingController();
    final hasText = useState(false);

    useEffect(() {
      void listener() {
        hasText.value = internalController.text.trim().isNotEmpty;
      }

      internalController.addListener(listener);
      return () {
        internalController.removeListener(listener);
      };
    }, [internalController]);
    return Container(
      decoration: BoxDecoration(
        color: colorScheme.surface,
        boxShadow: [
          BoxShadow(
            color: colorScheme.shadow.withValues(alpha: 0.05),
            blurRadius: 8,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (replyToUsername != null)
            _buildReplyBanner(context, t.feedReplyingTo(replyToUsername!)),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: colorScheme.outlineVariant,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: TextField(
                      controller: internalController,
                      enabled: !isLoading,
                      decoration: InputDecoration(
                        hintText: hintText ?? t.feedWriteCommentHint,
                        hintStyle: textTheme.bodyMedium?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                          fontSize: 14,
                        ),
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        contentPadding: EdgeInsets.zero,
                        isDense: true,
                      ),
                      style: textTheme.bodyMedium?.copyWith(fontSize: 14),
                      maxLines: null,
                      textCapitalization: TextCapitalization.sentences,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                isLoading
                    ? SizedBox(
                        width: 40,
                        height: 40,
                        child: Center(
                          child: SizedBox(
                            width: 24,
                            height: 24,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                colorScheme.primary,
                              ),
                            ),
                          ),
                        ),
                      )
                    : IconButton(
                        onPressed: hasText.value ? onSend : null,
                        icon: Icon(
                          Icons.send_rounded,
                          color: hasText.value
                              ? colorScheme.primary
                              : colorScheme.onSurfaceVariant,
                        ),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildReplyBanner(BuildContext context, String label) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: colorScheme.primaryContainer,
      child: Row(
        children: [
          Icon(Icons.reply, size: 16, color: colorScheme.primary),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              label,
              style: textTheme.bodySmall?.copyWith(
                color: colorScheme.primary,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          InkWell(
            onTap: onCancelReply,
            child: Icon(
              Icons.close,
              size: 18,
              color: colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}
