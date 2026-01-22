# Database Schema Documentation

Dokumentasi lengkap mengenai struktur database (Supabase/PostgreSQL) untuk aplikasi Velora, berdasarkan migrasi yang telah diterapkan.

## 🗂 Tables

Berikut adalah daftar tabel berdasarkan modul fungsional:

### 👤 User & Social
- **`user_profiles`**: Data profil pengguna (username, bio, followers count, dll).
- **`user_blocks`**: Daftar blokir antarpengguna (Privacy).
- **`user_follows`**: Hubungan follow antar pengguna.
- **`user_follow_requests`**: Permintaan follow untuk akun privat.
- **`user_mutes`**: Daftar mute (menyembunyikan konten tanpa unfollow).
- **`user_restricts`**: Daftar restrict (membatasi interaksi).
- **`user_presence`**: Status online/terakhir dilihat pengguna (V2).

### 🎗️ Campaigns & Donations
- **`campaign_categories`**: Kategori kampanye (Medical, Education, dll).
- **`campaigns`**: Data utama kampanye penggalangan dana.
- **`campaign_updates`**: Berita terbaru/update dari pemilik kampanye.
- **`campaign_comments`**: Komentar pada kampanye.
- **`campaign_withdrawals`**: Permintaan pencairan dana kampanye.
- **`donations`**: Data donasi yang masuk.

### 💬 Chat System
- **`conversations`**: Metadata percakapan (grup/direct).
- **`conversation_members`**: Anggota percakapan.
- **`conversation_direct_pairs`**: Mapping unik untuk chat 1-on-1.
- **`messages`**: Pesan chat.
- **`message_attachments`**: File/media dalam pesan.
- **`message_reads`**: Status 'read' per pesan per user.
- **`message_poll_payload`**: Data polling dalam chat.
- **`poll_options`**: Opsi jawaban polling.
- **`poll_votes`**: Suara/voting user pada polling.
- **`message_event_payload`**: Data event/undangan dalam chat.
- **`event_rsvps`**: Status kehadiran user (Going, Interested, dll).

### 💰 Wallet & Finance
- **`wallets`**: Dompet digital user (Main & Campaign type).
- **`wallet_transactions`**: Riwayat transaksi keuangan (Topup, Donation, Withdrawal).

### 🔔 Notifications & System
- **`notification_preferences`**: Pengaturan notifikasi user (DND, Quiet Hours).
- **`feed_posts`**: Postingan feed sosial.
- **`feed_comments`**: Komentar feed.
- **`feed_post_shares`**: Data share postingan.

---

## ⚡ Triggers

Trigger otomatis yang berjalan di database:

| Trigger Name | Table | Fungsi / Kegunaan |
| :--- | :--- | :--- |
| `on_auth_user_created` | `auth.users` | Membuat `user_profiles` dan `wallets` (main) saat user sign up. |
| `on_auth_user_updated` | `auth.users` | Sync email dari Auth ke `user_profiles`. |
| `set_user_profiles_updated_at` | `user_profiles` | Auto-update kolom `updated_at`. |
| `on_follow_changed` | `user_follows` | Mengupdate counter `following_count` & `followers_count` di profil. |
| `on_block_created` | `user_blocks` | Menghapus follows/requests/mutes otomatis saat user diblokir. |
| `on_presence_update` | `user_presence` | Update timestamp `updated_at` saat presence disentuh. |
| `trg_on_donation_success_v2` | `donations` | Update statistik kampanye (`amount_raised`, `balance`) saat donasi sukses. |
| `trg_withdrawal_auto_approve` | `campaign_withdrawals` | (Mock) Auto-approve withdrawal & potong saldo kampanye. |
| `trigger_create_campaign_wallet`| `campaigns` | Membuat wallet tipe 'campaign' saat kampanye dibuat. |
| `trigger_create_main_wallet` | `user_profiles` | Membuat wallet tipe 'main' untuk user baru. |

---

## 🛠 Functions & RPC

Fungsi-fungsi Database (PostgreSQL Functions) dan RPC (Remote Procedure Call) yang dapat dipanggil dari sisi client (Flutter):

### Social & User
- **`calculate_age(birth_date)`**: Menghitung umur dari tanggal lahir.
- **`is_blocked_between(user_a, user_b)`**: Cek apakah ada blokir di antara dua user.
- **`can_view_user_content(target_id)`**: Cek izin melihat konten (berdasarkan Privacy & Follow).
- **`get_friend_suggestions(limit)`**: Algoritma saran teman (Mutual Friends, dll).
- **`get_mutual_friends(target_id)`**: Mendapatkan daftar teman yang sama.
- **`accept_follow_request(requester_id)`** *(RPC)*: Menerima permintaan follow (Atomic transactional).

### Chat System
- **`create_direct_conversation(other_user_id)`** *(RPC)*: Membuat atau membuka chat private yang sudah ada.
- **`get_conversation_list_optimized()`** *(RPC)*: Mengambil daftar chat lengkap dengan preview pesan terakhir & user info.
- **`mark_conversation_read(conversation_id)`** *(RPC)*: Menandai seluruh chat sebagai dibaca.
- **`mark_messages_read_batch(message_ids)`** *(RPC)*: Menandai spesifik pesan sebagai dibaca.
- **`edit_message(id, body)`** *(RPC)*: Edit pesan (validasi owner).
- **`delete_message(id)`** *(RPC)*: Hapus/soft-delete pesan.
- **`vote_poll_option(poll_id, option_id)`** *(RPC)*: Melakukan voting pada poll.
- **`respond_to_event(event_id, status)`** *(RPC)*: RSVP event chat (Going/Not Going).

### Notification Logic
- **`should_send_notification(user_id, type)`**: Cek apakah notifikasi harus dikirim berdasarkan preferensi user (DND, Quiet Hours).

---

## 🟢 User Presence (V2)

Sistem status online pengguna menggunakan pendekatan **hybrid (Realtime + Database)**.

1.  **Table**: `user_presence` (Menyimpan `last_seen_at`).
2.  **Heartbeat**: Client memanggil RPC `touch_presence()` setiap ~2 menit saat aplikasi aktif.
3.  **View**: `user_presence_view` untuk memudahkan query "Is Online" (logic threshold 2 menit).
4.  **Privacy**:
    *   User hanya bisa melihat presence orang lain jika:
    *   Tidak diblokir.
    *   Punya akses konten (Followed/Public).
    *   Target mengaktifkan setting `show_activity_status`.

---

## 📡 Realtime

Tabel-tabel berikut dikonfigurasi untuk **Supabase Realtime**, artinya perubahan data (Insert/Update/Delete) akan langsung diterima oleh aplikasi Flutter:

*   **`messages`**: Pesan baru masuk.
*   **`conversations`**: Update metadata chat.
*   **`conversation_members`**: Update unread count / membership.
*   **`poll_votes`**: Update live realtime voting.
*   **`event_rsvps`**: Update status kehadiran event.
*   **`campaigns`**: Update progress donasi secara live.
*   **`campaign_updates`**: Notifikasi update baru kampanye.
*   **`user_presence`**: Status online user lain.

---
