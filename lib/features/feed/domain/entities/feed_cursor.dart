class FeedCursorEntity {
  const FeedCursorEntity({required this.createdAt, required this.id});

  final DateTime createdAt;
  final String id;

  Map<String, dynamic> toMap() => {
    'cursor_created_at': createdAt.toIso8601String(),
    'cursor_id': id,
  };

  factory FeedCursorEntity.fromMap(Map<String, dynamic> map) {
    return FeedCursorEntity(
      createdAt: DateTime.parse(map['cursor_created_at'] as String),
      id: map['cursor_id'] as String,
    );
  }
}
