CREATE TABLE input_points (
	id SERIAL PRIMARY KEY,
	geom GEOMETRY
);

INSERT INTO input_points (geom) VALUES
	(ST_MakePoint(8.36093, 49.03174)),
	(ST_MakePoint(8.39876, 49.00644));
