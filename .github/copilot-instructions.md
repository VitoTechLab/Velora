# Copilot AI Agent Instructions for Velora

## Project Overview
- **Velora** is a modular Flutter app with a social feed, chat, campaign, and profile system, using Supabase for backend (auth, storage, realtime, RPC, triggers).
- The codebase is organized by feature: `lib/features/{feed,chat,profile,social_relation,search,navigation,...}`. Each feature has `data/`, `domain/`, and `presentation/` layers (Clean Architecture).
- State management uses BLoC (see `presentation/bloc/` in each feature).
- Navigation is handled via `go_router` with adaptive navigation (see `features/navigation/`).

## Key Architectural Patterns
- **Clean Architecture**: Each feature is split into `data` (models, datasources, repositories), `domain` (entities, usecases, repositories), and `presentation` (bloc, screens, widgets).
- **Supabase Integration**: All backend operations (auth, storage, realtime, RPC, triggers) are via Supabase. Custom RPCs and triggers are used for business logic (e.g., `accept_follow_request`, `get_conversation_list_optimized`).
- **Realtime**: Feed, chat, and presence use Supabase Realtime subscriptions for instant updates.
- **Dependency Injection**: Uses `getIt` for service location (see `core/di/service_locator.dart`).
- **Adaptive UI**: Navigation and layout adapt for mobile/desktop (see `features/navigation/presentation/`).

## Developer Workflows
- **Build/Run**: Use standard Flutter commands (`flutter run`, `flutter build`).
- **Testing**: No custom test runner found; use `flutter test`.
- **Localization**: See `lib/core/translation/README.md` for translation service usage and preloading models.
- **Profile/Privacy**: User block logic uses SQL function `is_blocked_between()`; follow/follow-request logic uses triggers and RPCs.

## Project-Specific Conventions
- **Feature-first structure**: All business logic, UI, and data for a feature are grouped together.
- **Usecases**: All domain actions are implemented as usecase classes in `domain/usecases/`.
- **BLoC**: All stateful UI logic is in BLoC classes in `presentation/bloc/`.
- **Navigation**: Tabs and navigation keys are defined in `features/navigation/`; arguments for navigation are in `features/navigation/models/`.
- **Supabase RPC/Trigger**: Many workflows depend on custom RPCs/triggers (see SQL in `/supabase/` and comments in usecases).
- **Semantic UI**: Accessibility is considered in widgets (see `profile` widgets).

## Integration Points & Examples
- **Translation**: See `lib/core/translation/README.md` for DI and usage.
- **Feed/Chat**: Usecases and BLoC in `features/feed/` and `features/chat/` show how to interact with Supabase and manage realtime updates.
- **Profile**: Block/follow logic is in `features/profile/domain/usecases/` and uses Supabase triggers/RPCs.
- **Navigation**: Adaptive navigation and tab structure in `features/navigation/presentation/`.

## External Dependencies
- **Supabase**: Auth, storage, realtime, RPC, triggers.
- **Flutter BLoC**: State management.
- **getIt**: Dependency injection.
- **go_router**: Navigation.
- **Freezed**: Data classes and unions.

## Key Files/Directories
- `lib/features/` — Main feature modules (feed, chat, profile, etc.)
- `lib/core/di/service_locator.dart` — Dependency injection setup
- `lib/core/translation/` — Translation service and docs
- `features/navigation/` — Navigation logic and adaptive UI
- `/supabase/` — SQL, triggers, and RPCs

---

> If you are an AI agent, always follow the Clean Architecture boundaries, use feature-first structure, and prefer existing usecases/BLoC patterns for new logic. Reference Supabase RPCs/triggers for backend logic. For translation/localization, see the translation README.

---

For questions or missing context, ask the user for clarification or point to the relevant feature directory for examples.
