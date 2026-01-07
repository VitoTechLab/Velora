enum SortOption {
  trending('Trending'),
  newest('New'),
  endingSoon('Ending Soon'),
  mostFunded('Most Funded'),
  verified('Verified');

  final String label;
  const SortOption(this.label);
}
