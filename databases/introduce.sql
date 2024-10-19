-- Search table from PostgreSQL Databases
SELECT table_name 
FROM information_schema.tables
WHERE table_schema = 'public';

-- Show all column and data type from table
SELECT column_name, data_type 
FROM information_schema.columns 
WHERE table_name = 'university_professors' AND table_schema = 'public';

-- Create table with CREATE TABLE 
CREATE TABLE table_name (
  column_a data_type,
  column_b data_type,
  column_c data_type,
);

-- Add Column to table from databases 
ALTER TABLE table_name
ADD COLUMN column_name data_type;

-- Count and Distinct for sum total data with no duplicate values 
SELECT COUNT(*)
FROM column_name;
-- DISTINCT
SELECT COUNT(DISTINCT table_name)
FROM column_name;

-- Insert or add data from table_name to another_table with unique values/Distinct (no duplicate values)
INSERT INTO another_table
SELECT DISTINCT column_name, column_name
FROM table_name;

-- Insert Into statement or normal 
INSERT INTO table_name (column_a, column_b)
VALUES ('value_a', 'value_b');

-- Rename Column_name
ALTER TABLE table_name
RENAME COLUMN old_name TO new_name;

-- DROP (remove) Column_name on table 
ALTER TABLE table_name
DROP COLUMN column_name;

-- DROP (remove) table_name on databases 
DROP TABLE table_name;

------------------------------------------------------------------------------------------------------------------------------

-- Create a table for the professors entity type
CREATE TABLE professors (
  firstname text,
  lastname text
);

-- Alter table for the professors to add new column 
ALTER TABLE professors
ADD COLUMN university_shortname text;

-- Print the contents of this table
SELECT * 
FROM professors;

-- ORDER BY = Selected result by lastname 
SELECT DISTINCT firstname, lastname, university_shortname
FROM professors
ORDER BY lastname;

-- Rename the organisation column
ALTER TABLE affiliations
RENAME COLUMN organisation TO organization;

-- Delete the university_shortname column
ALTER TABLE affiliations
DROP COLUMN university_shortname;

-- Insert unique professors into the new table
INSERT INTO professors 
SELECT DISTINCT firstname, lastname, university_shortname 
FROM university_professors;

SELECT * 
FROM professors;

-- Delete the university_professors table
DROP TABLE university_professors;

------------------------------------------------------------------------------------------------------------------------------

-- CREATE table with multiple data types 
CREATE TABLE weather (
  temperature integer,
  wind_speed text
); 

-- Convert data types from text to integer 
SELECT temperature * CAST(wind_speed AS integer) AS wind_chill 
FROM weather;

------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE students (
  ssn integer,
  name varchar(64),
  dob date,
  average_grade numeric(3,2),
  tuition_paid boolean
);

-- ALTER TABLE AFTER CREATION 
ALTER TABLE students 
ALTER COLUMN name
TYPE varchar(128);

ALTER TABLE students
ALTER COLUMN average_grade 
TYPE integer 
-- Turns 5.54 into 8, not 5 before type conversion
USING ROUND(average_grade);

-- SUBSTRING = Make sure values in name column to fit the new maximum length of 16 characters 
ALTER TABLE students 
ALTER COLUMN name 
TYPE varchar(16) 
USING SUBSTRING(name FROM 1 FOR 16);

------------------------------------------------------------------------------------------------------------------------------

-- Not Null = column must have value
CREATE TABLE students (
  ssn integer not null,
  lastname varchar(64) not null,
  home_phone integer,
  office_phone integer
);

-- Set Not Null to column
ALTER TABLE students
ALTER COLUMN home_phone 
SET NOT Null;

-- Remove Not Null from column
ALTER TABLE students
ALTER COLUMN lastname 
DROP NOT Null;

------------------------------------------------------------------------------------------------------------------------------

-- Unique Constraint to Column
ALTER TABLE universities
ADD CONSTRAINT university_shortname_unq UNIQUE(university_shortname); -- create a new column with unique values from the university_shortname 

------------------------------------------------------------------------------------------------------------------------------

-- Rename the organization column to id
ALTER TABLE organizations
RENAME COLUMN organization TO id;

-- Make id a primary key
ALTER TABLE organizations
ADD CONSTRAINT organization_pk PRIMARY KEY (id);