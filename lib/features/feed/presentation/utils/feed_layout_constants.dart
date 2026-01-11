/// Feed layout constants for ad positioning and scroll behavior
abstract final class FeedLayoutConstants {
  // Ad positioning
  static const int firstAdPosition = 2; // Show first ad after 2 posts
  static const int adInterval = 20; // Show ad every N posts after first ad

  // Scroll behavior
  static const double loadMoreThreshold = 200.0;

  // Ad widget
  static const double nativeAdHeight = 380.0;
}

/// Utility for calculating feed item positions with interleaved ads
///
/// Ad placement strategy:
/// - First ad appears after 2 posts (index 2)
/// - Subsequent ads appear every 20 posts
class FeedAdPositionCalculator {
  const FeedAdPositionCalculator._();

  /// Calculate total item count including ads
  static int calculateItemCount(int postCount, {bool hasLoadingIndicator = false}) {
    if (postCount < FeedLayoutConstants.firstAdPosition) {
      return postCount + (hasLoadingIndicator ? 1 : 0);
    }

    int adCount = 1; // First ad after 2 posts
    final remaining = postCount - FeedLayoutConstants.firstAdPosition;
    adCount += (remaining / FeedLayoutConstants.adInterval).floor();

    return postCount + adCount + (hasLoadingIndicator ? 1 : 0);
  }

  /// Get post index from list index, accounting for ads
  ///
  /// Returns:
  /// - Positive number: actual post index
  /// - `-1`: this index should show an ad
  /// - `-2`: this index should show loading indicator
  static int getPostIndex(int listIndex, int postCount) {
    const firstAdPos = FeedLayoutConstants.firstAdPosition;
    const adInterval = FeedLayoutConstants.adInterval;

    // First ad at index 2 (after 2 posts)
    if (listIndex == firstAdPos && postCount >= firstAdPos) {
      return -1;
    }

    // Before first ad - direct mapping
    if (listIndex < firstAdPos) {
      return listIndex;
    }

    // After first ad, calculate position accounting for subsequent ads
    int postIndex = listIndex - 1; // Account for first ad
    int adsBeforeIndex = 1; // First ad already counted

    // Check for additional ads every N posts
    final postsAfterFirstAd = postIndex - 1;
    if (postsAfterFirstAd > 0) {
      final additionalAdSlots = ((postsAfterFirstAd + 1) / adInterval).floor();

      for (int i = 1; i <= additionalAdSlots; i++) {
        final adPosition = firstAdPos + (i * adInterval) + (i - 1);
        if (listIndex == adPosition && postIndex < postCount) {
          return -1; // This is an ad position
        }
        if (listIndex > adPosition) {
          adsBeforeIndex++;
        }
      }
    }

    postIndex = listIndex - adsBeforeIndex;

    // Check if this is loading indicator
    if (postIndex >= postCount) {
      return -2;
    }

    return postIndex;
  }

  /// Check if the given index should display an ad
  static bool isAdPosition(int listIndex, int postCount) {
    return getPostIndex(listIndex, postCount) == -1;
  }

  /// Check if the given index should display loading indicator
  static bool isLoadingPosition(int listIndex, int postCount) {
    return getPostIndex(listIndex, postCount) == -2;
  }
}
