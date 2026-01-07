BEGIN;

-- =========================================================
-- ENUMS
-- =========================================================
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

-- =========================================================
-- HELPER FUNCTIONS
-- =========================================================

-- Conversations
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

-- Conversation Members
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

-- RLS helper: cached per-request conversation IDs for current user
CREATE OR REPLACE FUNCTION public.my_conversation_ids()
RETURNS SETOF uuid
LANGUAGE sql STABLE SECURITY DEFINER
SET search_path = public
AS $$
  SELECT conversation_id 
  FROM conversation_members 
  WHERE user_id = auth.uid() AND left_at IS NULL;
$$;

-- =========================================================
-- CORE TABLES
-- =========================================================

DROP TRIGGER IF EXISTS set_conversations_updated_at ON public.conversations;
CREATE TRIGGER set_conversations_updated_at
  BEFORE UPDATE ON public.conversations
  FOR EACH ROW EXECUTE FUNCTION public.set_updated_at();



DROP TRIGGER IF EXISTS set_conversation_members_updated_at ON public.conversation_members;
CREATE TRIGGER set_conversation_members_updated_at
  BEFORE UPDATE ON public.conversation_members
  FOR EACH ROW EXECUTE FUNCTION public.set_updated_at();

-- Direct Pairs (enforce unique 1:1 conversation)
CREATE TABLE IF NOT EXISTS public.conversation_direct_pairs (
  conversation_id UUID PRIMARY KEY REFERENCES public.conversations(id) ON DELETE CASCADE,
  user_a UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  user_b UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  CONSTRAINT chk_direct_pair_neq CHECK (user_a <> user_b)
);

CREATE UNIQUE INDEX IF NOT EXISTS ux_direct_pair
  ON public.conversation_direct_pairs (LEAST(user_a, user_b), GREATEST(user_a, user_b));

-- Messages
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

DROP TRIGGER IF EXISTS set_messages_updated_at ON public.messages;
CREATE TRIGGER set_messages_updated_at
  BEFORE UPDATE ON public.messages
  FOR EACH ROW EXECUTE FUNCTION public.set_updated_at();

-- Message Reads (per-message receipts for group "seen by")
CREATE TABLE IF NOT EXISTS public.message_reads (
  message_id UUID NOT NULL REFERENCES public.messages(id) ON DELETE CASCADE,
  user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  read_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  PRIMARY KEY (message_id, user_id)
);

-- Message Attachments
CREATE TABLE IF NOT EXISTS public.message_attachments (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  message_id UUID NOT NULL REFERENCES public.messages(id) ON DELETE CASCADE,
  kind public.attachment_kind NOT NULL,
  bucket TEXT NOT NULL DEFAULT 'chat',
  path TEXT NOT NULL,
  mime_type TEXT,
  size_bytes BIGINT,
  width INT,
  height INT,
  duration_ms INT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- =========================================================
-- PAYLOAD TABLES
-- =========================================================

-- Call Payload
CREATE TABLE IF NOT EXISTS public.message_call_payload (
  message_id UUID PRIMARY KEY REFERENCES public.messages(id) ON DELETE CASCADE,
  call_kind public.call_kind NOT NULL,
  state public.call_state NOT NULL,
  duration_ms INT,
  started_at TIMESTAMPTZ,
  ended_at TIMESTAMPTZ,
  participants JSONB NOT NULL DEFAULT '[]'::JSONB
);

-- Poll Payload
CREATE TABLE IF NOT EXISTS public.message_poll_payload (
  message_id UUID PRIMARY KEY REFERENCES public.messages(id) ON DELETE CASCADE,
  question TEXT NOT NULL,
  allows_multiple BOOLEAN NOT NULL DEFAULT FALSE,
  closes_at TIMESTAMPTZ
);

CREATE TABLE IF NOT EXISTS public.poll_options (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  poll_message_id UUID NOT NULL REFERENCES public.message_poll_payload(message_id) ON DELETE CASCADE,
  option_text TEXT NOT NULL,
  position INT NOT NULL DEFAULT 0
);

CREATE UNIQUE INDEX IF NOT EXISTS ux_poll_options_position
  ON public.poll_options(poll_message_id, position);

CREATE TABLE IF NOT EXISTS public.poll_votes (
  poll_option_id UUID NOT NULL REFERENCES public.poll_options(id) ON DELETE CASCADE,
  user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  PRIMARY KEY (poll_option_id, user_id)
);

-- Event Payload
CREATE TABLE IF NOT EXISTS public.message_event_payload (
  message_id UUID PRIMARY KEY REFERENCES public.messages(id) ON DELETE CASCADE,
  title TEXT NOT NULL,
  starts_at TIMESTAMPTZ NOT NULL,
  ends_at TIMESTAMPTZ,
  location TEXT,
  notes TEXT
);

CREATE TABLE IF NOT EXISTS public.event_rsvps (
  event_message_id UUID NOT NULL REFERENCES public.message_event_payload(message_id) ON DELETE CASCADE,
  user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  status public.rsvp_status NOT NULL,
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  PRIMARY KEY (event_message_id, user_id)
);

-- =========================================================
-- INDEXES (Performance Critical)
-- =========================================================

-- Members: RLS + realtime filter (CRITICAL)
CREATE INDEX IF NOT EXISTS idx_cm_user_active 
  ON public.conversation_members(user_id, conversation_id) 
  WHERE left_at IS NULL;

CREATE INDEX IF NOT EXISTS idx_cm_conversation_lookup
  ON public.conversation_members(conversation_id, user_id, left_at);

-- Messages: pagination + realtime
CREATE INDEX IF NOT EXISTS idx_messages_conversation_created
  ON public.messages(conversation_id, created_at DESC);

CREATE INDEX IF NOT EXISTS idx_messages_conversation_id
  ON public.messages(conversation_id);

CREATE INDEX IF NOT EXISTS idx_messages_reply_to
  ON public.messages(reply_to_message_id) WHERE reply_to_message_id IS NOT NULL;

-- Unread recompute optimization
CREATE INDEX IF NOT EXISTS idx_messages_unread_calc
  ON public.messages(conversation_id, created_at, sender_id)
  WHERE deleted_at IS NULL;

-- Attachments
CREATE INDEX IF NOT EXISTS idx_attachments_message
  ON public.message_attachments(message_id);

-- Reads
CREATE INDEX IF NOT EXISTS idx_reads_user
  ON public.message_reads(user_id, read_at DESC);

-- Poll votes
CREATE INDEX IF NOT EXISTS idx_poll_votes_user
  ON public.poll_votes(user_id, created_at DESC);

-- NOTE: Trigram indexes untuk user search sebaiknya di file user_profiles_schema.sql
-- Ditambahkan di sini untuk fallback jika belum ada
CREATE INDEX IF NOT EXISTS idx_user_profiles_username_trgm
  ON public.user_profiles USING GIN (LOWER(username) gin_trgm_ops);

CREATE INDEX IF NOT EXISTS idx_user_profiles_full_name_trgm
  ON public.user_profiles USING GIN (LOWER(full_name) gin_trgm_ops);

-- =========================================================
-- TRIGGERS
-- =========================================================

-- On message insert: update conversation + increment unread
CREATE OR REPLACE FUNCTION public.on_message_insert()
RETURNS TRIGGER LANGUAGE plpgsql AS $$
BEGIN
  -- Update last message pointer
  UPDATE public.conversations
  SET last_message_id = NEW.id,
      last_message_at = NEW.created_at,
      updated_at = NOW()
  WHERE id = NEW.conversation_id;

  -- Increment unread for other active members (not muted)
  UPDATE public.conversation_members
  SET unread_count = unread_count + 1,
      updated_at = NOW()
  WHERE conversation_id = NEW.conversation_id
    AND left_at IS NULL
    AND user_id <> COALESCE(NEW.sender_id, '00000000-0000-0000-0000-000000000000'::UUID)
    AND (muted_until IS NULL OR muted_until < NOW());

  RETURN NEW;
END;
$$;

DROP TRIGGER IF EXISTS trg_on_message_insert ON public.messages;
CREATE TRIGGER trg_on_message_insert
  AFTER INSERT ON public.messages
  FOR EACH ROW EXECUTE FUNCTION public.on_message_insert();

-- =========================================================
-- RPC FUNCTIONS
-- =========================================================

-- Create direct conversation (with race-condition safety)
CREATE OR REPLACE FUNCTION public.create_direct_conversation(other_user_id UUID)
RETURNS UUID
LANGUAGE plpgsql SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
  current_user_id UUID := auth.uid();
  existing_id UUID;
  new_conversation_id UUID;
  u1 UUID;
  u2 UUID;
BEGIN
  IF current_user_id IS NULL THEN
    RAISE EXCEPTION 'Not authenticated';
  END IF;

  IF current_user_id = other_user_id THEN
    RAISE EXCEPTION 'Cannot create direct conversation with yourself';
  END IF;

  -- Check if either user has blocked the other
  IF EXISTS (
    SELECT 1 FROM public.user_blocks
    WHERE (blocker_id = current_user_id AND blocked_id = other_user_id)
       OR (blocker_id = other_user_id AND blocked_id = current_user_id)
  ) THEN
    RAISE EXCEPTION 'Cannot create conversation with blocked user';
  END IF;

  u1 := LEAST(current_user_id, other_user_id);
  u2 := GREATEST(current_user_id, other_user_id);

  -- Check existing
  SELECT conversation_id INTO existing_id
  FROM public.conversation_direct_pairs
  WHERE user_a = u1 AND user_b = u2
  LIMIT 1;

  IF existing_id IS NOT NULL THEN
    RETURN existing_id;
  END IF;

  -- Create new
  INSERT INTO public.conversations (type, created_by)
  VALUES ('direct', current_user_id)
  RETURNING id INTO new_conversation_id;

  INSERT INTO public.conversation_members (conversation_id, user_id, role)
  VALUES
    (new_conversation_id, current_user_id, 'admin'),
    (new_conversation_id, other_user_id, 'member');

  INSERT INTO public.conversation_direct_pairs (conversation_id, user_a, user_b)
  VALUES (new_conversation_id, u1, u2);

  RETURN new_conversation_id;

EXCEPTION WHEN unique_violation THEN
  -- Race condition: return existing
  SELECT conversation_id INTO existing_id
  FROM public.conversation_direct_pairs
  WHERE user_a = u1 AND user_b = u2
  LIMIT 1;
  RETURN existing_id;
END;
$$;

GRANT EXECUTE ON FUNCTION public.create_direct_conversation(UUID) TO authenticated;

-- Mark conversation as read
CREATE OR REPLACE FUNCTION public.mark_conversation_read(
  p_conversation_id UUID,
  p_upto_message_id UUID DEFAULT NULL
)
RETURNS VOID
LANGUAGE plpgsql SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
  v_uid UUID := auth.uid();
  v_cutoff TIMESTAMPTZ;
BEGIN
  IF v_uid IS NULL THEN
    RAISE EXCEPTION 'Not authenticated';
  END IF;

  -- Verify membership
  IF NOT EXISTS (
    SELECT 1 FROM public.conversation_members
    WHERE conversation_id = p_conversation_id
      AND user_id = v_uid
      AND left_at IS NULL
  ) THEN
    RAISE EXCEPTION 'Not a member of this conversation';
  END IF;

  -- Determine cutoff timestamp
  IF p_upto_message_id IS NULL THEN
    SELECT last_message_at INTO v_cutoff
    FROM public.conversations
    WHERE id = p_conversation_id;
  ELSE
    SELECT created_at INTO v_cutoff
    FROM public.messages
    WHERE id = p_upto_message_id
      AND conversation_id = p_conversation_id;
  END IF;

  -- Update with recomputed unread count
  UPDATE public.conversation_members
  SET last_read_at = COALESCE(v_cutoff, NOW()),
      last_read_message_id = p_upto_message_id,
      unread_count = CASE 
        WHEN v_cutoff IS NULL THEN 0
        ELSE (
          SELECT COUNT(*)
          FROM public.messages m
          WHERE m.conversation_id = p_conversation_id
            AND m.deleted_at IS NULL
            AND m.created_at > v_cutoff
            AND m.sender_id IS NOT NULL
            AND m.sender_id <> v_uid
        )
      END,
      updated_at = NOW()
  WHERE conversation_id = p_conversation_id
    AND user_id = v_uid;
END;
$$;

GRANT EXECUTE ON FUNCTION public.mark_conversation_read(UUID, UUID) TO authenticated;

-- Paginated messages (keyset pagination)
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
  created_at TIMESTAMPTZ,
  updated_at TIMESTAMPTZ
)
LANGUAGE sql STABLE
AS $$
  SELECT m.id, m.conversation_id, m.sender_id, m.kind, m.body,
         m.reply_to_message_id, m.edited_at, m.deleted_at,
         m.created_at, m.updated_at
  FROM public.messages m
  WHERE m.conversation_id = p_conversation_id
    AND m.deleted_at IS NULL
    AND (
      p_cursor_created_at IS NULL
      OR (m.created_at, m.id) < (p_cursor_created_at, p_cursor_id)
    )
  ORDER BY m.created_at DESC, m.id DESC
  LIMIT LEAST(GREATEST(p_limit, 1), 200);
$$;

GRANT EXECUTE ON FUNCTION public.get_messages_page(UUID, INT, TIMESTAMPTZ, UUID) TO authenticated;

-- Conversation Members
CREATE OR REPLACE FUNCTION public.has_blocked_member_in_conversation(
  p_conversation_id uuid,
  p_user_id uuid
)
RETURNS boolean
LANGUAGE sql
SECURITY DEFINER
AS $$
  SELECT EXISTS (
    SELECT 1
    FROM public.conversation_members cm
    JOIN public.user_blocks b ON (
      (b.blocker_id = p_user_id AND b.blocked_id = cm.user_id)
      OR (b.blocker_id = cm.user_id AND b.blocked_id = p_user_id)
    )
    WHERE cm.conversation_id = p_conversation_id
      AND cm.user_id != p_user_id
      AND cm.left_at IS NULL
  );
$$;

-- =========================================================
-- VIEWS
-- =========================================================

-- Conversation list for UI
create view public.v_conversation_list with (security_invoker = on) as
 SELECT cm.user_id,
    c.id AS conversation_id,
    c.type,
    c.title,
    c.photo_url,
    c.last_message_at,
    c.last_message_id,
    m.kind AS last_message_kind,
        CASE
            WHEN m.kind = 'text'::message_kind THEN "left"(COALESCE(m.body, ''::text), 120)
            WHEN m.kind = 'call'::message_kind THEN '[Call]'::text
            WHEN m.kind = 'poll'::message_kind THEN '[Poll]'::text
            WHEN m.kind = 'event'::message_kind THEN '[Event]'::text
            WHEN m.kind = 'image'::message_kind THEN '[Photo]'::text
            WHEN m.kind = 'video'::message_kind THEN '[Video]'::text
            ELSE '[Message]'::text
        END AS last_message_preview,
    cm.unread_count,
    cm.last_read_at
   FROM conversation_members cm
     JOIN conversations c ON c.id = cm.conversation_id
     LEFT JOIN messages m ON m.id = c.last_message_id
  WHERE cm.left_at IS NULL AND c.last_message_id IS NOT NULL AND NOT (EXISTS ( SELECT 1
           FROM conversation_members other_cm
             JOIN user_blocks b ON b.blocker_id = cm.user_id AND b.blocked_id = other_cm.user_id OR b.blocker_id = other_cm.user_id AND b.blocked_id = cm.user_id
          WHERE other_cm.conversation_id = cm.conversation_id AND other_cm.user_id <> cm.user_id AND other_cm.left_at IS NULL));

-- =========================================================
-- ROW LEVEL SECURITY
-- =========================================================

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
  USING (EXISTS (
    SELECT 1 FROM public.conversation_members
    WHERE conversation_id = id
      AND user_id = auth.uid()
      AND left_at IS NULL
      AND role IN ('admin', 'owner')
  ));

DROP POLICY IF EXISTS "members_select" ON public.conversation_members;

CREATE POLICY "members_select" ON public.conversation_members
  FOR SELECT TO authenticated
  USING (
    conversation_id IN (SELECT public.my_conversation_ids())
    AND NOT public.has_blocked_member_in_conversation(
      conversation_id,
      auth.uid()
    )
  );

DROP POLICY IF EXISTS "members_update_self" ON public.conversation_members;
CREATE POLICY "members_update_self" ON public.conversation_members
  FOR UPDATE TO authenticated
  USING (user_id = auth.uid())
  WITH CHECK (user_id = auth.uid());

-- Direct Pairs (prevent leak of who chats with who)
DROP POLICY IF EXISTS "direct_pairs_select" ON public.conversation_direct_pairs;
CREATE POLICY "direct_pairs_select" ON public.conversation_direct_pairs
  FOR SELECT TO authenticated
  USING (user_a = auth.uid() OR user_b = auth.uid());

-- Messages (optimized with helper function)
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

-- Attachments
DROP POLICY IF EXISTS "attachments_select" ON public.message_attachments;
CREATE POLICY "attachments_select" ON public.message_attachments
  FOR SELECT TO authenticated
  USING (EXISTS (
    SELECT 1 FROM public.messages m
    WHERE m.id = message_id
      AND m.conversation_id IN (SELECT public.my_conversation_ids())
  ));

DROP POLICY IF EXISTS "attachments_insert" ON public.message_attachments;
CREATE POLICY "attachments_insert" ON public.message_attachments
  FOR INSERT TO authenticated
  WITH CHECK (EXISTS (
    SELECT 1 FROM public.messages m
    WHERE m.id = message_id AND m.sender_id = auth.uid()
  ));

-- Message Reads
DROP POLICY IF EXISTS "reads_select" ON public.message_reads;
CREATE POLICY "reads_select" ON public.message_reads
  FOR SELECT TO authenticated
  USING (EXISTS (
    SELECT 1 FROM public.messages m
    WHERE m.id = message_id
      AND m.conversation_id IN (SELECT public.my_conversation_ids())
  ));

DROP POLICY IF EXISTS "reads_insert" ON public.message_reads;
CREATE POLICY "reads_insert" ON public.message_reads
  FOR INSERT TO authenticated
  WITH CHECK (user_id = auth.uid());

-- Call Payload
DROP POLICY IF EXISTS "call_select" ON public.message_call_payload;
CREATE POLICY "call_select" ON public.message_call_payload
  FOR SELECT TO authenticated
  USING (EXISTS (
    SELECT 1 FROM public.messages m
    WHERE m.id = message_id
      AND m.conversation_id IN (SELECT public.my_conversation_ids())
  ));

DROP POLICY IF EXISTS "call_insert" ON public.message_call_payload;
CREATE POLICY "call_insert" ON public.message_call_payload
  FOR INSERT TO authenticated
  WITH CHECK (EXISTS (
    SELECT 1 FROM public.messages m
    WHERE m.id = message_id
      AND m.sender_id = auth.uid()
      AND m.kind = 'call'
  ));

-- Poll Payload
DROP POLICY IF EXISTS "poll_select" ON public.message_poll_payload;
CREATE POLICY "poll_select" ON public.message_poll_payload
  FOR SELECT TO authenticated
  USING (EXISTS (
    SELECT 1 FROM public.messages m
    WHERE m.id = message_id
      AND m.conversation_id IN (SELECT public.my_conversation_ids())
  ));

DROP POLICY IF EXISTS "poll_insert" ON public.message_poll_payload;
CREATE POLICY "poll_insert" ON public.message_poll_payload
  FOR INSERT TO authenticated
  WITH CHECK (EXISTS (
    SELECT 1 FROM public.messages m
    WHERE m.id = message_id
      AND m.sender_id = auth.uid()
      AND m.kind = 'poll'
  ));

-- Poll Options
DROP POLICY IF EXISTS "poll_options_select" ON public.poll_options;
CREATE POLICY "poll_options_select" ON public.poll_options
  FOR SELECT TO authenticated
  USING (EXISTS (
    SELECT 1 FROM public.message_poll_payload pp
    JOIN public.messages m ON m.id = pp.message_id
    WHERE pp.message_id = poll_message_id
      AND m.conversation_id IN (SELECT public.my_conversation_ids())
  ));

DROP POLICY IF EXISTS "poll_options_insert" ON public.poll_options;
CREATE POLICY "poll_options_insert" ON public.poll_options
  FOR INSERT TO authenticated
  WITH CHECK (EXISTS (
    SELECT 1 FROM public.message_poll_payload pp
    JOIN public.messages m ON m.id = pp.message_id
    WHERE pp.message_id = poll_message_id
      AND m.sender_id = auth.uid()
  ));

-- Poll Votes
DROP POLICY IF EXISTS "poll_votes_select" ON public.poll_votes;
CREATE POLICY "poll_votes_select" ON public.poll_votes
  FOR SELECT TO authenticated
  USING (EXISTS (
    SELECT 1 FROM public.poll_options po
    JOIN public.message_poll_payload pp ON pp.message_id = po.poll_message_id
    JOIN public.messages m ON m.id = pp.message_id
    WHERE po.id = poll_option_id
      AND m.conversation_id IN (SELECT public.my_conversation_ids())
  ));

DROP POLICY IF EXISTS "poll_votes_insert" ON public.poll_votes;
CREATE POLICY "poll_votes_insert" ON public.poll_votes
  FOR INSERT TO authenticated
  WITH CHECK (user_id = auth.uid());

-- Event Payload
DROP POLICY IF EXISTS "event_select" ON public.message_event_payload;
CREATE POLICY "event_select" ON public.message_event_payload
  FOR SELECT TO authenticated
  USING (EXISTS (
    SELECT 1 FROM public.messages m
    WHERE m.id = message_id
      AND m.conversation_id IN (SELECT public.my_conversation_ids())
  ));

DROP POLICY IF EXISTS "event_insert" ON public.message_event_payload;
CREATE POLICY "event_insert" ON public.message_event_payload
  FOR INSERT TO authenticated
  WITH CHECK (EXISTS (
    SELECT 1 FROM public.messages m
    WHERE m.id = message_id
      AND m.sender_id = auth.uid()
      AND m.kind = 'event'
  ));

-- Event RSVPs
DROP POLICY IF EXISTS "event_rsvps_select" ON public.event_rsvps;
CREATE POLICY "event_rsvps_select" ON public.event_rsvps
  FOR SELECT TO authenticated
  USING (EXISTS (
    SELECT 1 FROM public.message_event_payload ep
    JOIN public.messages m ON m.id = ep.message_id
    WHERE ep.message_id = event_message_id
      AND m.conversation_id IN (SELECT public.my_conversation_ids())
  ));

DROP POLICY IF EXISTS "event_rsvps_insert" ON public.event_rsvps;
CREATE POLICY "event_rsvps_insert" ON public.event_rsvps
  FOR INSERT TO authenticated
  WITH CHECK (user_id = auth.uid());

DROP POLICY IF EXISTS "event_rsvps_update" ON public.event_rsvps;
CREATE POLICY "event_rsvps_update" ON public.event_rsvps
  FOR UPDATE TO authenticated
  USING (user_id = auth.uid())
  WITH CHECK (user_id = auth.uid());

-- =========================================================
-- REALTIME PUBLICATION
-- =========================================================

-- Tambahkan tabel chat ke publication supabase_realtime
-- NOTE: user_presence sudah ditambahkan di migration sebelumnya
DO $$
BEGIN
  -- Add messages table if not already in publication
  IF NOT EXISTS (
    SELECT 1 FROM pg_publication_tables
    WHERE pubname = 'supabase_realtime'
      AND schemaname = 'public'
      AND tablename = 'messages'
  ) THEN
    ALTER PUBLICATION supabase_realtime ADD TABLE public.messages;
  END IF;

  -- Add conversations table if not already in publication
  IF NOT EXISTS (
    SELECT 1 FROM pg_publication_tables
    WHERE pubname = 'supabase_realtime'
      AND schemaname = 'public'
      AND tablename = 'conversations'
  ) THEN
    ALTER PUBLICATION supabase_realtime ADD TABLE public.conversations;
  END IF;

  -- Add conversation_members table if not already in publication
  IF NOT EXISTS (
    SELECT 1 FROM pg_publication_tables
    WHERE pubname = 'supabase_realtime'
      AND schemaname = 'public'
      AND tablename = 'conversation_members'
  ) THEN
    ALTER PUBLICATION supabase_realtime ADD TABLE public.conversation_members;
  END IF;
END $$;


COMMIT;
