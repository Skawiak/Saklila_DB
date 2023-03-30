SELECT *
FROM actor;

SELECT name, last_update
FROM category;

SELECT last_update, name
FROM category;

SELECT *
FROM actor
ORDER BY first_name;

SELECT *
FROM actor
ORDER BY first_name DESC;

SELECT *
FROM actor
ORDER BY last_name, first_name DESC;

SELECT *
FROM actor
WHERE actor_id > 100;

SELECT first_name, last_name, last_update
FROM actor;

SELECT *
FROM actor
WHERE first_name = 'NICK';

SELECT *
FROM actor
WHERE first_name = 'NICK';

SELECT actor_id, first_name, last_name
FROM actor
WHERE first_name = 'NICK'
ORDER BY actor_id DESC;

SELECT *
FROM rental;


SELECT rental_date AS RentalDate, inventory_id AS FilmListID, return_date AS ReturnDate
FROM rental;

SELECT rental AS Rental
FROM rental;

SELECT replacement_cost - rental_rate AS CostDiff,
       film_id                        AS FilmID,
       length / 60                    AS FlimInHours
FROM film;

SELECT rental_rate                 AS RentalRate,
       rental_rate + 3 * 4 - 1     AS Result1,
       (rental_rate + 3) * 4 - 1   AS Result2,
       (rental_rate + 3) * (4 - 1) AS Result3,
       rental_rate + (3 * 4) - 1   AS Result4
FROM film;

SELECT replacement_cost     AS ReplacementCost,
       replacement_cost / 5 AS DecimalRentalRate,
       replacement_cost % 5 AS RemainderRentalRate
FROM film;

SELECT amount,
       ROUND(amount)    AS Amnt,
       ROUND(amount, 2) AS Amnt1,
       FLOOR(amount)    AS Amnt2,
       CEIL(amount)     AS Amnt3
FROM payment;


SELECT *
FROM actor;

SELECT CONCAT(first_name, ' ', last_name) AS FullName
FROM actor;


SELECT CONCAT(LEFT(first_name, 1), '.', LEFT(last_name, 1), '.') AS Initials
FROM actor;


SELECT CONCAT(first_name, ' ', last_name)                    AS FullName,
       REVERSE(CONCAT(first_name, ' ', last_name))           AS ReverseFullName,
       REPLACE(CONCAT(first_name, ' ', last_name), 'S', '$') AS Replace

FROM actor;

SELECT actor_id, first_name, last_name
FROM actor
WHERE actor_id = 100;


SELECT actor_id, first_name, last_name
FROM actor
WHERE actor_id < 100;

SELECT actor_id, first_name, last_name
FROM actor
WHERE first_name < 'NICK';

SELECT actor_id, first_name, last_name
FROM actor
WHERE first_name != 'NICK';

SELECT actor_id, first_name, last_name
FROM actor
WHERE first_name = 'KENNETH'
  AND actor_id < 100
  AND last_name = 'TORN';

SELECT actor_id, first_name, last_name
FROM actor
WHERE first_name = 'KENNETH'
    AND actor_id < 100
   OR actor_id < 100;

SELECT *
FROM actor
WHERE NOT actor_id = 5;

SELECT *
FROM actor
WHERE actor_id != 5;

SELECT *
FROM actor
WHERE actor_id <> 5;

SELECT *
FROM actor
WHERE first_name = 'KENNETH' AND actor_id < 100
   OR last_name = 'TEMPLE';

SELECT *
FROM actor
WHERE first_name = 'KENNETH'
   OR last_name = 'TEMPLE' AND actor_id < 100;

SELECT *
FROM actor
WHERE (first_name = 'KENNETH' AND actor_id < 100)
   OR last_name = 'TEMPLE';

SELECT *
FROM actor
WHERE NOT first_name = 'KENNETH'
  AND NOT actor_id < 100;


SELECT *
FROM actor
WHERE NOT (first_name = 'KENNETH' OR actor_id < 100);


SELECT *
FROM actor
WHERE first_name NOT IN ('NICK', 'JOHNNY', 'JOE', 'VIVIEN');

SELECT *
FROM actor
WHERE first_name IN ('NICK', 'JOHNNY', 'JOE', 'VIVIEN');

SELECT *
FROM actor
WHERE first_name IN ('NICK', 'JOHNNY', 'JOE', 'VIVIEN')
  AND actor_id IN (SELECT actor_id
                   FROM actor
                   WHERE last_name = 'DEGENERES');

SELECT actor_id
FROM actor
WHERE last_name = 'DEGENERES';


SELECT *
FROM actor
WHERE actor_id >= 10 AND actor_id <=20;

SELECT *
FROM actor
WHERE actor_id NOT BETWEEN 10 AND 20;

SELECT *
FROM actor
WHERE first_name LIKE 'A%';

SELECT *
FROM actor
WHERE first_name LIKE 'AL%';

SELECT *
FROM actor
WHERE first_name LIKE 'A%E%';

SELECT *
FROM actor
WHERE first_name NOT LIKE 'A%';

SELECT *
FROM actor
WHERE NOT (first_name LIKE 'A%' OR first_name LIKE 'A%E%');

SELECT CONCAT(first_name, ' ', last_name) AS FullName
FROM actor
ORDER BY FullName;

SELECT CONCAT(first_name, ' ', last_name) AS FullName
FROM actor
ORDER BY CONCAT(first_name, ' ', last_name);

SELECT last_name, actor_id
FROM actor
LIMIT 5 OFFSET 10;












