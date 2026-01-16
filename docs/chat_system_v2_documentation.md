# 🚀 Velora Chat System V2 Documentation

Dokumentasi ini menjelaskan struktur, logika, dan cara penggunaan sistem chat V2 yang telah dioptimasi.

## 📚 1. Struktur Database & Kegunaan Table

### Core Tables
| Table | Deskripsi & Kegunaan |
| :--- | :--- |
| **`conversations`** | Menyimpan data ruang obrolan. Kolom `last_message_at` di-index untuk sorting cepat. |
| **`conversation_members`** | Anggota chat. Menyimpan `unread_count` dan `last_read_message_id`. Digunakan untuk badge notifikasi ringan. |
| **`messages`** | Tabel utama pesan. Mendukung text, image, poll, event, dll via kolom `kind`. |
| **`message_attachments`** | Menyimpan file media (gambar/video) yang terlampir pada pesan. |
| **`message_reads`** | **(Optimized)** Menyimpan detail siapa baca pesan mana & kapan (Read Receipts / Blue Ticks). |

### Payload Tables (Fitur Khusus)
| Table | Deskripsi |
| :--- | :--- |
| **`message_poll_payload`** | Detail polling: pertanyaan, opsi multi-choice, dan **limit vote per user**. |
| **`poll_options`** | Pilihan jawaban untuk polling. |
| **`poll_votes`** | Menyimpan suara user. |
| **`message_event_payload`** | Detail event: Judul, lokasi, link meeting, status online. |
| **`event_rsvps`** | Status kehadiran user (Going, Interested, Not Going). |

---

## ⚡ 2. Strategi Optimasi & Bandwidth (IMPORTANT)

Sistem ini didesain agar **HEMAT DATA** dan **CEPAT**. Berikut aturan mainnya untuk Client/Frontend:

### A. Sistem "Read Status" (Two-Layer Strategy)
Jangan update database setiap kali pesan muncul di layar! Gunakan strategi ini:

1.  **Level 1: Badge Counter (Ringan)**  
    *   **Kapan:** Saat user **MEMBUKA** ruang chat.
    *   **Action:** Panggil `rpc.mark_conversation_read(conversation_id)`.
    *   **Efek:** Reset `unread_count` jadi 0 di tabel member. Hanya 1 request, sangat hemat.

2.  **Level 2: Blue Ticks (Detail)**  
    *   **Kapan:** Saat user **SCROLL** dan pesan lawan tampil di layar durasi sekian detik.
    *   **Action:** Kumpulkan ID pesan (misal array isi 10 ID), lalu panggil `rpc.mark_messages_read_batch([id1, id2...])`.
    *   **Efek:** Database melakukan **UPSERT** massal. Jauh lebih ringan daripada 10 request terpisah.

### B. Daftar Chat Cepat (Materialized View)
Jangan query manual ke tabel `conversations` + `members` + `users` + `messages` (berat!).
*   **Gunakan:** `rpc.get_conversation_list_optimized()`
*   **Kenapa:** Fungsi ini mengambil data dari **Materialized View** (`mv_conversation_list`) yang sudah di-cache dan di-index. Respon instan.

---

## 🗳️ 3. Fitur Polling & Event

### Polling System V2
Logic validasi sekarang ada di database, aman dari manipulasi.
*   **Buat Poll:** Insert ke `messages` (kind='poll') -> Insert ke `message_poll_payload` (set `multiple_choice`, `max_user_votes`).
*   **Vote:** Panggil `rpc.vote_poll_option(poll_message_id, option_id)`.
    *   Jika `single choice`, vote lama otomatis dihapus.
    *   Jika `multiple choice`, sistem cek apakah jumlah vote user sudah mencapai limit (`max_user_votes`). Jika sudah, akan error.

### Modern Events
Event sekarang mendukung hybrid (Online/Offline).
*   **Field Baru:** `is_online`, `meeting_url` (untuk Google Meet/Zoom), `cover_url` (gambar banner event).
*   **RSVP:** Panggil `rpc.respond_to_event(event_id, 'going' | 'interested' | 'not_going')`.

---

## 🛠️ 4. Integration Guide (Frontend)

### Mengirim Pesan
1.  **Text Only:** Insert ke `messages` (kind='text', body='Hello').
2.  **Image/File:** 
    *   Upload file ke Storage.
    *   Insert ke `messages` (kind='image', body='Caption optional').
    *   Insert ke `message_attachments` (path, bucket info).
3.  **Poll:**
    *   Insert `messages` (kind='poll').
    *   Insert `message_poll_payload` & `poll_options`.

### Menampilkan Chat List
```typescript
// JANGAN lakukan query manual yang kompleks
// LAKUKAN ini:
const { data, error } = await supabase.rpc('get_conversation_list_optimized');
```

### Menandai Dibaca (Batch)
```typescript
// Saat user scroll dan melihat pesan baru
const visibleMessageIds = ['uuid-1', 'uuid-2', 'uuid-3'];
await supabase.rpc('mark_messages_read_batch', { 
  p_message_ids: visibleMessageIds 
});
```
