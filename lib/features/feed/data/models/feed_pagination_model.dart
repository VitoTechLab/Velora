import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/feed/domain/entities/feed_pagination_result.dart';
import 'feed_cursor.dart';
import 'feed_model.dart';

part 'feed_pagination_model.freezed.dart';
part 'feed_pagination_model.g.dart';

FeedCursor? _cursorFromJson(Object? json) {
  if (json == null) return null;
  return FeedCursor.fromJson(json as Map<String, dynamic>);
}

Object? _cursorToJson(FeedCursor? cursor) => cursor?.toJson();

@freezed
abstract class FeedPaginationModel with _$FeedPaginationModel {
  const FeedPaginationModel._();

  const factory FeedPaginationModel({
    required List<FeedModel> posts,
    required bool hasMore,

    @JsonKey(fromJson: _cursorFromJson, toJson: _cursorToJson)
    FeedCursor? nextCursor,
  }) = _FeedPaginationModel;

  factory FeedPaginationModel.fromJson(Map<String, dynamic> json) =>
      _$FeedPaginationModelFromJson(json);

  FeedPaginationResult toEntity() {
    return FeedPaginationResult(
      posts: posts.map((p) => p.toEntity()).toList(),
      hasMore: hasMore,
      cursor: nextCursor?.toEntity(),
    );
  }
}
