INSERT INTO obiekty (geometry, name) VALUES (
	ST_GeomFromEWKT(
		'CURVEPOLYGON(
			COMPOUNDCURVE((10 6, 10 2),
				CIRCULARSTRING(10 2, 12 0, 14 2),
				CIRCULARSTRING(14 2, 16 4, 14 6),
				(14 6, 10 6)),
			COMPOUNDCURVE(
				CIRCULARSTRING(11 2, 12 1, 13 2, 12 3, 11 2)
			)
	)'),
	'obiekt2'
);