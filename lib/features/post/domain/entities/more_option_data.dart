import 'package:freezed_annotation/freezed_annotation.dart';

part 'more_option_data.freezed.dart';

@freezed
abstract class MoreOptionData with _$MoreOptionData {
  const factory MoreOptionData({
    @Default(true) bool allowComments,
    @Default(true) bool allowShare,
  }) = _MoreOptionData;
}
