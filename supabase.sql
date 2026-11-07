-- Scope SUAP V1 : table de synchronisation pédagogique
-- ATTENTION : accès anonyme volontairement ouvert pour le prototype.
-- Ne stocker aucune donnée nominative ou médicale réelle.
create table if not exists public.scope_rooms (
  code text primary key,
  state jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);

alter table public.scope_rooms enable row level security;

drop policy if exists "scope public read" on public.scope_rooms;
drop policy if exists "scope public insert" on public.scope_rooms;
drop policy if exists "scope public update" on public.scope_rooms;

create policy "scope public read"
on public.scope_rooms for select
to anon, authenticated
using (true);

create policy "scope public insert"
on public.scope_rooms for insert
to anon, authenticated
with check (true);

create policy "scope public update"
on public.scope_rooms for update
to anon, authenticated
using (true)
with check (true);

alter publication supabase_realtime add table public.scope_rooms;
