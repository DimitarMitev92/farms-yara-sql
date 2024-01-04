CREATE OR REPLACE FUNCTION create_crop_cultivation_trigger()
RETURNS TRIGGER AS $$
DECLARE
    v_crop_id UUID;
BEGIN
    INSERT INTO crop (crop)
    VALUES ('DefaultCropName') 
    RETURNING id INTO v_crop_id;

    INSERT INTO crop_cultivation (crop_id, field_id, seeding_time, harvest_time)
    VALUES (v_crop_id, NEW.id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP + INTERVAL '90 days'); 
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER field_created_trigger
AFTER INSERT ON field
FOR EACH ROW
EXECUTE FUNCTION create_crop_cultivation_trigger();
