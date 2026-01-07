Map<String, String> extractName(String? fullName) {
  if (fullName == null || fullName.trim().isEmpty) {
    return {'firstName': '', 'lastName': ''};
  }

  final parts = fullName.trim().split(' ');
  final firstName = capitalizeWords(parts.first);
  final lastName = parts.length > 1
      ? capitalizeWords(parts.sublist(1).join(' '))
      : '';
  return {'firstName': firstName, 'lastName': lastName};
}

String capitalizeWords(String text) {
  return text
      .split(' ')
      .map((word) {
        if (word.isEmpty) return '';
        return word[0].toUpperCase() + word.substring(1).toLowerCase();
      })
      .join(' ');
}
