-- Лабораторна робота № 2
-- З дисципліни Бази даних та інформаційні системи
-- Студента групи МІТ-31 Байди Данила

-- 1 Обрати всі значення елементи з таблиці cloth
SELECT * FROM cloth;
-- 2  Обрати всі значення стовпчиків full_name і brand_id з таблиці cloth
SELECT full_name, brand_id FROM cloth;
-- 3 Обрати всі значення стовпчика full_name з таблиці cloth із заголовком "Full name"
SELECT full_name AS "Full name" FROM cloth;
-- 4 Обрати всі значення стовпчиків full_name і brand_id з таблиці cloth де created_at рівно '2019-01-01'
SELECT full_name, brand_id FROM cloth WHERE created_at='2019-01-01';
-- 5 Обрати всі значення стовпчиків full_name або brand_id з таблиці cloth
SELECT full_name || brand_id FROM cloth;
-- 6 Обрати всі значення стовпчика id та значення суми full_name та brand_id з таблиці cloth
SELECT id, concat(full_name, brand_id) FROM cloth;
-- 7 Обрати максимальне значення price з таблиці cloth
SELECT max(price) FROM cloth;
-- 8 Обрати середнє значення price з таблиці cloth
SELECT avg(price) FROM cloth;
-- 9 Обрати мінімальне значення price з таблиці cloth
SELECT min(price) FROM cloth;
-- 10 Обрати кількість price з таблиці cloth
SELECT count(price) FROM cloth;
-- 11 Обрати всі значення стовпчика price які менші за 90000 з таблиці cloth
SELECT price FROM cloth WHERE price<90000;
-- 12 Обрати всі значення стовпчика price які більше за 90000 з таблиці cloth
SELECT price FROM cloth WHERE price>90000;
-- 13 Обрати всі значення стовпчика price які менші за 90000 і більші за 80000 з таблиці cloth
SELECT price FROM cloth WHERE price<90000 AND price>80000;
-- 14 Обрати всі значення стовпчика price які менші за 90000 або більші за 122000 з таблиці cloth
SELECT price FROM cloth WHERE price<90000 OR price>122000;
-- 15 Обрати всі значення стовпчика price які менші за 90000 або більші за 100000 з таблиці cloth де created_at більше '2001-01-01'
SELECT price FROM cloth WHERE price<90000 AND price>100000 OR created_at > '2001-01-01';
-- 16 Обрати всі значення стовпчика price які менші за 90000 і created_at менше '2001-01-01' або price більші за 100000 і created_at більше '2001-01-01' з таблиці cloth
SELECT price FROM cloth WHERE (price<90000 AND created_at<'2000-01-01') OR (price>100000 AND created_at > '2001-01-01');
-- 17 Обрати всі значення елементи з таблиці cloth де full_name не 'M'
SELECT * FROM cloth WHERE NOT full_name = 'M';
-- 18 Обрати всі значення елементи з таблиці cloth де created_at між '1930-01-01' і '1971-01-01'
SELECT * FROM cloth WHERE created_at BETWEEN '1930-01-01' AND '1971-01-01';
-- 19 Обрати всі місяць поля created_at кожного елемента з таблиці cloth
SELECT EXTRACT (MONTH FROM created_at) FROM cloth;
-- 20 Обрати 1,2,3 місяць поля created_at кожного елемента з таблиці cloth з заголовком "month"
SELECT EXTRACT (MONTH FROM created_at) AS "month" FROM cloth WHERE EXTRACT (MONTH FROM created_at) IN (1,2,3);
-- 21 Обрати всі значення елементи з таблиці cloth де full_name має другий сhar a
SELECT * FROM cloth WHERE full_name LIKE '_a%';
-- 22 Обрати всі значення елементи з таблиці cloth де full_name має перший сhar g
SELECT * FROM cloth WHERE full_name LIKE 'g%';
-- 23 Обрати created_at як text з таблиці cloth
SELECT created_at :: TEXT FROM cloth;
-- 24 Обрати всі унікальні значення full_name з таблиці cloth
SELECT DISTINCT full_name FROM cloth;
-- 25 Обрати всі рядки з таблиці cloth сортовано по full_name
SELECT * FROM cloth ORDER BY full_name;
-- 26 Обрати всі рядки з таблиці cloth сортовано по brand_id по DESC
SELECT * FROM cloth ORDER BY brand_id DESC;
-- 27 Обрати всі рядки з таблиці cloth сортовано по price, size по DESC
SELECT * FROM cloth ORDER BY price, size_id DESC;
-- 28 Обрати всі значення стовпчиків full_name і created_at і is_sold з таблиці cloth
SELECT full_name, created_at, is_solid FROM cloth e JOIN color c ON (e.brand_id = c.id);
-- 29 Обрати всі значення стовпчиків full_name і created_at і is_sold з таблиці cloth без нул значень cloth таблиці
SELECT full_name, created_at, is_solid FROM cloth e LEFT JOIN color c ON (e.brand_id = c.id);
-- 30 Обрати всі значення стовпчиків full_name і created_at і is_sold з таблиці cloth без нул значень color таблиці
SELECT full_name, created_at, is_solid FROM cloth e RIGHT JOIN color c ON (e.brand_id = c.id);
-- 31 Обрати всі значення стовпчиків full_name і created_at і is_sold  з таблиці cloth і color
SELECT full_name, created_at, is_solid FROM cloth e FULL OUTER JOIN color c ON (e.brand_id = c.id);
-- 32 Обрати всі значення стовпчиків full_name і created_at і is_sold  з таблиці cloth
SELECT full_name, created_at, is_solid FROM cloth e JOIN color c USING (id);
-- 33 Обрати всі значення стовпчиків full_name і color з таблиці cloth і is_sold з color
SELECT DISTINCT e.full_name, e.brand_id, c.name FROM cloth e JOIN color c ON (e.brand_id = c.id);
-- 34 Обрати всі значення елементи з таблиці cloth
SELECT * FROM brand;
-- 35 Обрати всі значення елементи з таблиці cloth
SELECT * FROM size;
-- 36 Обрати всі значення елементи з таблиці cloth
SELECT * FROM distributor;
-- 37 Обрати всі значення елементи з таблиці cloth
SELECT * FROM color;
-- 38  Обрати всі значення стовпчиків name і id з таблиці brand
SELECT NAME, id FROM brand;
-- 39  Обрати всі значення стовпчиків name і size з таблиці size
SELECT NAME, size FROM size;
-- 40  Обрати всі значення стовпчиків name і brand_id з таблиці distributor
SELECT NAME, brand_id FROM distributor;
-- 41  Обрати всі значення стовпчиків red і green з таблиці color
SELECT red, green FROM color;
-- 42 Обрати всі значення стовпчика name з таблиці brand із заголовком "Name"
SELECT NAME AS "Name" FROM brand;
-- 43 Обрати всі значення стовпчика name з таблиці size із заголовком "Name"
SELECT NAME AS "Name" FROM size;
-- 44 Обрати всі значення стовпчика brand_id з таблиці distributor із заголовком "Brand"
SELECT brand_id AS "Brand" FROM distributor;
-- 45 Обрати всі значення стовпчика transparency з таблиці color із заголовком "Transparency"
SELECT transparency AS "Transparency" FROM color;
-- 46 Обрати всі значення стовпчиків name або id з таблиці brand
SELECT NAME || id FROM brand;
-- 47 Обрати всі значення стовпчиків id і name або size з таблиці size
SELECT id, NAME || size FROM size;
-- 48 Обрати всі значення стовпчиків id і name або brand_id з таблиці distributor
SELECT id, NAME || brand_id FROM distributor;
-- 49 Обрати всі значення стовпчиків id і name або transparency з таблиці color
SELECT id, NAME || transparency FROM color;
-- 50 Обрати всі значення суми id та name з таблиці brand
SELECT concat(id, NAME) FROM brand;
-- 51 Обрати всі значення стовпчика id та значення суми name та brand_id з таблиці distributor
SELECT id, concat(NAME, brand_id) FROM distributor;
-- 52 Обрати всі значення стовпчика id та значення суми name та size з таблиці size
SELECT id, concat(NAME, size) FROM size;
-- 53 Обрати всі значення стовпчика id та значення суми name та transparency з таблиці color
SELECT id, concat(NAME, transparency) FROM color;
-- 54 Обрати максимальне значення id з таблиці brand
SELECT max(id) FROM brand;
-- 55 Обрати максимальне значення brand_id з таблиці distributor
SELECT max(brand_id) FROM distributor;
-- 56 Обрати максимальне значення size з таблиці size
SELECT max(size) FROM size;
-- 57 Обрати максимальне значення price з таблиці cloth
SELECT max(transparency) FROM color;
-- 58 Обрати середнє значення id з таблиці brand
SELECT avg(id) FROM brand;
-- 59 Обрати середнє значення brand_id з таблиці distributor
SELECT avg(brand_id) FROM distributor;
-- 60 Обрати середнє значення size з таблиці size
SELECT avg(size) FROM size;
-- 61 Обрати середнє значення transparency з таблиці color
SELECT avg(transparency) FROM color;
-- 62 Обрати мінімальне значення id з таблиці brand
SELECT min(id) FROM brand;
-- 63 Обрати мінімальне значення size з таблиці size
SELECT min(size) FROM size;
-- 64 Обрати мінімальне значення brand_id з таблиці distributor
SELECT min(brand_id) FROM distributor;
-- 65 Обрати мінімальне значення transparency з таблиці color
SELECT min(transparency) FROM color;
-- 66 Обрати кількість id з таблиці brand
SELECT count(id) FROM brand;
-- 67 Обрати кількість sizesize з таблиці size
SELECT count(size) FROM size;
-- 68 Обрати кількість brand_id з таблиці distributor
SELECT count(brand_id) FROM distributor;
-- 69 Обрати кількість transparency з таблиці color
SELECT count(transparency) FROM color;
-- 70 Обрати всі значення стовпчика id які менші за 90000 з таблиці brand
SELECT id FROM brand WHERE id<90000;
-- 71 Обрати всі значення стовпчика size які менші за 90000 з таблиці size
SELECT size FROM size WHERE size<90000;
-- 72 Обрати всі значення стовпчика brand_id які менші за 90000 з таблиці distributor
SELECT brand_id FROM distributor WHERE brand_id<90000;
-- 73 Обрати всі значення стовпчика transparency які менші за 90000 з таблиці color
SELECT transparency FROM color WHERE transparency<90000;
-- 74 Обрати всі значення стовпчика id які більше за 90000 з таблиці brand
SELECT id FROM brand WHERE id>90000;
-- 75 Обрати всі значення стовпчика size які більше за 90000 з таблиці size
SELECT size FROM size WHERE size>90000;
-- 76 Обрати всі значення стовпчика brand_id які більше за 90000 з таблиці distributor
SELECT brand_id FROM distributor WHERE brand_id>90000;
-- 77 Обрати всі значення стовпчика price які більше за 90000 з таблиці cloth
SELECT transparency FROM color WHERE transparency>90000;
-- 78 Обрати всі значення стовпчика id які менші за 90000 і більші за 80000 з таблиці brand
SELECT id FROM brand WHERE id<90000 AND id>80000;
-- 79 Обрати всі значення стовпчика size які менші за 90000 і більші за 80000 з таблиці size
SELECT size FROM size WHERE size<90000 AND size>80000;
-- 80 Обрати всі значення стовпчика brand_id які менші за 90000 і більші за 80000 з таблиці distributor
SELECT brand_id FROM distributor WHERE brand_id<90000 AND brand_id>80000;
-- 81 Обрати всі значення стовпчика transparency які менші за 90000 і більші за 80000 з таблиці color
SELECT transparency FROM color WHERE transparency<90000 AND transparency>80000;
-- 82 Обрати всі значення стовпчика id які менші за 90000 або більші за 122000 з таблиці brand
SELECT id FROM brand WHERE id<90000 OR id>122000;
-- 83 Обрати всі значення стовпчика size які менші за 90000 або більші за 122000 з таблиці size
SELECT size FROM size WHERE size<90000 OR size>122000;
-- 84 Обрати всі значення стовпчика brand_id які менші за 90000 або більші за 122000 з таблиці distributor
SELECT brand_id FROM distributor WHERE brand_id<90000 OR brand_id>122000;
-- 85 Обрати всі значення стовпчика price які менші за 90000 або більші за 122000 з таблиці cloth
SELECT transparency FROM color WHERE transparency<90000 OR transparency>122000;
-- 86 Обрати всі значення елементи з таблиці brand де name не 'M'
SELECT * FROM brand WHERE NOT NAME = 'M';
-- 87 Обрати всі значення елементи з таблиці size де name не 'M'
SELECT * FROM size WHERE NOT NAME = 'M';
-- 88 Обрати всі значення елементи з таблиці distributor де name не 'M'
SELECT * FROM distributor WHERE NOT NAME = 'M';
-- 89 Обрати всі значення елементи з таблиці color де name не 'M'
SELECT * FROM color WHERE NOT NAME = 'M';
-- 90 Обрати всі значення елементи з таблиці brand де name має другий сhar a
SELECT * FROM brand WHERE NAME LIKE '_a%';
-- 91 Обрати всі значення елементи з таблиці size де name має другий сhar a
SELECT * FROM size WHERE NAME LIKE '_a%';
-- 92 Обрати всі значення елементи з таблиці distributor де name має другий сhar a
SELECT * FROM distributor WHERE NAME LIKE '_a%';
-- 93 Обрати всі значення елементи з таблиці color де name має другий сhar a
SELECT * FROM color WHERE NAME LIKE '_a%';
-- 94 Обрати всі значення елементи з таблиці brand де name має перший сhar g
SELECT * FROM brand WHERE NAME LIKE 'g%';
-- 95 Обрати всі значення елементи з таблиці size де name має перший сhar g
SELECT * FROM size WHERE NAME LIKE 'g%';
-- 96 Обрати всі значення елементи з таблиці distributor де name має перший сhar g
SELECT * FROM distributor WHERE NAME LIKE 'g%';
-- 97 Обрати всі значення елементи з таблиці color де name має перший сhar g
SELECT * FROM color WHERE NAME LIKE 'g%';
-- 98 Обрати всі унікальні значення name з таблиці size
SELECT DISTINCT NAME FROM size;
-- 99 Обрати всі унікальні значення name з таблиці distributor
SELECT DISTINCT NAME FROM distributor;
-- 100
SELECT concat(CLOTH.full_name, ' size: ', SIZE.name, ' brand: ', BRAND.name, ' distributor: ', DIST.name, ' color: ', COLOR.name) AS "Clothes"
FROM cloth CLOTH
    JOIN size SIZE ON (CLOTH.size_id = SIZE.id)
    JOIN brand BRAND ON (CLOTH.brand_id = BRAND.id)
    JOIN distributor DIST ON (DIST.brand_id = BRAND.id)
    JOIN color COLOR ON (CLOTH.color_id = COLOR.id)
WHERE CLOTH.id<90000
  AND CLOTH.full_name LIKE 'The%'
  AND CLOTH.created_at BETWEEN '2020-01-01' AND '2021-01-01'

-- Висновки: В результаті виконання даної лабораторної роботи було створино 100 SQL запитів