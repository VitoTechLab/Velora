import 'package:flutter/material.dart';
import 'package:velora/l10n/app_localizations.dart';

/// Utility class for formatting date, time, and numbers
class FormatUtils {
  FormatUtils._();

  /// Format time ago from DateTime to readable string
  /// Returns format like: "2h", "3d", "1mo", "2y", "now"
  static String formatTimeAgo(DateTime dateTime, {BuildContext? context}) {
    final now = DateTime.now();
    final difference = now.difference(dateTime);
    final t = context != null ? AppLocalizations.of(context) : null;

    if (difference.inDays > 365) {
      final years = (difference.inDays / 365).floor();
      return t?.timeAgoYears(years) ?? '${years}y';
    } else if (difference.inDays > 30) {
      final months = (difference.inDays / 30).floor();
      return t?.timeAgoMonths(months) ?? '${months}mo';
    } else if (difference.inDays > 0) {
      return t?.timeAgoDays(difference.inDays) ?? '${difference.inDays}d';
    } else if (difference.inHours > 0) {
      return t?.timeAgoHours(difference.inHours) ?? '${difference.inHours}h';
    } else if (difference.inMinutes > 0) {
      return t?.timeAgoMinutes(difference.inMinutes) ??
          '${difference.inMinutes}m';
    } else {
      return t?.timeAgoNow ?? 'now';
    }
  }

  /// Format count/numbers to readable short format
  /// Returns format like: "1.2rb", "3.5jt" for Indonesian
  /// or "1.2K", "3.5M" for English
  static String formatCount(
    int count, {
    BuildContext? context,
    bool? useIndonesian,
  }) {
    final t = context != null ? AppLocalizations.of(context) : null;
    final resolvedUseIndonesian = useIndonesian ?? _isIndonesianLocale(context);

    if (count >= 1000000) {
      final millions = count / 1000000;
      final formatted = millions.toStringAsFixed(1).replaceAll('.0', '');
      if (resolvedUseIndonesian) {
        return t?.countMillions(formatted) ?? '${formatted}jt';
      }
      return t?.countMillions(formatted) ?? '${formatted}M';
    } else if (count >= 1000) {
      final thousands = count / 1000;
      final formatted = thousands.toStringAsFixed(1).replaceAll('.0', '');
      if (resolvedUseIndonesian) {
        return t?.countThousands(formatted) ?? '${formatted}rb';
      }
      return t?.countThousands(formatted) ?? '${formatted}K';
    }
    return count.toString();
  }

  /// Format full date to readable format
  /// Example: "January 2, 2026" or "2 Januari 2026"
  static String formatFullDate(
    DateTime dateTime, {
    BuildContext? context,
    bool? useIndonesian,
  }) {
    final resolvedUseIndonesian = useIndonesian ?? _isIndonesianLocale(context);

    final months = resolvedUseIndonesian
        ? [
            'Jan',
            'Feb',
            'Mar',
            'Apr',
            'Mei',
            'Jun',
            'Jul',
            'Agt',
            'Sep',
            'Okt',
            'Nov',
            'Des',
          ]
        : [
            'Jan',
            'Feb',
            'Mar',
            'Apr',
            'May',
            'Jun',
            'Jul',
            'Aug',
            'Sep',
            'Oct',
            'Nov',
            'Dec',
          ];

    final month = months[dateTime.month - 1];
    final day = dateTime.day;
    final year = dateTime.year;

    return resolvedUseIndonesian ? '$day $month $year' : '$month $day, $year';
  }

  /// Format date with time
  /// Example: "2 Jan 2026, 14:30" or "Jan 2, 2026, 2:30 PM"
  static String formatDateTime(
    DateTime dateTime, {
    BuildContext? context,
    bool? useIndonesian,
    bool use24Hour = true,
  }) {
    final date = formatFullDate(
      dateTime,
      context: context,
      useIndonesian: useIndonesian,
    );

    if (use24Hour) {
      final hour = dateTime.hour.toString().padLeft(2, '0');
      final minute = dateTime.minute.toString().padLeft(2, '0');
      return '$date, $hour:$minute';
    } else {
      final hour = dateTime.hour > 12 ? dateTime.hour - 12 : dateTime.hour;
      final minute = dateTime.minute.toString().padLeft(2, '0');
      final period = dateTime.hour >= 12 ? 'PM' : 'AM';
      return '$date, $hour:$minute $period';
    }
  }

  /// Format file size
  /// Example: "1.5 MB", "3.2 KB"
  static String formatFileSize(int bytes, {bool useIndonesian = true}) {
    if (bytes >= 1073741824) {
      return '${(bytes / 1073741824).toStringAsFixed(1)} GB';
    } else if (bytes >= 1048576) {
      return '${(bytes / 1048576).toStringAsFixed(1)} MB';
    } else if (bytes >= 1024) {
      return '${(bytes / 1024).toStringAsFixed(1)} KB';
    }
    return '$bytes B';
  }

  /// Format duration from seconds
  /// Example: "2:30" or "1:05:30"
  static String formatDuration(int seconds) {
    final hours = seconds ~/ 3600;
    final minutes = (seconds % 3600) ~/ 60;
    final secs = seconds % 60;

    if (hours > 0) {
      return '$hours:${minutes.toString().padLeft(2, '0')}:${secs.toString().padLeft(2, '0')}';
    } else {
      return '$minutes:${secs.toString().padLeft(2, '0')}';
    }
  }

  // ==========================================================================
  // CHAT TIME FORMATTING
  // ==========================================================================

  /// Format time for chat list (Today, Yesterday, or date)
  static String formatChatListTime(DateTime dateTime) {
    // Convert to local time if UTC
    final localDateTime = dateTime.isUtc ? dateTime.toLocal() : dateTime;
    final now = DateTime.now();

    // Check if same day (comparing dates, not just difference)
    final today = DateTime(now.year, now.month, now.day);
    final messageDate =
        DateTime(localDateTime.year, localDateTime.month, localDateTime.day);
    final difference = today.difference(messageDate).inDays;

    if (difference == 0) {
      // Today - show time
      return '${localDateTime.hour.toString().padLeft(2, '0')}:${localDateTime.minute.toString().padLeft(2, '0')}';
    } else if (difference == 1) {
      // Yesterday
      return 'Yesterday';
    } else if (difference < 7) {
      // This week - show weekday
      final weekday = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
      return weekday[localDateTime.weekday - 1];
    } else {
      // Older - show date
      return '${localDateTime.day}/${localDateTime.month}/${localDateTime.year}';
    }
  }

  /// Format time for message timestamp (HH:mm)
  static String formatMessageTime(DateTime time) {
    // Convert to local time if UTC
    final localTime = time.isUtc ? time.toLocal() : time;
    return '${localTime.hour.toString().padLeft(2, '0')}:${localTime.minute.toString().padLeft(2, '0')}';
  }

  /// Format date for message date separator
  static String formatDateSeparator(DateTime date) {
    // Convert to local time if UTC
    final localDate = date.isUtc ? date.toLocal() : date;
    final now = DateTime.now();

    // Compare dates properly
    final today = DateTime(now.year, now.month, now.day);
    final messageDate =
        DateTime(localDate.year, localDate.month, localDate.day);
    final difference = today.difference(messageDate).inDays;

    if (difference == 0) {
      return 'Today';
    } else if (difference == 1) {
      return 'Yesterday';
    } else {
      final months = [
        'January',
        'February',
        'March',
        'April',
        'May',
        'June',
        'July',
        'August',
        'September',
        'October',
        'November',
        'December',
      ];
      return '${months[localDate.month - 1]} ${localDate.day}, ${localDate.year}';
    }
  }

  /// Check if message date separator should be shown
  static bool shouldShowDateSeparator(DateTime? previous, DateTime current) {
    if (previous == null) return true;
    return !_isSameDay(previous, current);
  }

  /// Check if two dates are on the same day
  static bool _isSameDay(DateTime date1, DateTime date2) {
    return date1.year == date2.year &&
        date1.month == date2.month &&
        date1.day == date2.day;
  }

  static bool _isIndonesianLocale(BuildContext? context) {
    if (context == null) return false;
    try {
      return Localizations.localeOf(context).languageCode == 'id';
    } catch (_) {
      return false;
    }
  }
}
