// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_pagination_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

<<<<<<< HEAD
_CommentPaginationModel _$CommentPaginationModelFromJson(
  Map<String, dynamic> json,
) => _CommentPaginationModel(
  comments: (json['comments'] as List<dynamic>)
      .map((e) => CommentModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  hasMore: json['hasMore'] as bool,
  nextCursor: _cursorFromJson(json['nextCursor']),
);

Map<String, dynamic> _$CommentPaginationModelToJson(
  _CommentPaginationModel instance,
) => <String, dynamic>{
  'comments': instance.comments,
  'hasMore': instance.hasMore,
  'nextCursor': _cursorToJson(instance.nextCursor),
};
=======
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
>>>>>>> fd2118c7948154593cd39da330b75baffc54f46d
