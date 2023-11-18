# Задание для модуля 2

## Часть 1: Основы баз данных и Подключение к Базам Данных и SQL

### Теоретическая часть
1. Изучена серия видео-роликов по [Модулю №2 DataLearn](https://youtu.be/GFgKx4XodMU?si=ZDGWqmVG1Obge0Za)
2. Пройден курс по Введению в базы данных на [Stepik.org](https://stepik.org/course/551/syllabus)
3. Прочитана статья "Хранилище данных vs Озеро Данных" на [HABR](https://habr.com/ru/articles/485180/)
4. Пройден курс по Оконным функциям SQL на [Stepik.org](https://stepik.org/course/95367/promo#toc)
5. Пройден "Интерактивный тренажер по SQL" на [Stepik.org](https://stepik.org/course/63054/syllabus)
6. Пройден тренажер "Базы данных и SQL. Задачи" на [Stepik.org](https://stepik.org/course/182226/promo)

### Практическая часть
### Часть №1 Установка ПО

1. Установлен Docker по видео курсу Установка <strong>Docker</strong>

2. Установлен PostgreSQL по инструкции <strong>Установка Postgres на Docker</strong>

3. Установлена программа <strong>DBSchema</strong> для проектирования базы данных. 

4. Установлен SQL-клиент [DBeaver](https://github.com/Data-Learn/data-engineering/blob/master/how-to/%20How%20to%20install%20DBeaver.md) для подключения базы данных. Скриншот установки DBeaver

5. Созданы 3 таблицы и загружены данные в базу из Superstore Excel файл. 3 Таблицы заполнены данными

В GitHub сохранены скрипты загрузки данных и создания таблиц.

## Часть 2: Проектирование Модели данных

### Теоретическая часть

1. Прочитана статья про Хранилище Данных [Антихрупкость архитектуры хранилищ данных](https://habr.com/ru/articles/281553/)

2. Прочитана статья про Data Vault [Основы Data Vault](https://habr.com/ru/articles/502968/)

3. Пройден курс "Проектирование и разработка баз данных" на [Stepik.org](https://stepik.org/course/136543/promo)

4. Лекция ТулГУ по нормализации на [VKVideo](https://vk.com/search?c%5Bq%5D=%D0%BD%D0%BE%D1%80%D0%BC%D0%B0%D0%BB%D0%B8%D0%B7%D0%B0%D1%86%D0%B8%D1%8F&c%5Bsection%5D=auto&z=video-221682666_456239032)

5. Пройден курс Проектирование баз данных на [Stepik.org](https://stepik.org/course/51675/promo#toc)

### Практиктическая часть

Вам необходимо нарисовать модель данных для нашего файлика Superstore:
- Концептуальную
- Логическую
- Физическую
- 
Когда вы нарисуете модель данных, вам нужно скопировать DDL и выполнить его в SQL клиенте.

Вам необходимо сделать INSERT INTO SQL, чтобы заполнить Dimensions таблицы и Sales Fact таблицу. Сначала мы заполняем Dimensions таблицы, где в качестве id мы генерим последовательность чисел, а зачем Sales Fact таблицу, в которую вставляем id из Dimensions таблиц. Такой пример я рассматривал в видео.

## Часть 3: База данных в облаке

### Теоретическая часть
Видео лекция часть 1 БД в облаке

Видео лекция часть 2 Создание Аналитической БД в облаке Yandex Cloud, VK CLoud

Шпаргалка системного администратора по сетевым инструментам Linux (Русский)

Документация по Яндекс.Клауд

Документация по VK Cloud

### Практическая часть
Создана учетная запись в VK Cloud. Если вы запускаете сервис в Cloud, не забудьте его выключить или удалить, когда он не нужен, а то все деньги спишут, тк сервис платный в принципе.

Создана и активирована БД Postgres (https://github.com/Data-Learn/data-engineering/blob/master/how-to/how_to_amazon_rds.md)

Произведено подключение к новой БД через SQL клиент (например DBeaver)

Создана схема .stg в БД Postgres на VK Cloud

Загружена новая БД из модуля 2 части 2 (нормализованная Superstore) в staging (схема БД stg)

Загружены dimensional model (схема dw).

Вы можете использовать мой пример SQL для этого упражнения:

Staging stg.orders.sql

Business Layer from_stg_to_dw.sql

Попробуйте выполнить свои запросы из предыдущих упражнений. Не забудьте указать схему перед название таблицы. Например, public.orders или stg.orders.

## Часть 4: Визуализация данных Google Sheets, KlipFolio, Yandex DataLens

### Теоретическая часть

Видео лекция часть 1 [Сервисы визуализации для базы данных](https://www.youtube.com/watch?v=bqUtv1y3D7A&feature=youtu.be)

Видео лекция часть 2 [Пример подключения к облачным сервисам](https://www.youtube.com/watch?v=bqUtv1y3D7A&t=825s)

Видео-лекция по [визуализации данных в Google Data Studio](https://vk.com/video-99936101_456240018)

Выбрать бесплатную альтернативу сервису визуализации KlipFolio с подключением к БД Postgres.

### Практическая часть

- Создан дашборд в Google Data Studio
- Создан дашборд в Infogram.

Идеи для создания дашборда отчета: 
1. Обзор ключевых метрик Total Sales Total Profit Profit Ratio Profit per Order Sales per Customer Avg. Discount Monthly Sales by Segment ( табличка и график) Monthly Sales by Product Category (табличка и график)
2. Product Dashboard (Продуктовые метрики) Sales by Product Category over time (Продажи по категориям)
3. Customer Analysis Sales and Profit by Customer Customer Ranking Sales per region
