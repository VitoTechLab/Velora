-- CONCURRENT INDEX CREATION (must be outside transaction)
-- Composite index for cursor pagination on messages
CREATE INDEX CONCURRENTLY IF NOT EXISTS idx_messages_conversation_cursor 
ON public.messages(conversation_id, created_at DESC, id DESC)
WHERE deleted_at IS NULL;

-- Index for finding last message per conversation
CREATE INDEX CONCURRENTLY IF NOT EXISTS idx_messages_last_per_conversation
ON public.messages(conversation_id, created_at DESC)
WHERE deleted_at IS NULL;

-- Index for read receipt lookups
CREATE INDEX CONCURRENTLY IF NOT EXISTS idx_message_reads_lookup
ON public.message_reads(message_id, user_id);

