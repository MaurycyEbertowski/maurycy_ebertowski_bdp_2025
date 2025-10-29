INSERT INTO obiekty (geometry, name) VALUES (
	ST_GeomFromEWKT('SRID=0;
		COMPOUNDCURVE((20.5 19.5, 22 19, 26 21, 25 22,
						27 24, 25 25, 20 20))'),
	'obiekt4'
);