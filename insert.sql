-- INSERT DATA TO CUSTOMER

--INSERT INTO customer (first_name, last_name, email, password_hash)
--VALUES
--    ('John', 'Doe', 'john.doe@example.com', 'hash1'),
--    ('Jane', 'Smith', 'jane.smith@example.com', 'hash2'),
--    ('Robert', 'Johnson', 'robert.johnson@example.com', 'hash3'),
--    ('Emily', 'Williams', 'emily.williams@example.com', 'hash4');

-- VIEW DATA INTO CUSTOMER

--SELECT * FROM customer;

-- INSERT DATA TO SOIL

--INSERT INTO soil (soil)
--VALUES
--    ('Loam'),
--    ('Clay'),
--    ('Silt'),
--    ('Sand'),
--    ('Peat');

-- VIEW DATA FROM SOIL

--SELECT * FROM soil

-- INSERT INTO TREATMENT

--INSERT INTO treatment(treatment)
--VALUES 
--	('Soil preparation'),
--	('Crop planting'),
--	('Fertilization'),
--	('Irrigation'),
--	('Disease and Pest Control'),
--	('Harvesting');

-- VIEW DATA FROM TREATMENT

--SELECT * FROM treatment;

-- INSERT DATA TO FARM

-- YOU NEED TO ADD REAL UUID FROM CUSTOMER!!! ---------------- !!!

--INSERT INTO farm (name, customer_id, location)
--VALUES
--    ('Farm A', '39ab5f9c-c124-4651-9256-38fd6ce04f89', '(-73.935242, 40.730610)'),
--    ('Farm B', '39ab5f9c-c124-4651-9256-38fd6ce04f89', '(-74.005941, 40.712784)'),
--    ('Farm C', 'b8fe47c9-b3e4-4313-aa56-02c408cda307', '(-77.036871, 38.907192)'),
--    ('Farm D', '47f02569-7c9d-4ec8-8b71-573ec1c1dda0', '(-118.243683, 34.052235)'),
--    ('Farm E', 'c04fdd7e-fd98-4278-a584-0a0d935275ac', '(-87.629798, 41.878113)');

-- VIEW DATA FROM FARM

--SELECT * FROM FARM 

-- INSERT DATA TO MACHINERIES

-- YOU NEED TO ADD REAL UUID FROM FARM!!! ------------------ !!!

--INSERT INTO machineries (farm_id, manufacturer, model, identification_number)
--VALUES
--    ('91a64cc0-60e7-4bf4-8219-7561e1c446bc', 'John Deere', 'Tractor X100', 'JD12345'),
--    ('91a64cc0-60e7-4bf4-8219-7561e1c446bc', 'Case IH', 'Harvester Z200', 'CIH67890'),
--    ('91a64cc0-60e7-4bf4-8219-7561e1c446bc', 'New Holland', 'Seeder A300', 'NH13579'),
--    ('e494c622-78fb-4dd2-a10d-79d7d2310b5b', 'Kubota', 'Plow B400', 'KU24680'),
--    ('e494c622-78fb-4dd2-a10d-79d7d2310b5b', 'Massey Ferguson', 'Cultivator C500', 'MF35791'),
--    ('e97c8164-bac0-478a-b838-2ff4106d81ec', 'John Deere', 'Tractor X100', 'JD12346'),
--    ('e97c8164-bac0-478a-b838-2ff4106d81ec', 'Case IH', 'Harvester Z200', 'CIH67891'),
--    ('d52964f4-a0ac-4a0d-b409-2319dcce7172', 'New Holland', 'Seeder A300', 'NH13580'),
--    ('8840f57f-b1b3-4c25-91fe-90ba4ef63e46', 'Kubota', 'Plow B400', 'KU24681');

-- VIEW DATA FROM MACHINERIES

--SELECT * FROM MACHINERIES
  
-- INSERT DATA TO FIELD

-- YOU NEED TO ADD REAL UUID FROM FARN AND SOIL!!! ------------------ !!!

--INSERT INTO field (id,borders, farm_id, soil_id)
--VALUES
--    (gen_random_uuid(),'((0,0),(0,10),(10,10),(10,0),(0,0))', '91a64cc0-60e7-4bf4-8219-7561e1c446bc', '5f05c171-1ed4-4c90-b548-fe15750ac7fb'),
--    (gen_random_uuid(),'((0,0),(0,8),(8,8),(8,0),(0,0))', '91a64cc0-60e7-4bf4-8219-7561e1c446bc', '098e1c64-6700-4fae-97f9-d47c7016e1bc'),
--    (gen_random_uuid(),'((0,0),(0,12),(12,12),(12,0),(0,0))', '91a64cc0-60e7-4bf4-8219-7561e1c446bc', '5c01c0fa-8c7c-4fa5-9994-5efc5c6611dd'),
--    (gen_random_uuid(),'((0,0),(0,15),(15,15),(15,0),(0,0))', '91a64cc0-60e7-4bf4-8219-7561e1c446bc', '5f05c171-1ed4-4c90-b548-fe15750ac7fb'),
--    (gen_random_uuid(),'((0,0),(0,7),(7,7),(7,0),(0,0))', 'e494c622-78fb-4dd2-a10d-79d7d2310b5b', 'e17d22c7-fde4-4de1-b10d-b12000bdda44'),
--    (gen_random_uuid(),'((0,0),(0,11),(11,11),(11,0),(0,0))', 'e494c622-78fb-4dd2-a10d-79d7d2310b5b', '5f05c171-1ed4-4c90-b548-fe15750ac7fb'),
--    (gen_random_uuid(),'((0,0),(0,9),(9,9),(9,0),(0,0))', 'e97c8164-bac0-478a-b838-2ff4106d81ec', 'eba756d2-f9b9-40ba-a2e0-06207ae43f3c'),
--    (gen_random_uuid(),'((0,0),(0,14),(14,14),(14,0),(0,0))', 'e97c8164-bac0-478a-b838-2ff4106d81ec', 'eba756d2-f9b9-40ba-a2e0-06207ae43f3c'),
--    (gen_random_uuid(),'((0,0),(0,6),(6,6),(6,0),(0,0))', 'd52964f4-a0ac-4a0d-b409-2319dcce7172', 'e17d22c7-fde4-4de1-b10d-b12000bdda44'),
--    (gen_random_uuid(),'((0,0),(0,13),(13,13),(13,0),(0,0))', '8840f57f-b1b3-4c25-91fe-90ba4ef63e46', '5f05c171-1ed4-4c90-b548-fe15750ac7fb');

-- VIEW DATA FROM TABLE FIELD

--SELECT * FROM FIELD 

-- INSERT DATA FROM CROP_CULTIVATION VIA TRIGGER
-- INSERT DATA FROM CROP VIA TRIGGER

-- VIEW DATA FROM CROP AND CROP_CULTIVATION
--SELECT * FROM CROP
--SELECT * FROM CROP_CULTIVATION 

-- INSERT DATA TO TREATMENT_HISTORY --- ! NEED CHANGE IDS ! -------

--INSERT INTO treatment_history (treatment_id, machineries_id, crop_cultivation_id)
--VALUES
--	('5f2faa67-d4a5-4300-a5dd-34bd7f23c180','b0b179f2-5524-4c58-a5f0-202fd4c0aab5','c2bdbfe5-edab-449f-b9f8-2337ab0e47cd'),
--	('28dafeb7-5c8c-43ca-af9f-7a45445ec791','87ad1f5f-b1ec-4d17-b0be-79622a8c1660','ff8e0c65-7bb8-46f0-a32f-2080ee8fff19'),
--	('28dafeb7-5c8c-43ca-af9f-7a45445ec791','b0b179f2-5524-4c58-a5f0-202fd4c0aab5','8142e103-b558-4159-9f76-f3ba3014792d'),
--	('31fb9ee6-2357-44da-8f16-1e72f9b2b18e','9092d06c-1496-4556-ba49-8502a3d93164','3f7e05be-621f-4c97-b08f-147a380a3729'),
--	('31fb9ee6-2357-44da-8f16-1e72f9b2b18e','0621c91a-4265-431e-ac36-507571b02bb9','a25b9add-f0e8-40d4-b417-cafd070ee653'),
--	('e4f5db42-4d92-44d4-92ad-2bb82a1f7fd5','2211475e-9cf3-41fb-bd79-a7fb5ee0f0d4','5c82377d-e5c3-44d8-80f5-72f300369877'),
--	('e4f5db42-4d92-44d4-92ad-2bb82a1f7fd5','f96ac0de-849c-4a0c-8eee-43e949852d51','2152736c-c580-4984-9bd3-8aac3b4b343f'),
--	('73872eb7-99d4-4862-b58d-48e4f53fc652','d9ddc082-92b7-437a-b8d0-e7d248d926ab','741066ec-6398-487d-b7fd-f31ec3001eb4'),
--	('823fa9e7-7cb0-4a21-9ddb-a7785fc5fb6d','a0acd8b5-abe0-4488-ab52-f9e085ad2e4c','361f7561-f2e0-4a2c-81fa-b76cd935ce4b'),
--	('823fa9e7-7cb0-4a21-9ddb-a7785fc5fb6d','6d35dec8-1fc9-493f-a2cb-80b60556cd63','b00961ce-78ef-4093-9072-e18b0f29267a');

-- VIEW DATA FROM TREATMENT_HISTORY
--SELECT * FROM TREATMENT_HISTORY 









