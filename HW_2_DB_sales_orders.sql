/* 1. Используя операторы языка SQL, 
создайте таблицу “sales”. Заполните ее данными. Справа располагается рисунок к первому заданию.
*/

-- 1. Создание БД
DROP DATABASE IF EXISTS HomeWork_2; -- Удалить БД lesson1, если она существует
CREATE DATABASE IF NOT EXISTS HomeWork_2; -- Создаем БД lesson1, если до этого такой БД не существовло

-- 2 Выбираем активную БД
USE HomeWork_2;

-- 3. Создание таблицы 
CREATE TABLE HomeWork_2_sales
 (
 id INT PRIMARY KEY AUTO_INCREMENT,
 date_order DATE,
 product_count INT
 );
 
 -- 4. Заполнение таблицы значениями
  INSERT HomeWork_2_sales (date_order, product_count)
  VALUES 
  ('2020-01-01', 156), 
  ('2020-01-02', 180),
  ('2020-01-03', 21),
  ('2020-01-04', 124), 
  ('2020-01-05', 341);
  
SELECT *
FROM HomeWork_2_sales;

  
/* 2.  Для данных таблицы “sales” укажите тип заказа в зависимости от кол-ва: 
меньше 100 - Маленький заказ
от 100 до 300 - Средний заказ
больше 300 - Большой заказ
*/

SELECT 
	id AS "id заказа",
    IF (product_count < 100, "Маленький заказ", 
		IF (product_count >= 100 AND product_count <= 300, "Средний заказ",
			IF (product_count > 300, "Большой заказ", "Не определено")))
	AS "Тип заказа"
FROM HomeWork_2_sales;

SELECT id,
CASE
	WHEN product_count < 100 THEN "Маленький заказ"
    WHEN product_count >= 100 AND product_count <= 300 THEN "Средний заказ"
    ELSE "Большой заказ"
    END AS "Тип заказа"
FROM  HomeWork_2_sales;

/* 3. Создайте таблицу “orders”, заполните ее значениями.
Выберите все заказы. В зависимости от поля order_status выведите столбец full_order_status:
OPEN – «Order is in open state» ; CLOSED - «Order is closed»; CANCELLED -  «Order is cancelled».
*/

DROP TABLE IF EXISTS HomeWork_2_orders; -- Удалить БД lesson1, если она существует

-- 1. Создание таблицы 
CREATE TABLE HomeWork_2_orders
(id INT PRIMARY KEY AUTO_INCREMENT,
employee_id VARCHAR(5),
amount DECIMAL(5,2),
order_status VARCHAR(10)
);

-- 2. Заполнение таблицы значениями
INSERT HomeWork_2_orders (employee_id, amount, order_status)
  VALUES 
  ('e03', 15.00,'OPEN'), 
  ('e01', 25.50,'OPEN'),
  ('e05', 100.70,'CLOSED'),
  ('e02', 22.18,'OPEN'), 
  ('e04', 9.50,'CANCELLED');
  
SELECT *
FROM HomeWork_2_orders;

SELECT *,
CASE
	WHEN order_status = 'OPEN' THEN "Order is in open state"
    WHEN order_status = 'CLOSED' THEN "Order is closed"
    ELSE "Order is cancelled"
    END AS "full_order_status"
FROM HomeWork_2_orders;