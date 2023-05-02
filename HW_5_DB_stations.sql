/* 1.2 Таблица для домашнего задания №5 station */

-- 1. Выбираем активную БД
USE HomeWork_5;

-- 2. Создание таблиц

CREATE TABLE stations
(
train_id INT NOT NULL,
station varchar(20) NOT NULL,
station_time TIME NOT NULL
);

INSERT stations(train_id, station, station_time)
VALUES (110, "SanFrancisco", "10:00:00"),
(110, "Redwood Sity", "10:54:00"),
(110, "Palo Alto", "11:02:00"),
(110, "San Jose", "12:35:00"),
(120, "SanFrancisco", "11:00:00"),
(120, "Palo Alto", "12:49:00"),
(120, "San Jose", "13:30:00");

/* Добавьте новый столбец под названием «время до следующей станции». Чтобы получить это значение, мы вычитаем время станций для пар смежных станций.
 Мы можем вычислить это значение без использования оконной функции SQL, но это может быть очень сложно. Проще это сделать с помощью оконной функции LEAD.
 Эта функция сравнивает значения из одной строки со следующей строкой, чтобы получить результат. В этом случае функция сравнивает значения в столбце «время»
 для станции со станцией сразу после нее.*/
 
SELECT 
	train_id,
    station,
    station_time,
    TIMEDIFF(LEAD(station_time, 1) OVER (PARTITION BY train_id), station_time) AS "Время до следующего поезда"
FROM stations;
