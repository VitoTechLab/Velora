# Notification System - Implementation Guide

## ✅ FIXED ISSUES

### 1. **RPC Function Name**
- ❌ Was: `getNotificationsPage`
- ✅ Now: `get_notifications`

### 2. **Enum Types Fixed**
**NotificationType:**
- ✅ `like` - User A likes User B's post
- ✅ `comment` - User A comments on User B's post
- ✅ `follow` - User A follows User B
- ✅ `follow_request` - User A requests to follow private User B
- ✅ `follow_accepted` - User B accepts User A's follow request
- ✅ `donation` - User A donates to User B's campaign
- ✅ `mention` - User A mentions User B

**NotificationTargetType:**
- ✅ `post`
- ✅ `comment`
- ✅ `campaign`
- ✅ `user`

### 3. **Time Categorization**
SQL tidak return `time_category` lagi. Sekarang di-calculate di client:

```dart
// Entity method
final category = notification.getTimeCategory(); // 'last_7_days', 'last_30_days', 'older'

// Or use boolean helpers
if (notification.isLast7Days) { ... }
if (notification.isLast30Days) { ... }
if (notification.isOlder) { ... }
```

## 📱 HOW TO USE IN UI

### **Group Notifications by Time**
```dart
import 'package:velora/features/notification/presentation/utils/notification_group_helper.dart';

// In your widget
Widget build(BuildContext context) {
  final notifications = state.notifications;
  
  // Group by time category
  final grouped = NotificationGroupHelper.groupByTimeCategory(notifications);
  
  return ListView(
    children: [
      // Show Follow Requests section first (always at top)
      if (hasFollowRequests) ...[
        _buildFollowRequestsSection(),
        SizedBox(height: 16),
      ],
      
      // Show time-based sections ONLY if they have notifications
      ...NotificationGroupHelper.getOrderedCategories().map((category) {
        if (!NotificationGroupHelper.shouldShowSection(grouped, category)) {
          return SizedBox.shrink(); // Don't show empty sections
        }
        
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                NotificationGroupHelper.getSectionTitle(category),
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            ...grouped[category]!.map((notification) {
              return NotificationCard(notification: notification);
            }),
          ],
        );
      }),
    ],
  );
}
```

## 🎯 NOTIFICATION USE CASES

### **1. Like Notification**
```dart
// Trigger: User A likes User B's post
// SQL automatically creates/updates notification via trigger

// Grouping:
// - First like: "user_a liked your post"
// - More likes: "user_a and 5 others liked your post"
// - group_key: "post:POST_ID:like"

// Display in UI:
if (notification.type == NotificationType.like) {
  if (notification.isGrouped) {
    // "user_a and ${notification.additionalActors} others liked your post"
  } else {
    // "user_a liked your post"
  }
}
```

### **2. Comment Notification**
```dart
// Trigger: User A comments on User B's post
// Each comment creates separate notification (NOT grouped)

if (notification.type == NotificationType.comment) {
  // "user_a commented: ${commentPreview}"
}
```

### **3. Follow Notification**
```dart
// Trigger: User A follows User B (public account)
// SQL creates notification immediately

if (notification.type == NotificationType.follow) {
  // "user_a started following you"
}
```

### **4. Follow Request (Private Account)**
```dart
// Trigger: User A tries to follow private User B
// SQL creates follow_request notification

if (notification.type == NotificationType.followRequest) {
  // Show in special "Follow Requests" section at top
  // "user_a requested to follow you"
  // Show Accept/Decline buttons
}
```

### **5. Follow Accepted**
```dart
// Trigger: User B accepts User A's follow request
// SQL creates notification for User A

if (notification.type == NotificationType.followAccepted) {
  // "user_b accepted your follow request"
}
```

## 🔥 REALTIME UPDATES

```dart
// In your screen/widget initState:
context.read<NotificationBloc>().add(
  const NotificationEvent.startWatching(),
);

// In dispose:
context.read<NotificationBloc>().add(
  const NotificationEvent.stopWatching(),
);

// When new notification arrives, bloc automatically:
// 1. Refreshes notification list
// 2. Updates unread count
```

## 📊 CURSOR PAGINATION

```dart
// Load initial
bloc.add(NotificationEvent.loadInitial(limit: 20));

// Load more (infinite scroll)
if (scrolledToBottom && state.hasMore) {
  bloc.add(NotificationEvent.loadMore(limit: 20));
}

// Refresh (pull to refresh)
bloc.add(NotificationEvent.refresh());
```

## ⚡ MARK AS READ

```dart
// Mark single notification as read
bloc.add(NotificationEvent.markAsRead(notificationId));

// Mark all as read
bloc.add(NotificationEvent.markAllAsRead());

// Load unread count (for badge)
bloc.add(NotificationEvent.loadUnreadCount());
```

## 🎨 UI EXAMPLE

```dart
Widget _buildNotificationCard(NotificationEntity notification) {
  return ListTile(
    leading: CircleAvatar(
      backgroundImage: notification.actorPhotoUrl != null
          ? NetworkImage(notification.actorPhotoUrl!)
          : null,
    ),
    title: Text(_getNotificationTitle(notification)),
    subtitle: Text(_getTimeAgo(notification.createdAt)),
    trailing: notification.targetPreviewUrl != null
        ? Image.network(notification.targetPreviewUrl!, width: 50, height: 50)
        : null,
    tileColor: notification.isRead ? null : Colors.blue.withOpacity(0.1),
    onTap: () => _handleNotificationTap(notification),
  );
}

String _getNotificationTitle(NotificationEntity notification) {
  final actor = notification.actorUsername ?? 'Someone';
  
  switch (notification.type) {
    case NotificationType.like:
      if (notification.isGrouped) {
        return '$actor and ${notification.additionalActors} others liked your post';
      }
      return '$actor liked your post';
      
    case NotificationType.comment:
      return '$actor commented on your post';
      
    case NotificationType.follow:
      return '$actor started following you';
      
    case NotificationType.followRequest:
      return '$actor requested to follow you';
      
    case NotificationType.followAccepted:
      return '$actor accepted your follow request';
      
    case NotificationType.donation:
      return '$actor donated to your campaign';
      
    case NotificationType.mention:
      return '$actor mentioned you';
      
    default:
      return 'New notification';
  }
}
```

## 🚀 SUMMARY

✅ All enums match SQL schema
✅ RPC function names correct
✅ Time categorization handled in client
✅ Grouping logic preserved (group_key + group_count)
✅ Only show sections with notifications
✅ Realtime updates work
✅ Cursor pagination works
✅ Follow request flow supported

**SQL Triggers automatically handle:**
- ✅ Like → create/update notification with grouping
- ✅ Unlike → decrease group_count or delete
- ✅ Comment → create notification
- ✅ Follow → create notification
- ✅ Follow Request → create notification
- ✅ Follow Accept → create notification for requester
