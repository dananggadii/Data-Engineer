-- Count (total seluruh data)
SELECT COUNT(field_name) AS name_alias
FROM name_table;

-- Count multiple fields
SELECT COUNT(field_name) AS name_alias, COUNT(field_name) AS name_alias 
FROM name_table;

-- Count all fields
SELECT COUNT(*) AS name_alias
FROM name_table;

-- Distinct (menghapus seluruh data duplikat)
SELECT DISTINCT field_name
FROM name_table;

-- Count with Distinct (total seluruh nilai tanpa nilai duplikat)
SELECT COUNT(DISTINCT field_name) AS name_alias
FROM name_table;

-- LIMIT (membatasi query view/output)
SELECT field_name 
FROM name_table
LIMIT number_limit;

-- WHERE (mencari letak query)
SELECT field_name
FROM name_table
WHERE field_name = 'keyword';

-- WHERE with comparison operators (>, <, >=, <=) noted (<> artinya !=)
SELECT field_name
FROM name_table
WHERE field_name > 'keyword';

-- WHERE multiple criteria OR, AND, BETWEEN 
SELECT field_name
FROM name_table
WHERE field_name > 'keyword' OR field_name > 'keyword';

-- WHERE OR, AND operator
SELECT field_name
FROM name_table
WHERE field_name = 'keyword'
  OR field_name = 'keyword';

-- WHERE AND, OR
SELECT field_name
FROM name_table
WHERE (field_name = 'keyword' OR field_name = 'keyword') 
  AND (field_name = 'keyword' OR field_name = 'keyword');

