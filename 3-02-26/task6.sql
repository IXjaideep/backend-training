use college_db;

SELECT name,age FROM students WHERE age >15 
ORDER BY age DESC;

SELECT COUNT(*) FROM students WHERE name LIKE 'j%';

SELECT course_name FROM courses WHERE fee BETWEEN 80 AND 100 
ORDER BY fee;

SELECT name FROM students WHERE active_flag = 0 AND age IS NOT NULL;

SELECT course_id FROM enrollments GROUP BY course_id HAVING COUNT(*) >1;

