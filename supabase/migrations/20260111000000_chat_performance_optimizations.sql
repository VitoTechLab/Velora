-- Chat Performance Optimizations
-- Add performance indexes and optimized functions for chat system


BEGIN;

-- Batch mark read function for marking multiple messages as read in single transaction

CREATE OR REPLACE FUNCTION public.mark_messages_read_batch(
    p_message_ids UUID[]
)
RETURNS TABLE (
    marked_count INT,
    already_read_count INT
)
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
    v_user_id UUID;
    v_marked INT := 0;
    v_already_read INT := 0;
BEGIN
    -- Get authenticated user
    v_user_id := auth.uid();
    IF v_user_id IS NULL THEN
        RAISE EXCEPTION 'Not authenticated';
    END IF;

    -- Validate message IDs array
    IF p_message_ids IS NULL OR array_length(p_message_ids, 1) IS NULL THEN
        RETURN QUERY SELECT 0, 0;
        RETURN;
    END IF;

    -- Count already read messages
    SELECT COUNT(*)
    INTO v_already_read
    FROM message_reads
    WHERE user_id = v_user_id
    AND message_id = ANY(p_message_ids);

    -- Insert new read receipts (upsert)
    WITH inserted AS (
        INSERT INTO message_reads (message_id, user_id, read_at)
        SELECT 
            unnest(p_message_ids),
            v_user_id,
            NOW()
        ON CONFLICT (message_id, user_id) 
        DO UPDATE SET read_at = NOW()
        WHERE message_reads.read_at < EXCLUDED.read_at -- Only update if newer
        RETURNING 1
    )
    SELECT COUNT(*) INTO v_marked FROM inserted;

    -- Return statistics
    RETURN QUERY SELECT v_marked, v_already_read;
END;
$$;

GRANT EXECUTE ON FUNCTION public.mark_messages_read_batch(UUID[]) TO authenticated;

-- Materialized view for conversation list with pre-aggregated data
DROP MATERIALIZED VIEW IF EXISTS public.mv_conversation_list CASCADE;

CREATE MATERIALIZED VIEW public.mv_conversation_list AS
SELECT 
    c.id AS conversation_id,
    c.type AS conversation_type,
    cm.user_id AS user_id,
    -- Get other participant info (for direct conversations)
    CASE 
        WHEN c.type = 'direct' THEN (
            SELECT cdp.user_b 
            FROM conversation_direct_pairs cdp
            WHERE cdp.conversation_id = c.id 
            AND cdp.user_a = cm.user_id
            UNION
            SELECT cdp.user_a 
            FROM conversation_direct_pairs cdp
            WHERE cdp.conversation_id = c.id 
            AND cdp.user_b = cm.user_id
            LIMIT 1
        )
    END AS other_user_id,
    -- Get other participant profile
    (
        SELECT up.username
        FROM conversation_members cm2
        JOIN user_profiles up ON up.id = cm2.user_id
        WHERE cm2.conversation_id = c.id 
        AND cm2.user_id != cm.user_id
        AND cm2.left_at IS NULL
        LIMIT 1
    ) AS other_user_username,
    (
        SELECT up.full_name
        FROM conversation_members cm2
        JOIN user_profiles up ON up.id = cm2.user_id
        WHERE cm2.conversation_id = c.id 
        AND cm2.user_id != cm.user_id
        AND cm2.left_at IS NULL
        LIMIT 1
    ) AS other_user_full_name,
    (
        SELECT up.avatar_url
        FROM conversation_members cm2
        JOIN user_profiles up ON up.id = cm2.user_id
        WHERE cm2.conversation_id = c.id 
        AND cm2.user_id != cm.user_id
        AND cm2.left_at IS NULL
        LIMIT 1
    ) AS other_user_avatar_url,
    -- Last message info
    (
        SELECT m.body
        FROM messages m
        WHERE m.conversation_id = c.id
        AND m.deleted_at IS NULL
        ORDER BY m.created_at DESC
        LIMIT 1
    ) AS last_message_body,
    c.last_message_at,
    (
        SELECT m.sender_id
        FROM messages m
        WHERE m.conversation_id = c.id
        AND m.deleted_at IS NULL
        ORDER BY m.created_at DESC
        LIMIT 1
    ) AS last_message_sender_id,
    -- Unread count from conversation_members
    cm.unread_count,
    -- Metadata
    c.created_at AS conversation_created_at,
    cm.last_read_at
FROM conversations c
JOIN conversation_members cm ON cm.conversation_id = c.id
WHERE cm.left_at IS NULL;

-- Indexes for materialized view
CREATE UNIQUE INDEX mv_conversation_list_unique_idx 
ON public.mv_conversation_list(conversation_id, user_id);

CREATE INDEX mv_conversation_list_user_idx 
ON public.mv_conversation_list(user_id, last_message_at DESC NULLS LAST);

CREATE INDEX mv_conversation_list_unread_idx 
ON public.mv_conversation_list(user_id, unread_count DESC)
WHERE unread_count > 0;

-- Function to refresh conversation list materialized view
CREATE OR REPLACE FUNCTION public.refresh_conversation_list()
RETURNS void
LANGUAGE plpgsql
SECURITY DEFINER
AS $$
BEGIN
    REFRESH MATERIALIZED VIEW CONCURRENTLY mv_conversation_list;
END;
$$;

GRANT EXECUTE ON FUNCTION public.refresh_conversation_list() TO authenticated;

-- Optimized function to get conversation list using materialized view
CREATE OR REPLACE FUNCTION public.get_conversation_list_optimized()
RETURNS TABLE (
    conversation_id UUID,
    other_user_id UUID,
    other_user_username TEXT,
    other_user_full_name TEXT,
    other_user_avatar_url TEXT,
    last_message_body TEXT,
    last_message_at TIMESTAMPTZ,
    last_message_sender_id UUID,
    unread_count INT
)
LANGUAGE plpgsql
SECURITY DEFINER
STABLE
SET search_path = public
AS $$
DECLARE
    v_user_id UUID;
BEGIN
    v_user_id := auth.uid();
    IF v_user_id IS NULL THEN
        RAISE EXCEPTION 'Not authenticated';
    END IF;

    RETURN QUERY
    SELECT 
        mv.conversation_id,
        mv.other_user_id,
        mv.other_user_username,
        mv.other_user_full_name,
        mv.other_user_avatar_url,
        mv.last_message_body,
        mv.last_message_at,
        mv.last_message_sender_id,
        mv.unread_count
    FROM mv_conversation_list mv
    WHERE mv.user_id = v_user_id
    AND mv.last_message_at IS NOT NULL
    ORDER BY mv.last_message_at DESC NULLS LAST
    LIMIT 100;
END;
$$;

GRANT EXECUTE ON FUNCTION public.get_conversation_list_optimized() TO authenticated;

-- Initial refresh of materialized view
REFRESH MATERIALIZED VIEW public.mv_conversation_list;

COMMIT;
