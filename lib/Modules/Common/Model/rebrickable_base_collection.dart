class RebrickableBaseCollection<entityType> {
  final int count;
  final String next;
  final String? previous;
  final List<entityType> results;

  RebrickableBaseCollection({
    required this.count,
    required this.next,
    this.previous,
    required this.results,
  });
}
