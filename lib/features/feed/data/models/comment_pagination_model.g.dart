// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_pagination_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentPaginationModelImpl _$$CommentPaginationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CommentPaginationModelImpl(
      comments: (json['comments'] as List<dynamic>)
          .map((e) => CommentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      hasMore: json['hasMore'] as bool,
      nextCursor: _commentCursorFromJson(json['nextCursor']),
    );

Map<String, dynamic> _$$CommentPaginationModelImplToJson(
        _$CommentPaginationModelImpl instance) =>
    <String, dynamic>{
      'comments': instance.comments,
      'hasMore': instance.hasMore,
      'nextCursor': _commentCursorToJson(instance.nextCursor),
    };
