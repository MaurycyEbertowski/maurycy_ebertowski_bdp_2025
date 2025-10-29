INSERT INTO obiekty (geometry, name)
SELECT ST_Union(
    (SELECT geometry FROM obiekty WHERE name = 'obiekt3'),
    (SELECT geometry FROM obiekty WHERE name = 'obiekt4')),
	'obiekt7';