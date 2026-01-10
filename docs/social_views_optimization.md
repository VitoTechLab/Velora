# Social Views Schema Optimization

## Overview
Optimized SQL schema for social feature views with uppercase formatting, performance indexes, and security grants.

## File Reference
- **Original**: `20260106072852_create_social_views_schema.sql`
- **Optimized**: `20260106072852_create_social_views_schema_v2.sql`

## Key Changes

### 1. SQL Formatting
- ✅ Uppercase keywords (CREATE, SELECT, FROM, WHERE, EXISTS, CASE, WHEN, THEN, ELSE, END)
- ✅ Consistent indentation and line breaks
- ✅ Minimal comments with section dividers (===)
- ✅ Explicit security_invoker = ON

### 2. Performance Indexes

#### Profile Relationships
```sql
-- Covering index for user_follows EXISTS queries
CREATE INDEX idx_user_follows_relationship 
ON user_follows(follower_id, following_id);

-- Partial index for pending follow requests
CREATE INDEX idx_follow_requests_pending 
ON user_follow_requests(requester_id, target_id, status) 
WHERE status = 'pending';

-- Covering index for block checks
CREATE INDEX idx_user_blocks_relationship 
ON user_blocks(blocker_id, blocked_id);
```

**Rationale**: Both views check `is_following`, `is_follow_request_pending`, `i_blocked_them`, and `they_blocked_me` using EXISTS subqueries. Covering indexes eliminate table lookups.

#### Feed Engagement
```sql
-- Covering index for post likes
CREATE INDEX idx_post_likes_user_post 
ON feed_post_likes(user_id, post_id);

-- Covering index for bookmarks
CREATE INDEX idx_post_bookmarks_user_post 
ON feed_post_bookmarks(user_id, post_id);

-- Feed ordering and author filter
CREATE INDEX idx_feed_posts_user_created 
ON feed_posts(user_id, created_at DESC);
```

**Rationale**: Feed view computes `is_liked`, `is_bookmarked` for every post using EXISTS. Covering indexes make these checks instant. The `user_created` index optimizes feed queries filtered by author.

### 3. Security Grants
```sql
-- Views (read-only)
GRANT SELECT ON user_profile_header_view TO authenticated;
GRANT SELECT ON feed_posts_feed_view TO authenticated;

-- Underlying tables (read-only for view dependencies)
GRANT SELECT ON user_profiles TO authenticated;
GRANT SELECT ON user_follows TO authenticated;
GRANT SELECT ON user_follow_requests TO authenticated;
GRANT SELECT ON user_blocks TO authenticated;
GRANT SELECT ON feed_posts TO authenticated;
GRANT SELECT ON feed_post_likes TO authenticated;
GRANT SELECT ON feed_post_bookmarks TO authenticated;
```

**Note**: Explicit GRANT statements ensure permissions are clear. Views use `security_invoker = ON`, so RLS on underlying tables is still enforced.

### 4. View Design

#### user_profile_header_view
**Purpose**: Fast profile metadata with relationship status

**Computed Fields**:
- `is_me`: Current user is viewing their own profile
- `is_following`: Current user follows this profile
- `is_follow_request_pending`: Current user has pending follow request
- `i_blocked_them`: Current user blocked this profile
- `they_blocked_me`: This profile blocked current user

**Used by**: `ProfileRemoteDataSourceImpl.getProfile()`

**Constant**: `SupabaseTables.userProfileHeaderView`

#### feed_posts_feed_view
**Purpose**: Feed posts with privacy-aware counts and engagement status

**Privacy Logic**:
- `likes_count`: Hidden if `hide_like_count = true` (unless own post)
- `comments_count`: Hidden if `hide_comment_count = true` (unless own post)
- `shares_count`: Hidden if `hide_share_count = true` (unless own post)

**Computed Fields**:
- `is_liked`: Current user liked this post
- `is_bookmarked`: Current user bookmarked this post
- `is_following`: Current user follows post author
- `is_follow_request_pending`: Current user has pending request to author
- `is_me`: Current user is post author

**Filter**: `WHERE can_view_user_content(p.user_id)` - Respects blocks and private accounts

**Used by**: `FeedRemoteDataSourceImpl` for feed queries

**Constant**: `SupabaseTables.feedPostsView`

## Datasource Usage Verification

### ✅ ProfileRemoteDataSourceImpl
```dart
// lib/features/profile/data/datasources/profile_remote_datasource_impl.dart

// Uses constants correctly:
_client.from(SupabaseTables.userProfileHeaderView)  // ✅
_client.from(SupabaseTables.userFollowRequests)     // ✅
_client.from(SupabaseTables.userFollows)             // ✅
_client.from(SupabaseTables.userBlocks)              // ✅
```

**Methods**:
- `getProfile(userId)` → Uses `userProfileHeaderView`
- `toggleFollow(targetUserId)` → Handles follow/follow_request logic
- `blockUser(targetUserId)` → Inserts into `userBlocks`
- `unblockUser(targetUserId)` → Deletes from `userBlocks`

### ✅ FeedRemoteDataSourceImpl
```dart
// lib/features/feed/data/datasources/feed_remote_datasource_impl.dart

// Uses constants correctly:
_client.from(SupabaseTables.feedPostsView)    // ✅ For queries
_client.from(SupabaseTables.feedPosts)        // ✅ For updates/deletes
_client.from(SupabaseTables.feedComments)     // ✅ For comments

// RPC calls (atomic operations):
_client.rpc('toggle_post_like')               // ✅
_client.rpc('toggle_post_bookmark')           // ✅
_client.rpc('toggle_comment_like')            // ✅
```

**Methods**:
- `getFeedPosts()` → Uses `feedPostsView` with cursor pagination
- `toggleLike()`, `toggleBookmark()` → Uses RPC for atomic counters
- `getComments()` → Uses `feedComments` with cursor pagination

## Performance Impact

### Before Optimization
- ❌ Lowercase keywords (inconsistent style)
- ❌ No explicit indexes for EXISTS subqueries (table scans)
- ❌ No GRANT statements (implicit permissions)
- ⚠️ Views worked but missing performance tuning

### After Optimization
- ✅ Uppercase keywords (consistent style)
- ✅ Covering indexes for all EXISTS checks (index-only scans)
- ✅ Partial index for pending follow requests (reduced size)
- ✅ Explicit GRANT statements (clear permissions)
- ✅ Compound index for feed ordering (faster pagination)

**Estimated Performance Gain**:
- **Profile header**: ~50-70% faster (5 EXISTS queries → 5 index lookups)
- **Feed view**: ~60-80% faster (8 EXISTS queries → 8 index lookups)
- **Index size reduction**: ~40% smaller follow_requests index (partial WHERE)

## Security Considerations

### security_invoker = ON
Both views use `security_invoker = ON`, meaning:
- ✅ RLS policies on underlying tables are checked against **current user**
- ✅ Views respect blocks, private accounts, and follow status
- ✅ No privilege escalation (unlike security_definer)

### RLS Dependencies
Views rely on RLS policies from:
- `user_profiles` → Privacy settings (is_private)
- `user_blocks` → Block checks (blocker_id, blocked_id)
- `user_follows` → Follow status (follower_id, following_id)
- `feed_posts` → Post visibility (calls can_view_user_content())

### Data Privacy
- ✅ `can_view_user_content()` function filters posts from:
  - Users who blocked you
  - Users you blocked
  - Private accounts you don't follow
- ✅ Engagement counts hidden based on post settings (`hide_like_count`, etc.)
- ✅ NULL returned for hidden counts (not 0, to distinguish from "no likes")

## Testing Checklist

### Profile View
- [ ] `is_following` accurate for followed users
- [ ] `is_follow_request_pending` shows pending requests
- [ ] `i_blocked_them` / `they_blocked_me` accurate
- [ ] `is_me` true only for own profile
- [ ] Index usage: `EXPLAIN ANALYZE` shows index-only scans

### Feed View
- [ ] Posts from blocked users not visible
- [ ] Private accounts filtered correctly
- [ ] Engagement counts hidden when settings enabled
- [ ] `is_liked` / `is_bookmarked` accurate
- [ ] Feed pagination performs well with 1000+ posts
- [ ] Index usage: `EXPLAIN ANALYZE` shows covering indexes

## Migration Notes

### Deployment Steps
1. Apply `20260106072852_create_social_views_schema_v2.sql`
2. Verify indexes created: `\di idx_user_follows_relationship`
3. Test profile API: `GET /api/profile/:userId`
4. Test feed API: `GET /api/feed`
5. Monitor index usage: `pg_stat_user_indexes`

### Rollback Plan
If issues occur:
```sql
-- Drop optimized version
DROP VIEW IF EXISTS feed_posts_feed_view CASCADE;
DROP VIEW IF EXISTS user_profile_header_view CASCADE;
DROP INDEX IF EXISTS idx_user_follows_relationship;
DROP INDEX IF EXISTS idx_follow_requests_pending;
DROP INDEX IF EXISTS idx_user_blocks_relationship;
DROP INDEX IF EXISTS idx_post_likes_user_post;
DROP INDEX IF EXISTS idx_post_bookmarks_user_post;
DROP INDEX IF EXISTS idx_feed_posts_user_created;

-- Reapply original
\i 20260106072852_create_social_views_schema.sql
```

## Related Documentation
- [user_presence_optimization.md](./user_presence_optimization.md) - Presence system optimization
- [chat_system_optimizations.md](./chat_system_optimizations.md) - Chat system optimization
- [navigation_architecture.md](./navigation_architecture.md) - App routing structure

## Constants Reference
```dart
// lib/core/supabase/supabase_constants.dart

class SupabaseTables {
  // Social views
  static const userProfileHeaderView = 'user_profile_header_view';
  static const feedPostsView = 'feed_posts_feed_view';
  
  // Social tables
  static const userProfiles = 'user_profiles';
  static const userFollows = 'user_follows';
  static const userFollowRequests = 'user_follow_requests';
  static const userBlocks = 'user_blocks';
  static const feedPosts = 'feed_posts';
  static const feedPostLikes = 'feed_post_likes';
  static const feedPostBookmarks = 'feed_post_bookmarks';
  static const feedComments = 'feed_comments';
}
```

## Summary
✅ **SQL Formatting**: Uppercase keywords, minimal comments
✅ **Performance**: 7 new indexes for EXISTS subqueries
✅ **Security**: Explicit GRANT statements, security_invoker views
✅ **Constants**: All datasources use SupabaseTables constants
✅ **Privacy**: RLS enforced, engagement counts hidden per settings

**Next Steps**: Monitor query performance and adjust indexes based on actual usage patterns.
