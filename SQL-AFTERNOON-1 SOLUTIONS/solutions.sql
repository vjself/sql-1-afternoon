--People

--1
CREATE TABLE person
(
    person_id SERIAL,
    name VARCHAR(200),
    age INTEGER,
    height INTEGER,
    city VARCHAR(200),
    favorite_color VARCHAR(200)
);

--2
INSERT INTO person
    ( name, age, height, city, favorite_color )
VALUES
    ( 'First Last', 21, 182, 'City', 'Color' );

--3
SELECT *
FROM person
ORDER BY height DESC;

--4
SELECT *
FROM person
ORDER BY height ASC;

--5
SELECT *
FROM person
ORDER BY age DESC;

--6
SELECT *
FROM person
WHERE age > 20;

--7
SELECT *
FROM person
WHERE age = 18;

--8
SELECT *
FROM person
WHERE age < 20 OR age > 30;

--9
SELECT *
FROM person
WHERE age != 27;

--10
SELECT *
FROM person
WHERE favorite_color != 'red';

--11
SELECT *
FROM person
WHERE favorite_color != 'red' AND favorite_color != 'blue';

--12
SELECT *
FROM person
WHERE favorite_color = 'orange' OR favorite_color = 'green';

--13
SELECT *
FROM person
WHERE favorite_color IN ( 'orange', 'green', 'blue' );

--14
SELECT *
FROM person
WHERE favorite_color IN ( 'yellow', 'purple' )

--Table Orders
--1
CREATE TABLE orders
(
    person_id SERIAL,
    product_name VARCHAR(200),
    product_price NUMERIC,
    quantity INTEGER
);

--2
INSERT INTO orders
    ( person_id, product_name, product_price, quantity )
VALUES
    ( 0, 'Product', 12.50, 2 );

--3
SELECT *
FROM orders;

--4
SELECT SUM(quantity)
FROM orders;

--5
SELECT SUM(product_price * quantity)
FROM orders;

--6
SELECT SUM(product_price * quantity)
FROM orders
WHERE person_id = 0;

--Artist
--1
insert into artist
    (name)
values
    ('Jim'),
    ('Sally'),
    ('Doratheexplora');

--2
select *
from artist
order by name asc
limit 10;

--3
select * from artist
order by name desc
limit 10;
--4
select *
from artist
where name like 'black%'

--5
select *
from artist
where name like '%black%'

--Employee
--1
select first_name, last_name
from employee
where city = 'Calgary';
--2
select max(birth_date)
from employee
--3
select min(birth_date)
from employee

--4
select *
from employee
where reports_to = 2

--5
select count(*)
from employee
where city = 'Lethbridge';

--Invoice
--1
select count(*)
from invoice
where billing_country = 'USA';

--2
select max(total)
from invoice;

--3
select min(total)
from invoice;

--4
select *
from invoice
where total > 5;

--5
select count(*)
from invoice
where total < 5;

--6
select *
from invoice
where billing_state = 'CA' or billing_state = 'TX' or billing_state = 'AZ';

--7
select avg(total)
from invoice;


--8
select sum(total)
from invoice;
