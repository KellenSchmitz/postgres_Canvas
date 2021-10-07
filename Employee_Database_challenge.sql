-- Module 7 Challenge

_____________________________________________________________________________
_____________________________________________________________________________
--DELIVERABLE 1
SELECT 	e.emp_no,
		e.first_name,
		e.last_name,
		ti.title,
		ti.from_date,
		ti.to_date
INTO retirement_titles
FROM employees AS e
	INNER JOIN titles AS ti
		on (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31');

SELECT * FROM retirement_titles;

-- Use Distinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
		rt.first_name,
		rt.last_name,
		rt.title
INTO unique_titles
FROM retirement_titles AS rt
ORDER BY rt.emp_no, rt.to_date DESC;

SELECT * FROM unique_titles;


-- retrieve the number of employees by their most recent job title who are about to retire
SELECT COUNT(ut.emp_no), ut.title
INTO retiring_titles
FROM unique_titles AS ut
GROUP BY ut.title
ORDER BY ut.count DESC;
	
SELECT * FROM retiring_titles;

_____________________________________________________________________________
_____________________________________________________________________________
--DELIVERABLE 2

SELECT DISTINCT ON (e.emp_no) 
		e.emp_no,
		e.first_name,
		e.last_name,
		e.birth_date,
		de.from_date,
		de.to_date,
		ti.title
INTO metorship_eligibility
FROM employees as e
	INNER JOIN dept_emp as de
		on (e.emp_no = de.emp_no)
	INNER JOIN titles as ti
		on (e.emp_no = ti.emp_no)
WHERE (de.to_date = '1999-01-01')
	AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;