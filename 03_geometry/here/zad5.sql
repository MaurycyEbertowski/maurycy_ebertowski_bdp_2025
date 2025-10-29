UPDATE input_points
SET geom = ST_SetSRID(geom, 3068);