SELECT e.emp_no, 
	   e.first_name, 
	   e.last_name,
	   ti.title,
	   ti.from_date,
	   ti.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;



-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no)
                   rt.emp_no,
				   rt.first_name,
				   rt.last_name,
				   rt.title
INTO unique_titles
FROM retirement_titles as rt
WHERE (rt.to_date = '9999-01-01')
ORDER BY emp_no ASC, to_date DESC;


-- Get count of titles of retiring employees
SELECT COUNT (rt.emp_no), rt.title 
INTO retiring_titles
FROM retirement_titles as rt
WHERE (rt.to_date = '9999-01-01')
GROUP BY title
ORDER BY count DESC;

-- Deliverable 2 (Module 7 Challenge)
SELECT DISTINCT ON (e.emp_no)
	   e.emp_no,
	   e.first_name,
	   e.last_name,
	   e.birth_date,
	   de.from_date,
	   de.to_date,
	   ti.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN Dept_Emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN Titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (de.to_date = '9999-01-01') 
    AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;	

