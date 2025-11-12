CREATE EXTENSION postgis;
CREATE TABLE positions (
    id SERIAL PRIMARY KEY,
    ts INTEGER,
    geom GEOMETRY(POINT, 4326)
);
