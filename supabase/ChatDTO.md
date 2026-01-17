# Chat Schema V2 — DTO & Architecture Guide

Dokumen ini menjelaskan **fungsi setiap tabel**, **tujuan desain**, dan **DTO apa saja yang perlu dibuat** dari schema Chat V2.  
Fokus utama: performa, skalabilitas, dan kemudahan integrasi API.

---

## 1. Gambaran Besar Arsitektur

Schema ini membangun sistem chat modern dengan fitur:

- Direct chat & group chat  
- Message dengan banyak tipe (text, image, poll, event, call)  
- Read receipt (blue ticks)  
- Unread counter per user  
- Batch read untuk efisiensi  
- Polling system  
- Event system + RSVP  
- Realtime update via Supabase Realtime  

---

## 2. Konsep DTO

DTO dibagi menjadi 4 layer utama:

1. **Request DTO** → data dari client ke server  
2. **Response DTO** → data dari server ke client  
3. **Domain DTO** → representasi bisnis  
4. **View DTO** → hasil dari VIEW / RPC

---

## 3. CORE TABLES

---

### 3.1 `conversations`

**Fungsi**  
Menyimpan metadata percakapan.

**Kenapa penting**
- Menjadi root entity dari seluruh sistem chat.
- Digunakan untuk:
  - List chat
  - Sorting berdasarkan aktivitas terakhir
  - Realtime update

**DTO**
- `ConversationDTO`
- `CreateConversationRequest`
- `ConversationListItemDTO`

---

### 3.2 `conversation_members`

**Fungsi**  
Relasi user dengan conversation.

**Tujuan desain**
- Mengatur:
  - Role user (member/admin/owner)
  - Status mute
  - Join/leave
  - Unread count

**Kenapa ada `unread_count` di sini?**
Supaya:
- Tidak perlu hitung ulang dari `messages`
- List chat jadi super cepat

**DTO**
- `ConversationMemberDTO`
- `UpdateMemberSettingsDTO`
- `UnreadSummaryDTO`

---

### 3.3 `conversation_direct_pairs`

**Fungsi**  
Optimasi lookup direct chat.

**Masalah yang diselesaikan**
Tanpa tabel ini:
- Setiap buka chat harus scan seluruh conversations

Dengan tabel ini:
- Langsung ketemu conversation antara 2 user
- O(1) lookup

**DTO**
- Tidak perlu DTO publik  
- Digunakan internal oleh RPC `create_direct_conversation`

---

## 4. MESSAGE SYSTEM

---

### 4.1 `messages`

**Fungsi**
Menyimpan semua pesan.

**Desain penting**
- `kind` → polymorphic message
- `reply_to_message_id` → threading
- `deleted_at` → soft delete

**DTO**
- `MessageDTO`
- `SendMessageRequest`
- `EditMessageRequest`
- `DeleteMessageRequest`

---

### 4.2 `message_attachments`

**Fungsi**
Menyimpan metadata file.

**Kenapa dipisah?**
- Message tetap ringan
- Attachment bisa banyak per message

**DTO**
- `AttachmentDTO`
- `UploadAttachmentRequest`

---

## 5. READ RECEIPT SYSTEM

---

### 5.1 `message_reads`

**Fungsi**
Menyimpan siapa membaca pesan apa.

**Tujuan**
- Blue ticks
- Read by X users

---

### 5.2 Batch Read (RPC)

#### `mark_messages_read_batch(message_ids[])`

**Masalah yang diselesaikan**
Kalau update satu-satu:
- Banyak query
- Boros bandwidth
- Lambat di mobile

**Dengan batch**
- Sekali kirim array
- Sekali eksekusi
- Lebih hemat baterai & data

**DTO**
- `BatchReadRequest`
- `BatchReadResultDTO`

---

## 6. PAYLOAD SYSTEM (POLYMORPHIC MESSAGE)

---

### 6.1 Call Payload

`message_call_payload`

**Tujuan**
- Simpan metadata call
- Tracking:
  - started
  - ended
  - missed

**DTO**
- `CallPayloadDTO`

---

### 6.2 Poll System

#### `message_poll_payload`
#### `poll_options`
#### `poll_votes`

**Tujuan desain**
- Poll adalah message khusus
- Logic vote di DB supaya:
  - Aman dari race condition
  - Tidak bisa double vote

**Kenapa ada RPC vote?**
Supaya:
- Validasi max vote
- Validasi multiple choice
- Semua konsisten

**DTO**
- `PollDTO`
- `PollOptionDTO`
- `VotePollRequest`
- `PollResultDTO`

---

### 6.3 Event System

#### `message_event_payload`
#### `event_rsvps`

**Tujuan**
Membuat event langsung dari chat.

**Use case**
- Meeting
- Gathering
- Webinar

**Kenapa RSVP di table terpisah?**
Supaya:
- Bisa agregasi cepat
- Bisa hitung going/interested/not_going

**DTO**
- `EventDTO`
- `EventRSVPDTO`
- `RespondEventRequest`

---

## 7. VIEW LAYER (OPTIMIZED QUERY)

---

### 7.1 `v_conversation_list_optimized`

**Tujuan**
Menyediakan:
- List chat siap pakai UI
- Tanpa join berat di backend

**Sudah include**
- Other user info
- Last message preview
- Unread count

**DTO**
- `ConversationListItemDTO`

---

### 7.2 `v_poll_options_with_votes`

**Tujuan**
- Ambil hasil poll + status user

**DTO**
- `PollOptionResultDTO`

---

### 7.3 `v_event_with_rsvp`

**Tujuan**
- Ringkasan RSVP event

**DTO**
- `EventSummaryDTO`

---

## 8. RPC FUNCTIONS & DTO

---

### `create_direct_conversation`
**DTO**
- `CreateDirectConversationRequest`
- `CreateConversationResponse`

---

### `mark_conversation_read`
**DTO**
- `MarkConversationReadRequest`

---

### `mark_messages_read_batch`
**DTO**
- `BatchReadRequest`
- `BatchReadResponse`

---

### `get_conversation_list_optimized`
**DTO**
- `ConversationListItemDTO`

---

### `vote_poll_option`
**DTO**
- `VotePollRequest`

---

### `respond_to_event`
**DTO**
- `RespondEventRequest`

---

## 9. DTO MAPPING SUMMARY

| Table / View | DTO |
|-------------|-----|
conversations | ConversationDTO  
conversation_members | ConversationMemberDTO  
messages | MessageDTO  
message_attachments | AttachmentDTO  
message_reads | MessageReadDTO  
message_call_payload | CallPayloadDTO  
message_poll_payload | PollDTO  
poll_options | PollOptionDTO  
poll_votes | PollVoteDTO  
message_event_payload | EventDTO  
event_rsvps | EventRSVPDTO  
v_conversation_list_optimized | ConversationListItemDTO  
v_poll_options_with_votes | PollOptionResultDTO  
v_event_with_rsvp | EventSummaryDTO  

---

## 10. Alur Data Penting

---

### A. Kirim Pesan

1. Client → `SendMessageRequest`
2. Insert ke `messages`
3. Trigger:
   - Update `conversations.last_message`
   - Increment `conversation_members.unread_count`
4. Realtime push ke client lain

---

### B. User Buka Chat

1. Client call `mark_conversation_read`
2. Server:
   - Reset unread_count
   - Update last_read_message_id

---

### C. Scroll Message (Batch Read)

1. Client kumpulkan message IDs
2. Call `mark_messages_read_batch`
3. Server insert ke `message_reads`
4. Blue ticks update realtime

---

### D. Vote Poll

1. Client kirim `VotePollRequest`
2. RPC validasi:
   - Max vote
   - Multiple choice
3. Insert ke `poll_votes`
4. View `v_poll_options_with_votes` auto update

---

### E. RSVP Event

1. Client kirim `RespondEventRequest`
2. Upsert ke `event_rsvps`
3. View `v_event_with_rsvp` update

---

## 11. Kenapa Schema Ini Kuat

- **Scalable**
  - Batch read
  - Optimized views
- **Consistent**
  - Logic di RPC, bukan di client
- **Realtime-ready**
  - Supabase Realtime integration
- **Future proof**
  - Payload system → mudah tambah jenis message baru

---


---

## 12. Kesimpulan

Schema ini bukan sekadar chat schema biasa.  
Ini adalah **event-driven communication platform** dengan:

- Chat
- Polling
- Event management
- Read tracking
- Realtime system

DTO harus mencerminkan:
- **Tujuan bisnis**
- **Efisiensi data**
- **Keamanan (RLS + RPC)**

Kalau kamu konsisten ikuti mapping DTO ini, backend & frontend akan:
- Lebih rapi
- Lebih scalable
- Lebih gampang dikembangkan ke fitur lanjutan.


import 'package:flutter/material.dart';

class MaterialColorsCustom {
  /// Core brand palette tuned for a clean, modern campaign identity.
  static const Color brandEmerald = Color(0xFF1F6F5C);
  static const Color brandSeafoam = Color(0xFF4CC4A7);
  static const Color brandCoral = Color(0xFFFF8A63);
  static const Color brandIndigo = Color(0xFF415371);
  static const Color brandSky = Color(0xFFBBDDF6);

  /// Neon/Vibrant palette for dark theme auth screens
  static const Color neonViolet = Color(0xFF6366F1);
  static const Color neonPurple = Color(0xFF8B5CF6);
  static const Color neonMagenta = Color(0xFFA855F7);
  static const Color neonIndigo = Color(0xFF818CF8);
  static const Color neonLavender = Color(0xFFC084FC);
  static const Color neonCyan = Color(0xFF06B6D4);
  static const Color neonTeal = Color(0xFF22D3EE);
  static const Color neonRose = Color(0xFFEC4899);
  static const Color neonPink = Color(0xFFF472B6);
  static const Color neonLightPurple = Color(0xFFA78BFA);
  static const Color neonLilac = Color(0xFFC4B5FD);

  /// Dark gradient backgrounds for auth
  static const Color darkNavy1 = Color(0xFF1a1a2e);
  static const Color darkNavy2 = Color(0xFF16213e);
  static const Color darkNavy3 = Color(0xFF0f3460);
  static const Color darkNavy4 = Color(0xFF533483);

  /// Legacy aliases kept for backward compatibility with older widgets.
  static const Color primaryYellow = brandEmerald;
  static const Color accentYellow = brandSeafoam;
  static const Color brandBlue = Color(0xFF4AA3F2);
  static const Color brandBlueSoft = brandSky;
  static const Color brandRed = Color(0xFFEB6A64);
  static const Color brandGreen = Color(0xFF2BB673);
  static const Color brandOrange = brandCoral;
  static const Color black = Color(0xFF0B1A24);
  static const Color white = Colors.white;

  // Neutral palette
  static const Color mist = Color(0xFFF5F7FA);
  static const Color slate = Color(0xFF5A6B7B);
  static const Color deepNavy = Color(0xFF0C1826);
  static const Color dusk = Color(0xFF152534);
  static const Color greyLightBorder = Color(0xFFD7E0E8);
  static const Color greyLightContainer = mist;
  static const Color greyMedium = slate;
  static const Color greyDarkBorder = Color(0xFF253549);

  static const Color arrowIndicatorLight = Color(0xFF6F7D8C);
  static const Color arrowIndicatorDark = Color(0xFF9EB4C5);

  // Light Mode
  static const Color lightBackground = mist;
  static const Color lightCard = white;
  static const Color lightAppBarBackground = white;
  static const Color lightTextPrimary = Color(0xFF0F2534);
  static const Color lightTextSecondary = Color(0xFF5C6C7D);
  static const Color lightIcon = lightTextPrimary;
  static const Color lightOutline = greyLightBorder;
  static const Color lightHighlightIcon = brandSeafoam;
  static const Color lightIconBackground = Color(0xFFE4F4F0);
  static const Color lightElevatedButtonText = white;
  static const Color lightNavigationBarBackground = white;
  static const Color lightButtonBackground = brandEmerald;
  static const Color lightButtonText = white;
  static const Color lightButtonOutline = brandSeafoam;
  static const Color lightContainerDoftBlue = Color(0xFFE2F0FF);
  static const Color lightArrowIndicator = arrowIndicatorLight;
  static const Color lightContainerBorder = Color(0xFFD2DCE5);

  // Dark Mode - Enhanced with neon colors
  static const Color darkBackground = darkNavy1;
  static const Color darkCard = Color(0xFF0F1F2D);
  static const Color darkSurface = dusk;
  static const Color darkTextPrimary = Color(0xFFE6EDF3);
  static const Color darkTextSecondary = Color(0xFFA4B5C4);
  static const Color darkIcon = darkTextPrimary;
  static const Color darkOutline = greyDarkBorder;
  static const Color darkHighlightIcon = neonIndigo;
  static const Color darkIconBackground = Color(0xFF113B38);
  static const Color darkElevatedButtonText = white;
  static const Color darkNavigationBarBackground = Color(0xFF081723);
  static const Color darkButtonBackground = neonViolet;
  static const Color darkButtonText = white;
  static const Color darkButtonOutline = neonIndigo;
  static const Color darkContainerDoftBlue = Color(0xFF10263D);
  static const Color darkArrowIndicator = arrowIndicatorDark;
  static const Color darkContainerBorder = Color(0xFF223446);

  // Status Colors
  static const Color error = brandRed;
  static const Color success = brandGreen;
  static const Color warning = Color(0xFFF6B756);
  static const Color info = brandBlue;

  // Miscellaneous
  static const Color shadowColor = Color(0x140C1A2C);
}
