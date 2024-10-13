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
DROM COLUMN column_name;

----------------- Example -----------------------------

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

