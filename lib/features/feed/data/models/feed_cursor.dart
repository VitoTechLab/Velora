import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/feed/domain/entities/feed_cursor.dart'
    as domain;

part 'feed_cursor.freezed.dart';
part 'feed_cursor.g.dart';

/// Cursor model for keyset pagination based on created_at + id.
@freezed
abstract class FeedCursor with _$FeedCursor {
  const FeedCursor._();

  const factory FeedCursor({
    // Pakai @JsonKey supaya nama field di JSON tetap sesuai map kamu.
    @JsonKey(name: 'cursor_created_at') required DateTime createdAt,

    @JsonKey(name: 'cursor_id') required String id,
  }) = _FeedCursor;

  /// JSON (de)serialization for json_serializable/freezed.
  factory FeedCursor.fromJson(Map<String, dynamic> json) =>
      _$FeedCursorFromJson(json);

  Map<String, dynamic> toMap() => toJson();

  factory FeedCursor.fromMap(Map<String, dynamic> map) =>
      FeedCursor.fromJson(map);

  static FeedCursor? fromDynamic(Object? value) {
    if (value == null) return null;
    if (value is FeedCursor) return value;
    if (value is Map<String, dynamic>) return FeedCursor.fromJson(value);
    if (value is Map) {
      return FeedCursor.fromJson(
        value.map((key, v) => MapEntry(key.toString(), v)),
      );
    }
    return null;
  }

  domain.FeedCursorEntity toEntity() =>
      domain.FeedCursorEntity(createdAt: createdAt, id: id);
}
