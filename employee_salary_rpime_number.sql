/*46 Find employees whose salary is prime number.*/

/* option 1  Postgres*/

SELECT e.*
FROM employee e
WHERE e.salary >= 2
  AND NOT EXISTS (
    SELECT 1
    FROM generate_series(2, floor(sqrt(e.salary))::int) d
    WHERE e.salary % d = 0
  );

/*option 2 Build a primes list up to MAX(salary) then join*/

WITH bounds AS (
  SELECT MAX(salary) AS max_sal FROM employee
),
nums AS (
  SELECT generate_series(2, (SELECT max_sal FROM bounds)) AS n
),
primes AS (
  SELECT n
  FROM nums
  WHERE NOT EXISTS (
    SELECT 1
    FROM generate_series(2, floor(sqrt(n))::int) d
    WHERE n % d = 0
  )
)
SELECT e.*
FROM employee e
JOIN primes p
  ON p.n = e.salary;



/*option 3 MySQL */

WITH RECURSIVE nums AS (
  SELECT 2 AS n
  UNION ALL
  SELECT n + 1
  FROM nums
  WHERE n + 1 <= (SELECT MAX(salary) FROM employee)
),
primes AS (
  SELECT n
  FROM nums
  WHERE NOT EXISTS (
    SELECT 1
    FROM nums d
    WHERE d.n BETWEEN 2 AND FLOOR(SQRT(nums.n))
      AND nums.n % d.n = 0
  )
)
SELECT e.*
FROM employee e
JOIN primes p
  ON p.n = e.salary;
