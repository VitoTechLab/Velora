// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_pagination_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CommentPaginationModel _$CommentPaginationModelFromJson(
  Map<String, dynamic> json,
) => _CommentPaginationModel(
  comments: (json['comments'] as List<dynamic>)
      .map((e) => CommentModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  hasMore: json['hasMore'] as bool,
  nextCursor: _commentCursorFromJson(json['nextCursor']),
);

Map<String, dynamic> _$CommentPaginationModelToJson(
  _CommentPaginationModel instance,
) => <String, dynamic>{
  'comments': instance.comments,
  'hasMore': instance.hasMore,
  'nextCursor': _commentCursorToJson(instance.nextCursor),
};
