use college_db;

INSERT INTO students(student_id, name, email, age, join_date, active_flag) VALUES (098099, 'arya', 'arya123@gmail.com', 14, '12-02-26', 1);
INSERT INTO students(student_id, name, email, age, join_date, active_flag) VALUES (098100, 'nina', 'nina123@gmail.com', 13, '12-03-26', 1);
INSERT INTO students(student_id, name, email, age, join_date, active_flag) VALUES (098101, 'rohan', 'rohan123@gmail.com', 15, '12-04-26', 1);

INSERT INTO courses VALUES  (561,'programming with c',100);

INSERT INTO enrollments VALUES(4567,6789,561,DEFAULT);

SELECT * FROM students;
SELECT name,email FROM students;
SELECT DISTINCT age FROM students;
SELECT age FROM students ORDER BY age DESC;
SELECT TOP 5 join_date FROM students ORDER BY Join_date DESC;

UPDATE students SET age = 17 WHERE student_id=098098;
SELECT age FROM students;

UPDATE students SET active_flag = 0 WHERE student_id IN (098098,098099);

UPDATE courses SET  fee = fee + fee*0.1;
SELECT DISTINCT course_name FROM courses;

ALTER TABLE courses
ALTER COLUMN course_name VARCHAR(254) NOT NULL;
SELECT * FROM courses;

EXEC sp_rename 'students.join_date','registration_date','COLUMN';
SELECT * FROM students;

ALTER TABLE students
ADD phone_number VARCHAR(15);

SELECT * FROM enrollments;

