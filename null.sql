SELECT name
FROM teacher
WHERE dept IS NULL

SELECT teacher.name, dept.name
FROM teacher INNER JOIN dept
  ON (teacher.dept=dept.id)

SELECT teacher.name, dept.name
FROM teacher
  LEFT JOIN dept ON teacher.dept = dept.id

SELECT teacher.name, dept.name from dept
LEFT JOIN teacher ON teacher.dept = dept.id

SELECT name, COALESCE(mobile, '07986 444 2266') AS mobile
FROM teacher

SELECT teacher.name, COALESCE(dept.name, 'None') from teacher
LEFT JOIN dept on teacher.dept = dept.id

SELECT COUNT(teacher.name), COUNT(teacher.mobile) FROM teacher

SELECT dept.name, COUNT(teacher.name) FROM teacher
RIGHT JOIN dept on teacher.dept = dept.id
GROUP BY dept.name

SELECT name, CASE WHEN dept = 1 OR dept = 2 THEN 'Sci' ELSE 'Art' END dept
FROM teacher

SELECT name, CASE WHEN dept = 1 OR dept = 2 THEN 'Sci' WHEN dept = 3 THEN 'Art' ELSE 'None' END dept
FROM teacher