/// Translation services for language detection and text translation
/// 
/// This barrel file exports all translation-related components:
/// - [TranslationService]: Core translation and language detection
/// - [TranslationPreloader]: Background model preloading
/// - [TranslationQueue]: Queue-based translation processing
/// - [TranslationBloc]: BLoC for UI state management
/// - [TranslationState]: Freezed state classes
library;

export 'translation_bloc.dart';
export 'translation_preloader.dart';
export 'translation_queue.dart';
export 'translation_service.dart';
export 'translation_state.dart';
