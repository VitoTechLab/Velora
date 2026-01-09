import 'package:flutter/material.dart';

class AppBottomSheet {
  AppBottomSheet._();

  /// Set ini sekali (pakai navigatorKey yang sama dengan GoRouter)
  static late GlobalKey<NavigatorState> navigatorKey;

  static BuildContext? get _context => navigatorKey.currentContext;

  /// =========================================
  /// 1) FIXED: tidak bisa di-drag, tinggi tetap.
  ///    Close hanya lewat tombol X (optional).
  /// =========================================
  static Future<T?> showFixed<T>({
    required Widget child,
    double heightFactor = 0.5, // 0.5 = setengah layar
    bool isDismissible = false, // tap luar untuk close? default: tidak
    bool enableDrag = false, // drag close? default: tidak
    bool showCloseButton = true,
    String? title,
    EdgeInsets contentPadding = const EdgeInsets.fromLTRB(16, 12, 16, 16),
    ShapeBorder shape = const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
  }) {
    final context = _context;
    if (context == null) return Future.value(null);

    final screenH = MediaQuery.of(context).size.height;
    final height = screenH * heightFactor;

    return showModalBottomSheet<T>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      backgroundColor: Theme.of(context).colorScheme.surface,
      shape: shape,
      constraints: BoxConstraints(
        minHeight: height,
        maxHeight: height, // kunci tinggi
      ),
      builder: (ctx) {
        return _SheetFrame(
          title: title,
          showCloseButton: showCloseButton,
          contentPadding: contentPadding,
          child: child,
        );
      },
    );
  }

  /// ===================================================
  /// 2) DRAGGABLE: bisa ditarik sampai tinggi tertentu.
  ///    Tinggi awal, min, max semuanya bisa di-inject.
  /// ===================================================
  static Future<T?> showDraggable<T>({
    required Widget Function(ScrollController controller) builder,
    double initialChildSize = 0.5, // tinggi awal (0..1)
    double minChildSize = 0.25, // minimal bisa turun segini
    double maxChildSize = 0.9, // maksimal bisa naik segini
    bool isDismissible = true,
    bool enableDrag = true,
    bool showCloseButton = true,
    String? title,
    EdgeInsets contentPadding = const EdgeInsets.fromLTRB(16, 12, 16, 16),
    ShapeBorder shape = const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
  }) {
    final context = _context;
    if (context == null) return Future.value(null);

    // Safety clamp
    initialChildSize = initialChildSize.clamp(0.05, 1.0);
    minChildSize = minChildSize.clamp(0.05, 1.0);
    maxChildSize = maxChildSize.clamp(0.05, 1.0);

    return showModalBottomSheet<T>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      backgroundColor: Theme.of(context).colorScheme.surface,
      shape: shape,
      builder: (ctx) {
        return DraggableScrollableSheet(
          expand: false,
          initialChildSize: initialChildSize,
          minChildSize: minChildSize,
          maxChildSize: maxChildSize,
          builder: (ctx, scrollController) {
            return _SheetFrame(
              title: title,
              showCloseButton: showCloseButton,
              contentPadding: contentPadding,
              // IMPORTANT: pakai scrollController ini di ListView/SingleChildScrollView kamu
              child: builder(scrollController),
            );
          },
        );
      },
    );
  }
}

/// Frame standar: header (title + X) + content
class _SheetFrame extends StatelessWidget {
  const _SheetFrame({
    required this.child,
    this.title,
    this.showCloseButton = true,
    this.contentPadding = const EdgeInsets.fromLTRB(16, 12, 16, 16),
  });

  final Widget child;
  final String? title;
  final bool showCloseButton;
  final EdgeInsets contentPadding;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Drag handle
        Padding(
          padding: const EdgeInsets.only(top: 12, bottom: 8),
          child: Center(
            child: Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: Theme.of(
                  context,
                ).colorScheme.onSurfaceVariant.withValues(alpha: 0.4),
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
        ),
        // Header
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 8, 8),
          child: Row(
            children: [
              // Left spacer for centering
              if (showCloseButton) const SizedBox(width: 48),
              Expanded(
                child: title == null
                    ? const SizedBox.shrink()
                    : Text(
                        title!,
                        style: Theme.of(context).textTheme.titleMedium
                            ?.copyWith(fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
              ),
              if (showCloseButton)
                IconButton(
                  tooltip: 'Close',
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(Icons.close),
                ),
            ],
          ),
        ),
        const Divider(height: 1),

        // Content
        Expanded(
          child: SafeArea(
            top: false,
            child: Padding(padding: contentPadding, child: child),
          ),
        ),
      ],
    );
  }
}
