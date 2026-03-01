--TASK 1 : create all table requied for the claims and insurance company
USE insurance

CREATE TABLE shipment_agency(
  agency_id INT PRIMARY KEY,
  comany_name VARCHAR(50),
  batch_no INT,
  shipment_allotment VARCHAR(50),
 );

CREATE TABLE shipment(
	shipment_id INT PRIMARY KEY,
	customer_id INT,
	agency_id INT,
	customer_name VARCHAR(50),
	shipment_name VARCHAR(50),
	customer_email VARCHAR(50)
	FOREIGN KEY (agency_id) REFERENCES shipment_agency(agency_id)
);

CREATE TABLE company_policy(
	policy_id INT PRIMARY KEY,
	policy_desc VARCHAR(100),
	);

CREATE TABLE claim(
	claim_id INT PRIMARY KEY,
	shipment_id INT,
	policy_id INT,
	claimed_amount INT,
	claim_status VARCHAR(20),
	claim_type VARCHAR(25),
	claim_date DATE,
	FOREIGN KEY (shipment_id) REFERENCES shipment(shipment_id),
	FOREIGN KEY (policy_id) REFERENCES company_policy(policy_id)
);

CREATE TABLE evidence(
	evidence_id INT PRIMARY KEY,
	claim_id INT,
	proof_files VARCHAR(100),
	photos VARCHAR(25),
	FOREIGN KEY (claim_id) REFERENCES claim(claim_id)
);

CREATE TABLE decision (
	decision_id INT PRIMARY KEY,
	claim_id INT,
	decision_status VARCHAR(50),
	extra_amount INT,
	approved_amount	INT,
	FOREIGN KEY (claim_id) REFERENCES claim(claim_id)
	);

CREATE TABLE claim_histroy(
	histroy_id INT IDENTITY(1,1) PRIMARY KEY,
	claim_id int,
	decision_id int,
	FOREIGN KEY (claim_id) REFERENCES claim(claim_id),
	FOREIGN KEY(decision_id) REFERENCES decision(decision_id)
);

CREATE TABLE notify_message(
	notify_message_id INT PRIMARY KEY,
	message VARCHAR(100)
);

CREATE TABLE notification(
	notity_id INT IDENTITY(1,1) PRIMARY KEY,
	shipment_id INT,
	decision_id INT,
	notify_message_id INT
	FOREIGN KEY (notify_message_id) REFERENCES notify_message(notify_message_id)
);

CREATE TABLE payment(
	payment_id INT IDENTITY(1,1) PRIMARY KEY,
	decision_id INT,
	total_amount INT,
	agency_id INT,
	payment_status VARCHAR(25)
	FOREIGN KEY (agency_id) REFERENCES shipment_agency(agency_id),
	FOREIGN KEY (decision_id) REFERENCES decision(decision_id)
);

CREATE TABLE tracker(
	tracker_id INT IDENTITY(1,1) PRIMARY KEY,
	agency_id INT,
	batch_no INT,
	company_name VARCHAR(50),
	customer_name VARCHAR(30),
	customer_email VARCHAR(50),
	policy_desc VARCHAR(100),
	claimed_amount INT,
	decision_status VARCHAR(50),
	payment_status VARCHAR(50),
	approved_amount	INT,
	shipment_id INT,
	claim_id INT,
	decision_id INT,
	FOREIGN KEY (agency_id) REFERENCES shipment_agency(agency_id),
	FOREIGN KEY (decision_id) REFERENCES decision(decision_id),
	FOREIGN KEY (claim_id) REFERENCES claim(claim_id),
	FOREIGN KEY (shipment_id) REFERENCES shipment(shipment_id)
	);

	
