BEGIN;

-- ===========================================================================
-- ENUMS
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
-- CORE TABLES
-- ===========================================================================

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

DROP TRIGGER IF EXISTS set_conversations_updated_at ON public.conversations;
CREATE TRIGGER set_conversations_updated_at
BEFORE UPDATE ON public.conversations
FOR EACH ROW
EXECUTE FUNCTION public.set_updated_at();

-- ===========================================================================

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

CREATE INDEX IF NOT EXISTS idx_cm_conversation_lookup
  ON public.conversation_members (conversation_id, user_id, left_at);

CREATE INDEX IF NOT EXISTS idx_cm_unread
  ON public.conversation_members (user_id, unread_count)
  WHERE unread_count > 0 AND left_at IS NULL;

DROP TRIGGER IF EXISTS set_conversation_members_updated_at ON public.conversation_members;
CREATE TRIGGER set_conversation_members_updated_at
BEFORE UPDATE ON public.conversation_members
FOR EACH ROW
EXECUTE FUNCTION public.set_updated_at();

-- RLS helper: cached per-request conversation IDs for current user
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

-- ===========================================================================

CREATE TABLE IF NOT EXISTS public.conversation_direct_pairs (
  conversation_id UUID PRIMARY KEY REFERENCES public.conversations(id) ON DELETE CASCADE,
  user_a UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  user_b UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  CONSTRAINT chk_direct_pair_neq CHECK (user_a <> user_b)
);

CREATE UNIQUE INDEX IF NOT EXISTS ux_direct_pair
  ON public.conversation_direct_pairs (LEAST(user_a, user_b), GREATEST(user_a, user_b));

-- ===========================================================================

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

CREATE INDEX IF NOT EXISTS idx_messages_conversation_created
  ON public.messages (conversation_id, created_at DESC);

CREATE INDEX IF NOT EXISTS idx_messages_reply_to
  ON public.messages (reply_to_message_id) 
  WHERE reply_to_message_id IS NOT NULL;

CREATE INDEX IF NOT EXISTS idx_messages_unread_calc
  ON public.messages (conversation_id, created_at, sender_id)
  WHERE deleted_at IS NULL;

DROP TRIGGER IF EXISTS set_messages_updated_at ON public.messages;
CREATE TRIGGER set_messages_updated_at
BEFORE UPDATE ON public.messages
FOR EACH ROW
EXECUTE FUNCTION public.set_updated_at();

-- ===========================================================================

CREATE TABLE IF NOT EXISTS public.message_attachments (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  message_id UUID NOT NULL REFERENCES public.messages(id) ON DELETE CASCADE,
  kind public.attachment_kind NOT NULL,
  bucket TEXT NOT NULL DEFAULT 'chat',
  path TEXT NOT NULL,
  filename TEXT,
  mime_type TEXT,
  size_bytes BIGINT,
  width INT,
  height INT,
  duration_seconds NUMERIC(10,2),
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_attachments_message
  ON public.message_attachments (message_id);

-- ===========================================================================

CREATE TABLE IF NOT EXISTS public.message_reads (
  message_id UUID NOT NULL REFERENCES public.messages(id) ON DELETE CASCADE,
  user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  read_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  PRIMARY KEY (message_id, user_id)
);

CREATE INDEX IF NOT EXISTS idx_reads_user
  ON public.message_reads (user_id, read_at DESC);

CREATE INDEX IF NOT EXISTS idx_reads_message
  ON public.message_reads (message_id, read_at DESC);

-- ===========================================================================
-- PAYLOAD TABLES
-- ===========================================================================

CREATE TABLE IF NOT EXISTS public.message_call_payload (
  message_id UUID PRIMARY KEY REFERENCES public.messages(id) ON DELETE CASCADE,
  call_kind public.call_kind NOT NULL,
  call_state public.call_state NOT NULL DEFAULT 'started',
  duration_seconds INT,
  started_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  ended_at TIMESTAMPTZ,
  participants JSONB NOT NULL DEFAULT '[]'::JSONB
);

CREATE TABLE IF NOT EXISTS public.message_poll_payload (
  message_id UUID PRIMARY KEY REFERENCES public.messages(id) ON DELETE CASCADE,
  question TEXT NOT NULL,
  multiple_choice BOOLEAN NOT NULL DEFAULT FALSE,
  closes_at TIMESTAMPTZ
);

CREATE TABLE IF NOT EXISTS public.poll_options (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  poll_message_id UUID NOT NULL REFERENCES public.message_poll_payload(message_id) ON DELETE CASCADE,
  text TEXT NOT NULL,
  position INT NOT NULL DEFAULT 0
);

CREATE UNIQUE INDEX IF NOT EXISTS ux_poll_options_position
  ON public.poll_options (poll_message_id, position);

CREATE TABLE IF NOT EXISTS public.poll_votes (
  poll_option_id UUID NOT NULL REFERENCES public.poll_options(id) ON DELETE CASCADE,
  user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  PRIMARY KEY (poll_option_id, user_id)
);

CREATE INDEX IF NOT EXISTS idx_poll_votes_user
  ON public.poll_votes (user_id, created_at DESC);

CREATE TABLE IF NOT EXISTS public.message_event_payload (
  message_id UUID PRIMARY KEY REFERENCES public.messages(id) ON DELETE CASCADE,
  title TEXT NOT NULL,
  location TEXT,
  starts_at TIMESTAMPTZ NOT NULL,
  ends_at TIMESTAMPTZ,
  notes TEXT
);

CREATE TABLE IF NOT EXISTS public.event_rsvps (
  event_message_id UUID NOT NULL REFERENCES public.message_event_payload(message_id) ON DELETE CASCADE,
  user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  status public.rsvp_status NOT NULL,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  PRIMARY KEY (event_message_id, user_id)
);

CREATE INDEX IF NOT EXISTS idx_event_rsvps_user
  ON public.event_rsvps (user_id, created_at DESC);

-- ===========================================================================
-- TRIGGERS
-- ===========================================================================

CREATE OR REPLACE FUNCTION public.on_message_insert()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
BEGIN
  UPDATE public.conversations
  SET last_message_id = NEW.id,
      last_message_at = NEW.created_at
  WHERE id = NEW.conversation_id;

  UPDATE public.conversation_members
  SET unread_count = unread_count + 1
  WHERE conversation_id = NEW.conversation_id
    AND user_id <> NEW.sender_id
    AND left_at IS NULL;

  RETURN NEW;
END;
$$;

DROP TRIGGER IF EXISTS trg_on_message_insert ON public.messages;
CREATE TRIGGER trg_on_message_insert
AFTER INSERT ON public.messages
FOR EACH ROW
EXECUTE FUNCTION public.on_message_insert();

-- ===========================================================================
-- RPC FUNCTIONS
-- ===========================================================================

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
  IF current_user_id IS NULL THEN
    RAISE EXCEPTION 'Not authenticated';
  END IF;

  IF current_user_id = other_user_id THEN
    RAISE EXCEPTION 'Cannot create conversation with self';
  END IF;

  u1 := LEAST(current_user_id, other_user_id);
  u2 := GREATEST(current_user_id, other_user_id);

  SELECT conversation_id INTO existing_id
  FROM conversation_direct_pairs
  WHERE LEAST(user_a, user_b) = u1
    AND GREATEST(user_a, user_b) = u2;

  IF existing_id IS NOT NULL THEN
    RETURN existing_id;
  END IF;

  new_conversation_id := gen_random_uuid();

  INSERT INTO conversations (id, type, created_by)
  VALUES (new_conversation_id, 'direct', current_user_id);

  INSERT INTO conversation_direct_pairs (conversation_id, user_a, user_b)
  VALUES (new_conversation_id, u1, u2);

  INSERT INTO conversation_members (conversation_id, user_id, role)
  VALUES 
    (new_conversation_id, current_user_id, 'owner'),
    (new_conversation_id, other_user_id, 'member');

  RETURN new_conversation_id;

EXCEPTION WHEN unique_violation THEN
  SELECT conversation_id INTO existing_id
  FROM conversation_direct_pairs
  WHERE LEAST(user_a, user_b) = u1
    AND GREATEST(user_a, user_b) = u2;
  
  RETURN existing_id;
END;
$$;

GRANT EXECUTE ON FUNCTION public.create_direct_conversation(UUID) TO authenticated;

-- ===========================================================================

CREATE OR REPLACE FUNCTION public.mark_conversation_read(
  p_conversation_id UUID,
  p_upto_message_id UUID DEFAULT NULL
)
RETURNS VOID
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
  v_uid UUID := auth.uid();
  v_cutoff TIMESTAMPTZ;
BEGIN
  IF v_uid IS NULL THEN
    RAISE EXCEPTION 'Not authenticated';
  END IF;

  IF p_upto_message_id IS NULL THEN
    SELECT MAX(created_at) INTO v_cutoff
    FROM messages
    WHERE conversation_id = p_conversation_id
      AND deleted_at IS NULL;
  ELSE
    SELECT created_at INTO v_cutoff
    FROM messages
    WHERE id = p_upto_message_id;
  END IF;

  UPDATE conversation_members
  SET unread_count = 0,
      last_read_message_id = p_upto_message_id,
      last_read_at = COALESCE(v_cutoff, NOW())
  WHERE conversation_id = p_conversation_id
    AND user_id = v_uid;
END;
$$;

GRANT EXECUTE ON FUNCTION public.mark_conversation_read(UUID, UUID) TO authenticated;

-- ===========================================================================
DROP FUNCTION IF EXISTS public.get_messages_page(
  UUID,
  INT,
  TIMESTAMPTZ,
  UUID
);


CREATE OR REPLACE FUNCTION public.get_messages_page(
  p_conversation_id UUID,
  p_limit INT DEFAULT 50,
  p_cursor_created_at TIMESTAMPTZ DEFAULT NULL,
  p_cursor_id UUID DEFAULT NULL
)
RETURNS TABLE (
  id UUID,
  conversation_id UUID,
  sender_id UUID,
  kind public.message_kind,
  body TEXT,
  reply_to_message_id UUID,
  edited_at TIMESTAMPTZ,
  deleted_at TIMESTAMPTZ,
  deleted_by UUID,
  created_at TIMESTAMPTZ,
  updated_at TIMESTAMPTZ
)
LANGUAGE sql STABLE
AS $$
  SELECT m.id, m.conversation_id, m.sender_id, m.kind, m.body,
         m.reply_to_message_id, m.edited_at, m.deleted_at, m.deleted_by,
         m.created_at, m.updated_at
  FROM messages m
  WHERE m.conversation_id = p_conversation_id
    AND (p_cursor_created_at IS NULL OR 
         (m.created_at, m.id) < (p_cursor_created_at, p_cursor_id))
  ORDER BY m.created_at DESC, m.id DESC
  LIMIT LEAST(GREATEST(p_limit, 1), 200);
$$;

GRANT EXECUTE ON FUNCTION public.get_messages_page(UUID, INT, TIMESTAMPTZ, UUID) TO authenticated;

-- ===========================================================================

CREATE OR REPLACE FUNCTION public.has_blocked_member_in_conversation(
  p_conversation_id UUID,
  p_user_id UUID
)
RETURNS BOOLEAN
LANGUAGE sql
SECURITY DEFINER
AS $$
  SELECT EXISTS (
    SELECT 1
    FROM conversation_members cm
    JOIN user_blocks b ON (
      (b.blocker_id = p_user_id AND b.blocked_id = cm.user_id)
      OR (b.blocker_id = cm.user_id AND b.blocked_id = p_user_id)
    )
    WHERE cm.conversation_id = p_conversation_id
      AND cm.left_at IS NULL
  );
$$;

GRANT EXECUTE ON FUNCTION public.has_blocked_member_in_conversation(UUID, UUID) TO authenticated;

-- ===========================================================================
-- VIEW
-- ===========================================================================

CREATE OR REPLACE VIEW public.v_conversation_list
WITH (security_invoker=true) AS
SELECT 
  cm.user_id,
  cm.conversation_id,
  cm.role,
  cm.joined_at,
  cm.last_read_message_id,
  cm.last_read_at,
  cm.unread_count,
  cm.muted_until,
  c.type,
  c.title,
  c.photo_url,
  c.created_by,
  c.last_message_id,
  c.last_message_at,
  c.created_at AS conversation_created_at
FROM conversation_members cm
JOIN conversations c ON c.id = cm.conversation_id
WHERE cm.left_at IS NULL
ORDER BY c.last_message_at DESC NULLS LAST;

-- ===========================================================================
-- RLS POLICIES
-- ===========================================================================

ALTER TABLE public.conversations ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.conversation_members ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.conversation_direct_pairs ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.messages ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.message_attachments ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.message_reads ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.message_call_payload ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.message_poll_payload ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.poll_options ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.poll_votes ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.message_event_payload ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.event_rsvps ENABLE ROW LEVEL SECURITY;

-- Conversations
DROP POLICY IF EXISTS "conversations_select" ON public.conversations;
CREATE POLICY "conversations_select" ON public.conversations
FOR SELECT TO authenticated
USING (id IN (SELECT public.my_conversation_ids()));

DROP POLICY IF EXISTS "conversations_insert" ON public.conversations;
CREATE POLICY "conversations_insert" ON public.conversations
FOR INSERT TO authenticated
WITH CHECK (created_by = auth.uid());

DROP POLICY IF EXISTS "conversations_update" ON public.conversations;
CREATE POLICY "conversations_update" ON public.conversations
FOR UPDATE TO authenticated
USING (
  id IN (SELECT public.my_conversation_ids())
  AND (
    created_by = auth.uid()
    OR EXISTS (
      SELECT 1 FROM conversation_members
      WHERE conversation_id = conversations.id
        AND user_id = auth.uid()
        AND role IN ('admin', 'owner')
    )
  )
);

-- Conversation Members
DROP POLICY IF EXISTS "members_select" ON public.conversation_members;
CREATE POLICY "members_select" ON public.conversation_members
FOR SELECT TO authenticated
USING (
  conversation_id IN (SELECT public.my_conversation_ids())
  AND NOT public.has_blocked_member_in_conversation(conversation_id, auth.uid())
);

DROP POLICY IF EXISTS "members_update_self" ON public.conversation_members;
CREATE POLICY "members_update_self" ON public.conversation_members
FOR UPDATE TO authenticated
USING (user_id = auth.uid())
WITH CHECK (user_id = auth.uid());

-- Direct Pairs
DROP POLICY IF EXISTS "direct_pairs_select" ON public.conversation_direct_pairs;
CREATE POLICY "direct_pairs_select" ON public.conversation_direct_pairs
FOR SELECT TO authenticated
USING (user_a = auth.uid() OR user_b = auth.uid());

-- Messages
DROP POLICY IF EXISTS "messages_select" ON public.messages;
CREATE POLICY "messages_select" ON public.messages
FOR SELECT TO authenticated
USING (conversation_id IN (SELECT public.my_conversation_ids()));

DROP POLICY IF EXISTS "messages_insert" ON public.messages;
CREATE POLICY "messages_insert" ON public.messages
FOR INSERT TO authenticated
WITH CHECK (
  sender_id = auth.uid()
  AND conversation_id IN (SELECT public.my_conversation_ids())
);

DROP POLICY IF EXISTS "messages_update" ON public.messages;
CREATE POLICY "messages_update" ON public.messages
FOR UPDATE TO authenticated
USING (sender_id = auth.uid())
WITH CHECK (sender_id = auth.uid());

-- Message Attachments
DROP POLICY IF EXISTS "attachments_select" ON public.message_attachments;
CREATE POLICY "attachments_select" ON public.message_attachments
FOR SELECT TO authenticated
USING (
  message_id IN (
    SELECT id FROM messages
    WHERE conversation_id IN (SELECT public.my_conversation_ids())
  )
);

DROP POLICY IF EXISTS "attachments_insert" ON public.message_attachments;
CREATE POLICY "attachments_insert" ON public.message_attachments
FOR INSERT TO authenticated
WITH CHECK (
  message_id IN (
    SELECT id FROM messages WHERE sender_id = auth.uid()
  )
);

-- Message Reads
DROP POLICY IF EXISTS "reads_select" ON public.message_reads;
CREATE POLICY "reads_select" ON public.message_reads
FOR SELECT TO authenticated
USING (
  message_id IN (
    SELECT id FROM messages
    WHERE conversation_id IN (SELECT public.my_conversation_ids())
  )
);

DROP POLICY IF EXISTS "reads_insert" ON public.message_reads;
CREATE POLICY "reads_insert" ON public.message_reads
FOR INSERT TO authenticated
WITH CHECK (user_id = auth.uid());

-- Call Payload
DROP POLICY IF EXISTS "call_select" ON public.message_call_payload;
CREATE POLICY "call_select" ON public.message_call_payload
FOR SELECT TO authenticated
USING (
  message_id IN (
    SELECT id FROM messages
    WHERE conversation_id IN (SELECT public.my_conversation_ids())
  )
);

DROP POLICY IF EXISTS "call_insert" ON public.message_call_payload;
CREATE POLICY "call_insert" ON public.message_call_payload
FOR INSERT TO authenticated
WITH CHECK (
  message_id IN (
    SELECT id FROM messages
    WHERE sender_id = auth.uid()
      AND conversation_id IN (SELECT public.my_conversation_ids())
  )
);

-- Poll Payload
DROP POLICY IF EXISTS "poll_select" ON public.message_poll_payload;
CREATE POLICY "poll_select" ON public.message_poll_payload
FOR SELECT TO authenticated
USING (
  message_id IN (
    SELECT id FROM messages
    WHERE conversation_id IN (SELECT public.my_conversation_ids())
  )
);

DROP POLICY IF EXISTS "poll_insert" ON public.message_poll_payload;
CREATE POLICY "poll_insert" ON public.message_poll_payload
FOR INSERT TO authenticated
WITH CHECK (
  message_id IN (
    SELECT id FROM messages
    WHERE sender_id = auth.uid()
      AND conversation_id IN (SELECT public.my_conversation_ids())
  )
);

-- Poll Options
DROP POLICY IF EXISTS "poll_options_select" ON public.poll_options;
CREATE POLICY "poll_options_select" ON public.poll_options
FOR SELECT TO authenticated
USING (
  poll_message_id IN (
    SELECT message_id FROM message_poll_payload p
    JOIN messages m ON m.id = p.message_id
    WHERE m.conversation_id IN (SELECT public.my_conversation_ids())
  )
);

DROP POLICY IF EXISTS "poll_options_insert" ON public.poll_options;
CREATE POLICY "poll_options_insert" ON public.poll_options
FOR INSERT TO authenticated
WITH CHECK (
  poll_message_id IN (
    SELECT message_id FROM message_poll_payload p
    JOIN messages m ON m.id = p.message_id
    WHERE m.sender_id = auth.uid()
  )
);

-- Poll Votes
DROP POLICY IF EXISTS "poll_votes_select" ON public.poll_votes;
CREATE POLICY "poll_votes_select" ON public.poll_votes
FOR SELECT TO authenticated
USING (
  poll_option_id IN (
    SELECT po.id FROM poll_options po
    JOIN message_poll_payload p ON p.message_id = po.poll_message_id
    JOIN messages m ON m.id = p.message_id
    WHERE m.conversation_id IN (SELECT public.my_conversation_ids())
  )
);

DROP POLICY IF EXISTS "poll_votes_insert" ON public.poll_votes;
CREATE POLICY "poll_votes_insert" ON public.poll_votes
FOR INSERT TO authenticated
WITH CHECK (user_id = auth.uid());

-- Event Payload
DROP POLICY IF EXISTS "event_select" ON public.message_event_payload;
CREATE POLICY "event_select" ON public.message_event_payload
FOR SELECT TO authenticated
USING (
  message_id IN (
    SELECT id FROM messages
    WHERE conversation_id IN (SELECT public.my_conversation_ids())
  )
);

DROP POLICY IF EXISTS "event_insert" ON public.message_event_payload;
CREATE POLICY "event_insert" ON public.message_event_payload
FOR INSERT TO authenticated
WITH CHECK (
  message_id IN (
    SELECT id FROM messages
    WHERE sender_id = auth.uid()
      AND conversation_id IN (SELECT public.my_conversation_ids())
  )
);

-- Event RSVPs
DROP POLICY IF EXISTS "event_rsvps_select" ON public.event_rsvps;
CREATE POLICY "event_rsvps_select" ON public.event_rsvps
FOR SELECT TO authenticated
USING (
  event_message_id IN (
    SELECT e.message_id FROM message_event_payload e
    JOIN messages m ON m.id = e.message_id
    WHERE m.conversation_id IN (SELECT public.my_conversation_ids())
  )
);

DROP POLICY IF EXISTS "event_rsvps_insert" ON public.event_rsvps;
CREATE POLICY "event_rsvps_insert" ON public.event_rsvps
FOR INSERT TO authenticated
WITH CHECK (user_id = auth.uid());

DROP POLICY IF EXISTS "event_rsvps_update" ON public.event_rsvps;
CREATE POLICY "event_rsvps_update" ON public.event_rsvps
FOR UPDATE TO authenticated
USING (user_id = auth.uid())
WITH CHECK (user_id = auth.uid());

-- ===========================================================================
-- GRANTS
-- ===========================================================================

-- Tables
GRANT SELECT ON public.conversations TO authenticated;
GRANT INSERT ON public.conversations TO authenticated;
GRANT UPDATE ON public.conversations TO authenticated;

GRANT SELECT ON public.conversation_members TO authenticated;
GRANT INSERT ON public.conversation_members TO authenticated;
GRANT UPDATE ON public.conversation_members TO authenticated;

GRANT SELECT ON public.conversation_direct_pairs TO authenticated;
GRANT INSERT ON public.conversation_direct_pairs TO authenticated;

GRANT SELECT ON public.messages TO authenticated;
GRANT INSERT ON public.messages TO authenticated;
GRANT UPDATE ON public.messages TO authenticated;

GRANT SELECT ON public.message_attachments TO authenticated;
GRANT INSERT ON public.message_attachments TO authenticated;

GRANT SELECT ON public.message_reads TO authenticated;
GRANT INSERT ON public.message_reads TO authenticated;

GRANT SELECT ON public.message_call_payload TO authenticated;
GRANT INSERT ON public.message_call_payload TO authenticated;
GRANT UPDATE ON public.message_call_payload TO authenticated;

GRANT SELECT ON public.message_poll_payload TO authenticated;
GRANT INSERT ON public.message_poll_payload TO authenticated;

GRANT SELECT ON public.poll_options TO authenticated;
GRANT INSERT ON public.poll_options TO authenticated;

GRANT SELECT ON public.poll_votes TO authenticated;
GRANT INSERT ON public.poll_votes TO authenticated;
GRANT UPDATE ON public.poll_votes TO authenticated;

GRANT SELECT ON public.message_event_payload TO authenticated;
GRANT INSERT ON public.message_event_payload TO authenticated;

GRANT SELECT ON public.event_rsvps TO authenticated;
GRANT INSERT ON public.event_rsvps TO authenticated;
GRANT UPDATE ON public.event_rsvps TO authenticated;

-- View
GRANT SELECT ON public.v_conversation_list TO authenticated;

-- ===========================================================================
-- REALTIME PUBLICATION
-- ===========================================================================

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM pg_publication_tables
    WHERE pubname = 'supabase_realtime'
      AND schemaname = 'public'
      AND tablename = 'messages'
  ) THEN
    ALTER PUBLICATION supabase_realtime ADD TABLE public.messages;
  END IF;

  IF NOT EXISTS (
    SELECT 1 FROM pg_publication_tables
    WHERE pubname = 'supabase_realtime'
      AND schemaname = 'public'
      AND tablename = 'conversation_members'
  ) THEN
    ALTER PUBLICATION supabase_realtime ADD TABLE public.conversation_members;
  END IF;

  IF NOT EXISTS (
    SELECT 1 FROM pg_publication_tables
    WHERE pubname = 'supabase_realtime'
      AND schemaname = 'public'
      AND tablename = 'message_reads'
  ) THEN
    ALTER PUBLICATION supabase_realtime ADD TABLE public.message_reads;
  END IF;
END $$;

COMMIT;