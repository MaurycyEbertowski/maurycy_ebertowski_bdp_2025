DROP TABLE IF EXISTS streets_reprojected;

CREATE TABLE streets_reprojected AS
SELECT
	t9.*,
	ST_SetSRID(t9.geom, 3068) AS geom_berlin --ST_Transform
FROM t2019_kar_streets t9;