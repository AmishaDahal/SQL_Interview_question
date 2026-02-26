/* 97 72. List employees who earn more than all their subordinates.*/


SELECT e.id, e.name, e.salary
FROM employees e
WHERE e.salary > ALL (
  SELECT salary
  FROM employees sub
  WHERE sub.manager_id = e.id
);

Because > ALL (empty set) is TRUE, all employees with no subordinates are included.

SELECT m.id, m.name, m.salary
FROM employees m
WHERE EXISTS (
  SELECT 1
  FROM employees sub
  WHERE sub.manager_id = m.id
)
AND NOT EXISTS (
  SELECT 1
  FROM employees sub
  WHERE sub.manager_id = m.id
    AND sub.salary >= m.salary
);

this give manager earning more than there subordinate
