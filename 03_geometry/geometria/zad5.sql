SELECT ST_Area(ST_Buffer(geometry, 5)) FROM obiekty
WHERE NOT ST_HasArc(geometry);