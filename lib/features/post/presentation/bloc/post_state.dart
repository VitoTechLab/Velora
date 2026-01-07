import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:velora/features/feed/domain/entities/feed_entity.dart';

part 'post_state.freezed.dart';

@freezed
abstract class PostState with _$PostState {
  const factory PostState({
    FeedEntity? createdPost,
    @Default(false) bool isCreatingPost,
    String? errorCreatePost,
    String? message,
  }) = _PostState;
}
