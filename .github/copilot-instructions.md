# Velora AI Coding Instructions

## Architecture Overview

Velora is a Flutter social platform with crowdfunding/donation features. It follows **Clean Architecture** with strict layer separation:

```
lib/
├── core/           # Shared infrastructure (DI, errors, network, themes, services)
├── features/       # Domain-driven feature modules
├── shared/         # Platform wrappers (android, ios, web), widgets, hooks
├── routes/         # GoRouter configuration with auth guards
├── l10n/           # ARB localization files
└── bootstrap/      # App initialization
```

### Feature Module Structure
Each feature in `lib/features/{feature}/` follows:
```
├── data/
│   ├── datasources/    # Remote/local data sources (Supabase calls)
│   ├── models/         # Data transfer objects with JSON serialization
│   ├── repositories/   # Repository implementations
│   └── mapper/         # Model <-> Entity conversions
├── domain/
│   ├── entities/       # Immutable domain models (use freezed)
│   ├── repositories/   # Abstract repository contracts
│   └── usecases/       # Single-responsibility business logic
└── presentation/
    ├── bloc/           # flutter_bloc state management
    └── screens/        # UI widgets
```

## Key Patterns & Conventions

### State Management (flutter_bloc + freezed)
- **Events**: Use `@freezed sealed class` with factory constructors:
  ```dart
  @freezed
  sealed class WalletEvent with _$WalletEvent {
    const factory WalletEvent.loadWallets({required String userId}) = LoadWalletsEvent;
  }
  ```
- **States**: Use `@freezed abstract class` with computed getters:
  ```dart
  @freezed
  abstract class WalletState with _$WalletState {
    const factory WalletState({...}) = _WalletState;
    const WalletState._();
    // Computed getters go here
    bool get canWithdraw => balance > 0 && hasBankDetails;
  }
  ```
- Use `bloc_concurrency` transformers (`droppable()`) for debouncing events like pagination.

### Dependency Injection
- All dependencies registered in `lib/core/di/service_locator.dart` using **get_it**.
- Order: SharedPreferences → Core services → Supabase client → Data sources → Repositories → Use cases → Blocs.
- Access via `getIt<T>()` or `getIt<Dio>(instanceName: 'supabaseFunctionsDio')` for named instances.

### Error Handling
- Use `dartz Either<Failure, T>` for all use case and repository returns.
- Feature-specific failures extend `Failure` (e.g., `WalletFailure`, `ChatFailure`) in `lib/core/errors/`.
- Repository pattern: wrap datasource calls in try-catch, return `Left(FeatureFailure.fromException(e))`.

### Logging
Use the short aliases from `lib/core/utils/log_alias.dart`:
```dart
logd('debug message', tag: 'MyClass');
logi('info message');
logw('warning');
loge('error', error: e, stackTrace: st);
```

### UI Patterns
- Use `HookWidget` with `flutter_hooks` for stateful logic (e.g., `useState`, `useEffect`, `useMemoized`).
- Localization via `AppLocalizations.of(context)!` (shorthand: `final t = AppLocalizations.of(context)!;`).
- Theme access: `Theme.of(context).colorScheme` for Material3 colors.
- Custom hooks in `lib/shared/hooks/` (e.g., `useTranslation` for ML-based translation).

### Navigation
- GoRouter configured in `lib/routes/app_router.dart` with auth-based redirects.
- Route paths/names defined as constants: `AppRoutePath.home`, `AppRouteName.wallet`.
- Use `context.go()`, `context.push()`, or `context.goNamed()`.

## Backend Integration

### Supabase
- Initialized in `lib/core/supabase/supabase_initializer.dart`.
- Database schema documented in `docs/DATABASE_SCHEMA.md`.
- RPCs for complex operations: `create_direct_conversation()`, `mark_conversation_read()`, etc.
- Realtime subscriptions for chat messages, feed updates, user presence.

### Edge Functions
Located in `supabase/functions/`:
- `cloudinary-sign/` - Media upload signing
- `send-notification/`, `send-chat-notification/` - FCM push notifications
- `create-payment/` - Payment processing

### Environment Variables
Loaded from `.env.local` via `flutter_dotenv`. Required keys:
- `SUPABASE_URL`, `SUPABASE_ANON_KEY`
- `GOOGLE_OAUTH_CLIENT_ID`

## Code Generation

After modifying `@freezed` classes, models with `@JsonSerializable`, or adding new dependencies:
```bash
dart run build_runner build --delete-conflicting-outputs
```

## Localization

1. Add strings to `lib/l10n/app_en.arb` (template).
2. Add translations to other ARB files (`app_id.arb`, `app_ja.arb`, `app_ko.arb`, `app_zh.arb`).
3. Regenerate with `flutter gen-l10n` (runs automatically on build).

## Testing

- Tests mirror feature structure in `test/features/{feature}/`.
- Use `mocktail` for mocking (not mockito for new tests).
- Pattern: mock repository → test use case → verify repository calls.
```dart
class _MockAuthRepository extends Mock implements AuthRepository {}
```

## Platform-Specific Code

`lib/shared/` contains platform wrappers:
- `CommonApp` in `common_app.dart` routes to `AndroidApp`, `IOSApp`, or `WebApp` based on platform.
- Each wraps `MaterialApp.router` with platform-specific bloc providers.

## Key Features Reference

| Feature | Description | Key Files |
|---------|-------------|-----------|
| auth | Supabase auth + Google OAuth | `lib/features/auth/` |
| wallet | User wallets, donations, withdrawals | `lib/features/wallet/` |
| campaign | Crowdfunding campaigns | `lib/features/campaign/` |
| chat | Real-time messaging with polls/events | `lib/features/chat/` |
| feed | Social posts with likes/comments | `lib/features/feed/` |
