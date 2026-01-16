# AI INTEGRATION SPECIFICATION: Flutter Chat & Supabase Backend

## 🎯 OBJECTIVE
Refactor the following Flutter files to fully integrate with the Supabase PostgreSQL schema. The implementation must handle different message kinds (Text, Poll, Event) and fix existing UI logic errors.

## 🗄️ DATABASE SCHEMA REFERENCE
Based on the provided SQL, use these table relationships:
- **Table `messages`**: The core table. 
  - `id` (UUID), `kind` (ENUM: 'text', 'poll', 'event', etc.), `body` (TEXT), `deleted_at` (TIMESTAMPTZ).
- **Table `message_poll_payload`**: Linked by `message_id`.
- **Table `poll_options`**: Linked by `poll_message_id`.
- **Table `message_event_payload`**: Linked by `message_id`.

---

## 🛠️ TASKS & LOGIC REQUIREMENTS

### 1. Fix `chat_bubble_widget.dart` Logic
- **Issue**: Currently displays "Message was deleted" for active messages.
- **Fix**: 
  - IF `deleted_at == null` -> Render the actual content (body/poll/event).
  - IF `deleted_at != null` -> Render "Message was deleted" UI.
- **Positioning**: 
  - Align **Right** if `sender_id == auth.uid()`.
  - Align **Left** if `sender_id != auth.uid()`.

### 2. Poll Submission Integration (`create_poll_dialog.dart`)
Implement a sequential insert (Transaction-like) in Supabase:
1. Insert record into `messages` table (`kind: 'poll'`, `body: [Question]`).
2. Capture the returned `id` as `message_id`.
3. Insert into `message_poll_payload` (`message_id`, `question`, `multiple_choice`).
4. Loop and insert into `poll_options` (`poll_message_id` from Step 2, `text`, `position`).
- **UX**: Show `CircularProgressIndicator` during submission and `Navigator.pop()` on success.

### 3. Event Submission Integration (`create_event_dialog.dart`)
1. Insert record into `messages` table (`kind: 'event'`, `body: [Title]`).
2. Insert into `message_event_payload` using the `message_id`.
   - Fields: `title`, `location`, `starts_at` (ISO8601), `ends_at`, `notes`.

### 4. Dynamic Rendering in `chat_detail_screen.dart`
Refactor the `ListView.builder` to handle polymorphic UI based on `message.kind`:
- **CASE 'text'**: Use updated `ChatBubbleWidget`.
- **CASE 'poll'**: Render a **PollViewWidget** that displays options. Implement voting logic by inserting into `poll_votes`.
- **CASE 'event'**: Render an **EventCardWidget** with RSVP functionality (inserting into `event_rsvps`).
- **Data Fetching**: Use `.select('*, message_poll_payload(*, poll_options(*)), message_event_payload(*)')` to fetch all necessary data in one go.

---

## ⚠️ TECHNICAL CONSTRAINTS
- Language: Dart (Flutter).
- Backend: `supabase_flutter`.
- State Management: Ensure reactivity (Realtime is enabled on the `messages` table).
- Error Handling: Wrap all Supabase calls in `try-catch` blocks and show `SnackBar` on failure.

---
**INSTRUCTION**: Use the provided `.dart` files as the base and apply these changes strictly following the SQL schema provided.