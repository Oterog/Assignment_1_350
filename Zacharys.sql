-- 6.  show the average salary of the employees working in Germany 
-- Writen By Zachary Siegel
SELECT avg(salary),
FROM employees
WHERE country_name = 'Germany';
--7.  show the average salary of each department that has at least 8 employees (show the 
--department id) 
SELECT avg(salary),
FROM employees 
GROUP BY department_id
HAVING COUNT(employee_id) >= 8;
-- Writen By Zachary Siegel
--8. show the (actual) minimum and maximum salary for programmers 
-- Writen By Zachary Siegel
SELECT min(salary), max(salary)
FROM employees
where job_title = 'programmers'
--9.  show the total salary paid to all employees in the Finance department
--// Writen By Zachary Siegel
SELECT SUM(salary)   
FROM employees
WHERE department_name = 'Finance';