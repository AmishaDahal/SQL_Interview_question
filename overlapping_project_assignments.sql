/* 95 70. Identify employees who had overlapping project assignments.*/
SELECT p1.employee_id, p1.project_id AS project1,
p2.project_id AS project2
FROM project_assignments p1
JOIN project_assignments p2 ON p1.employee_id =
p2.employee_id AND p1.project_id <> p2.project_id
WHERE p1.start_date < p2.end_date AND p1.end_date
> p2.start_date;
