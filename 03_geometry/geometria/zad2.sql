WITH shortest AS (
	SELECT ST_ShortestLine(ob3.geometry, ob4.geometry) AS linee
	FROM obiekty ob3, obiekty ob4 
	WHERE ob3.name = 'obiekt3' AND ob4.name = 'obiekt4'
)

SELECT ST_Area(ST_Buffer(linee, 5)) AS pole FROM shortest;