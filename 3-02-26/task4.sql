use college_db;

SELECT age FROM students WHERE age > 15;
SELECT name,active_flag FROM students WHERE active_flag = 1;
SELECT course_name FROM courses WHERE fee BETWEEN 80 AND 110;

SELECT name FROM  students WHERE age>=15 AND active_flag =1;
SELECT name FROM  students WHERE age<15 OR active_flag =0;
SELECT course_name FROM courses WHERE fee>70 AND course_name LIKE 'm%';

SELECT name FROM students WHERE age = NULL;
SELECT name FROM students WHERE age IS NULL;
SELECT name FROM students WHERE age IS NOT NULL;

SELECT name,email FROM students WHERE	email LIKE '%gmail.com';
SELECT course_name FROM courses WHERE course_name LIKE 'g%';
