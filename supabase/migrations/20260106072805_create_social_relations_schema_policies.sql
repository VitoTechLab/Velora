begin;

-- ------------------------------------------------------------
-- 1) BLOCKS
-- ------------------------------------------------------------
create table if not exists public.user_blocks (
  blocker_id uuid not null references auth.users(id) on delete cascade,
  blocked_id uuid not null references auth.users(id) on delete cascade,
  created_at timestamptz not null default now(),

  primary key (blocker_id, blocked_id),
  constraint user_blocks_no_self check (blocker_id <> blocked_id)
);

create index if not exists idx_user_blocks_blocker_created_at
  on public.user_blocks (blocker_id, created_at desc);

create index if not exists idx_user_blocks_blocked_created_at
  on public.user_blocks (blocked_id, created_at desc);

alter table public.user_blocks enable row level security;

drop policy if exists "user_blocks_select_own" on public.user_blocks;
create policy "user_blocks_select_own"
on public.user_blocks
for select
using (blocker_id = auth.uid());

drop policy if exists "user_blocks_insert_own" on public.user_blocks;
create policy "user_blocks_insert_own"
on public.user_blocks
for insert
with check (blocker_id = auth.uid());

drop policy if exists "user_blocks_delete_own" on public.user_blocks;
create policy "user_blocks_delete_own"
on public.user_blocks
for delete
using (blocker_id = auth.uid());


-- ------------------------------------------------------------
-- 2) FOLLOWS
-- ------------------------------------------------------------
create table if not exists public.user_follows (
  follower_id uuid not null references auth.users(id) on delete cascade,
  following_id uuid not null references auth.users(id) on delete cascade,
  created_at timestamptz not null default now(),

  primary key (follower_id, following_id),
  constraint user_follows_no_self_follow check (follower_id <> following_id)
);

create index if not exists idx_user_follows_follower_created_at
  on public.user_follows (follower_id, created_at desc);

create index if not exists idx_user_follows_following_created_at
  on public.user_follows (following_id, created_at desc);

create index if not exists idx_user_follows_follower_following
  on public.user_follows (follower_id, following_id);


-- ------------------------------------------------------------
-- 3) FOLLOW REQUESTS (private accounts)
-- ------------------------------------------------------------
create table if not exists public.user_follow_requests (
  requester_id uuid not null references auth.users(id) on delete cascade,
  target_id uuid not null references auth.users(id) on delete cascade,
  created_at timestamptz not null default now(),

  status text not null default 'pending'
    check (status in ('pending', 'accepted', 'rejected', 'canceled')),

  primary key (requester_id, target_id),
  constraint follow_requests_no_self check (requester_id <> target_id)
);

create index if not exists idx_follow_requests_requester_created_at
  on public.user_follow_requests (requester_id, created_at desc);

create index if not exists idx_follow_requests_target_created_at
  on public.user_follow_requests (target_id, created_at desc);


-- ------------------------------------------------------------
-- 4) MUTE (hide posts from user without unfollowing)
-- ------------------------------------------------------------
create table if not exists public.user_mutes (
  muter_id uuid not null references auth.users(id) on delete cascade,
  muted_id uuid not null references auth.users(id) on delete cascade,
  created_at timestamptz not null default now(),

  primary key (muter_id, muted_id),
  constraint user_mutes_no_self check (muter_id <> muted_id)
);

create index if not exists idx_user_mutes_muter_created_at
  on public.user_mutes (muter_id, created_at desc);

create index if not exists idx_user_mutes_muted_created_at
  on public.user_mutes (muted_id, created_at desc);

alter table public.user_mutes enable row level security;

drop policy if exists "user_mutes_select_own" on public.user_mutes;
create policy "user_mutes_select_own"
on public.user_mutes
for select
using (muter_id = auth.uid());

drop policy if exists "user_mutes_insert_own" on public.user_mutes;
create policy "user_mutes_insert_own"
on public.user_mutes
for insert
with check (muter_id = auth.uid());

drop policy if exists "user_mutes_delete_own" on public.user_mutes;
create policy "user_mutes_delete_own"
on public.user_mutes
for delete
using (muter_id = auth.uid());


-- ------------------------------------------------------------
-- 5) RESTRICT (limit interaction without blocking)
-- ------------------------------------------------------------
create table if not exists public.user_restricts (
  restrictor_id uuid not null references auth.users(id) on delete cascade,
  restricted_id uuid not null references auth.users(id) on delete cascade,
  created_at timestamptz not null default now(),

  primary key (restrictor_id, restricted_id),
  constraint user_restricts_no_self check (restrictor_id <> restricted_id)
);

create index if not exists idx_user_restricts_restrictor_created_at
  on public.user_restricts (restrictor_id, created_at desc);

create index if not exists idx_user_restricts_restricted_created_at
  on public.user_restricts (restricted_id, created_at desc);

alter table public.user_restricts enable row level security;

drop policy if exists "user_restricts_select_own" on public.user_restricts;
create policy "user_restricts_select_own"
on public.user_restricts
for select
using (restrictor_id = auth.uid());

drop policy if exists "user_restricts_insert_own" on public.user_restricts;
create policy "user_restricts_insert_own"
on public.user_restricts
for insert
with check (restrictor_id = auth.uid());

drop policy if exists "user_restricts_delete_own" on public.user_restricts;
create policy "user_restricts_delete_own"
on public.user_restricts
for delete
using (restrictor_id = auth.uid());


-- ------------------------------------------------------------
-- 6) Helper functions (avoid RLS recursion in policies)
-- ------------------------------------------------------------
create or replace function public.is_blocked_between(a uuid, b uuid)
returns boolean
language sql
security definer
set search_path = public
as $$
  select exists (
    select 1
    from public.user_blocks ub
    where (ub.blocker_id = a and ub.blocked_id = b)
       or (ub.blocker_id = b and ub.blocked_id = a)
  );
$$;

create or replace function public.can_view_user_profile(target_user_id uuid)
returns boolean
language plpgsql
stable
security definer
set search_path = public
set row_security = off
as $$
declare
  v uuid;
  priv boolean;
begin
  v := auth.uid();
  if v is null then
    return false;
  end if;

  -- self always allowed
  if v = target_user_id then
    return true;
  end if;

  -- blocked => no access
  if public.is_blocked_between(v, target_user_id) then
    return false;
  end if;

  -- public => allowed
  select up.is_private into priv
  from public.user_profiles up
  where up.id = target_user_id;

  if coalesce(priv, false) = false then
    return true;
  end if;

  -- private => only if viewer follows target
  return exists (
    select 1
    from public.user_follows f
    where f.follower_id = v
      and f.following_id = target_user_id
  );
end;
$$;

-- Alias for can_view_user_profile - used in feed views
create or replace function public.can_view_user_content(target_user_id uuid)
returns boolean
language sql
stable
security definer
set search_path = public
as $$
  select public.can_view_user_profile(target_user_id);
$$;

-- ------------------------------------------------------------
-- 7) RLS + POLICIES
-- ------------------------------------------------------------

-- user_follows policies
alter table public.user_follows enable row level security;

drop policy if exists "user_follows_select_private_block" on public.user_follows;
create policy "user_follows_select_private_block"
on public.user_follows
for select
using (
  auth.uid() = follower_id
  or auth.uid() = following_id
  or (
    auth.uid() is not null
    and public.is_blocked_between(auth.uid(), follower_id) = false
    and public.is_blocked_between(auth.uid(), following_id) = false
    and (
      public.can_view_user_profile(follower_id)
      or public.can_view_user_profile(following_id)
    )
  )
);

-- Insert follow:
-- allowed if not blocked AND (target public OR request accepted)
drop policy if exists "user_follows_insert_own_block_aware" on public.user_follows;
create policy "user_follows_insert_own_block_aware"
on public.user_follows
for insert
with check (
  follower_id = auth.uid()
  and auth.uid() is not null
  and public.is_blocked_between(follower_id, following_id) = false
  and (
    coalesce((select up.is_private from public.user_profiles up where up.id = following_id), false) = false
    or exists (
      select 1
      from public.user_follow_requests r
      where r.requester_id = follower_id
        and r.target_id = following_id
        and r.status = 'accepted'
    )
  )
);

drop policy if exists "user_follows_delete_own" on public.user_follows;
create policy "user_follows_delete_own"
on public.user_follows
for delete
using (follower_id = auth.uid());


-- user_follow_requests policies
alter table public.user_follow_requests enable row level security;

drop policy if exists "follow_requests_select_party_block_aware" on public.user_follow_requests;
create policy "follow_requests_select_party_block_aware"
on public.user_follow_requests
for select
using (
  (auth.uid() = requester_id or auth.uid() = target_id)
  and not exists (
    select 1
    from public.user_blocks b
    where (b.blocker_id = requester_id and b.blocked_id = target_id)
       or (b.blocker_id = target_id and b.blocked_id = requester_id)
  )
);

drop policy if exists "follow_requests_insert_requester_private_block_aware" on public.user_follow_requests;
create policy "follow_requests_insert_requester_private_block_aware"
on public.user_follow_requests
for insert
with check (
  requester_id = auth.uid()
  and coalesce((select up.is_private from public.user_profiles up where up.id = target_id), false) = true
  and not exists (
    select 1
    from public.user_blocks b
    where (b.blocker_id = requester_id and b.blocked_id = target_id)
       or (b.blocker_id = target_id and b.blocked_id = requester_id)
  )
  and not exists (
    select 1
    from public.user_follows f
    where f.follower_id = requester_id
      and f.following_id = target_id
  )
);

drop policy if exists "follow_requests_update_target_only_block_aware" on public.user_follow_requests;
create policy "follow_requests_update_target_only_block_aware"
on public.user_follow_requests
for update
using (
  target_id = auth.uid()
  and not exists (
    select 1
    from public.user_blocks b
    where (b.blocker_id = requester_id and b.blocked_id = target_id)
       or (b.blocker_id = target_id and b.blocked_id = requester_id)
  )
)
with check (
  target_id = auth.uid()
  and not exists (
    select 1
    from public.user_blocks b
    where (b.blocker_id = requester_id and b.blocked_id = target_id)
       or (b.blocker_id = target_id and b.blocked_id = requester_id)
  )
);

drop policy if exists "follow_requests_delete_party_block_aware" on public.user_follow_requests;
create policy "follow_requests_delete_party_block_aware"
on public.user_follow_requests
for delete
using (
  (auth.uid() = requester_id or auth.uid() = target_id)
  and not exists (
    select 1
    from public.user_blocks b
    where (b.blocker_id = requester_id and b.blocked_id = target_id)
       or (b.blocker_id = target_id and b.blocked_id = requester_id)
  )
);


-- ------------------------------------------------------------
-- 8) COUNTERS (followers_count / following_count)
-- ------------------------------------------------------------
create or replace function public.apply_follow_counts()
returns trigger as $$
begin
  if tg_op = 'INSERT' then
    update public.user_profiles
    set following_count = following_count + 1
    where id = new.follower_id;

    update public.user_profiles
    set followers_count = followers_count + 1
    where id = new.following_id;

  elsif tg_op = 'DELETE' then
    update public.user_profiles
    set following_count = greatest(following_count - 1, 0)
    where id = old.follower_id;

    update public.user_profiles
    set followers_count = greatest(followers_count - 1, 0)
    where id = old.following_id;
  end if;

  return null;
end;
$$ language plpgsql;

drop trigger if exists trg_apply_follow_counts_ins on public.user_follows;
create trigger trg_apply_follow_counts_ins
after insert on public.user_follows
for each row execute function public.apply_follow_counts();

drop trigger if exists trg_apply_follow_counts_del on public.user_follows;
create trigger trg_apply_follow_counts_del
after delete on public.user_follows
for each row execute function public.apply_follow_counts();


-- ------------------------------------------------------------
-- 9) CLEANUP ON BLOCK (remove follows + requests both directions)
-- ------------------------------------------------------------
create or replace function public.cleanup_on_block()
returns trigger
language plpgsql
security definer
set search_path = public
as $$
begin
  -- Remove follows in both directions
  delete from public.user_follows f
  where (f.follower_id = new.blocker_id and f.following_id = new.blocked_id)
     or (f.follower_id = new.blocked_id and f.following_id = new.blocker_id);

  -- Remove follow requests in both directions
  delete from public.user_follow_requests r
  where (r.requester_id = new.blocker_id and r.target_id = new.blocked_id)
     or (r.requester_id = new.blocked_id and r.target_id = new.blocker_id);

  -- Remove mutes in both directions
  delete from public.user_mutes m
  where (m.muter_id = new.blocker_id and m.muted_id = new.blocked_id)
     or (m.muter_id = new.blocked_id and m.muted_id = new.blocker_id);

  -- Remove restricts in both directions
  delete from public.user_restricts r
  where (r.restrictor_id = new.blocker_id and r.restricted_id = new.blocked_id)
     or (r.restrictor_id = new.blocked_id and r.restricted_id = new.blocker_id);

  return new;
end;
$$;

drop trigger if exists trg_cleanup_on_block on public.user_blocks;
create trigger trg_cleanup_on_block
after insert on public.user_blocks
for each row execute function public.cleanup_on_block();


-- ------------------------------------------------------------
-- 10) GRANT PERMISSIONS
-- ------------------------------------------------------------
grant select, insert, delete on public.user_blocks to authenticated;
grant select, insert, delete on public.user_follows to authenticated;
grant select, insert, update, delete on public.user_follow_requests to authenticated;
grant select, insert, delete on public.user_mutes to authenticated;
grant select, insert, delete on public.user_restricts to authenticated;

commit;
