-- geometria musi być zamknięta
--SELECT id, ST_IsClosed(geometry) FROM obiekty;
UPDATE obiekty
SET geometry = ST_AddPoint(ST_CurveToLine(geometry), ST_StartPoint(geometry))
WHERE name = 'obiekt4';

UPDATE obiekty
SET geometry = ST_MakePolygon(geometry)
WHERE name = 'obiekt4';