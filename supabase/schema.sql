-- Ejecuta una sola vez en Supabase > SQL Editor.
create table if not exists public.auro_reviews (
  id bigint generated always as identity primary key,
  display_name text check (display_name is null or char_length(display_name) <= 40),
  comment text not null check (char_length(trim(comment)) between 3 and 500),
  rating smallint not null check (rating between 1 and 5),
  status text not null default 'pending' check (status in ('pending', 'published', 'rejected')),
  created_at timestamptz not null default now()
);
alter table public.auro_reviews enable row level security;
revoke all on table public.auro_reviews from anon, authenticated;
grant select on table public.auro_reviews to anon, authenticated;
grant insert (display_name, comment, rating) on table public.auro_reviews to anon, authenticated;
drop policy if exists "Anyone can read published Auro-Art reviews" on public.auro_reviews;
create policy "Anyone can read published Auro-Art reviews" on public.auro_reviews for select to anon, authenticated using (status = 'published');
drop policy if exists "Anyone can submit pending Auro-Art reviews" on public.auro_reviews;
create policy "Anyone can submit pending Auro-Art reviews" on public.auro_reviews for insert to anon, authenticated with check (status = 'pending');
