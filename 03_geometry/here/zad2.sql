WITH new_buildings AS (
	SELECT t9.geom FROM t2019_kar_buildings t9
	LEFT JOIN t2018_kar_buildings t8 ON t9.geom = t8.geom
	WHERE t8.geom IS NULL
),

new_poi AS (
	SELECT p9.* FROM t2019_kar_poi_table p9
	LEFT JOIN t2018_kar_poi_table p8 ON p9.geom = p8.geom
	WHERE p8.geom IS NULL
)

SELECT new_poi.type, COUNT(*) AS new_poi_count
FROM new_poi JOIN new_buildings ON ST_Dwithin(new_buildings.geom, new_poi.geom, 500)
GROUP BY new_poi.type
ORDER BY new_poi_count DESC;