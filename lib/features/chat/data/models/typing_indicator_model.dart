import 'package:freezed_annotation/freezed_annotation.dart';

part 'typing_indicator_model.freezed.dart';
part 'typing_indicator_model.g.dart';

/// Model for typing indicator broadcast events (RAM to RAM, not DB)
@freezed
abstract class TypingIndicatorModel with _$TypingIndicatorModel {
  const TypingIndicatorModel._();

  const factory TypingIndicatorModel({
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'conversation_id') required String conversationId,
    @JsonKey(name: 'is_typing') required bool isTyping,
    @JsonKey(name: 'timestamp') required String timestamp,
  }) = _TypingIndicatorModel;

  factory TypingIndicatorModel.fromJson(Map<String, dynamic> json) =>
      _$TypingIndicatorModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => {
    'user_id': userId,
    'conversation_id': conversationId,
    'is_typing': isTyping,
    'timestamp': timestamp,
  };

  /// Create typing indicator payload
  factory TypingIndicatorModel.create({
    required String userId,
    required String conversationId,
    required bool isTyping,
  }) {
    return TypingIndicatorModel(
      userId: userId,
      conversationId: conversationId,
      isTyping: isTyping,
      timestamp: DateTime.now().toUtc().toIso8601String(),
    );
  }
}
