begin;

-- NOTE: set_updated_at() sudah didefinisikan di 20251226144212_create_user_profiles_schema.sql
-- Fungsi ini tidak perlu dibuat ulang karena sudah ada

-- Presence table: simpan last_seen user (heartbeat) untuk status online/offline.
create table if not exists public.user_presence (
  user_id uuid primary key references auth.users(id) on delete cascade,
  last_seen_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

-- Index: percepat query list user berdasarkan aktivitas terakhir (last_seen_at terbaru).
create index if not exists idx_user_presence_last_seen_at
  on public.user_presence (last_seen_at desc);

-- Trigger: pastikan updated_at selalu terisi now() saat terjadi UPDATE row.
drop trigger if exists set_user_presence_updated_at on public.user_presence;
create trigger set_user_presence_updated_at
before update on public.user_presence
for each row
execute function public.set_updated_at();

-- RPC heartbeat: upsert last_seen berdasarkan auth.uid() agar client tidak menulis langsung ke tabel.
create or replace function public.touch_presence()
returns void
language plpgsql
security definer
set search_path = public
as $$
begin
  insert into public.user_presence (user_id, last_seen_at, updated_at)
  values (auth.uid(), now(), now())
  on conflict (user_id) do update
    set last_seen_at = excluded.last_seen_at,
        updated_at   = excluded.updated_at;
end;
$$;

-- View: hitung is_online dari last_seen_at (online jika <= 2 menit terakhir).
create or replace view public.user_presence_view as
select
  p.user_id,
  p.last_seen_at,
  (now() - p.last_seen_at) <= interval '2 minutes' as is_online
from public.user_presence p;

-- RLS: batasi akses row presence sesuai aturan privasi/follow/block.
alter table public.user_presence enable row level security;

-- Policy SELECT: boleh lihat diri sendiri, selain itu hanya jika show_activity_status true, tidak saling block, dan (target public atau viewer follow target).
drop policy if exists "presence_select_private_block" on public.user_presence;
create policy "presence_select_private_block"
on public.user_presence
for select
to authenticated
using (
  user_id = auth.uid()
  or (
    coalesce(
      (select up.show_activity_status from public.user_profiles up where up.id = user_id),
      true
    ) = true
    and not exists (
      select 1
      from public.user_blocks b
      where (b.blocker_id = auth.uid() and b.blocked_id = user_id)
         or (b.blocker_id = user_id and b.blocked_id = auth.uid())
    )
    and (
      coalesce(
        (select up2.is_private from public.user_profiles up2 where up2.id = user_id),
        false
      ) = false
      or exists (
        select 1
        from public.user_follows f
        where f.follower_id = auth.uid()
          and f.following_id = user_id
      )
    )
  )
);

-- Policy INSERT: izinkan user insert presence miliknya sendiri dengan timestamp wajar (anti future-timestamp).
drop policy if exists "presence_insert_own" on public.user_presence;
create policy "presence_insert_own"
on public.user_presence
for insert
to authenticated
with check (
  user_id = auth.uid()
  and last_seen_at <= now() + interval '1 minute'
);

-- Policy UPDATE: izinkan user update presence miliknya sendiri dengan timestamp wajar (anti future-timestamp).
drop policy if exists "presence_update_own" on public.user_presence;
create policy "presence_update_own"
on public.user_presence
for update
to authenticated
using (user_id = auth.uid())
with check (
  user_id = auth.uid()
  and last_seen_at <= now() + interval '1 minute'
);

-- Realtime publication: aktifkan broadcast perubahan user_presence untuk subscribe realtime.
do $$
begin
  if not exists (
    select 1
    from pg_publication_tables
    where pubname = 'supabase_realtime'
      and schemaname = 'public'
      and tablename = 'user_presence'
  ) then
    alter publication supabase_realtime add table public.user_presence;
  end if;
end $$;

commit;
