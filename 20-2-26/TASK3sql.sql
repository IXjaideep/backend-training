--TASK 3 List all claims for a specific shipment. 

SELECT * ,
ROW_NUMBER() OVER ( PARTITION BY shipment_id ORDER BY claim_id)
FROM claim

-- TASK 4 Find claims where the approved amount is less than the claimed amount. 

SELECT *,
FROM claim c 
JOIN decision d ON d.claim_id = c.claim_id
WHERE d.approved_amount < c.claimed_amount

-- TASK 5 List all shipments covered by a specific insurance policy 

SELECT *,
ROW_NUMBER() OVER(PARTITION BY p.policy_id ORDER BY c.claim_id) FROM claim c
JOIN company_policy p ON P.policy_id = c.policy_id

-- TASK 6 Find claims that are still open and have been under review for more than 30 days. 

SELECT * FROM  claim c
JOIN decision d ON d.claim_id = c.claim_id
WHERE DATEDIFF(DAY,c.claim_date,GETDATE()) >= 30 AND d.decision_status = 'pending'

--TASK 7 Retrieve the total claimed and approved amounts per shipment.

SELECT shipment_id,SUM(claimed_amount)
FROM claim 
GROUP BY shipment_id


