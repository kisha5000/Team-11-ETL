--Drop all tables

DROP TABLE IF EXISTS "Violence"
DROP TABLE IF EXISTS "State"
DROP TABLE IF EXISTS "Type"
DROP TABLE IF EXISTS "Gun_Laws"


CREATE TABLE "Gun_Laws" (
	State VARCHAR(225) NOT NULL,
	State_permit_required_to_purchase VARCHAR(20),	
  	Firearm_registration VARCHAR(20),
  	Owner_license_required VARCHAR(20),
  	Background_checks_required_for_private_sales VARCHAR(20),
	PRIMARY KEY(State)
  	
);

select * from "Gun_Laws";

--Create table Type

CREATE TABLE "Type" (
	ID INT,
	Type VARCHAR(225) NOT NULL,
	PRIMARY KEY (ID)
);

select * from "Type"


--Create table State

CREATE TABLE "State" (
	State VARCHAR(225) NOT NULL,
	City VARCHAR(225) NOT NULL,
	PRIMARY KEY (City),
	FOREIGN KEY (State) REFERENCES "Gun_Laws"(State)
);

select * from "State"


-- Create table Violence

CREATE TABLE "Violence" (
	ID INT NOT NULL,
	Date date,
	City VARCHAR(225) NOT NULL,
	State VARCHAR(225),
	Address VARCHAR(225),
	Killed INT,
	Injured INT,
	FOREIGN KEY(ID) REFERENCES "Type"(ID)
);

select * from "Violence"





