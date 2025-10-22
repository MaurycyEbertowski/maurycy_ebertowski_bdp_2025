SELECT name, ST_Area(geometry) AS pole_powierzchni
FROM buildings
ORDER BY name;
