USE dz_1;
SELECT * FROM mob_phone;

-- Задание 1. Создайте таблицу с мобильными телефонами, используя графический интерфейс. Заполните БД данными.
/* В правом левом меню выбрать подраздел "Schemas", в поле "Schemas", в пустом месте ПКМ выбрать "Create Schemas", в ввести название и "Apply".
Далее, в списке поля "Schemas", найти введенное имя, раскрыть выпадающий список, на названии "Tables", в пустом месте ПКМ выбрать "Create Tables",
в ввести название полей и "Apply". Затем подключиться к Схеме "USE dz_1;", и вывести в терминал созданную таблицу "SELECT * FROM mob_phone;". 
В терминале заполнить таблицу данными и нажать "Apply". 
Либо код:
CREATE DATABASE IF NOT EXISTS dz_1;
USE dz_1;
DROP TABLE IF EXISTS mob_phone;
CREATE TABLE mob_phone (
  Id INT PRIMARY KEY AUTO_INCREMENT,
  ProductName VARCHAR(35) NOT NULL,
  Manufacturer VARCHAR(25) NOT NULL,
  ProductCount INT DEFAULT 0,
  Price DECIMAL);
INSERT mob_phone (ProductName, Manufacturer, ProductCount, Price)
VALUES 
	('iPhone X', 'Apple', '3', '76000'),
    ('iPhone 8', 'Apple', '2', '51000'),
    ('Calaxy S9', 'Samsung', '2', '56000'),
    ('Galaxy S8', 'Samsung', '1', '41000'),
    ('P20 Pro', 'Huawei', '5', '36000');
SELECT * FROM mob_phone; */

-- Задание 2. Выведите название, производителя и цену для товаров, количество которых превышает 2.
SELECT ProductName, Manufacturer, Price 
FROM mob_phone
WHERE ProductCount > 2;

-- Задание 3. Выведите весь ассортимент товаров марки “Samsung”.
SELECT * 
FROM mob_phone
WHERE Manufacturer = "Samsung";

-- Задание 4. Выведите информацию о телефонах, где суммарный чек больше 100 000 и меньше 145 000**.
SELECT * 
FROM mob_phone
WHERE ProductCount * Price > 100000 AND ProductCount * Price < 145000;

-- Задание 5. С помощью регулярных выражений найти (можно использовать операторы “LIKE”, “RLIKE” для 4.3 ).
-- Задание 5.1. Товары, в которых есть упоминание "Iphone".
SELECT * 
FROM mob_phone
WHERE ProductName LIKE "iPhone%";

-- Задание 5.2. Товары, в которых есть упоминание "Galaxy".
SELECT * 
FROM mob_phone
WHERE ProductName LIKE "Galaxy%";

-- Задание 5.3. Товары, в которых есть ЦИФРЫ.
SELECT * 
FROM mob_phone
WHERE ProductName LIKE "Galaxy%";

-- Задание 5.4. Товары, в которых есть ЦИФРЫ(REGEXP - регулярки, либо RLIKE). ! Если исключить римскую цифру 'X'
SELECT * 
FROM mob_phone
WHERE ProductName RLIKE '[0-9]';
-- WHERE ProductName REGEXP '[0-9]';

-- Задание 5.5. Товары, в которых есть ЦИФРА "8"
SELECT * 
FROM mob_phone
WHERE ProductName RLIKE '8';