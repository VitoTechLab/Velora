import 'package:freezed_annotation/freezed_annotation.dart';

part 'more_option_data.freezed.dart';

@freezed
abstract class MoreOptionData with _$MoreOptionData {
  const factory MoreOptionData({
    @Default(true) bool commentsEnabled,
    @Default(false) bool hideLikeCount,
    @Default(false) bool hideShareCount,
    @Default(false) bool hideCommentCount,
    @Default(false) bool hideLikesList,
  }) = _MoreOptionData;
}
