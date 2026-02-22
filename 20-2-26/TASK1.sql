--TASK 1 : create all table requied for the claims and insurance company

CREATE TABLE shipment(
	shipment_id INT PRIMARY KEY,
	reciver_id INT,
	sender_id INT,
	reciver_name VARCHAR(50),
	sender_name VARCHAR(50)
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