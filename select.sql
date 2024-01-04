--===============================
--=========== SELECTORS =========
--===============================

-- Show the most fields by farms with crop grown there:

SELECT
    farm.name AS farm_name,
    COUNT(crop_cultivation.id) AS cultivated_fields_count
FROM
    farm
JOIN
    field ON farm.id = field.farm_id
JOIN
    crop_cultivation ON field.id = crop_cultivation.field_id
GROUP BY
    farm.id
ORDER BY
    cultivated_fields_count DESC

    
-- Showing the most common soil types:
    
 SELECT
    soil.soil AS soil_type,
    COUNT(field.id) AS field_count
FROM
    soil
JOIN
    field ON soil.id = field.soil_id
GROUP BY
    soil.id
ORDER BY
    field_count DESC

    
-- Show the farms with the most machines:

SELECT
    farm.name AS farm_name,
    COUNT(machineries.id) AS machinery_count
FROM
    farm
JOIN
    machineries ON farm.id = machineries.farm_id
GROUP BY
    farm.id
ORDER BY
    machinery_count DESC

 