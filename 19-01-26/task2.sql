CREATE DATABASE insurance

USE insurance

CREATE TABLE shipment(
	shipment_id INT PRIMARY KEY,
	sender_id INT,
	reciver_id INT,
	sender_name VARCHAR,
	recivers_name VARCHAR,
);

ALTER TABLE shipment
ALTER COLUMN sender_name VARCHAR(100);
ALTER TABLE shipment
ALTER COLUMN recivers_name VARCHAR(100);


CREATE TABLE company_policy(
	policy_id INT PRIMARY KEY,
	company_name VARCHAR,
	recovery_amount INT,
	bonus_amount INT,
	condition TEXT,
	);

ALTER TABLE company_policy
ALTER COLUMN company_name VARCHAR(100);

CREATE TABLE claims(
	claim_id INT PRIMARY KEY,
	claim_status VARCHAR,
	claim_type VARCHAR,
	claim_description TEXT,
	date_of_claim date,
	time_of_claim timestamp,
	shipment_id INT,
	policy_id INT,
	
	FOREIGN KEY (shipment_id) REFERENCES shipment(shipment_id),
	FOREIGN KEY (policy_id) REFERENCES company_policy(policy_id),
	);

ALTER TABLE claims
ALTER COLUMN claim_type VARCHAR(100);
ALTER TABLE claims
ALTER COLUMN claim_status VARCHAR(100);

CREATE TABLE evidences(
	evidences_id INT PRIMARY KEY,
	files TEXT,
	photos VARBINARY,
	evidences_type VARCHAR,
	claim_id INT,

	FOREIGN KEY (claim_id) REFERENCES claims(claim_id),
	);

ALTER TABLE evidences
ALTER COLUMN evidences_type VARCHAR(100);

CREATE TABLE decision (
	decision_id INT PRIMARY KEY,
	claim_id INT,
	decision_status VARCHAR,
	approved_amount INT,

	FOREIGN KEY (claim_id) REFERENCES claims(claim_id),
	);

ALTER TABLE decision
ALTER COLUMN decision_status VARCHAR(100);



INSERT INTO shipment (shipment_id,sender_id,reciver_id,sender_name,recivers_name) VALUES (1,1,1,'jai','ravi');
INSERT INTO shipment VALUES 
(2,2,2,'sai','teja'),
(3,3,3,'rio','remo'),
(4,104,204,'Aman','Rohit'),
(5,105,205,'Kiran','Arjun'),
(6,106,206,'Varun','Mani'),
(7,107,207,'Rahul','Suresh'),
(8,108,208,'Vikram','Karthik'),
(9,109,209,'Deepak','Naresh'),
(10,110,210,'Surya','Mahesh');


INSERT INTO company_policy VALUES
(1,'ABC Insurance',50000,5000,'Covers transport damage'),
(2,'SafeShip Insurance',100000,10000,'Covers theft'),
(3,'QuickClaim Insurance',75000,7000,'Covers fire accidents'),
(4,'SecureLife Insurance',120000,15000,'Covers natural disasters'),
(5,'TrustCare Insurance',90000,8000,'Covers water damage'),
(6,'FastTrack Insurance',60000,6000,'Covers partial damage'),
(7,'Shield Insurance',110000,9000,'Covers total loss'),
(8,'PrimeCover Insurance',130000,12000,'Covers international shipments'),
(9,'RapidClaim Insurance',85000,7500,'Covers delay compensation'),
(10,'Guardian Insurance',95000,8500,'Covers warehouse damage');

ALTER TABLE claims 
DROP COLUMN time_of_claim;

ALTER TABLE claims
ADD time_of_claim DATETIME DEFAULT GETDATE();

INSERT INTO claims
(claim_id, claim_status, claim_type, claim_description, date_of_claim, shipment_id, policy_id)
VALUES
(1,'Pending','Damage','Box broken during delivery','2026-02-10',1,1),
(2,'Approved','Theft','Shipment stolen in transit','2026-02-11',2,2),
(3,'Rejected','Fire','Fire accident claim','2026-02-12',3,3),
(4,'Pending','Water Damage','Rain affected package','2026-02-13',4,4),
(5,'Approved','Natural Disaster','Flood damage claim','2026-02-14',5,5),
(6,'Pending','Partial Damage','Minor scratches found','2026-02-15',6,6),
(7,'Rejected','Delay','Late delivery compensation','2026-02-16',7,7),
(8,'Approved','Warehouse Damage','Storage accident','2026-02-17',8,8),
(9,'Pending','Lost Package','Shipment missing','2026-02-18',9,9),
(10,'Approved','Accident','Vehicle collision damage','2026-02-19',10,10),
(11,'Pending','Damage','Box broken','2026-02-20',1,1),
(12,'Approved','Theft','Items stolen','2026-02-21',1,2),
(13,'Rejected','Fire','Minor fire damage','2026-02-22',2,3),
(14,'Pending','Water Damage','Rain damage','2026-02-23',2,4),
(15,'Approved','Accident','Truck accident','2026-02-24',3,5),
(16,'Pending','Partial Damage','Small crack','2026-02-25',3,6),
(17,'Rejected','Delay','Late arrival','2026-02-26',4,7),
(18,'Approved','Lost Package','Package missing','2026-02-27',4,8),
(19,'Pending','Warehouse Damage','Storage issue','2026-02-28',5,9),
(20,'Approved','Natural Disaster','Flood damage','2026-03-01',5,10),
(21,'Pending','Damage','Outer box torn','2026-03-02',1,3),
(22,'Approved','Theft','Partial items missing','2026-03-03',1,4),
(23,'Rejected','Fire','Small fire issue','2026-03-04',2,5),
(24,'Pending','Water Damage','Moisture inside package','2026-03-05',2,6),
(25,'Approved','Accident','Transport accident','2026-03-06',3,7),
(26,'Rejected','Delay','Late delivery complaint','2026-03-07',3,8),
(27,'Pending','Lost Package','Shipment misplaced','2026-03-08',4,9),
(28,'Approved','Damage','Broken items found','2026-03-09',4,10),
(29,'Rejected','Natural Disaster','Storm impact','2026-03-10',5,1),
(30,'Pending','Warehouse Damage','Stack collapse','2026-03-11',5,2);

ALTER TABLE claims
ADD claimed_amount INT

update claims 
set claimed_amount = claim_id * 1000 
where claimed_amount is null

select * from claims
INSERT INTO evidences VALUES
(1,'damage_report1.pdf',NULL,'Document',1),
(2,'theft_report2.pdf',NULL,'Document',2),
(3,'fire_photo3.zip',NULL,'Images',3),
(4,'rain_damage4.pdf',NULL,'Document',4),
(5,'flood_photo5.zip',NULL,'Images',5),
(6,'crack_report6.pdf',NULL,'Document',6),
(7,'delay_report7.pdf',NULL,'Document',7),
(8,'warehouse_photo8.zip',NULL,'Images',8),
(9,'lost_package9.pdf',NULL,'Document',9),
(10,'accident_photo10.zip',NULL,'Images',10);

INSERT INTO decision VALUES
(1,1,'Under Review',0),
(2,2,'Approved',95000),
(3,3,'Rejected',0),
(4,4,'Under Review',0),
(5,5,'Approved',85000),
(6,6,'Under Review',0),
(7,7,'Rejected',0),
(8,8,'Approved',120000),
(9,9,'Under Review',0),
(10,10,'Approved',90000);

SELECT * FROM shipment;
SELECT * FROM company_policy;
SELECT * FROM claims;
SELECT * FROM evidences;
SELECT * FROM decision;
