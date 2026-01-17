import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/feed/domain/entities/feed_cursor_entity.dart';

part 'feed_cursor_model.freezed.dart';
part 'feed_cursor_model.g.dart';

@freezed
abstract class FeedCursorModel with _$FeedCursorModel {
  const FeedCursorModel._();

  const factory FeedCursorModel({
    @JsonKey(name: 'cursor_created_at') required DateTime createdAt,
    @JsonKey(name: 'cursor_id') required String id,
  }) = _FeedCursorModel;

  factory FeedCursorModel.fromJson(Map<String, dynamic> json) =>
      _$FeedCursorModelFromJson(json);

  Map<String, dynamic> toMap() => toJson();

  factory FeedCursorModel.fromMap(Map<String, dynamic> map) =>
      FeedCursorModel.fromJson(map);

  FeedCursorEntity toEntity() => FeedCursorEntity(createdAt: createdAt, id: id);

  static FeedCursorModel? fromDynamic(Object? value) {
    if (value == null) return null;
    if (value is FeedCursorModel) return value;
    if (value is Map<String, dynamic>) return FeedCursorModel.fromJson(value);
    if (value is Map) {
      return FeedCursorModel.fromJson(
        value.map((key, v) => MapEntry(key.toString(), v)),
      );
    }
    return null;
  }
}
