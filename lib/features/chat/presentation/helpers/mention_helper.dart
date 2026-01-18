/// Helper class to parse and handle mentions in chat messages
class MentionHelper {
  /// Regex to match @username pattern
  static final RegExp mentionPattern = RegExp(r'@(\w+)');

  /// Detect if the current cursor position is inside a mention
  /// Returns the mention query string if inside a mention, null otherwise
  static String? detectMentionAtCursor(String text, int cursorPosition) {
    if (cursorPosition <= 0 || cursorPosition > text.length) {
      return null;
    }

    // Find the last @ before cursor
    int atIndex = -1;
    for (int i = cursorPosition - 1; i >= 0; i--) {
      if (text[i] == '@') {
        atIndex = i;
        break;
      }
      // Stop if we hit a space or newline before finding @
      if (text[i] == ' ' || text[i] == '\n') {
        break;
      }
    }

    if (atIndex == -1) {
      return null;
    }

    // Check if there's text between @ and cursor (no spaces)
    final textBetween = text.substring(atIndex + 1, cursorPosition);
    if (textBetween.contains(' ') || textBetween.contains('\n')) {
      return null;
    }

    // Return the query (text after @)
    return textBetween;
  }

  /// Replace the mention query with selected username
  /// Returns the updated text and new cursor position
  static MentionReplaceResult replaceMention(
    String text,
    int cursorPosition,
    String username,
  ) {
    // Find the @ position
    int atIndex = -1;
    for (int i = cursorPosition - 1; i >= 0; i--) {
      if (text[i] == '@') {
        atIndex = i;
        break;
      }
      if (text[i] == ' ' || text[i] == '\n') {
        break;
      }
    }

    if (atIndex == -1) {
      return MentionReplaceResult(text: text, cursorPosition: cursorPosition);
    }

    // Replace from @ to cursor with @username
    final before = text.substring(0, atIndex);
    final after = text.substring(cursorPosition);
    final newText = '$before@$username $after';
    final newCursorPosition =
        before.length + username.length + 2; // +2 for @ and space

    return MentionReplaceResult(
      text: newText,
      cursorPosition: newCursorPosition,
    );
  }

  /// Extract all mentioned usernames from text
  static List<String> extractMentions(String text) {
    final matches = mentionPattern.allMatches(text);
    return matches.map((match) => match.group(1)!).toList();
  }

  /// Check if text contains any mentions
  static bool hasMentions(String text) {
    return mentionPattern.hasMatch(text);
  }

  /// Get all mention matches with their positions
  static List<MentionMatch> getMentionMatches(String text) {
    final matches = mentionPattern.allMatches(text);
    return matches
        .map((match) => MentionMatch(
              username: match.group(1)!,
              start: match.start,
              end: match.end,
            ))
        .toList();
  }
}

/// Result of mention replacement operation
class MentionReplaceResult {
  final String text;
  final int cursorPosition;

  MentionReplaceResult({
    required this.text,
    required this.cursorPosition,
  });
}

/// Represents a mention match in text
class MentionMatch {
  final String username;
  final int start;
  final int end;

  MentionMatch({
    required this.username,
    required this.start,
    required this.end,
  });
}
