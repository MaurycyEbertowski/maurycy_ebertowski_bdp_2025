WITH linee AS (
	SELECT ST_MakeLine(geom) AS geom FROM input_points
)

SELECT sn9.* FROM t2019_kar_street_node sn9, linee l
WHERE ST_DWithin(ST_SetSRID(sn9.geom, 3068), l.geom, 200);