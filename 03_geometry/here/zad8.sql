CREATE TABLE T2019_KAR_BRIDGES AS
SELECT ST_Intersection(r.geom, wl.geom) FROM t2019_kar_railways r
JOIN t2019_kar_water_lines wl
ON ST_Intersects(r.geom, wl.geom)
WHERE ST_Dimension(ST_Intersection(r.geom, wl.geom)) = 0;