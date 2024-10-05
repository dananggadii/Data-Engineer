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

-- Relations beetwen table 
SELECT c.name AS country, l.name AS language
FROM countries AS c
INNER JOIN languages AS l
USING(code)
WHERE l.name = 'Bhojpuri';

-- Multiple Join 
SELECT * 
FROM left_table AS l 
INNER JOIN right_table AS r 
ON left_table_id = right_table_id
  AND left_table_date = right_table_date

-- Left Join 
SELECT 
	c1.name AS city, 
    code, 
    c2.name AS country,
    region, 
    city_proper_pop
FROM cities AS c1
LEFT JOIN countries AS c2
ON c1.country_code = c2.code
ORDER BY code DESC;

-- Right Join
SELECT countries.name AS country, languages.name AS language, percent
FROM languages
RIGHT JOIN countries
USING(code)
ORDER BY language;

-- FULL JOIN
SELECT 
	c1.name AS country, 
    region, 
    l.name AS language,
	basic_unit, 
    frac_unit
FROM countries as c1 
FULL JOIN languages AS l 
ON c1.code = l.code
FULL JOIN currencies AS c2
ON c1.code = c2.code
WHERE region LIKE 'M%esia';

-- CROSS JOIN
SELECT c.name AS country, l.name AS language
FROM countries AS c        
CROSS JOIN languages AS l
WHERE c.code in ('PAK','IND')
	AND l.code in ('PAK','IND');

-- Self JOIN
SELECT 
	p1.country_code, 
    p1.size AS size2010, 
    p2.size AS size2015
FROM populations AS p1
INNER JOIN populations AS p2
ON p1.country_code = p2.country_code
WHERE p1.year = 2010
    AND p1.year = p2.year - 5;

-- NOTED : perbedaan INNER, LEFT dan RIGHT JOIN
-- Inner =  Mengembalikan hanya bagian yang beririsan (kecocokan di kedua tabel).
-- LEFT =  Mengembalikan seluruh baris dari tabel kiri dan kecocokan dari tabel kanan.
-- RIGHT = Mengembalikan seluruh baris dari tabel kanan dan kecocokan dari tabel kiri.
-- FULL = Mengembalikan seluruh baris dari left dan right table.
-- CROSS = Mengembalikan seluruh baris dari table dengan berbagai kondisi.


