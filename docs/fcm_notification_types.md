# Firebase Cloud Messaging - Notification Types

## Overview
Aplikasi Velora menggunakan notification preferences yang dapat dikonfigurasi user. Setiap FCM notification harus menyertakan field `type` pada data payload agar dapat difilter sesuai user preferences.

## Notification Payload Format

```json
{
  "notification": {
    "title": "Notification Title",
    "body": "Notification Body"
  },
  "data": {
    "type": "like",
    "postId": "123",
    "userId": "456"
  }
}
```

## Supported Notification Types

### Posts & Stories
| Type | Description | Key |
|------|-------------|-----|
| `post` | New post from followed user | `notification_posts_stories` |
| `story` | New story from followed user | `notification_posts_stories` |
| `live` or `live_video` | User started live video | `notification_live_videos` |
| `campaign` | New campaign created | `notification_new_campaigns` |

### Engagement
| Type | Description | Key |
|------|-------------|-----|
| `like` | Someone liked your post | `notification_likes_posts` |
| `comment` or `reply` | Someone replied to your comment | `notification_comment_replies` |
| `mention` | Someone mentioned you | `notification_mentions` |
| `follow` or `follower` | Someone followed you | `notification_new_followers` |

### Donations & Campaigns
| Type | Description | Key |
|------|-------------|-----|
| `donation` | Received donation | `notification_donation_received` |
| `milestone` | Campaign reached milestone | `notification_campaign_milestone` |
| `campaign_update` | Campaign update posted | `notification_campaign_updates` |
| `withdrawal` | Withdrawal status changed | `notification_withdrawal_status` |

### Messages
| Type | Description | Key |
|------|-------------|-----|
| `message` or `chat` | New direct message | `notification_direct_messages` |
| `message_request` | New message request | `notification_message_requests` |
| `group_invite` | Group chat invitation | `notification_group_invites` |

## Global Settings

### Pause All
- Key: `notification_pause_all`
- When enabled: **All notifications are blocked**

### Sleep Mode
- Key: `notification_sleep_mode`
- Start Time Key: `notification_sleep_start` (minutes since midnight)
- End Time Key: `notification_sleep_end` (minutes since midnight)
- When enabled and current time is within sleep period: **All notifications are blocked**

## Example Usage

### Like Notification
```json
{
  "notification": {
    "title": "New Like",
    "body": "John liked your post"
  },
  "data": {
    "type": "like",
    "postId": "post_123",
    "userId": "user_456",
    "username": "john_doe"
  }
}
```

### Campaign Donation
```json
{
  "notification": {
    "title": "New Donation",
    "body": "You received a donation of $50"
  },
  "data": {
    "type": "donation",
    "campaignId": "campaign_789",
    "amount": "50",
    "donorId": "user_999"
  }
}
```

### Direct Message
```json
{
  "notification": {
    "title": "Sarah",
    "body": "Hey, how are you?"
  },
  "data": {
    "type": "message",
    "chatId": "chat_111",
    "senderId": "user_222",
    "messageId": "msg_333"
  }
}
```

## Implementation Notes

1. **Always include `type` field** in data payload
2. If `type` is not recognized or missing, notification will be shown (default behavior)
3. Type strings are case-insensitive
4. User preferences are checked in this order:
   - Pause All → Sleep Mode → Specific Type Setting
5. All preferences are stored locally in SharedPreferences

## Backend Integration

When sending FCM notifications from backend, ensure:
1. Include appropriate `type` field based on notification category
2. Type should match one of the supported types above
3. Consider batching notifications if user has many pending
4. Handle token refresh and invalid tokens appropriately
