-- Problem 1: Show the name of each country whose name contains the syllable ‘in’ or ‘In’
-- Author: Greyson Weddle
SELECT country_name FROM countries WHERE country_name ~* '[Ii]n';

-- Problem 2: Show how many countries there are in each region (show the region id and the count)
-- Author: Greyson Weddle
SELECT region_id, COUNT(region_id) FROM countries GROUP BY region_id

-- Problem 3: Show the first and last names of each employee who is a manager (that is whose job title contains the word ‘Manager’)
-- Author: Greyson Weddle
SELECT first_name, last_name FROM employees WHERE job_id IN (SELECT job_id FROM jobs WHERE job_title ~* 'Manager');

-- Problem 4 Show the first and last name of each employee managed by Nancy Greenberg
-- Author: Greyson Weddle
SELECT first_name, last_name FROM employees WHERE manager_id = (SELECT manager_id FROM employees WHERE first_name = 'Nancy' AND last_name = 'Greenberg');

-- Problem 5: Show the first and last name of each employee who is paid more than Luis Popp but less than Alexander Hunold
-- Author: Greyson Weddle
SELECT first_name, last_name, salary FROM employees WHERE salary > (SELECT salary FROM employees WHERE first_name = 'Luis' AND last_name = 'Popp') AND salary < (SELECT salary FROM employees WHERE first_name = 'Alexander' AND last_name = 'Hunold');
