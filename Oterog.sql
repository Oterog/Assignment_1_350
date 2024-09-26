-- 10. Show how many employees in the IT department are paid more than the manager of the Shipping department.
-- Written By: Gabriel Otero

SELECT COUNT(*) AS employee_count
FROM employees
WHERE department = 'IT'
  AND salary > (
      SELECT salary
      FROM employees
      WHERE department = 'Shipping' AND position = 'Manager'
  );

-- 11. using “set-theory SQL” show the employee id, first name and last name of each employee 
-- who is not managed by Nancy Greenberg.
-- Written By: Gabriel Otero

SELECT employee_id, first_name, last_name
FROM employees
MINUS
SELECT employee_id, first_name, last_name
FROM employees
WHERE manager_id = (
    SELECT employee_id
    FROM employees
    WHERE first_name = 'Nancy' AND last_name = 'Greenberg'
);

-- 12. using “set-theory SQL”, show the employee id and last names of all employees paid more than 9000 or who work in Germany.
-- Written By: Gabriel Otero

SELECT employee_id, last_name
FROM employees
WHERE salary > 9000

UNION

SELECT employee_id, last_name
FROM employees
WHERE country = 'Germany';

-- 13. using “set-theory SQL”, show the countries in region 4 whose names begin with the letter 'Z'.
--Written By: Gabriel Otero

SELECT country_name
FROM countries
WHERE region_id = 4 AND country_name LIKE 'Z%'

UNION

SELECT country_name
FROM countries
WHERE region_id = 4 AND country_name LIKE 'Z%';