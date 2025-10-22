SELECT 
    ST_AsText(geometry) AS wkt,
    ST_Area(geometry) AS pole_powierzchni,
    ST_Perimeter(geometry) AS obwod
FROM buildings
WHERE name = 'BuildingA';
