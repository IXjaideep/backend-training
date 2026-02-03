use college_db;

INSERT INTO students(student_id,name,email,age,join_date,active_flag) VALUES (098098,'jai','jai123@gmail.com',12,'12-01-26',1);
INSERT INTO students(student_id,name,email,age,join_date,active_flag) VALUES (098099,'sahit','sahit123@gmail.com',13,'13-01-26',1);
INSERT INTO students(student_id,name,email,age,join_date, active_flag) VALUES (098018,'rahul','rahul123@gmail.com',14,'14-01-26',1);
INSERT INTO students(student_id,name,email,age,join_date, active_flag) VALUES (098028,'rishi','rishi123@gmail.com',15,'15-01-26',1);
INSERT INTO students(student_id,name,email,age,join_date,active_flag) VALUES (028098,'mahesh','mahesh123@gmail.com',12,'12-01-26',1);
INSERT INTO students VALUES (38099, 'ravi', 'ravi123@gmail.com', 13, '2026-01-13', 1);
INSERT INTO students VALUES (48018, 'pari', 'pari123@gmail.com', 14, '2026-01-14', 1);
INSERT INTO students VALUES (58028, 'sai', 'sai123@gmail.com', 15, '2026-01-15', 1);
INSERT INTO students VALUES (480998, 'hemanth', 'hemanth123@gmail.com', 14, '2026-01-14', 1);
INSERT INTO students VALUES (587028, 'saiteja', 'saiteja123@gmail.com', 15, '2026-01-15', 1);

SELECT * FROM students;

INSERT INTO courses VALUES(567,'math',78.98);
INSERT INTO courses VALUES(568, 'science', 85.50);
INSERT INTO courses VALUES(569, 'history', 90.25);
INSERT INTO courses VALUES(570, 'english', 88.75);
INSERT INTO courses VALUES(571, 'geography', 82.40);

SELECT * FROM courses;

INSERT INTO enrollments VALUES(1234,38099,45678,DEFAULT);
INSERT INTO enrollments VALUES(1235, 38100, 45679, DEFAULT);
INSERT INTO enrollments VALUES(1236, 38101, 45680, DEFAULT);
INSERT INTO enrollments VALUES(1237, 38102, 45681, DEFAULT);
INSERT INTO enrollments VALUES(1238, 38103, 45682, DEFAULT);
INSERT INTO enrollments VALUES(1239, 38104, 45683, DEFAULT);
INSERT INTO enrollments VALUES(1240, 38105, 45684, DEFAULT);
INSERT INTO enrollments VALUES(1241, 38106, 45685, DEFAULT);
INSERT INTO enrollments VALUES(1242, 38107, 45686, DEFAULT);
INSERT INTO enrollments VALUES(1243, 38108, 45687, DEFAULT);
INSERT INTO enrollments VALUES(1244, 38109, 45688, DEFAULT);
INSERT INTO enrollments VALUES(1245, 38110, 45689, DEFAULT);
INSERT INTO enrollments VALUES(1246, 38111, 45690, DEFAULT);
INSERT INTO enrollments VALUES(1247, 38112, 45691, DEFAULT);
INSERT INTO enrollments VALUES(1248, 38113, 45692, DEFAULT);
INSERT INTO enrollments VALUES(1249, 38114, 45693, DEFAULT);


SELECT * FROM enrollments;

