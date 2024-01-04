CREATE OR REPLACE FUNCTION "farm-final".delete_related_data_on_field_deletion()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
BEGIN
    
    DELETE FROM crop_cultivation
    WHERE field_id = OLD.id;

   
    DELETE FROM treatment_history
    WHERE crop_cultivation_id IN (SELECT id FROM crop_cultivation WHERE field_id = OLD.id);

    RETURN OLD;
END;
$function$
;

CREATE TRIGGER trg_delete_related_data_on_field_deletion
BEFORE DELETE ON field
FOR EACH ROW
EXECUTE FUNCTION "farm-final".delete_related_data_on_field_deletion();