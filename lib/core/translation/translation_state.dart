import 'package:freezed_annotation/freezed_annotation.dart';

part 'translation_state.freezed.dart';

/// State for translation operations
@freezed
abstract class TranslationState with _$TranslationState {
  const factory TranslationState({
    @Default(false) bool isLoading,
    String? result,
    String? error,
  }) = _TranslationState;
}
