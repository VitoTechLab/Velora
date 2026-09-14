import 'package:flutter/material.dart';
import 'package:velora/core/di/service_locator.dart';
import 'package:velora/core/services/file_download_service.dart';
import 'package:velora/core/ui/app_messenger.dart';
import 'package:velora/features/chat/presentation/widgets/atoms/chat_icon_button.dart';
import 'package:velora/features/chat/presentation/widgets/atoms/chat_message_entrance.dart';
import 'package:velora/features/chat/presentation/widgets/atoms/chat_message_status_icon.dart';
import 'package:velora/l10n/app_localizations.dart';

class ChatFileMessageWidget extends StatefulWidget {
  final String fileUrl;
  final String fileName;
  final int? fileSize;
  final String time;
  final bool isSender;

  const ChatFileMessageWidget({
    super.key,
    required this.fileUrl,
    required this.fileName,
    required this.time,
    required this.isSender,
    this.fileSize,
  });

  @override
  State<ChatFileMessageWidget> createState() => _ChatFileMessageWidgetState();
}

class _ChatFileMessageWidgetState extends State<ChatFileMessageWidget> {
  double? _downloadProgress;
  bool _downloaded = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final t = AppLocalizations.of(context)!;

    final textColor = widget.isSender
        ? colorScheme.onPrimary
        : colorScheme.onSurface;
    final secondaryContentColor = widget.isSender
        ? colorScheme.onPrimary.withValues(alpha: 0.72)
        : colorScheme.onSurfaceVariant;

    final ext = widget.fileName.split('.').last.toLowerCase();
    final iconColor = _getFileIconColor(ext, colorScheme);

    return ChatMessageEntrance(
      isSender: widget.isSender,
      child: TweenAnimationBuilder<double>(
        duration: const Duration(milliseconds: 400),
        tween: Tween(begin: 0.0, end: 1.0),
        curve: Curves.easeOutCubic,
        builder: (context, value, child) {
          return Opacity(
            opacity: value,
            child: Transform.scale(
              scale: 0.95 + (0.05 * value),
              alignment: widget.isSender
                  ? Alignment.centerRight
                  : Alignment.centerLeft,
              child: child,
            ),
          );
        },
        child: Container(
          constraints: const BoxConstraints(maxWidth: 292),
          margin: EdgeInsets.only(
            left: widget.isSender ? 40 : 8,
            right: widget.isSender ? 8 : 40,
            top: 3,
            bottom: 3,
          ),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            gradient: widget.isSender
                ? LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      colorScheme.primary,
                      colorScheme.tertiary.withValues(alpha: 0.9),
                    ],
                  )
                : null,
            color: widget.isSender ? null : colorScheme.surfaceContainerLow,
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(16),
              topRight: const Radius.circular(16),
              bottomLeft: Radius.circular(widget.isSender ? 20 : 7),
              bottomRight: Radius.circular(widget.isSender ? 7 : 20),
            ),
            border: Border.all(
              color: widget.isSender
                  ? colorScheme.onPrimary.withValues(alpha: 0.12)
                  : colorScheme.outlineVariant.withValues(alpha: 0.34),
              width: 1,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Container(
                    width: 46,
                    height: 46,
                    decoration: BoxDecoration(
                      color: iconColor.withValues(alpha: 0.14),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: iconColor.withValues(alpha: 0.24),
                      ),
                    ),
                    child: Icon(_getFileIcon(ext), size: 24, color: iconColor),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.fileName,
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: textColor,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.15,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        if (widget.fileSize != null) ...[
                          const SizedBox(height: 4),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 3,
                            ),
                            decoration: BoxDecoration(
                              color: secondaryContentColor.withValues(
                                alpha: 0.15,
                              ),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Text(
                              _formatFileSize(widget.fileSize!),
                              style: theme.textTheme.labelSmall?.copyWith(
                                color: secondaryContentColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 11,
                              ),
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  if (_downloadProgress != null)
                    SizedBox(
                      width: 38,
                      height: 38,
                      child: CircularProgressIndicator(
                        value: _downloadProgress,
                        strokeWidth: 2.6,
                        color: widget.isSender
                            ? colorScheme.onPrimary
                            : colorScheme.primary,
                      ),
                    )
                  else
                    ChatIconButton(
                      icon: _downloaded
                          ? Icons.folder_open_rounded
                          : Icons.download_rounded,
                      tooltip: _downloaded
                          ? t.chatDetailOpenFile
                          : t.chatDetailDownloadFile,
                      onPressed: _onDownloadPressed,
                      size: 38,
                      emphasized: widget.isSender,
                    ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    widget.time,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: textColor.withValues(alpha: 0.6),
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  if (widget.isSender) ...[
                    const SizedBox(width: 4),
                    ChatMessageStatusIcon(isRead: true),
                  ],
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _onDownloadPressed() async {
    if (_downloadProgress != null) return;

    final context = this.context;
    final t = AppLocalizations.of(context)!;
    final downloadService = getIt<FileDownloadService>();

    setState(() {
      _downloadProgress = 0.0;
    });

    try {
      AppMessenger.showToast(
        message: t.chatDetailDownloading,
        icon: Icons.download_rounded,
      );

      final filePath = await downloadService.downloadFile(
        fileUrl: widget.fileUrl,
        fileName: widget.fileName,
        onProgress: (progress) {
          setState(() {
            _downloadProgress = progress;
          });
        },
      );

      setState(() {
        _downloadProgress = null;
        _downloaded = true;
      });

      if (!mounted) return;

      AppMessenger.showToast(
        message: t.chatDetailDownloadSuccess,
        icon: Icons.check_circle_outline,
      );

      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: Text(t.chatDetailDownloadSuccess),
          content: Text(widget.fileName),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx),
              child: Text(t.commonCancel),
            ),
            FilledButton(
              onPressed: () async {
                Navigator.pop(ctx);
                await downloadService.openFile(filePath);
              },
              child: Text(t.chatDetailOpenFile),
            ),
          ],
        ),
      );
    } catch (e) {
      setState(() {
        _downloadProgress = null;
      });

      if (!mounted) return;

      AppMessenger.showToast(
        message: t.chatDetailDownloadError,
        icon: Icons.error_outline,
        isError: true,
      );
    }
  }

  Color _getFileIconColor(String ext, ColorScheme colorScheme) {
    switch (ext) {
      case 'pdf':
        return colorScheme.error;
      case 'doc':
      case 'docx':
        return colorScheme.primary;
      case 'xls':
      case 'xlsx':
        return colorScheme.tertiary;
      case 'ppt':
      case 'pptx':
        return colorScheme.secondary;
      case 'txt':
        return colorScheme.onSurfaceVariant;
      case 'zip':
      case 'rar':
        return colorScheme.tertiary;
      default:
        return colorScheme.primary;
    }
  }

  IconData _getFileIcon(String ext) {
    switch (ext) {
      case 'pdf':
        return Icons.picture_as_pdf_rounded;
      case 'doc':
      case 'docx':
        return Icons.description_rounded;
      case 'xls':
      case 'xlsx':
        return Icons.table_chart_rounded;
      case 'ppt':
      case 'pptx':
        return Icons.slideshow_rounded;
      case 'txt':
        return Icons.article_rounded;
      case 'zip':
      case 'rar':
        return Icons.folder_zip_rounded;
      default:
        return Icons.insert_drive_file_rounded;
    }
  }

  String _formatFileSize(int bytes) {
    if (bytes < 1024) return '$bytes B';
    if (bytes < 1024 * 1024) {
      return '${(bytes / 1024).toStringAsFixed(1)} KB';
    }
    if (bytes < 1024 * 1024 * 1024) {
      return '${(bytes / (1024 * 1024)).toStringAsFixed(1)} MB';
    }
    return '${(bytes / (1024 * 1024 * 1024)).toStringAsFixed(1)} GB';
  }
}
