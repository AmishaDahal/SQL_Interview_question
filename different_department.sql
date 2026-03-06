/* 77. Find employees who have worked in more than 3 different departments.*/
SELECT employee_id
FROM employee_department_history
GROUP BY employee_id
HAVING COUNT(DISTINCT department_id) > 3;
