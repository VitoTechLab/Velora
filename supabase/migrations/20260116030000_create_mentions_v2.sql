BEGIN;

-- ===========================================================================
-- MENTIONS SYSTEM V2 (Consolidated & Optimized)
-- ===========================================================================
-- Adapted for:
-- 1. feed_posts (uses 'caption')
-- 2. feed_comments (uses 'content')
-- 3. messages (uses 'body')
-- ===========================================================================

-- 1. MENTIONS TABLE
-- ---------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS public.mentions (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE, -- Who is mentioned
    created_by UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE, -- Who mentioned
    entity_type TEXT NOT NULL CHECK (entity_type IN ('message', 'post', 'comment', 'story')),
    entity_id UUID NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    
    CONSTRAINT ux_mentions_entity_user UNIQUE (entity_type, entity_id, user_id)
);

CREATE INDEX IF NOT EXISTS idx_mentions_lookup ON public.mentions (entity_type, entity_id);
CREATE INDEX IF NOT EXISTS idx_mentions_inbox ON public.mentions (user_id, created_at DESC);

-- 2. RLS
-- ---------------------------------------------------------------------------
ALTER TABLE public.mentions ENABLE ROW LEVEL SECURITY;

-- Read: Public (or restrict if needed, but usually context determines visibility)
DROP POLICY IF EXISTS "mentions_select_auth" ON public.mentions;
CREATE POLICY "mentions_select_auth" ON public.mentions
FOR SELECT TO authenticated USING (true);

-- Insert: System Trigger or Owner
DROP POLICY IF EXISTS "mentions_insert_own" ON public.mentions;
CREATE POLICY "mentions_insert_own" ON public.mentions
FOR INSERT TO authenticated WITH CHECK (created_by = auth.uid());

-- 3. PARSER FUNCTION (The Brain)
-- ---------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION public.fn_auto_parse_mentions_v2()
RETURNS TRIGGER
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
    v_entity_type TEXT;
    v_body_content TEXT;
    v_creator_id UUID;
    v_usernames TEXT[];
    v_mentioned_ids UUID[];
BEGIN
    -- 1. Context Switching (V2 Tables)
    IF TG_TABLE_NAME = 'feed_posts' THEN 
        v_entity_type := 'post';
        v_body_content := NEW.caption;
        v_creator_id := NEW.user_id;
    ELSIF TG_TABLE_NAME = 'feed_comments' THEN
        v_entity_type := 'comment';
        v_body_content := NEW.content;
        v_creator_id := NEW.user_id;
    ELSIF TG_TABLE_NAME = 'messages' THEN 
        v_entity_type := 'message';
        v_body_content := NEW.body;
        v_creator_id := NEW.sender_id;
    END IF;

    -- Exit if no content
    IF v_body_content IS NULL OR length(v_body_content) < 2 THEN 
        RETURN NEW; 
    END IF;

    -- 2. Regex Extraction (@username)
    SELECT ARRAY_AGG(DISTINCT matches[1]) INTO v_usernames
    FROM regexp_matches(v_body_content, '@([a-zA-Z0-9._]+)', 'g') AS matches;

    IF v_usernames IS NULL THEN RETURN NEW; END IF;

    -- 3. Resolve User IDs
    SELECT ARRAY_AGG(id) INTO v_mentioned_ids
    FROM public.user_profiles
    WHERE username = ANY(v_usernames)
      AND id <> v_creator_id; -- No self-mention

    IF v_mentioned_ids IS NULL THEN RETURN NEW; END IF;

    -- 4. Insert into Mentions Table
    INSERT INTO public.mentions (user_id, entity_type, entity_id, created_by)
    SELECT 
        unnest(v_mentioned_ids), 
        v_entity_type, 
        NEW.id, 
        v_creator_id
    ON CONFLICT (entity_type, entity_id, user_id) DO NOTHING;

    RETURN NEW;
END;
$$;

-- 4. NOTIFICATION GENERATOR
-- ---------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION public.fn_notify_on_mention()
RETURNS TRIGGER
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
BEGIN
    INSERT INTO public.notifications (
        user_id, actor_id, type, entity_type, entity_id, metadata
    ) VALUES (
        NEW.user_id,
        NEW.created_by,
        'mention',
        NEW.entity_type,
        NEW.entity_id,
        jsonb_build_object('mention_id', NEW.id)
    );
    RETURN NEW;
END;
$$;

DROP TRIGGER IF EXISTS trg_notify_mention ON public.mentions;
CREATE TRIGGER trg_notify_mention
AFTER INSERT ON public.mentions
FOR EACH ROW EXECUTE FUNCTION public.fn_notify_on_mention();

-- 5. ATTACH TRIGGERS TO V2 TABLES
-- ---------------------------------------------------------------------------

-- Feed Posts
DROP TRIGGER IF EXISTS on_post_mention ON public.feed_posts;
CREATE TRIGGER on_post_mention
AFTER INSERT ON public.feed_posts
FOR EACH ROW EXECUTE FUNCTION public.fn_auto_parse_mentions_v2();

-- Feed Comments
DROP TRIGGER IF EXISTS on_comment_mention ON public.feed_comments;
CREATE TRIGGER on_comment_mention
AFTER INSERT ON public.feed_comments
FOR EACH ROW EXECUTE FUNCTION public.fn_auto_parse_mentions_v2();

-- Messages
DROP TRIGGER IF EXISTS on_message_mention ON public.messages;
CREATE TRIGGER on_message_mention
AFTER INSERT ON public.messages
FOR EACH ROW 
WHEN (NEW.kind IN ('text', 'image', 'video', 'file'))
EXECUTE FUNCTION public.fn_auto_parse_mentions_v2();

COMMIT;
