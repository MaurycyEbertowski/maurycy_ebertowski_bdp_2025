INSERT INTO obiekty (geometry, name) VALUES(
	ST_GeomFromEWKT('SRID=0;
		GEOMETRYCOLLECTION(LINESTRING(1 1, 3 2), POINT(4 2))'),
	'obiekt6'
);