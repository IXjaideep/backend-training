use college_db;

SELECT COUNT(*) FROM students;
SELECT COUNT(*) FROM students WHERE active_flag = 1;

SELECT SUM(fee) FROM courses;
SELECT AVG(fee) FROM courses;

SELECT name,age FROM students 
WHERE age = (SELECT MAX(age) FROM students)

SELECT TOP 1 name,age  FROM students ORDER BY age DESC;

SELECT course_name,fee FROM courses 
WHERE fee = (SELECT MAX(fee) FROM courses);
SELECT TOP 1 course_name,fee FROM courses ORDER BY fee DESC;

SELECT * FROM students;
SELECT MAX(registration_date) AS latest_join_date
FROM students;

SELECT MIN(registration_date) AS oldest_join_date
FROM students;

SELECT active_flag,COUNT(*) AS total FROM students GROUP BY active_flag;
SELECT age,COUNT(*) AS total FROM students GROUP BY age;
SELECT fee,COUNT(*) AS total FROM courses GROUP BY fee;

SELECT course_id, COUNT(*) AS total_enrollments
FROM enrollments GROUP BY course_id 
HAVING COUNT(*) > 3;

SELECT age, COUNT(*) AS total
FROM students GROUP BY age 
HAVING AVG(age) > 15;

SELECT course_id, COUNT(*) AS total_enrollments
FROM enrollments GROUP BY course_id 
HAVING COUNT(*) >= 2;


SELECT	 name FROM Courses GROUP BY course_name having COUNT(*) >=15;


