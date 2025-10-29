INSERT INTO obiekty (geometry, name) VALUES (
	ST_GeomFromEWKT('SRID=0;
		COMPOUNDCURVE((7 15, 12 13, 10 17, 7 15))'),
	'obiekt3'
);