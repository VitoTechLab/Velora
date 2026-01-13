# FCM Notification System Documentation

## Overview
Sistem notifikasi FCM yang lengkap untuk Velora app, mendukung berbagai tipe notifikasi (chat, post, comment, dll) dengan preferensi user yang fleksibel.

## Database Schema

### Tables

#### 1. `user_devices`
Menyimpan device token FCM untuk setiap user.

**Columns:**
- `id`: UUID (PK)
- `user_id`: UUID (FK ke auth.users)
- `fcm_token`: TEXT (unique per user)
- `platform`: ENUM ('android', 'ios', 'web')
- `device_name`: TEXT (optional, nama device)
- `device_model`: TEXT (optional, model device)
- `os_version`: TEXT (optional, versi OS)
- `app_version`: TEXT (optional, versi app)
- `is_active`: BOOLEAN (default true)
- `last_seen_at`: TIMESTAMPTZ (untuk cleanup otomatis)
- `created_at`, `updated_at`: TIMESTAMPTZ

**Indexes:**
- `idx_user_devices_user_active`: user_id WHERE is_active = TRUE
- `idx_user_devices_token`: fcm_token WHERE is_active = TRUE
- `idx_user_devices_last_seen`: user_id, last_seen_at DESC

#### 2. `notification_preferences`
Pengaturan notifikasi per user.

**Columns:**
- `user_id`: UUID (PK, FK ke auth.users)
- **Chat notifications:**
  - `chat_messages`: BOOLEAN (default true)
  - `chat_group_messages`: BOOLEAN (default true)
  - `chat_mentions`: BOOLEAN (default true)
  - `chat_calls`: BOOLEAN (default true)
- **Post notifications:**
  - `post_likes`: BOOLEAN (default true)
  - `post_comments`: BOOLEAN (default true)
  - `post_mentions`: BOOLEAN (default true)
- **Comment notifications:**
  - `comment_replies`: BOOLEAN (default true)
  - `comment_likes`: BOOLEAN (default false)
- **Social notifications:**
  - `new_followers`: BOOLEAN (default true)
  - `follow_requests`: BOOLEAN (default true)
- **System:**
  - `system_updates`: BOOLEAN (default true)
- **Quiet Hours:**
  - `quiet_hours_enabled`: BOOLEAN (default false)
  - `quiet_hours_start`: TIME (e.g., '22:00')
  - `quiet_hours_end`: TIME (e.g., '08:00')
- **Do Not Disturb:**
  - `dnd_enabled`: BOOLEAN (default false)
  - `dnd_until`: TIMESTAMPTZ (DND sampai waktu tertentu)

#### 3. `notification_history`
History notifikasi yang dikirim (untuk debugging/analytics).

**Columns:**
- `id`: UUID (PK)
- `user_id`: UUID (FK ke auth.users)
- `notification_type`: ENUM (notification_type)
- `title`: TEXT
- `body`: TEXT
- `data`: JSONB (payload tambahan)
- `sent_at`: TIMESTAMPTZ
- `read_at`: TIMESTAMPTZ (nullable)
- `clicked_at`: TIMESTAMPTZ (nullable)
- `created_at`: TIMESTAMPTZ

**Indexes:**
- `idx_notification_history_user_sent`: user_id, sent_at DESC
- `idx_notification_history_user_unread`: user_id, read_at WHERE read_at IS NULL
- `idx_notification_history_type`: notification_type, sent_at DESC

### Enums

#### `device_platform`
- android
- ios
- web

#### `notification_type`
- chat_message
- post_like
- post_comment
- comment_reply
- follow
- mention
- group_invite
- call
- system

## Functions (RPC)

### 1. `register_device_token`
Register atau update FCM token untuk device.

**Parameters:**
```sql
p_fcm_token TEXT,
p_platform device_platform,
p_device_name TEXT DEFAULT NULL,
p_device_model TEXT DEFAULT NULL,
p_os_version TEXT DEFAULT NULL,
p_app_version TEXT DEFAULT NULL
```

**Returns:** UUID (device_id)

**Usage from Flutter:**
```dart
final deviceId = await supabase.rpc('register_device_token', params: {
  'p_fcm_token': fcmToken,
  'p_platform': 'android',
  'p_device_name': 'Samsung Galaxy S21',
  'p_device_model': 'SM-G991B',
  'p_os_version': 'Android 13',
  'p_app_version': '1.0.0',
});
```

### 2. `deactivate_device_token`
Nonaktifkan device token (saat logout).

**Parameters:**
```sql
p_fcm_token TEXT
```

**Usage:**
```dart
await supabase.rpc('deactivate_device_token', params: {
  'p_fcm_token': fcmToken,
});
```

### 3. `should_send_notification`
Cek apakah user harus menerima notifikasi berdasarkan preferences.

**Parameters:**
```sql
p_user_id UUID,
p_notification_type notification_type
```

**Returns:** BOOLEAN

**Logic:**
1. Check DND (Do Not Disturb)
2. Check quiet hours
3. Check specific notification type preference

### 4. `get_user_active_devices`
Get semua active devices untuk user.

**Parameters:**
```sql
p_user_id UUID
```

**Returns:** TABLE (device_id, fcm_token, platform, device_name, last_seen_at)

### 5. `cleanup_inactive_devices`
Cleanup devices yang tidak aktif (untuk maintenance).

**Returns:** INTEGER (jumlah device yang dihapus)

**Cleanup rules:**
- Hapus devices tidak terlihat > 90 hari
- Hapus devices tidak aktif > 30 hari

## Edge Functions

### 1. `send-notification` (Generic)
Function baru yang mendukung semua tipe notifikasi.

**Request Body:**
```typescript
{
  userId: string,
  type: 'chat_message' | 'post_like' | 'post_comment' | ... ,
  title: string,
  body: string,
  data?: Record<string, any>,
  imageUrl?: string,
  priority?: 'high' | 'normal'
}
```

**Response:**
```typescript
{
  success: true,
  sent: 2,      // jumlah device yang berhasil
  failed: 0,    // jumlah device yang gagal
  total: 2      // total device
}
```

**Example - Chat Message:**
```typescript
await supabase.functions.invoke('send-notification', {
  body: {
    userId: receiverId,
    type: 'chat_message',
    title: senderName,
    body: messageText,
    data: {
      conversationId: chatId,
      senderId: senderId,
      messageId: messageId
    },
    priority: 'high'
  }
})
```

**Example - Post Like:**
```typescript
await supabase.functions.invoke('send-notification', {
  body: {
    userId: postAuthorId,
    type: 'post_like',
    title: 'New Like',
    body: `${likerUsername} liked your post`,
    data: {
      postId: postId,
      likerId: likerId
    },
    imageUrl: postImageUrl,
    priority: 'normal'
  }
})
```

**Example - Comment:**
```typescript
await supabase.functions.invoke('send-notification', {
  body: {
    userId: postAuthorId,
    type: 'post_comment',
    title: 'New Comment',
    body: `${commenterUsername}: ${commentText}`,
    data: {
      postId: postId,
      commentId: commentId,
      commenterId: commenterId
    },
    imageUrl: postImageUrl,
    priority: 'normal'
  }
})
```

**Example - Follow:**
```typescript
await supabase.functions.invoke('send-notification', {
  body: {
    userId: targetUserId,
    type: 'follow',
    title: 'New Follower',
    body: `${followerUsername} started following you`,
    data: {
      followerId: followerId
    },
    imageUrl: followerAvatarUrl,
    priority: 'normal'
  }
})
```

### 2. `send-chat-notification` (Deprecated)
Function lama, masih ada untuk backward compatibility.

## Features

### 1. **Automatic Token Management**
- Auto-deactivate invalid tokens
- Cleanup old devices (>90 days)
- Handle multiple devices per user

### 2. **User Preferences**
- Per-notification-type settings
- Quiet hours support
- Do Not Disturb mode
- Cross-midnight quiet hours (e.g., 22:00 - 02:00)

### 3. **Platform-Specific**
- Android: Custom notification channels
- iOS: Badge count, sound
- Web: Basic notifications

### 4. **Notification History**
- Track sent notifications
- Mark as read/clicked
- Analytics support

### 5. **Error Handling**
- Invalid token detection
- Automatic retry with Promise.allSettled
- Graceful degradation

## Migration Steps

1. **Run Migration:**
```bash
supabase migration up
```

2. **Deploy Edge Functions:**
```bash
supabase functions deploy send-notification
```

3. **Set Environment Variables:**
```bash
# In Supabase Dashboard > Settings > Edge Functions
FCM_SERVER_KEY=your_fcm_server_key_here
```

4. **Update Flutter App:**
```dart
// Register FCM token on login
final fcmToken = await FirebaseMessaging.instance.getToken();
await supabase.rpc('register_device_token', params: {
  'p_fcm_token': fcmToken,
  'p_platform': Platform.isAndroid ? 'android' : Platform.isIOS ? 'ios' : 'web',
  'p_device_name': await DeviceInfoPlugin().deviceName,
  'p_app_version': packageInfo.version,
});

// Deactivate on logout
await supabase.rpc('deactivate_device_token', params: {
  'p_fcm_token': fcmToken,
});
```

## Database Triggers

- **send-notification** setiap ada message baru
- **Bisa ditambahkan di:**
  - `after insert on messages` untuk chat
  - `after insert on post_likes` untuk like notif
  - `after insert on comments` untuk comment notif
  - `after insert on follows` untuk follow notif

**Example Trigger:**
```sql
CREATE OR REPLACE FUNCTION notify_new_message()
RETURNS TRIGGER AS $$
BEGIN
  PERFORM net.http_post(
    url := 'https://your-project.supabase.co/functions/v1/send-notification',
    headers := '{"Authorization": "Bearer ' || current_setting('request.jwt.claim.sub') || '", "Content-Type": "application/json"}',
    body := json_build_object(
      'userId', NEW.receiver_id,
      'type', 'chat_message',
      'title', (SELECT username FROM profiles WHERE id = NEW.sender_id),
      'body', NEW.body,
      'data', json_build_object(
        'conversationId', NEW.conversation_id,
        'messageId', NEW.id
      )
    )::text
  );
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_notify_new_message
AFTER INSERT ON messages
FOR EACH ROW
EXECUTE FUNCTION notify_new_message();
```

## Security (RLS)

- Users can only see/edit their own devices
- Users can only see/edit their own preferences
- Users can only see their own notification history
- Edge functions use SERVICE_ROLE key for sending

## Performance Optimizations

1. **Indexes** on frequently queried columns
2. **Automatic cleanup** of old devices
3. **Batch sending** with Promise.allSettled
4. **Filter devices** by last_seen_at (30 days)
5. **Check preferences** before sending

## Monitoring

Monitor notification delivery:
```sql
-- Total notifications sent today
SELECT COUNT(*) 
FROM notification_history 
WHERE sent_at >= CURRENT_DATE;

-- Notification delivery rate by type
SELECT 
  notification_type,
  COUNT(*) as total_sent,
  COUNT(read_at) as total_read,
  ROUND(COUNT(read_at)::numeric / COUNT(*) * 100, 2) as read_rate
FROM notification_history
WHERE sent_at >= CURRENT_DATE - INTERVAL '7 days'
GROUP BY notification_type;

-- Active devices per platform
SELECT 
  platform,
  COUNT(*) as device_count
FROM user_devices
WHERE is_active = true
  AND last_seen_at > NOW() - INTERVAL '30 days'
GROUP BY platform;
```
