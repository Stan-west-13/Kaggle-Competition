-- !preview conn=DBI::dbConnect(RSQLite::SQLite())

CREATE TABLE tracking_files (
  gameId NUMERIC PRIMARY KEY NOT NULL,
  playId NUMERIC,
  nflId NUMERIC,
  displayName TEXT,
  frameId NUMERIC,
  frameType TEXT,
  time TEXT,
  jerseyNumber NUMERIC,
  club TEXT,
  playDirection TEXT,
  x NUMERIC,
  y NUMERIC,
  s NUMERIC,
  a NUMERIC,
  dis NUMERIC,
  o NUMERIC,
  dir NUMERIC,
  event TEXT
);