CREATE TABLE obiekty (
	id SERIAL PRIMARY KEY,
	geometry GEOMETRY, --dowolny typ
	name VARCHAR
);

INSERT INTO obiekty (geometry, name) VALUES (
	ST_GeomFromEWKT('SRID=0;
	COMPOUNDCURVE((0 1, 1 1), CIRCULARSTRING(1 1, 2 0, 3 1, 4 2, 5 1), (5 1, 6 1))'),
	'obiekt1'
);