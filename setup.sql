create table students (
  id bigint generated always as identity primary key,
  name text not null,
  phone text,
  parent_phone text not null,
  created_at timestamptz default now()
);
create table attendance (
  id bigint generated always as identity primary key,
  student_id bigint not null references students(id) on delete cascade,
  day date not null,
  time text not null,
  unique (student_id, day)
);
alter table students enable row level security;
alter table attendance enable row level security;
create policy "staff students" on students for all to authenticated using (true) with check (true);
create policy "staff attendance" on attendance for all to authenticated using (true) with check (true);
