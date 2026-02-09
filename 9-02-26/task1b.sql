CREATE DATABASE office;
USE office;

CREATE TABLE locations (
    location_id INT PRIMARY KEY,
    city VARCHAR(50),
    country VARCHAR(50)
);

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location_id INT,
    FOREIGN KEY (location_id) REFERENCES locations(location_id)
);

CREATE TABLE manager (
    manager_id INT PRIMARY KEY,
    manager_name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT,
    dept_id INT,
    manager_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id),
    FOREIGN KEY (manager_id) REFERENCES manager(manager_id)
);

INSERT INTO locations VALUES (1,'Hyderabad','India');
INSERT INTO locations VALUES (2,'Chennai','India');
INSERT INTO locations VALUES (3,'Delhi','India');
INSERT INTO locations VALUES (4,'Mumbai','India');
INSERT INTO locations VALUES (5,'Bangalore','India');
INSERT INTO locations VALUES (6,'Pune','India');
INSERT INTO locations VALUES (7,'Kolkata','India');
INSERT INTO locations VALUES (8,'Noida','India');
INSERT INTO locations VALUES (9,'Gurgaon','India');
INSERT INTO locations VALUES (10,'Vizag','India');
INSERT INTO locations VALUES (11,'Vizag','India');

INSERT INTO departments VALUES (101,'HR',1);
INSERT INTO departments VALUES (102,'IT',2);
INSERT INTO departments VALUES (103,'Finance',3);
INSERT INTO departments VALUES (104,'Sales',4);
INSERT INTO departments VALUES (105,'Marketing',5);
INSERT INTO departments VALUES (106,'Support',6);
INSERT INTO departments VALUES (107,'Admin',7);
INSERT INTO departments VALUES (108,'Operations',8);
INSERT INTO departments VALUES (109,'QA',9);
INSERT INTO departments VALUES (110,'R&D',10);
INSERT INTO departments VALUES (111,'sde',11);


INSERT INTO manager VALUES (201,'Ramesh',101);
INSERT INTO manager VALUES (202,'Suresh',102);
INSERT INTO manager VALUES (203,'Mahesh',103);
INSERT INTO manager VALUES (204,'Naresh',104);
INSERT INTO manager VALUES (205,'Kiran',105);
INSERT INTO manager VALUES (206,'Anita',106);
INSERT INTO manager VALUES (207,'Sunita',107);
INSERT INTO manager VALUES (208,'Raj',108);
INSERT INTO manager VALUES (209,'Vikram',109);
INSERT INTO manager VALUES (210,'Neha',110);

INSERT INTO employees VALUES (301,'Amit',30000,101,201);
INSERT INTO employees VALUES (302,'Ravi',35000,102,202);
INSERT INTO employees VALUES (303,'Sita',28000,103,203);
INSERT INTO employees VALUES (304,'Arun',40000,104,204);
INSERT INTO employees VALUES (305,'Meena',32000,105,205);
INSERT INTO employees VALUES (306,'Pooja',29000,106,206);
INSERT INTO employees VALUES (307,'Karthik',36000,107,207);
INSERT INTO employees VALUES (308,'Nikhil',45000,108,208);
INSERT INTO employees VALUES (309,'Divya',38000,109,209);
INSERT INTO employees VALUES (310,'Rahul',50000,110,210);



SELECT * FROM locations
SELECT * FROM departments
SELECT * FROM manager
SELECT * FROM employees



