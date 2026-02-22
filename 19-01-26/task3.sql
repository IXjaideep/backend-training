 USE insurance

SELECT * FROM shipment;
SELECT * FROM company_policy;
SELECT * FROM claims;
SELECT * FROM evidences;
SELECT * FROM decision;


-- List all claims for a specific shipment. 

SELECT shipment_id,claim_description,
ROW_NUMBER() OVER (PARTITION BY shipment_id ORDER BY claim_id) AS row_num
FROM claims

--Find claims where the approved amount is less than the claimed amount. 

SELECT c.claim_id,claim_description,claimed_amount FROM claims c
JOIN decision d on c.claim_id = d.claim_id
where c.claimed_amount > d.approved_amount 

--List all shipments covered by a specific insurance policy 
ALTER TABLE company_policy
ALTER COLUMN condition VARCHAR(255)

ALTER TABLE claims
ALTER COLUMN claim_description VARCHAR(255)

SELECT c.shipment_id,c.claim_id,cp.policy_id,c.claim_status,c.claim_description,c.claimed_amount,cp.company_name FROM claims c
JOIN company_policy cp ON c.policy_id = cp.policy_id
where claim_description IN ('ABC Insurance','SafeShip Insurance','QuickClaim Insurance','SecureLife Insurance','TrustCare Insurance','FastTrack Insurance',
'Shield Insurance','PrimeCover Insurance','RapidClaim Insurance','Guardian Insurance','Flood damage')

ALTER TABLE company_policy
DROP COLUMN recovery_amount

WITH report as(	SELECT c.claim_id,
				c.claim_status,
				c.claim_type,
				c.claim_description,
				c.shipment_id,
				d.decision_status,
				d.approved_amount
				FROM claims c 
				JOIN decision d on c.claim_id = d.claim_id
				WHERE d.decision_status = 'Approved')
SELECT *,
ROW_NUMBER() OVER (PARTITION BY shipment_id ORDER BY claim_id) as row_num
FROM report

