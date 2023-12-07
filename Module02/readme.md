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

1. Установлен [Postgres](https://github.com/Data-Learn/data-engineering/blob/master/how-to/How%20to%20install%20PostgreSQL.md)
2. Установлен SQL-клиент [DBeaver](https://github.com/Data-Learn/data-engineering/blob/master/how-to/%20How%20to%20install%20DBeaver.md) для подключения базы данных.
3. Созданы 3 таблицы и загружены данные в базу из Superstore Excel файл. Таблицы заполнены данными
   
      - Скрипт загрузки [orders](/Module02/orders.sql)
      - Скрипт загрузки [people](/Module02/people.sql)
      - Скрипт загрузки [returns](/Module02/returns.sql)
   
 4. Написано [SQL запросы](/Module02/sql-queries.sql) для обзора ключевых метрик:
      - Total Sales;
      - Total Profit;
      - Profit Ratio;
      - Profit per Order;
      - Sales per Customer;
      - Avg. Discount;
      - Monthly Sales by Segment;
      - Monthly Sales by Product Category;
      - Sales by Product Category over time;
      - Sales and Profit by Customer;
      - Customer Ranking;
      - Sales per region.

## Часть 2: Проектирование Модели данных

### Теоретическая часть

1. Прочитана статья про Хранилище Данных [Антихрупкость архитектуры хранилищ данных](https://habr.com/ru/articles/281553/)

2. Прочитана статья про Data Vault [Основы Data Vault](https://habr.com/ru/articles/502968/)

### Практиктическая часть

1. Установлена программа [<strong>DBSchema</strong>](https://sqldbm.com/Home/) для проектирования базы данных. 

Вам необходимо нарисовать модель данных для нашего файлика Superstore:
   - <strong>Концептуальная модель данных</strong> представляет собой описание главных (основных) сущностей и отношений между ними. Концептуальная модель является отражением предметных областей, в рамках которых планируется построение хранилища данных.

      [![Conceptual modeling](/Module02/conceptmodel.PNG)](/Module02/conceptmodel.PNG)
     
   - <strong>Логическая модель</strong> расширяет концептуальную путем определения для сущностей их атрибутов, описаний и ограничений, уточняет состав сущностей и взаимосвязи между ними.
     
      [![Logical modeling](/Module02/logicmodel.png)](/Module02/logicmodel.png)
     
   - <strong>Физическая модель данных</strong> описывает реализацию объектов логической модели на уровне объектов конкретной базы данных.
     
      [![Physical modeling](/Module02/physicalmodel.PNG)](/Module02/physicalmodel.PNG)

Когда вы нарисуете модель данных, вам нужно скопировать DDL и выполнить его в SQL клиенте.

Вам необходимо сделать INSERT INTO SQL, чтобы заполнить Dimensions таблицы и Sales Fact таблицу. Сначала мы заполняем Dimensions таблицы, где в качестве id мы генерим последовательность чисел, а зачем Sales Fact таблицу, в которую вставляем id из Dimensions таблиц. Такой пример я рассматривал в видео.

## Часть 3: База данных в облаке

### Теоретическая часть

1. Видео лекция часть 1 [БД в облаке](https://www.youtube.com/watch?v=UzILBlOAQ9s)
2. Видео лекция часть 2 - практика - [Создание Аналитической БД в облаке AWS](https://www.youtube.com/watch?v=UzILBlOAQ9s&t=627s)
3. [Шпаргалка системного администратора по сетевым инструментам Linux](https://habr.com/ru/companies/ruvds/articles/417485/) (Русский)

### Практическая часть

1. Вам необходимо создать учетную запись в AWS. Это бесплатно. Если вы запускаете сервис в AWS, не забудьте его удалить, когда он не нужен, а то могут и денюшку списать.
2. Используя сервис AWS Lightsail или AWS RDS (смотрите инструкцию) создайте БД Postgres и активируйте Public access
3. Подключитесь к новой БД через SQL клиент (например DBeaver)
4. Загрузите данные из модуля 2.3 (Superstore dataset) в staging (схема БД stg) и загрузите dimensional model (схема dw). Вы можете использовать мой пример. SQL для этого упражнения:
   - Staging stg.orders.sql
   - Business Layer from_stg_to_dw.sql
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
