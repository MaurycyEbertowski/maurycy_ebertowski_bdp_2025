SELECT COUNT(*) AS sport_count FROM t2019_kar_poi_table poi9, t2019_kar_land_use_a la9
WHERE poi9.type = 'Sporting Goods Store'
AND ST_DWithin(poi9.geom, la9.geom, 300);