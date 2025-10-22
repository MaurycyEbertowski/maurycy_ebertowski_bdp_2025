SELECT ST_Area(ST_Difference(
    b.geometry,
    ST_GeomFromText('POLYGON((4 7, 6 7, 6 8, 4 8, 4 7))')
)) AS pole_roznicy
FROM buildings b
WHERE b.name = 'BuildingC';
