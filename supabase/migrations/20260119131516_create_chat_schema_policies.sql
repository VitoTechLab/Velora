-- ===========================================================================
-- CHAT SCHEMA V2 (Consolidated & Optimized)
-- ===========================================================================
-- Combined migrations from:
-- 1. Base Chat Schema
-- 2. Chat Performance Optimizations (Regular Views, Batch Read)
-- 3. Poll & Event Improvements (Logic validation, Modern fields)
-- ===========================================================================

BEGIN;

-- ===========================================================================
-- 1. ENUMS
-- ===========================================================================

DO $$ BEGIN
  CREATE TYPE public.conversation_type AS ENUM ('direct', 'group');
EXCEPTION WHEN duplicate_object THEN NULL; END $$;

DO $$ BEGIN
  CREATE TYPE public.member_role AS ENUM ('member', 'admin', 'owner');
EXCEPTION WHEN duplicate_object THEN NULL; END $$;

DO $$ BEGIN
  CREATE TYPE public.message_kind AS ENUM (
    'text', 'image', 'video', 'audio', 'file', 
    'call', 'poll', 'event', 'system'
  );
EXCEPTION WHEN duplicate_object THEN NULL; END $$;

DO $$ BEGIN
  CREATE TYPE public.attachment_kind AS ENUM ('image', 'video', 'audio', 'file', 'thumbnail');
EXCEPTION WHEN duplicate_object THEN NULL; END $$;

DO $$ BEGIN
  CREATE TYPE public.call_kind AS ENUM ('audio', 'video');
EXCEPTION WHEN duplicate_object THEN NULL; END $$;

DO $$ BEGIN
  CREATE TYPE public.call_state AS ENUM ('started', 'ended', 'missed', 'declined', 'canceled');
EXCEPTION WHEN duplicate_object THEN NULL; END $$;

DO $$ BEGIN
  CREATE TYPE public.rsvp_status AS ENUM ('going', 'interested', 'not_going');
EXCEPTION WHEN duplicate_object THEN NULL; END $$;

-- ===========================================================================
-- 2. CORE TABLES
-- ===========================================================================

-- 2.1 Conversations
DROP TABLE IF EXISTS public.conversations CASCADE;
CREATE TABLE IF NOT EXISTS public.conversations (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  type public.conversation_type NOT NULL,
  title TEXT,
  photo_url TEXT,
  created_by UUID NOT NULL REFERENCES auth.users(id) ON DELETE RESTRICT,
  last_message_id UUID, 
  last_message_at TIMESTAMPTZ,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_conversations_last_message
  ON public.conversations (last_message_at DESC NULLS LAST);

CREATE TRIGGER set_conversations_updated_at
BEFORE UPDATE ON public.conversations
FOR EACH ROW EXECUTE FUNCTION public.set_updated_at();

-- 2.2 Conversation Members
DROP TABLE IF EXISTS public.conversation_members CASCADE;
CREATE TABLE IF NOT EXISTS public.conversation_members (
  conversation_id UUID NOT NULL REFERENCES public.conversations(id) ON DELETE CASCADE,
  user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  role public.member_role NOT NULL DEFAULT 'member',
  joined_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  left_at TIMESTAMPTZ,
  last_read_message_id UUID,
  last_read_at TIMESTAMPTZ,
  unread_count INT NOT NULL DEFAULT 0,
  muted_until TIMESTAMPTZ,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  PRIMARY KEY (conversation_id, user_id)
);

CREATE INDEX IF NOT EXISTS idx_cm_user_active 
  ON public.conversation_members (user_id, conversation_id) 
  WHERE left_at IS NULL;

-- Filtered index for fetching unread counts quickly
CREATE INDEX IF NOT EXISTS idx_cm_unread_counts
  ON public.conversation_members (user_id, unread_count)
  WHERE unread_count > 0 AND left_at IS NULL;

CREATE TRIGGER set_conversation_members_updated_at
BEFORE UPDATE ON public.conversation_members
FOR EACH ROW EXECUTE FUNCTION public.set_updated_at();

-- Helper function for RLS
DROP FUNCTION IF EXISTS public.my_conversation_ids() CASCADE;
CREATE OR REPLACE FUNCTION public.my_conversation_ids()
RETURNS SETOF UUID
LANGUAGE sql STABLE SECURITY DEFINER
SET search_path = public
AS $$
  SELECT conversation_id 
  FROM conversation_members 
  WHERE user_id = auth.uid() AND left_at IS NULL;
$$;
GRANT EXECUTE ON FUNCTION public.my_conversation_ids() TO authenticated;

-- 2.3 Direct Pairs (Optimization for Direct Chat lookup)
DROP TABLE IF EXISTS public.conversation_direct_pairs CASCADE;
CREATE TABLE IF NOT EXISTS public.conversation_direct_pairs (
  conversation_id UUID PRIMARY KEY REFERENCES public.conversations(id) ON DELETE CASCADE,
  user_a UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  user_b UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  CONSTRAINT chk_direct_pair_neq CHECK (user_a <> user_b)
);

CREATE UNIQUE INDEX IF NOT EXISTS ux_direct_pair
  ON public.conversation_direct_pairs (LEAST(user_a, user_b), GREATEST(user_a, user_b));

-- 2.4 Messages
DROP TABLE IF EXISTS public.messages CASCADE;
CREATE TABLE IF NOT EXISTS public.messages (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  conversation_id UUID NOT NULL REFERENCES public.conversations(id) ON DELETE CASCADE,
  sender_id UUID REFERENCES auth.users(id) ON DELETE SET NULL,
  kind public.message_kind NOT NULL DEFAULT 'text',
  body TEXT, 
  reply_to_message_id UUID REFERENCES public.messages(id) ON DELETE SET NULL,
  edited_at TIMESTAMPTZ,
  deleted_at TIMESTAMPTZ,
  deleted_by UUID REFERENCES auth.users(id) ON DELETE SET NULL,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- Circular FK for conversation last_message
ALTER TABLE public.conversations 
  ADD CONSTRAINT fk_conversations_last_message 
  FOREIGN KEY (last_message_id) REFERENCES public.messages(id) ON DELETE SET NULL;

CREATE INDEX IF NOT EXISTS idx_messages_conversation_scroll
  ON public.messages (conversation_id, created_at DESC, id DESC);

CREATE TRIGGER set_messages_updated_at
BEFORE UPDATE ON public.messages
FOR EACH ROW EXECUTE FUNCTION public.set_updated_at();

-- 2.5 Attachments (supports both Supabase Storage and external URLs like Cloudinary)
DROP TABLE IF EXISTS public.message_attachments CASCADE;
CREATE TABLE IF NOT EXISTS public.message_attachments (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  message_id UUID NOT NULL REFERENCES public.messages(id) ON DELETE CASCADE,
  kind public.attachment_kind NOT NULL,
  -- For Supabase Storage
  bucket TEXT,
  path TEXT,
  -- For external URLs (Cloudinary, etc.)
  url TEXT,
  -- Common metadata
  filename TEXT,
  mime_type TEXT,
  size_bytes BIGINT,
  width INT,
  height INT,
  duration_seconds NUMERIC(10,2),
  blurhash TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  -- Ensure at least one source is provided
  CONSTRAINT chk_attachment_source CHECK (
    (bucket IS NOT NULL AND path IS NOT NULL) OR url IS NOT NULL
  )
);

CREATE INDEX IF NOT EXISTS idx_attachments_message
  ON public.message_attachments (message_id);

-- 2.6 Message Reads (Blue Ticks - Detailed Receipt)
DROP TABLE IF EXISTS public.message_reads CASCADE;
CREATE TABLE IF NOT EXISTS public.message_reads (
  message_id UUID NOT NULL REFERENCES public.messages(id) ON DELETE CASCADE,
  user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  read_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  PRIMARY KEY (message_id, user_id)
);

CREATE INDEX IF NOT EXISTS idx_reads_lookup
  ON public.message_reads (message_id, read_at);

-- ===========================================================================
-- 3. PAYLOAD TABLES (Enhanced)
-- ===========================================================================

-- 3.1 Calls
DROP TABLE IF EXISTS public.message_call_payload CASCADE;
CREATE TABLE IF NOT EXISTS public.message_call_payload (
  message_id UUID PRIMARY KEY REFERENCES public.messages(id) ON DELETE CASCADE,
  call_kind public.call_kind NOT NULL,
  call_state public.call_state NOT NULL DEFAULT 'started',
  duration_seconds INT,
  started_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  ended_at TIMESTAMPTZ,
  participants JSONB NOT NULL DEFAULT '[]'::JSONB
);

-- 3.2 Polls (Updated)
DROP TABLE IF EXISTS public.message_poll_payload CASCADE;
CREATE TABLE IF NOT EXISTS public.message_poll_payload (
  message_id UUID PRIMARY KEY REFERENCES public.messages(id) ON DELETE CASCADE,
  id UUID NOT NULL DEFAULT gen_random_uuid(), 
  question TEXT NOT NULL,
  multiple_choice BOOLEAN NOT NULL DEFAULT FALSE,
  max_user_votes INT NOT NULL DEFAULT 1, 
  closes_at TIMESTAMPTZ
);

DROP TABLE IF EXISTS public.poll_options CASCADE;
CREATE TABLE IF NOT EXISTS public.poll_options (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  poll_message_id UUID NOT NULL REFERENCES public.message_poll_payload(message_id) ON DELETE CASCADE,
  text TEXT NOT NULL,
  position INT NOT NULL DEFAULT 0
);

CREATE UNIQUE INDEX IF NOT EXISTS ux_poll_options_position
  ON public.poll_options (poll_message_id, position);

DROP TABLE IF EXISTS public.poll_votes CASCADE;
CREATE TABLE IF NOT EXISTS public.poll_votes (
  poll_option_id UUID NOT NULL REFERENCES public.poll_options(id) ON DELETE CASCADE,
  user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  PRIMARY KEY (poll_option_id, user_id)
);

CREATE UNIQUE INDEX IF NOT EXISTS ux_poll_vote_unique
  ON public.poll_votes (poll_option_id, user_id);

-- 3.3 Events (Modern)
DROP TABLE IF EXISTS public.message_event_payload CASCADE;
CREATE TABLE IF NOT EXISTS public.message_event_payload (
  message_id UUID PRIMARY KEY REFERENCES public.messages(id) ON DELETE CASCADE,
  id UUID NOT NULL DEFAULT gen_random_uuid(),
  title TEXT NOT NULL,
  description TEXT,
  location_name TEXT,
  address TEXT,
  is_online BOOLEAN DEFAULT FALSE,
  meeting_url TEXT,
  cover_url TEXT,
  starts_at TIMESTAMPTZ NOT NULL,
  ends_at TIMESTAMPTZ
);

DROP TABLE IF EXISTS public.event_rsvps CASCADE;
CREATE TABLE IF NOT EXISTS public.event_rsvps (
  event_message_id UUID NOT NULL REFERENCES public.message_event_payload(message_id) ON DELETE CASCADE,
  user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  status public.rsvp_status NOT NULL,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  PRIMARY KEY (event_message_id, user_id)
);

-- ===========================================================================
-- 4. BASIC TRIGGERS
-- ===========================================================================

-- Light trigger to update conversation timestamps and unread counts
DROP FUNCTION IF EXISTS public.on_message_insert() CASCADE;
CREATE OR REPLACE FUNCTION public.on_message_insert()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
BEGIN
  -- Update conversation last message pointer
  UPDATE public.conversations
  SET last_message_id = NEW.id,
      last_message_at = NEW.created_at
  WHERE id = NEW.conversation_id;

  -- Increment unread count for OTHERS
  UPDATE public.conversation_members
  SET unread_count = unread_count + 1
  WHERE conversation_id = NEW.conversation_id
    AND user_id <> NEW.sender_id
    AND left_at IS NULL;

  RETURN NEW;
END;
$$;

CREATE TRIGGER trg_on_message_insert
AFTER INSERT ON public.messages
FOR EACH ROW EXECUTE FUNCTION public.on_message_insert();

-- Sync ID Triggers
DROP FUNCTION IF EXISTS public.sync_payload_id() CASCADE;
CREATE OR REPLACE FUNCTION public.sync_payload_id()
RETURNS TRIGGER AS $$
BEGIN
  IF NEW.id IS NULL OR NEW.id <> NEW.message_id THEN
    NEW.id := NEW.message_id;
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_sync_poll_id BEFORE INSERT ON public.message_poll_payload
FOR EACH ROW EXECUTE FUNCTION public.sync_payload_id();

CREATE TRIGGER trg_sync_event_id BEFORE INSERT ON public.message_event_payload
FOR EACH ROW EXECUTE FUNCTION public.sync_payload_id();

-- ===========================================================================
-- 5. VIEWS (OPTIMIZED & CONVENIENCE)
-- ===========================================================================
-- 5.1 Main Conversation List View (Realtime Friendly)
-- Changed from MATERIALIZED VIEW to Regular VIEW for Realtime updates.

CREATE OR REPLACE VIEW public.v_conversation_list_optimized 
WITH (security_invoker=true) AS
SELECT 
    c.id AS conversation_id,
    c.type AS conversation_type,
    cm.user_id AS user_id,
    -- Get other participant info (for direct conversations)
    CASE 
        WHEN c.type = 'direct' THEN (
            SELECT cdp.user_b 
            FROM conversation_direct_pairs cdp
            WHERE cdp.conversation_id = c.id AND cdp.user_a = cm.user_id
            UNION
            SELECT cdp.user_a 
            FROM conversation_direct_pairs cdp
            WHERE cdp.conversation_id = c.id AND cdp.user_b = cm.user_id
            LIMIT 1
        )
    END AS other_user_id,
    -- Pre-fetch profile info 
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
    -- Message preview
    (
        SELECT m.body
        FROM messages m
        WHERE m.conversation_id = c.id
        AND m.deleted_at IS NULL
        ORDER BY m.created_at DESC
        LIMIT 1
    ) AS last_message_body,
    -- Timestamp & Count
    c.last_message_at,
    (
        SELECT m.sender_id
        FROM messages m
        WHERE m.conversation_id = c.id
        AND m.deleted_at IS NULL
        ORDER BY m.created_at DESC
        LIMIT 1
    ) AS last_message_sender_id,
    cm.unread_count,
    c.created_at AS conversation_created_at
FROM conversations c
JOIN conversation_members cm ON cm.conversation_id = c.id
WHERE cm.left_at IS NULL;

-- 5.2 Poll Options View (Aggregated Votes)
CREATE OR REPLACE VIEW public.v_poll_options_with_votes
WITH (security_invoker=true) AS
SELECT 
  po.id,
  po.poll_message_id,
  po.text,
  po.position,
  COALESCE(vc.vote_count, 0) AS vote_count,
  CASE WHEN uv.user_id IS NOT NULL THEN TRUE ELSE FALSE END AS is_selected
FROM poll_options po
LEFT JOIN (
  SELECT poll_option_id, COUNT(*) AS vote_count
  FROM poll_votes
  GROUP BY poll_option_id
) vc ON vc.poll_option_id = po.id
LEFT JOIN poll_votes uv ON uv.poll_option_id = po.id AND uv.user_id = auth.uid();

-- 5.3 Event RSVP View (Aggregated Status)
CREATE OR REPLACE VIEW public.v_event_with_rsvp
WITH (security_invoker=true) AS
SELECT 
  ep.message_id,
  ep.title,
  ep.location_name AS location,
  ep.address,
  ep.starts_at,
  ep.ends_at,
  ep.description AS notes,
  COALESCE(gc.going_count, 0) AS going_count,
  COALESCE(ic.interested_count, 0) AS interested_count,
  COALESCE(nc.not_going_count, 0) AS not_going_count,
  ur.status AS user_response
FROM message_event_payload ep
LEFT JOIN (
  SELECT event_message_id, COUNT(*) AS going_count
  FROM event_rsvps WHERE status = 'going' GROUP BY event_message_id
) gc ON gc.event_message_id = ep.message_id
LEFT JOIN (
  SELECT event_message_id, COUNT(*) AS interested_count
  FROM event_rsvps WHERE status = 'interested' GROUP BY event_message_id
) ic ON ic.event_message_id = ep.message_id
LEFT JOIN (
  SELECT event_message_id, COUNT(*) AS not_going_count
  FROM event_rsvps WHERE status = 'not_going' GROUP BY event_message_id
) nc ON nc.event_message_id = ep.message_id
LEFT JOIN event_rsvps ur ON ur.event_message_id = ep.message_id AND ur.user_id = auth.uid();

-- ===========================================================================
-- 6. RPC FUNCTIONS (Logic)
-- ===========================================================================

-- 6.1 Create Conversation
DROP FUNCTION IF EXISTS public.create_direct_conversation(UUID) CASCADE;
CREATE OR REPLACE FUNCTION public.create_direct_conversation(other_user_id UUID)
RETURNS UUID
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
  current_user_id UUID := auth.uid();
  new_conversation_id UUID;
  existing_id UUID;
  u1 UUID;
  u2 UUID;
BEGIN
  IF current_user_id IS NULL THEN RAISE EXCEPTION 'Not authenticated'; END IF;
  IF current_user_id = other_user_id THEN RAISE EXCEPTION 'Cannot chat with self'; END IF;

  u1 := LEAST(current_user_id, other_user_id);
  u2 := GREATEST(current_user_id, other_user_id);

  -- Check existing
  SELECT conversation_id INTO existing_id
  FROM conversation_direct_pairs
  WHERE user_a = u1 AND user_b = u2;

  IF existing_id IS NOT NULL THEN RETURN existing_id; END IF;

  -- Create new
  new_conversation_id := gen_random_uuid();
  INSERT INTO conversations (id, type, created_by)
  VALUES (new_conversation_id, 'direct', current_user_id);

  INSERT INTO conversation_direct_pairs (conversation_id, user_a, user_b)
  VALUES (new_conversation_id, u1, u2);

  -- Add members
  INSERT INTO conversation_members (conversation_id, user_id, role)
  VALUES 
    (new_conversation_id, u1, 'member'),
    (new_conversation_id, u2, 'member');

  RETURN new_conversation_id;
EXCEPTION WHEN unique_violation THEN
  SELECT conversation_id INTO existing_id
  FROM conversation_direct_pairs
  WHERE user_a = u1 AND user_b = u2;
  RETURN existing_id;
END;
$$;
GRANT EXECUTE ON FUNCTION public.create_direct_conversation(UUID) TO authenticated;

-- 6.2 Mark Conversation Read
DROP FUNCTION IF EXISTS public.mark_conversation_read(UUID) CASCADE;
CREATE OR REPLACE FUNCTION public.mark_conversation_read(
  p_conversation_id UUID
)
RETURNS VOID
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
  v_uid UUID := auth.uid();
  v_last_msg_id UUID;
BEGIN
  IF v_uid IS NULL THEN RAISE EXCEPTION 'Not authenticated'; END IF;

  SELECT id INTO v_last_msg_id
  FROM messages
  WHERE conversation_id = p_conversation_id AND deleted_at IS NULL
  ORDER BY created_at DESC LIMIT 1;

  IF v_last_msg_id IS NOT NULL THEN
    UPDATE conversation_members
    SET unread_count = 0,
        last_read_message_id = v_last_msg_id,
        last_read_at = NOW()
    WHERE conversation_id = p_conversation_id AND user_id = v_uid;
  END IF;
END;
$$;
GRANT EXECUTE ON FUNCTION public.mark_conversation_read(UUID) TO authenticated;

-- 6.3 Batch Mark Read
DROP FUNCTION IF EXISTS public.mark_messages_read_batch(UUID[]) CASCADE;
CREATE OR REPLACE FUNCTION public.mark_messages_read_batch(p_message_ids UUID[])
RETURNS TABLE (marked_count INT)
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
  v_uid UUID := auth.uid();
  v_marked INT;
BEGIN
  IF v_uid IS NULL THEN RAISE EXCEPTION 'Not authenticated'; END IF;
  
  WITH inserted AS (
      INSERT INTO message_reads (message_id, user_id, read_at)
      SELECT unnest(p_message_ids), v_uid, NOW()
      ON CONFLICT (message_id, user_id) 
      DO UPDATE SET read_at = NOW() WHERE message_reads.read_at < EXCLUDED.read_at
      RETURNING 1
  )
  SELECT COUNT(*) INTO v_marked FROM inserted;
  
  RETURN QUERY SELECT v_marked;
END;
$$;
GRANT EXECUTE ON FUNCTION public.mark_messages_read_batch(UUID[]) TO authenticated;

-- 6.4 Edit & Delete Message (via RPC only)
DROP FUNCTION IF EXISTS public.edit_message(UUID, TEXT) CASCADE;
CREATE OR REPLACE FUNCTION public.edit_message(
  p_message_id UUID,
  p_body TEXT
)
RETURNS VOID
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
BEGIN
  UPDATE messages
  SET body = p_body,
      edited_at = NOW()
  WHERE id = p_message_id
    AND sender_id = auth.uid()
    AND deleted_at IS NULL;
END;
$$;

GRANT EXECUTE ON FUNCTION public.edit_message(UUID, TEXT) TO authenticated;

DROP FUNCTION IF EXISTS public.delete_message(UUID) CASCADE;
CREATE OR REPLACE FUNCTION public.delete_message(
  p_message_id UUID
)
RETURNS VOID
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
BEGIN
  UPDATE messages
  SET deleted_at = NOW(),
      deleted_by = auth.uid()
  WHERE id = p_message_id
    AND sender_id = auth.uid()
    AND deleted_at IS NULL;
END;
$$;

GRANT EXECUTE ON FUNCTION public.delete_message(UUID) TO authenticated;

-- 6.5 Get Conversation List (Now using Regular View)
DROP FUNCTION IF EXISTS public.get_conversation_list_optimized() CASCADE;
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
BEGIN
    RETURN QUERY
    SELECT 
        v.conversation_id,
        v.other_user_id,
        v.other_user_username,
        v.other_user_full_name,
        v.other_user_avatar_url,
        v.last_message_body,
        v.last_message_at,
        v.last_message_sender_id,
        v.unread_count
    FROM v_conversation_list_optimized v
    WHERE v.user_id = auth.uid()
    AND v.last_message_at IS NOT NULL
    ORDER BY v.last_message_at DESC NULLS LAST
    LIMIT 100;
END;
$$;
GRANT EXECUTE ON FUNCTION public.get_conversation_list_optimized() TO authenticated;

-- 6.6 Vote Poll (validated + max vote guard)
DROP FUNCTION IF EXISTS public.vote_poll_option(UUID, UUID) CASCADE;
CREATE OR REPLACE FUNCTION public.vote_poll_option(
  p_poll_message_id UUID,
  p_option_id UUID
)
RETURNS VOID
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
  v_uid UUID := auth.uid();
  v_multiple BOOLEAN;
  v_max_votes INT;
  v_current_votes INT;
BEGIN
  IF v_uid IS NULL THEN
    RAISE EXCEPTION 'Not authenticated';
  END IF;

  -- Load poll settings
  SELECT multiple_choice, max_user_votes
  INTO v_multiple, v_max_votes
  FROM message_poll_payload
  WHERE message_id = p_poll_message_id;

  IF NOT FOUND THEN
    RAISE EXCEPTION 'Poll not found';
  END IF;

  -- Validate option belongs to poll
  IF NOT EXISTS (
    SELECT 1 FROM poll_options
    WHERE id = p_option_id
      AND poll_message_id = p_poll_message_id
  ) THEN
    RAISE EXCEPTION 'Invalid poll option';
  END IF;

  -- Single choice → remove previous votes
  IF NOT v_multiple THEN
    DELETE FROM poll_votes pv
    USING poll_options po
    WHERE pv.poll_option_id = po.id
      AND po.poll_message_id = p_poll_message_id
      AND pv.user_id = v_uid;
  ELSE
    -- Multiple choice → enforce max_user_votes
    SELECT COUNT(*) INTO v_current_votes
    FROM poll_votes pv
    JOIN poll_options po ON po.id = pv.poll_option_id
    WHERE po.poll_message_id = p_poll_message_id
      AND pv.user_id = v_uid;

    IF v_current_votes >= v_max_votes THEN
      RAISE EXCEPTION 'Max votes reached';
    END IF;
  END IF;

  INSERT INTO poll_votes (poll_option_id, user_id)
  VALUES (p_option_id, v_uid)
  ON CONFLICT DO NOTHING;
END;
$$;
GRANT EXECUTE ON FUNCTION public.vote_poll_option(UUID, UUID) TO authenticated;

DROP FUNCTION IF EXISTS public.unvote_poll_option(UUID) CASCADE;
CREATE OR REPLACE FUNCTION public.unvote_poll_option(p_option_id UUID)
RETURNS VOID
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
BEGIN
  DELETE FROM poll_votes WHERE poll_option_id = p_option_id AND user_id = auth.uid();
END;
$$;
GRANT EXECUTE ON FUNCTION public.unvote_poll_option(UUID) TO authenticated;

-- 6.6 Respond Event
DROP FUNCTION IF EXISTS public.respond_to_event(UUID, public.rsvp_status) CASCADE;
CREATE OR REPLACE FUNCTION public.respond_to_event(
  p_event_message_id UUID,
  p_status public.rsvp_status
)
RETURNS VOID
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
BEGIN
  IF auth.uid() IS NULL THEN RAISE EXCEPTION 'Not authenticated'; END IF;
  
  INSERT INTO event_rsvps (event_message_id, user_id, status)
  VALUES (p_event_message_id, auth.uid(), p_status)
  ON CONFLICT (event_message_id, user_id) 
  DO UPDATE SET status = EXCLUDED.status, created_at = NOW();
END;
$$;
GRANT EXECUTE ON FUNCTION public.respond_to_event(UUID, public.rsvp_status) TO authenticated;


-- ===========================================================================
-- 7. RLS POLICIES
-- ===========================================================================

ALTER TABLE public.conversations ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.conversation_members ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.messages ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.message_attachments ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.message_poll_payload ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.poll_options ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.poll_votes ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.message_event_payload ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.event_rsvps ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.message_reads ENABLE ROW LEVEL SECURITY;
-- Conversation members
CREATE POLICY "view_members" ON public.conversation_members
FOR SELECT TO authenticated USING (
  conversation_id IN (SELECT public.my_conversation_ids())
);

-- Allow users to see their own membership record directly
CREATE POLICY "view_own_membership" ON public.conversation_members
FOR SELECT TO authenticated USING (
  user_id = auth.uid()
);

-- Conversations
CREATE POLICY "view_my_conversations" ON public.conversations
FOR SELECT TO authenticated USING (
  id IN (SELECT public.my_conversation_ids())
);

CREATE POLICY "create_conversations" ON public.conversations
FOR INSERT TO authenticated WITH CHECK (created_by = auth.uid());

CREATE POLICY "update_my_conversations" ON public.conversations
FOR UPDATE TO authenticated USING (
  id IN (SELECT public.my_conversation_ids())
);

-- Messages
CREATE POLICY "view_messages" ON public.messages
FOR SELECT TO authenticated USING (
  conversation_id IN (SELECT public.my_conversation_ids())
);

CREATE POLICY "insert_messages" ON public.messages
FOR INSERT TO authenticated WITH CHECK (
  sender_id = auth.uid() AND
  conversation_id IN (SELECT public.my_conversation_ids())
);

-- Attachments
CREATE POLICY "view_attachments" ON public.message_attachments
FOR SELECT TO authenticated USING (
  message_id IN (
    SELECT id FROM public.messages
    WHERE conversation_id IN (SELECT public.my_conversation_ids())
  )
);

CREATE POLICY "insert_attachments" ON public.message_attachments
FOR INSERT TO authenticated WITH CHECK (
  message_id IN (SELECT id FROM public.messages WHERE sender_id = auth.uid())
);

-- Poll payload
CREATE POLICY "view_poll_payload" ON public.message_poll_payload
FOR SELECT TO authenticated USING (
  message_id IN (
    SELECT id FROM public.messages
    WHERE conversation_id IN (SELECT public.my_conversation_ids())
  )
);

-- Allow inserting poll payload only for own messages in conversations user belongs to
CREATE POLICY "insert_poll_payload" ON public.message_poll_payload
FOR INSERT TO authenticated WITH CHECK (
  message_id IN (
    SELECT id FROM public.messages
    WHERE sender_id = auth.uid()
      AND conversation_id IN (SELECT public.my_conversation_ids())
  )
);

-- Poll options
CREATE POLICY "view_poll_options" ON public.poll_options
FOR SELECT TO authenticated USING (
  poll_message_id IN (
    SELECT id FROM public.messages
    WHERE conversation_id IN (SELECT public.my_conversation_ids())
  )
);

-- Allow inserting poll options only for polls owned by current user
CREATE POLICY "insert_poll_options" ON public.poll_options
FOR INSERT TO authenticated WITH CHECK (
  poll_message_id IN (
    SELECT id FROM public.messages
    WHERE sender_id = auth.uid()
      AND conversation_id IN (SELECT public.my_conversation_ids())
  )
);

-- Poll votes
CREATE POLICY "insert_poll_votes" ON public.poll_votes
FOR INSERT TO authenticated WITH CHECK (user_id = auth.uid());

CREATE POLICY "delete_poll_votes" ON public.poll_votes
FOR DELETE TO authenticated USING (user_id = auth.uid());

CREATE POLICY "view_poll_votes" ON public.poll_votes
FOR SELECT TO authenticated USING (
  poll_option_id IN (
    SELECT po.id FROM public.poll_options po
    JOIN public.messages m ON m.id = po.poll_message_id
    WHERE m.conversation_id IN (SELECT public.my_conversation_ids())
  )
);

-- Event payload
CREATE POLICY "view_event_payload" ON public.message_event_payload
FOR SELECT TO authenticated USING (
  message_id IN (
    SELECT id FROM public.messages
    WHERE conversation_id IN (SELECT public.my_conversation_ids())
  )
);

CREATE POLICY "insert_event_payload" ON public.message_event_payload
FOR INSERT TO authenticated WITH CHECK (
  message_id IN (
    SELECT id FROM public.messages
    WHERE sender_id = auth.uid()
      AND conversation_id IN (SELECT public.my_conversation_ids())
  )
);

-- Event RSVPs
CREATE POLICY "view_event_rsvps" ON public.event_rsvps
FOR SELECT TO authenticated USING (
  event_message_id IN (
    SELECT id FROM public.messages
    WHERE conversation_id IN (SELECT public.my_conversation_ids())
  )
);

CREATE POLICY "insert_event_rsvps" ON public.event_rsvps
FOR INSERT TO authenticated WITH CHECK (user_id = auth.uid());

CREATE POLICY "update_event_rsvps" ON public.event_rsvps
FOR UPDATE TO authenticated USING (user_id = auth.uid());

CREATE POLICY "delete_event_rsvps" ON public.event_rsvps
FOR DELETE TO authenticated USING (user_id = auth.uid());

-- Message reads
CREATE POLICY "view_message_reads" ON public.message_reads
FOR SELECT TO authenticated USING (
  message_id IN (
    SELECT id FROM public.messages
    WHERE conversation_id IN (SELECT public.my_conversation_ids())
  )
);

CREATE POLICY "insert_message_reads" ON public.message_reads
FOR INSERT TO authenticated WITH CHECK (user_id = auth.uid());

-- ===========================================================================
-- 8. REALTIME & CLEANUP
-- ===========================================================================

DO $$ BEGIN
  ALTER PUBLICATION supabase_realtime ADD TABLE public.messages;
  ALTER PUBLICATION supabase_realtime ADD TABLE public.conversations; -- Added for list updates
  ALTER PUBLICATION supabase_realtime ADD TABLE public.conversation_members;
  ALTER PUBLICATION supabase_realtime ADD TABLE public.poll_votes;
  ALTER PUBLICATION supabase_realtime ADD TABLE public.event_rsvps;
EXCEPTION WHEN OTHERS THEN NULL; END $$;

COMMIT;