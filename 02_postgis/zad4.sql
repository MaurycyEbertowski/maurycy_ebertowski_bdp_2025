CREATE TABLE buildings (
	id SERIAL PRIMARY KEY,
	geometry GEOMETRY(POLYGON), -- default 0 - unknown
	name VARCHAR
);
CREATE TABLE roads (
	id SERIAL PRIMARY KEY,
	geometry GEOMETRY(LINESTRING),
	name VARCHAR
);
CREATE TABLE poi (
	id SERIAL PRIMARY KEY,
	geometry GEOMETRY(POINT),
	name VARCHAR
);