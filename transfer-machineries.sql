--=========================================
--=========TRANSFER FUNCTION ==============
--=========================================

CREATE OR REPLACE FUNCTION transfer_machinery(
    machinery_id UUID,
    source_farm_id UUID,
    destination_farm_id UUID
) RETURNS VOID AS
$$
DECLARE
    machinery_record machineries%ROWTYPE;
    source_farm_customer_id UUID;
   	destination_farm_customer_id UUID;
BEGIN
    -- Checking if a machine with the specified ID exists in the east farm
    SELECT * INTO machinery_record
    FROM machineries
    WHERE machineries.id = machinery_id AND machineries.farm_id = source_farm_id;

    IF NOT FOUND THEN
        RAISE EXCEPTION 'Machinery with ID % not found in the source farm %', machinery_id, source_farm_id;
    END IF;

    -- Get source farm customer_id
    SELECT customer_id INTO source_farm_customer_id
    FROM farm
    WHERE farm.id = source_farm_id;
   
  	SELECT customer_id INTO destination_farm_customer_id
    FROM farm 
    WHERE farm.id = destination_farm_id;

    -- Checking if the customer_id of the east farm is the same as the customer_id of the machine
    IF source_farm_customer_id <> destination_farm_customer_id THEN
        RAISE EXCEPTION 'Customer ID mismatch. The machinery does not belong to the specified customer.';
    END IF;

    -- Change the farm_id for the machine
    UPDATE machineries
    SET farm_id = destination_farm_id
    WHERE machineries.id = machinery_id;

    -- Display a successful transfer message
    RAISE NOTICE 'Machinery with ID % transferred from farm % to farm %', machinery_id, source_farm_id, destination_farm_id;
END;
$$ LANGUAGE plpgsql;


