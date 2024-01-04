--=========================================
--=========CREATE TABLES===================
--=========================================

CREATE TABLE customer (
	id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL,
	password_hash VARCHAR(255) NOT NULL
)

CREATE TABLE CROP(
	id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
	crop VARCHAR(255) NOT NULL
)

CREATE TABLE soil(
	id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
	soil VARCHAR(255) NOT NULL
)

CREATE TABLE treatment(
	id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
	treatment VARCHAR(255) NOT NULL
)

CREATE TABLE farm (
	id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
	name VARCHAR(255) NOT NULL,
	customer_id UUID NOT NULL,
	CONSTRAINT fk_customer_id
		FOREIGN KEY(customer_id)
			REFERENCES customer(id),
	LOCATION point NOT null
)

CREATE TABLE field(
	id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
	borders POLYGON NOT NULL,
	farm_id UUID NOT NULL,
	CONSTRAINT fk_farm_id
		FOREIGN KEY(farm_id)
			REFERENCES farm(id),
	soil_id UUID NOT NULL,
	CONSTRAINT fk_soil_id
		FOREIGN KEY(soil_id)
			REFERENCES soil(id)
)

CREATE TABLE crop_cultivation(
	id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
	crop_id UUID NOT NULL,
	CONSTRAINT fk_crop_id
		FOREIGN KEY(crop_id)
			REFERENCES crop(id),
	field_id UUID NOT NULL,
	CONSTRAINT fk_field_id
		FOREIGN KEY(field_id)
			REFERENCES field(id),
	seeding_time TIMESTAMP NOT NULL,
	harvest_time TIMESTAMP NOT NULL
)

CREATE TABLE machineries(
	id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
	farm_id UUID NOT NULL,
	CONSTRAINT fk_farm_id
		FOREIGN KEY(farm_id)
			REFERENCES farm(id),
	manufacturer VARCHAR(255) NOT NULL,
	model VARCHAR(255) NOT NULL,
	identification_number VARCHAR(255) NOT NULL
)

CREATE TABLE treatment_history(
	id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
	treatment_id UUID NOT NULL,
	CONSTRAINT fk_treatment_id
		FOREIGN KEY(treatment_id)
			REFERENCES treatment(id),
	machineries_id UUID NOT NULL,
	CONSTRAINT fk_machineries_id
		FOREIGN KEY(machineries_id)
			REFERENCES machineries(id),
	crop_cultivation_id UUID NOT NULL,
	CONSTRAINT fk_crop_cultivation
		FOREIGN KEY(crop_cultivation_id)
			REFERENCES crop_cultivation(id),
	created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)

