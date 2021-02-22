create table if not exists Singer (
  id serial primary key,
  name varchar(50) not null
);


create table if not exists Album (
  id serial primary key,
  name varchar(100) not null,
  year integer check(year >= 0)
);


create table if not exists SingerAlbum (
  singerId integer references Singer(id),
  albumId integer references Album(id),
  constraint pk primary key (singerId, albumId)
);


create table if not exists Song (
  id serial primary key,
  albumId integer references album(id),
  name varchar(100) not null,
  duration integer check(duration >= 0)
);


create table if not exists Genre (
  id serial primary key,
  name varchar(100) not null
);



create table if not exists SingerGenre (
  singerId integer references Singer(id),
  genreId integer references Genre(id),
  constraint pk primary key (singerId, genreId)
);


create table if not exists Collection (
  id serial primary key,
  name varchar(100) not null,
  year integer check(year >= 0)
);


create table if not exists SongCollection (
  songId integer references Song(id),
  collectionId integer references Collection(id),
  constraint pk primary key (songId, collectionId)
);