/* 1. Таблица staff для заданий */

-- 1. Создание БД
CREATE DATABASE IF NOT EXISTS HomeWork_3; -- Создаем БД lesson1, если до этого такой БД не существовло

-- 2. Выбираем активную БД
USE HomeWork_3;

-- 3. Создание таблицы 
CREATE TABLE HomeWork_3_staff
 (
	id INT PRIMARY KEY AUTO_INCREMENT,
    firstname VARCHAR(45),
    lastname VARCHAR(45),
    post VARCHAR(45),
    seniority INT,
    salary INT,
    age INT
);

  -- 4. Заполнение таблицы значениями
INSERT HomeWork_3_staff (firstname, lastname, post, seniority, salary, age)
VALUES
		('Вася', 'Петров', 'Начальник', 40, 100000, 60), -- id = 1
		('Петр', 'Власов', 'Начальник', 8, 70000, 30),
		('Катя', 'Катина', 'Инженер', 2, 70000, 25),
		('Саша', 'Сасин', 'Инженер', 12, 50000, 35),
		('Иван', 'Иванов', 'Рабочий', 40, 30000, 59),
		('Петр', 'Петров', 'Рабочий', 20, 25000, 40),
		('Сидр', 'Сидоров', 'Рабочий', 10, 20000, 35),
		('Антон', 'Антонов', 'Рабочий', 8, 19000, 28),
		('Юрий', 'Юрков', 'Рабочий', 5, 15000, 25),
		('Максим', 'Максимов', 'Рабочий', 2, 11000, 22),
		('Юрий', 'Галкин', 'Рабочий', 3, 12000, 24),
		('Людмила', 'Маркина', 'Уборщик', 10, 10000, 49);
        
SELECT *
FROM HomeWork_3_staff;     
        
 /* 2.  Отсортируйте данные по полю заработная плата (salary) в порядке: убывания; возрастания */  
 
SELECT *
FROM HomeWork_3_staff
ORDER BY salary;

SELECT *
FROM HomeWork_3_staff
ORDER BY salary DESC;

/* 3. Выведите 5 максимальных заработных плат (salary) */

SELECT salary
FROM HomeWork_3_staff
ORDER BY salary DESC
LIMIT 5;

/* 4. Посчитайте суммарную зарплату (salary) по каждой специальности (роst) */

SELECT SUM(salary), post
FROM HomeWork_3_staff
GROUP BY post;

/* 5. Найдите кол-во сотрудников с специальностью (post) «Рабочий» в возрасте от 24 до 49 лет включительно. */

SELECT COUNT(post)
FROM HomeWork_3_staff
WHERE post = 'Рабочий' AND age >= 24 AND age <= 49;

/* 6. Найдите количество специальностей */

SELECT COUNT(DISTINCT post)
FROM HomeWork_3_staff;

/* 7. Выведите специальности, у которых средний возраст сотрудников меньше 30 лет */

SELECT post, AVG(age)
FROM HomeWork_3_staff
GROUP BY post
HAVING AVG(age) <= 30;

SELECT post, AVG(age)
FROM HomeWork_3_staff
GROUP BY post;

SELECT post, AVG(age)
FROM HomeWork_3_staff
GROUP BY post
HAVING AVG(age) <= (SELECT AVG(age) FROM HomeWork_3_staff);

SELECT AVG(age) 
FROM HomeWork_3_staff;