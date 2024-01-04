-- CREATE TABLE farmer (
-- 	id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
-- 	name VARCHAR(255) NOT NULL,
-- 	createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
-- 	updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
-- 	deletedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
-- 	modifiedBy UUID
-- )



-- CREATE TABLE member (
-- 	id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
-- 	first_name VARCHAR(255) NOT NULL,
-- 	last_name VARCHAR(255) NOT NULL,
-- 	email VARCHAR(255) NOT NULL,
-- 	password_hash VARCHAR(255) NOT NULL,
-- 	Farmer_id UUID,
-- 	createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
-- 	updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
-- 	deletedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
-- 	modifiedBy UUID,
-- 	CONSTRAINT fk_farmer_id
-- 		FOREIGN KEY(Farmer_id)
-- 			REFERENCES farmer(id)
-- )

--
-- CREATE TABLE crop(
-- 	id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
-- 	crop VARCHAR(255) NOT NULL
-- )
--
-- CREATE TABLE soil(
-- 	id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
-- 	soil VARCHAR(255) NOT NULL
-- )
--
-- CREATE TABLE treatment(
-- 	id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
-- 	treatment VARCHAR(255) NOT NULL
-- )
--
-- CREATE TABLE farm (
-- 	id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
-- 	name VARCHAR(255) NOT NULL,
-- 	Farmer_id UUID NOT NULL,
-- 	CONSTRAINT fk_farmer_id
-- 		FOREIGN KEY(Farmer_id)
-- 			REFERENCES farmer(id),
-- 	LOCATION point NOT NULL,
-- 	createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
-- 	updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
-- 	deletedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
-- 	modifiedBy UUID
-- )
--
-- CREATE TABLE field(
-- 	id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
-- 	borders POLYGON NOT NULL,
-- 	Farm_id UUID NOT NULL,
-- 	CONSTRAINT fk_farm_id
-- 		FOREIGN KEY(Farm_id)
-- 			REFERENCES farm(id),
-- 	Soil_id UUID NOT NULL,
-- 	CONSTRAINT fk_soil_id
-- 		FOREIGN KEY(Soil_id)
-- 			REFERENCES soil(id),
-- 	createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
-- 	updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
-- 	deletedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
-- 	modifiedBy UUID
-- )
--
-- CREATE TABLE crop_cultivation(
-- 	id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
-- 	Crop_id UUID NOT NULL,
-- 	CONSTRAINT fk_crop_id
-- 		FOREIGN KEY(Crop_id)
-- 			REFERENCES crop(id),
-- 	Field_id UUID NOT NULL,
-- 	CONSTRAINT fk_field_id
-- 		FOREIGN KEY(Field_id)
-- 			REFERENCES field(id),
-- 	createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
-- 	updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
-- 	deletedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
-- 	modifiedBy UUID
-- )
--
-- CREATE TABLE machineries(
-- 	id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
-- 	Farm_id UUID NOT NULL,
-- 	CONSTRAINT fk_farm_id
-- 		FOREIGN KEY(Farm_id)
-- 			REFERENCES farm(id),
-- 	manufacturer VARCHAR(255) NOT NULL,
-- 	model VARCHAR(255) NOT NULL,
-- 	identification_number VARCHAR(255) NOT NULL,
-- 	createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
-- 	updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
-- 	deletedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
-- 	modifiedBy UUID
-- )
--
CREATE TABLE treatment_history(
	id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
	Treatment_id UUID NOT NULL,
	CONSTRAINT fk_treatment_id
		FOREIGN KEY(Treatment_id)
			REFERENCES treatment(id),
	Machineries_id UUID NOT NULL,
	CONSTRAINT fk_machineries_id
		FOREIGN KEY(Machineries_id)
			REFERENCES machineries(id),
	Crop_cultivation_id UUID NOT NULL,
	CONSTRAINT fk_crop_cultivation
		FOREIGN KEY(Crop_cultivation_id)
			REFERENCES crop_cultivation(id),
	created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	deletedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	modifiedBy UUID
)