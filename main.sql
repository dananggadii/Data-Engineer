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
WHERE field_name = 'value';

-- WHERE with comparison operators (>, <, >=, <=) noted (<> artinya !=)
SELECT field_name
FROM name_table
WHERE field_name > 'value';

-- WHERE multiple criteria OR, AND, BETWEEN 
SELECT field_name
FROM name_table
WHERE field_name = 'value' OR field_name = 'value';

-- WHERE OR, AND operator
SELECT field_name
FROM name_table
WHERE field_name = 'value'
  OR field_name = 'value';

-- WHERE AND, OR
SELECT field_name
FROM name_table
WHERE (field_name = 'value' OR field_name = 'value') 
  AND (field_name = 'value' OR field_name = 'value');

-- WHERE BETWEEN, AND
SELECT field_name
FROM name_table
WHERE field_name 
  BETWEEN value1 AND value2;

-- WHERE BETWEEN, AND, OR
SELECT field_name
FROM name_table
WHERE field_name 
  BETWEEN value1 AND value2 AND field_name = 'value';

-- LIKE Query 
SELECT field_name 
FROM name_table
WHERE field_name LIKE 'value%' -- value mencari value.....
WHERE field_name LIKE '__value%' -- value mencari karakter value ketiga.....
WHERE field_name LIKE '%value'; -- value mencari .....value

-- NOT LIKE Query 
SELECT field_name 
FROM name_table
WHERE field_name NOT LIKE 'value%' -- value mencari kecuali value.....
WHERE field_name NOT LIKE '%value'; -- value mencari kecuali .....value

-- WHERE, IN
SELECT field_name
FROM name_table
WHERE field_name IN (value1, value2, value3);

-- NULL values
SELECT field_name
FROM name_table
WHERE field_name IS NULL; -- Include nilai null
WHERE field_name IS NOT NULL; -- Not include nilai null

-- Aggregate function (AVG(), SUM(), MIN(), MAX(), COUNT())
SELECT Aggregate_function(field_name) AS name_alias
FROM name_table;

-- Aggregate function with WHERE Condition
SELECT Aggregate_function(field_name) AS name_alias
FROM name_table
WHERE field_name >= value;

-- ROUND() = number specified decimal
SELECT ROUND(AVG(field_name), number_places_after_coma) AS name_alias
FROM name_table
WHERE field_name >= value;

-- No number after decimal
SELECT ROUND(AVG(field_name)) AS name_alias
FROM name_table
WHERE field_name >= value;

-- Aliasing with arithmatic (+, -, /, *)
SELECT (field_name - field_name) AS name_alias
FROM name_table;

-- ORDER BY (ASC = Up, DESC = Down)
SELECT field_name, field_name
FROM name_table
ORDER BY field_name;

SELECT field_name, field_name
FROM name_table
ORDER BY field_name ASC, field_name DESC;

-- Group BY single field
SELECT field_name, COUNT(field_name) AS name_alias
FROM name_table
GROUP BY field_name, field_name
ORDER BY field_name ASC, field_name DESC
LIMIT number_limit;

-- Filtering Grouped data
SELECT
    field_name
    COUNT(field_name) AS name_alias
FROM name_table
GROUP BY field_name
HAVING COUNT(field_name) > number_filtered;

-- Inner JOIN
SELECT name_table.field_name, field_name, field_name -- Noted : table.field_name digunakan ketika field_name terdapat dalam 2 table
FROM name_table -- table wadah 
INNER JOIN name_table -- table yang ingin di join
ON name_table.field_name = name_table.field_name; -- field harus sama antara kedua table untuk dijadikan korelasi

-- Inner JOIN with alias table 
SELECT as_name_table.field_name, field_name, field_name -- Ubah nama table dengan alias yang sudah di deklarasikan
FROM name_table AS name_alias -- table wadah
INNER JOIN name_table AS name_alias -- table yang ingin di join
ON as_name_table.field_name = as_name_table.field_name; -- field harus sama antara kedua table untuk dijadikan korelasi

-- INNER JOIN with using function
SELECT as_name_table.field_name, field_name 
FROM name_table AS name_alias 
INNER JOIN name_table AS name_alias
USING(field_name); -- field name = field yang sama dari 2 table yang menjadi pusat INNER JOIN
