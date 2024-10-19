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


-- CREATE table with multiple data types 
CREATE TABLE weather (
  temperature integer,
  wind_speed text
); 

-- Convert data types from text to integer 
SELECT temperature * CAST(wind_speed AS integer) AS wind_chill 
FROM weather;

