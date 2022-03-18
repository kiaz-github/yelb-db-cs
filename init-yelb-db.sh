#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE DATABASE yelbdatabase;
    \connect yelbdatabase;
	CREATE TABLE restaurants (
    	name        char(30),
    	count       integer,
    	PRIMARY KEY (name)
	);
	INSERT INTO restaurants (name, count) VALUES ('ihop', 0);
	INSERT INTO restaurants (name, count) VALUES ('bucadibeppo', 0);
	INSERT INTO restaurants (name, count) VALUES ('chipotle', 0);
	INSERT INTO restaurants (name, count) VALUES ('outback', 0);
  INSERT INTO restaurants (name, count) VALUES ('ateliergourmet', 0);
  INSERT INTO restaurants (name, count) VALUES ('neni', 0);
  INSERT INTO restaurants (name, count) VALUES ('kartoffelhaus', 0);
  INSERT INTO restaurants (name, count) VALUES ('rivo', 0);

EOSQL
