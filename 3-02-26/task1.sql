create database college_db;

use college_db;
create table students(
	student_id BIGINT PRIMARY KEY,
	name VARCHAR(255),
	email VARCHAR(255),
	age INT,
	join_date DATE,
	active_flag BIT DEFAULT 1,
	);

create table courses(
	course_id INT PRIMARY KEY,
	course_name VARCHAR NOT NULL,
	fee DECIMAl,
	);

create  table enrollments(
	eroll_id BIGINT PRIMARY KEY,
	student_id BIGINT,
	course_id INT,
	enroll_timestamp TIMESTAMP,
	);


