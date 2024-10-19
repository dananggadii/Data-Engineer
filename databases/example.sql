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

