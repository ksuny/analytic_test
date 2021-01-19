SELECT dept.dept_id, dept.name, count(emp.emp_id)
FROM Departments dept
	LEFT JOIN Employees emp
		ON emp.dept_id = dept.dept_id
WHERE emp.end_date IS NULL
	AND emp.start_date >= sysdate   -- Дополнительное условие, если в таблице есть сотрудники, не начавшие работать  
GROUP BY dept.dept_id, dept.name
