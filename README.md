# Прошу обратить внимание!
## Условие ДЗ№1:

1. Создайте таблицу с мобильными телефонами, используя графический интерфейс. Заполните БД данными. Добавьте скриншот на платформу в качестве ответа на ДЗ.

2. Выведите название, производителя и цену для товаров, количество которых превышает 2 (SQL - файл, скриншот, либо сам код).

3. Выведите весь ассортимент товаров марки “Samsung”.

4. Выведите информацию о телефонах, где суммарный чек больше 100 000 и меньше 145 000.

5.*** С помощью регулярных выражений найти (можно использовать операторы “LIKE”, “RLIKE” для 4.3 ):
	5.1. Товары, в которых есть упоминание "Iphone"
	5.2. "Galaxy"
	5.3.  Товары, в которых есть ЦИФРЫ
	5.4.  Товары, в которых есть ЦИФРА "8"  

5. *** выполнение по желанию.

## Условие ДЗ№2:
1. Используя операторы языка SQL, создайте табличку “sales”. Заполните ее данными.

2. Сгруппируйте значений количества в 3 сегмента — меньше 100, 100-300 и больше 300.

3. Создайте таблицу “orders”, заполните ее значениями. Покажите “полный” статус заказа, используя оператор CASE

Дополнительное задание к первым 2 урокам:
1. CRUD - операции на любом ЯП. Коннект с БД через С#, к примеру  
Файл со скриптом прикреплен к материалам(interview.sql):
№1. Используя оператор ALTER TABLE, установите внешний ключ в одной из таблиц.
№2. Без оператора JOIN, верните заголовок публикации, текст с описанием, идентификатор клиента, опубликовавшего публикацию и логин данного клиента.
№3. Выполните поиск по публикациям, автором котоырх является клиент "Mikle".

## Условие ДЗ№3:

1. Таблица для работы на слайде.

2. Отсортируйте данные по полю заработная плата (salary) в порядке: убывания; возрастания.

3. Выведите 5 максимальных заработных плат (saraly).

4. Посчитайте суммарную зарплату (salary) по каждой специальности (роst).

5. Найдите кол-во сотрудников с специальностью (post) «Рабочий» в возрасте от 24 до 49 лет включительно.

6. Найдите количество специальностей.

7. Выведите специальности, у которых средний возраст сотрудников меньше 30 лет включительно.

К следующему уроку изучить структуру БД (с ней будут связаны доп задачки):
https://www.notion.so/c448e32ae1344f22b1deae7f42c8b57f

## Условие ДЗ№4:

Основное ДЗ:
Табличка:
https://drive.google.com/file/d/1TZzW8ZlDdvIfDC9C46bUeILey6opQjdu/view?usp=share_link
Используя JOIN-ы, выполните следующие операции:
Вывести всех котиков по магазинам по id (условие соединения shops.id = cats.shops_id)
Вывести магазин, в котором продается кот “Мурзик” (попробуйте выполнить 2 способами)
Вывести магазины, в которых НЕ продаются коты “Мурзик” и “Zuza”

Табличка (после слов “Последнее задание, таблица:”):
https://drive.google.com/file/d/1TZzW8ZlDdvIfDC9C46bUeILey6opQjdu/view?usp=share_link
Вывести название и цену для всех анализов, которые продавались 5 февраля 2020 и всю следующую неделю.
Есть таблица анализов Analysis:
an_id — ID анализа;
an_name — название анализа;
an_cost — себестоимость анализа;
an_price — розничная цена анализа;
an_group — группа анализов.
Есть таблица групп анализов Groups:
gr_id — ID группы;
gr_name — название группы;
gr_temp — температурный режим хранения.
Есть таблица заказов Orders:
ord_id — ID заказа;
ord_datetime — дата и время заказа;
ord_an — ID анализа.

Дополнительное ДЗ:
Подсчитать общее количество лайков, которые получили пользователи младше 12 лет.

Определить кто больше поставил лайков (всего): мужчины или женщины.

Вывести всех пользователей, которые не отправляли сообщения.

(по желанию)* Пусть задан некоторый пользователь. Из всех друзей этого пользователя найдите человека, который больше всех написал ему сообщений.

## Условие ДЗ№5:

Файл:https://docs.google.com/spreadsheets/d/1bKCfz2tMENAISBxU7XRevge1qraNuPoN/edit?usp=share_link&ouid=112631188905352530754&rtpof=true&sd=true
Скрипт:https://drive.google.com/file/d/1rkNr6GHSE9ulRs39BB4RC80aKMg1c7Jw/view?usp=share_link
1.	Создайте представление, в которое попадут автомобили стоимостью  до 25 000 долларов
2.	Изменить в существующем представлении порог для стоимости: пусть цена будет до 30 000 долларов (используя оператор ALTER VIEW) 
3. 	Создайте представление, в котором будут только автомобили марки “Шкода” и “Ауди”
![image](https://user-images.githubusercontent.com/111015027/235715475-1586a3e8-ef8e-49f3-8181-dc66d6afce6f.png)

Добавьте новый столбец под названием «время до следующей станции». Чтобы получить это значение, мы вычитаем время станций для пар смежных станций. Мы можем вычислить это значение без использования оконной функции SQL, но это может быть очень сложно. Проще это сделать с помощью оконной функции LEAD . Эта функция сравнивает значения из одной строки со следующей строкой, чтобы получить результат. В этом случае функция сравнивает значения в столбце «время» для станции со станцией сразу после нее.
![image](https://user-images.githubusercontent.com/111015027/235715581-35e5a2e2-6307-49e6-b157-ae7681773ff2.png)
