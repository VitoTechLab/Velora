// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_pagination_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeedPaginationModelImpl _$$FeedPaginationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FeedPaginationModelImpl(
      posts: (json['posts'] as List<dynamic>)
          .map((e) => FeedModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      hasMore: json['hasMore'] as bool,
      nextCursor: _cursorFromJson(json['nextCursor']),
    );

<<<<<<< HEAD
Map<String, dynamic> _$FeedPaginationModelToJson(
  _FeedPaginationModel instance,
) => <String, dynamic>{
  'posts': instance.posts,
  'hasMore': instance.hasMore,
  'nextCursor': _cursorToJson(instance.nextCursor),
};
=======
Map<String, dynamic> _$$FeedPaginationModelImplToJson(
        _$FeedPaginationModelImpl instance) =>
    <String, dynamic>{
      'posts': instance.posts,
      'hasMore': instance.hasMore,
      'nextCursor': _feedCursorToJson(instance.nextCursor),
    };
>>>>>>> fd2118c7948154593cd39da330b75baffc54f46d
