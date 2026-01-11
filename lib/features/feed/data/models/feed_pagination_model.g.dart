// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_pagination_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FeedPaginationModel _$FeedPaginationModelFromJson(Map<String, dynamic> json) =>
    _FeedPaginationModel(
      posts: (json['posts'] as List<dynamic>)
          .map((e) => FeedModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      hasMore: json['hasMore'] as bool,
      nextCursor: _feedCursorFromJson(json['nextCursor']),
    );

Map<String, dynamic> _$FeedPaginationModelToJson(
  _FeedPaginationModel instance,
) => <String, dynamic>{
  'posts': instance.posts,
  'hasMore': instance.hasMore,
  'nextCursor': _feedCursorToJson(instance.nextCursor),
};
