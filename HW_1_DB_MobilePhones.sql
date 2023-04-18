/* 1. Создайте таблицу с мобильными телефонами (mobile_phones), используя графический интерфейс. 
-- Заполните БД данными. Добавьте скриншот на платформу в качестве ответа на ДЗ 
Необходимые поля таблицы:
    product_name (название товара),
    manufacturer (производитель),
    product_count (количество),
    price (цена).
  Заполните БД произвольными данными
 */
 
 -- 1. Создание БД
CREATE DATABASE IF NOT EXISTS HomeWork_1; -- Создаем БД lesson1, если до этого такой БД не существовло

-- 2. Выбираем активную БД
USE HomeWork_1;

-- 3. Создание таблицы 
CREATE TABLE HomeWork_1_mobile_phones
 (
  id INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(45) NOT NULL,
  manufacturer VARCHAR(45) NOT NULL,
  product_count INT  NOT NULL,
  price Float  NOT NULL,
  PRIMARY KEY (id));
  
  -- 4. Заполнение таблицы значениями
  INSERT HomeWork_1_mobile_phones (product_name, manufacturer, product_count, price)
  VALUES 
  ( "IphoneX", "Apple", 3, 76000), 
  ( "Iphone8", "Apple", 2, 51000),
  ( "GalaxyS9", "Samsung", 2, 56000),
  ( "GalaxyS8", "Samsung", 1, 41000), 
  ("P20Pro", "Huawei", 5, 36000); 
  
  /* 2. Выведите название, производителя и цену для товаров, количество которых превышает 2 (SQL - файл, скриншот, либо сам код) */
  
  Select * from HomeWork_1_mobile_phones 
  Where product_count >=2 ;
  
  /* 3. Выведите весь ассортимент товаров марки “Samsung” */
  
  Select * from HomeWork_1_mobile_phones 
  Where manufacturer = "Samsung" ;
  
  /* 4. Выведите информацию о телефонах, где суммарный чек больше 100 000 и меньше 145 000** */
  
 SELECT * FROM HomeWork_1_mobile_phones
 WHERE product_count*price
 BETWEEN 100000 and 145000;
  
  /* 5. С помощью регулярных выражений найти (можно использовать операторы “LIKE”, “RLIKE” для 4.3 ):
	5.1. Товары, в которых есть упоминание "Iphone"
	5.2. "Galaxy"
	5.3.  Товары, в которых есть ЦИФРЫ
	5.4.  Товары, в которых есть ЦИФРА "8"
   */
   
   -- 5.1   
  Select * from HomeWork_1_mobile_phones
  Where product_name like "%Iphone%";
  
  -- 5.2
  Select * from HomeWork_1_mobile_phones 
  Where product_name like "%Galaxy%";  
  
  -- 5.3
  Select * from HomeWork_1_mobile_phones
  Where product_name REGEXP '[0-9]';
  
  -- 5.4
  Select * from HomeWork_1_mobile_phones
  Where product_name like "%8%";