import 'package:flutter/material.dart';
import 'package:velora/core/di/service_locator.dart';
import 'package:velora/core/services/file_download_service.dart';
import 'package:velora/core/ui/app_messenger.dart';
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
        ? colorScheme.onPrimaryContainer
        : colorScheme.onSurface;
    final secondaryContentColor = widget.isSender
        ? colorScheme.onPrimaryContainer.withValues(alpha: 0.7)
        : colorScheme.onSurfaceVariant;

    final ext = widget.fileName.split('.').last.toLowerCase();
    final iconColor = _getFileIconColor(ext);

    return TweenAnimationBuilder<double>(
      duration: const Duration(milliseconds: 400),
      tween: Tween(begin: 0.0, end: 1.0),
      curve: Curves.easeOutCubic,
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: Transform.scale(
            scale: 0.95 + (0.05 * value),
            alignment:
                widget.isSender ? Alignment.centerRight : Alignment.centerLeft,
            child: child,
          ),
        );
      },
      child: Container(
        constraints: const BoxConstraints(maxWidth: 280),
        margin: EdgeInsets.only(
          left: widget.isSender ? 40 : 8,
          right: widget.isSender ? 8 : 40,
          top: 3,
          bottom: 3,
        ),
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          gradient: widget.isSender
              ? LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    colorScheme.primaryContainer,
                    colorScheme.primaryContainer.withValues(alpha: 0.9),
                  ],
                )
              : null,
          color: widget.isSender ? null : colorScheme.surfaceContainerHigh,
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(18),
            topRight: const Radius.circular(18),
            bottomLeft: Radius.circular(widget.isSender ? 18 : 4),
            bottomRight: Radius.circular(widget.isSender ? 4 : 18),
          ),
          border: Border.all(
            color: widget.isSender
                ? colorScheme.primary.withValues(alpha: 0.15)
                : colorScheme.outline.withValues(alpha: 0.1),
            width: 1,
          ),
          boxShadow: [
            BoxShadow(
              color: widget.isSender
                  ? colorScheme.primary.withValues(alpha: 0.15)
                  : Colors.black.withValues(alpha: 0.05),
              blurRadius: 8,
              offset: const Offset(0, 2),
              spreadRadius: 0,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        iconColor.withValues(alpha: 0.2),
                        iconColor.withValues(alpha: 0.1),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: iconColor.withValues(alpha: 0.3),
                      width: 1.5,
                    ),
                  ),
                  child: Icon(
                    _getFileIcon(ext),
                    size: 28,
                    color: iconColor,
                  ),
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
                            gradient: LinearGradient(
                              colors: [
                                secondaryContentColor.withValues(alpha: 0.15),
                                secondaryContentColor.withValues(alpha: 0.08),
                              ],
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
                _downloadProgress != null
                    ? SizedBox(
                        width: 40,
                        height: 40,
                        child: CircularProgressIndicator(
                          value: _downloadProgress,
                          strokeWidth: 3,
                          color: colorScheme.primary,
                        ),
                      )
                    : Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              colorScheme.primary.withValues(alpha: 0.15),
                              colorScheme.secondary.withValues(alpha: 0.1),
                            ],
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: ShaderMask(
                            shaderCallback: (bounds) => LinearGradient(
                              colors: [
                                colorScheme.primary,
                                colorScheme.secondary,
                              ],
                            ).createShader(bounds),
                            child: Icon(
                              _downloaded
                                  ? Icons.folder_open_rounded
                                  : Icons.download_rounded,
                              color: Colors.white,
                              size: 22,
                            ),
                          ),
                          onPressed: _onDownloadPressed,
                          tooltip: _downloaded
                              ? t.chatDetailOpenFile
                              : t.chatDetailDownloadFile,
                        ),
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
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    transitionBuilder: (child, animation) {
                      return ScaleTransition(
                        scale: animation,
                        child: child,
                      );
                    },
                    child: Icon(
                      Icons.check_rounded,
                      key: const ValueKey('check'),
                      size: 16,
                      color: colorScheme.primary,
                    ),
                  ),
                ],
              ],
            ),
          ],
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
          content: Text('Saved to: $filePath'),
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
        message: '${t.chatDetailDownloadError}: $e',
        icon: Icons.error_outline,
        isError: true,
      );
    }
  }

  Color _getFileIconColor(String ext) {
    switch (ext) {
      case 'pdf':
        return Colors.red;
      case 'doc':
      case 'docx':
        return Colors.blue;
      case 'xls':
      case 'xlsx':
        return Colors.green;
      case 'ppt':
      case 'pptx':
        return Colors.orange;
      case 'txt':
        return Colors.grey;
      case 'zip':
      case 'rar':
        return Colors.amber;
      default:
        return Colors.blueGrey;
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
