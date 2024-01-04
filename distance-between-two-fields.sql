CREATE OR REPLACE FUNCTION calculate_distance_between_fields(field_id1 UUID, field_id2 UUID)
RETURNS DOUBLE PRECISION
AS $$
DECLARE
    field1_location POLYGON;
    field2_location POLYGON;
    distance DOUBLE PRECISION;
BEGIN

    SELECT borders INTO field1_location
    FROM field
    WHERE id = field_id1;


    SELECT borders INTO field2_location
    FROM field
    WHERE id = field_id2;

   
    distance := sqrt(power(abs(ST_X(ST_Centroid(field1_location)) - ST_X(ST_Centroid(field2_location))), 2) +
                        power(abs(ST_Y(ST_Centroid(field1_location)) - ST_Y(ST_Centroid(field2_location))), 2));

    RETURN distance;
END;
$$ LANGUAGE plpgsql;