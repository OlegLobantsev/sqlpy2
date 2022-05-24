create table if not exists genre(
  id serial primary key,
  name varchar(50) unique not null
);

create table if not exists singer(
  id serial primary key,
  name varchar(50) not null,
  genre_id integer references genre(id)
);

create table if not exists album(
  id serial primary key,
  singer_id integer references singer(id),
  name varchar(50) unique not null,
  year integer not null check(year > 0)
);

create table if not exists track(
  id serial primary key,
  album_id integer references album(id),
  name varchar(50) not null,
  duration integer not null check(duration > 0)
);
