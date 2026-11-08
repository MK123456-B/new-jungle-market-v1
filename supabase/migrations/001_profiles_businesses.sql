-- Première migration de développement NEW JUNGLE MARKET V1
create extension if not exists pgcrypto;
create table if not exists public.profiles (
 id uuid primary key references auth.users(id) on delete cascade,
 full_name text, phone text, preferred_language text not null default 'fr',
 created_at timestamptz not null default now(), updated_at timestamptz not null default now()
);
create table if not exists public.businesses (
 id uuid primary key default gen_random_uuid(),
 owner_id uuid not null references public.profiles(id) on delete restrict,
 name text not null, slug text not null unique, description text,
 country_code char(2) not null default 'BI', city text, address text,
 status text not null default 'preparation'
   check(status in ('preparation','active','grace','suspended','closed')),
 created_at timestamptz not null default now(), updated_at timestamptz not null default now()
);
create index if not exists businesses_owner_id_idx on public.businesses(owner_id);
create index if not exists businesses_status_city_idx on public.businesses(status,city);
alter table public.profiles enable row level security;
alter table public.businesses enable row level security;
create policy "profiles_select_own" on public.profiles for select to authenticated using(id=auth.uid());
create policy "profiles_insert_own" on public.profiles for insert to authenticated with check(id=auth.uid());
create policy "profiles_update_own" on public.profiles for update to authenticated using(id=auth.uid()) with check(id=auth.uid());
create policy "businesses_owner_select" on public.businesses for select to authenticated using(owner_id=auth.uid());
create policy "businesses_owner_insert" on public.businesses for insert to authenticated with check(owner_id=auth.uid());
create policy "businesses_owner_update" on public.businesses for update to authenticated using(owner_id=auth.uid()) with check(owner_id=auth.uid());
-- Les changements de statut sensibles doivent passer par des fonctions serveur autorisées.
-- Les vues et politiques de lecture publique seront ajoutées avec le module catalogue.
