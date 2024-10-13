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

-- Example 
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




