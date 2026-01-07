class CloudinaryUrlBuilder {
  CloudinaryUrlBuilder._();

  /// Injects a transformation string right after `/upload/` in secureUrl.
  ///
  /// Example:
  ///   input:  https://res.cloudinary.com/demo/image/upload/v1234/folder/img.jpg
  ///   result: https://res.cloudinary.com/demo/image/upload/f_auto,q_auto,c_limit,w_1080/v1234/folder/img.jpg
  static String _injectTransformation(String secureUrl, String transformation) {
    if (secureUrl.isEmpty) return secureUrl;

    final uri = Uri.parse(secureUrl);
    final segments = List<String>.from(uri.pathSegments);
    final uploadIndex = segments.indexOf('upload');

    if (uploadIndex == -1 || uploadIndex == segments.length - 1) {
      // Not a standard Cloudinary URL or missing segments -> return original
      return secureUrl;
    }

    // Avoid double-injecting if already has transformation at this position
    if (segments.length > uploadIndex + 1 &&
        segments[uploadIndex + 1].contains(',')) {
      return secureUrl;
    }

    segments.insert(uploadIndex + 1, transformation);
    final newPath = '/${segments.join('/')}';

    return uri.replace(path: newPath).toString();
  }

  /// Feed image (timeline / list)
  ///
  /// Transformation: f_auto,q_auto,c_limit,w_1080
  static String feedImage(String secureUrl) {
    return _injectTransformation(secureUrl, 'f_auto,q_auto,c_limit,w_1080');
  }

  /// Detail image (full screen / detail view)
  ///
  /// Transformation: f_auto,q_auto,c_limit,w_1440
  static String detailImage(String secureUrl) {
    return _injectTransformation(secureUrl, 'f_auto,q_auto,c_limit,w_1440');
  }

  /// Thumbnail (grid / small card)
  ///
  /// Transformation: f_auto,q_auto,c_fill,w_360,h_360
  static String thumbnail(String secureUrl) {
    return _injectTransformation(secureUrl, 'f_auto,q_auto,c_fill,w_360,h_360');
  }
}
