# Translation Service Usage Examples

## Basic Translation (using service directly)

```dart
import 'package:velora/core/translation/translation.dart';
import 'package:velora/core/di/service_locator.dart';

// Get service from DI
final service = getIt<TranslationService>();

// Translate text
final result = await service.translate(
  text: 'Hello, how are you?',
  targetLanguageCode: 'id',
);

if (result != null) {
  print(result.translatedText); // 'Halo, apa kabar?'
  print(result.sourceLanguage); // 'en'
  print(result.targetLanguage); // 'id'
}
```

## Background Model Preloading (in main.dart)

```dart
import 'dart:async' show unawaited;
import 'package:velora/core/translation/translation.dart';
import 'package:velora/core/di/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize app dependencies
  await configureDependencies();
  
  // Get preloader from DI
  final preloader = getIt<TranslationPreloader>();
  
  // Start app immediately (non-blocking)
  runApp(const MyApp());
  
  // Preload models in background
  // This downloads translation models without blocking UI
  unawaited(preloader.preload(
    languages: ['en', 'id', 'ja', 'ko', 'zh'],
  ));
}
```

## UI-Reactive Translation (using BLoC)

```dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velora/core/translation/translation.dart';
import 'package:velora/core/di/service_locator.dart';

class TranslationWidget extends StatelessWidget {
  const TranslationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TranslationBloc(getIt<TranslationQueue>()),
      child: BlocConsumer<TranslationBloc, TranslationState>(
        listener: (context, state) {
          if (state.error != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Error: ${state.error}')),
            );
          }
        },
        builder: (context, state) {
          return Column(
            children: [
              TextField(
                onSubmitted: (text) {
                  context.read<TranslationBloc>().translate(
                        text,
                        targetLang: 'id',
                      );
                },
              ),
              if (state.isLoading)
                const CircularProgressIndicator()
              else if (state.result != null)
                Text('Translation: ${state.result}'),
            ],
          );
        },
      ),
    );
  }
}
```

## Queue-Based Translation (batch processing)

```dart
import 'package:velora/core/translation/translation.dart';
import 'package:velora/core/di/service_locator.dart';

final queue = getIt<TranslationQueue>();

// Process multiple translations sequentially
final results = await Future.wait([
  queue.enqueue(text: 'Hello', targetLang: 'id'),
  queue.enqueue(text: 'Goodbye', targetLang: 'ja'),
  queue.enqueue(text: 'Thank you', targetLang: 'ko'),
]);

for (final result in results) {
  if (result != null) {
    print(result.translatedText);
  }
}
```

## Using Existing Hook (already in project)

```dart
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:velora/shared/hooks/use_translation.dart';

class CommentWidget extends HookWidget {
  final String commentText;
  
  const CommentWidget({required this.commentText, super.key});

  @override
  Widget build(BuildContext context) {
    final translation = useTranslation(commentText);

    return Column(
      children: [
        Text(translation.displayText),
        
        // Only show translate button if needed
        if (translation.shouldShowButton)
          TextButton(
            onPressed: translation.toggle,
            child: Text(
              translation.getButtonText(
                'Translate',
                'Translating...',
                'See Original',
              ),
            ),
          ),
      ],
    );
  }
}
```

## Architecture Overview

```
lib/core/translation/
├── translation.dart              # Barrel export (import this)
├── translation_service.dart      # Core ML Kit translation
├── translation_preloader.dart    # Background model downloader
├── translation_queue.dart        # Sequential task processor
├── translation_state.dart        # Freezed UI state
└── translation_bloc.dart         # BLoC for reactive UI

Features:
✅ Language detection (5 languages: en, id, ja, ko, zh)
✅ On-device translation (no internet needed after download)
✅ Model caching (reuse translators for same language pairs)
✅ Background preloading (non-blocking app startup)
✅ Queue processing (avoid overwhelming ML Kit)
✅ BLoC pattern (reactive UI with loading/error states)
✅ Dependency injection (registered in service_locator)
```

## Supported Languages

- **English** (en)
- **Indonesian** (id)
- **Japanese** (ja)
- **Korean** (ko)
- **Chinese** (zh)

The service automatically handles language code variants (e.g., `en-US`, `en-GB` → `en`).
