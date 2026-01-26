/*8) Find average salary per department and find all employees whose salary is above the average salary of their department .*/


SELECT e.emp_id, e.emp_name, e.department, e.salary
FROM employee e
WHERE e.salary > (
  SELECT AVG(e2.salary)
  FROM employee e2
  WHERE e2.department = e.department
);
