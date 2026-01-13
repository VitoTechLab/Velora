# Feed Notification System

## Overview
Sistem notifikasi untuk feed feature yang terintegrasi dengan FCM notification system. Mengikuti clean architecture pattern dengan separation of concerns yang jelas.

## Architecture

```
presentation/
  └─ bloc/ (unchanged - no changes needed)

domain/
  └─ usecases/ (unchanged - notification is side effect)

data/
  ├─ services/
  │  └─ feed_notification_service.dart (NEW)
  ├─ datasources/
  │  └─ feed_remote_datasource_impl.dart (UPDATED)
  └─ repositories/
     └─ feed_repository_impl.dart (unchanged)
```

## Components

### 1. FeedNotificationService
**Location:** `lib/features/feed/data/services/feed_notification_service.dart`

Service layer untuk mengirim notifikasi terkait feed activity.

**Methods:**
- `sendPostLikeNotification()` - Notifikasi ketika ada user like postingan
- `sendPostCommentNotification()` - Notifikasi ketika ada user comment di post
- `sendCommentReplyNotification()` - Notifikasi ketika ada user reply comment
- `sendMentionNotification()` - Notifikasi ketika user di-mention

**Features:**
- ✅ Auto-skip notification jika user melakukan action ke konten sendiri
- ✅ Truncate text panjang (max 100 chars)
- ✅ Support image preview di notification
- ✅ Error handling (fire and forget - tidak break main flow)
- ✅ Logging untuk debugging

### 2. FeedRemoteDataSourceImpl (Updated)
**Location:** `lib/features/feed/data/datasources/feed_remote_datasource_impl.dart`

**Changes:**
- Inject `FeedNotificationService` via constructor
- Updated `toggleLikePost()`:
  - Fetch post details sebelum toggle untuk cek like status
  - Kirim notifikasi hanya jika **NEW like** (bukan unlike)
  - Fetch username current user untuk notification
- Updated `addComment()`:
  - Detect apakah root comment atau reply
  - Kirim notifikasi sesuai tipe (post comment vs reply)
- Added helper methods:
  - `_sendPostCommentNotification()` - Internal helper
  - `_sendCommentReplyNotification()` - Internal helper

### 3. Service Locator (Updated)
**Location:** `lib/core/di/service_locator.dart`

**Changes:**
- Register `FeedNotificationService` as singleton
- Inject notification service ke `FeedRemoteDataSourceImpl`

## Notification Flow

### Like Post Flow
```
User taps like button
  ↓
FeedBloc.toggleLikePost()
  ↓
ToggleLikePostUseCase
  ↓
FeedRepository.toggleLikePost()
  ↓
FeedRemoteDataSource.toggleLikePost()
  ↓
1. Fetch post details (check if already liked)
2. Call RPC toggle_post_like
3. If NEW like:
   - Fetch current user's username
   - Call FeedNotificationService.sendPostLikeNotification()
     ↓
     Edge Function: send-notification
     ↓
     FCM → Push Notification to post author
```

### Comment Flow
```
User adds comment
  ↓
FeedCommentBloc.addComment()
  ↓
AddCommentUseCase
  ↓
FeedRepository.addComment()
  ↓
FeedRemoteDataSource.addComment()
  ↓
1. Insert comment to database
2. Detect comment type (root or reply)
3. If root comment:
   - Call _sendPostCommentNotification()
4. If reply:
   - Call _sendCommentReplyNotification()
     ↓
     Edge Function: send-notification
     ↓
     FCM → Push Notification to relevant user
```

## Notification Types

### Post Like
```json
{
  "userId": "post_author_id",
  "type": "post_like",
  "title": "New Like",
  "body": "username liked your post",
  "data": {
    "postId": "...",
    "likerId": "...",
    "likerUsername": "...",
    "type": "post_like"
  },
  "imageUrl": "first_post_image_url",
  "priority": "normal"
}
```

### Post Comment
```json
{
  "userId": "post_author_id",
  "type": "post_comment",
  "title": "New Comment",
  "body": "username: comment text...",
  "data": {
    "postId": "...",
    "commentId": "...",
    "commenterId": "...",
    "commenterUsername": "...",
    "type": "post_comment"
  },
  "imageUrl": "first_post_image_url",
  "priority": "normal"
}
```

### Comment Reply
```json
{
  "userId": "original_commenter_id",
  "type": "comment_reply",
  "title": "New Reply",
  "body": "username replied: reply text...",
  "data": {
    "postId": "...",
    "commentId": "...",
    "replyId": "...",
    "replierId": "...",
    "replierUsername": "...",
    "type": "comment_reply"
  },
  "priority": "normal"
}
```

## Smart Notification Logic

### When NOT to Send Notification:
1. ❌ User likes their own post
2. ❌ User unlikes a post (toggle from liked → unliked)
3. ❌ User comments on their own post
4. ❌ User replies to their own comment
5. ❌ User mentions themselves

### When to Send Notification:
1. ✅ User A likes User B's post (first time)
2. ✅ User A comments on User B's post
3. ✅ User A replies to User B's comment
4. ✅ User A mentions User B in comment

## Error Handling

Semua notification operations menggunakan **fire-and-forget** pattern:
- Notification failure **tidak akan** memblokir main action (like/comment)
- Error di-log untuk debugging
- Try-catch untuk prevent app crash

```dart
try {
  await _notificationService.sendPostLikeNotification(...);
  logi('Notification sent successfully');
} catch (e) {
  loge('Failed to send notification', error: e);
  // Don't throw - notification failure shouldn't break the like action
}
```

## Testing

### Manual Testing:
1. **Test Like Notification:**
   - Login as User A
   - Create a post
   - Login as User B
   - Like User A's post
   - Check User A receives notification

2. **Test Unlike (No Notification):**
   - Like a post
   - Unlike the same post
   - Verify NO notification sent

3. **Test Comment Notification:**
   - Login as User B
   - Comment on User A's post
   - Check User A receives notification

4. **Test Reply Notification:**
   - Login as User C
   - Reply to User B's comment
   - Check User B receives notification

5. **Test Own Post (No Notification):**
   - Like your own post
   - Comment on your own post
   - Verify NO notification sent

### Edge Cases:
- ✅ Network failure during notification (doesn't break like/comment)
- ✅ Invalid user data (graceful fallback to "Someone")
- ✅ Post/comment deleted during notification (catch and ignore)
- ✅ User preferences blocking notifications (handled by edge function)

## Dependencies

### Required Services:
- ✅ Supabase Edge Function: `send-notification`
- ✅ FCM Server Key configured
- ✅ Database: `user_devices`, `notification_preferences`, `notification_history`

### Related Documentation:
- [FCM Notification Guide](../../../supabase/FCM_NOTIFICATION_GUIDE.md)
- [Notification Migration](../../../supabase/migrations/20260112000000_create_fcm_notification_system.sql)

## Performance Considerations

1. **Async Operations:**
   - Notification sent asynchronously (fire and forget)
   - Doesn't block main action (like/comment)

2. **Database Queries:**
   - Efficient queries with specific column selection
   - Only fetch what's needed (username, user_id, image_urls)

3. **Caching:**
   - Consider caching current user's username (TODO)
   - Reduce repeated queries for same data

## Future Enhancements

1. **Batch Notifications:**
   - "User A, User B, and 3 others liked your post"
   - Aggregate similar notifications

2. **Mention Detection:**
   - Auto-detect @username in comment text
   - Send mention notifications

3. **Notification Preferences:**
   - Allow users to disable specific notification types
   - Already supported by edge function

4. **Real-time Updates:**
   - Update notification badge count
   - In-app notification center

5. **Analytics:**
   - Track notification open rate
   - A/B testing notification copy

## Troubleshooting

### Notification not received:
1. Check FCM token registered: `SELECT * FROM user_devices WHERE user_id = '...'`
2. Check notification preferences: `SELECT * FROM notification_preferences WHERE user_id = '...'`
3. Check notification history: `SELECT * FROM notification_history WHERE user_id = '...' ORDER BY sent_at DESC`
4. Check edge function logs in Supabase Dashboard
5. Verify FCM_SERVER_KEY environment variable

### Notification sent but not working:
1. Check user's device notification permissions
2. Check quiet hours / DND settings
3. Check FCM token validity
4. Test with different device/platform

## Code Quality

- ✅ Follows clean architecture
- ✅ Single Responsibility Principle
- ✅ Dependency Injection
- ✅ Error handling
- ✅ Logging
- ✅ Type safety
- ✅ Null safety
- ✅ Documentation
