-- Step 1
SELECT t.title AS "Employee Title", count(t.emp_no) AS "Number of Employees Born After 01/01/1965" FROM titles t
	INNER JOIN employees e
	ON t.emp_no = e.emp_no
	WHERE e.birth_date > '1965-01-01'
GROUP BY t.title;

-- Step 2
SELECT t.title AS "Employee Title", AVG(s.salary) AS "Average Salary" FROM titles t
	INNER JOIN salaries s
	ON t.emp_no = s.emp_no
GROUP BY t.title;

-- Step 3
SELECT d.dept_name AS "Department", sum(s.salary) AS "Total Spent On Salaries Between 1990 and 1992" FROM departments d
	INNER JOIN dept_emp de ON de.dept_no = d.dept_no
	INNER JOIN salaries s ON s.emp_no = de.emp_no
WHERE d.dept_name = 'Marketing' AND
	s.to_date BETWEEN '1990-01-01' AND '1992-12-31';

