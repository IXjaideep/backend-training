--TASK2  INSERSTING ALL VALUES INTO THE TABLE 
use insurance

INSERT INTO shipment_agency VALUES
(201,'rrr_agency',1,'1-3'),
(202,'pusha_agency',2,'4-6'),
(203,'bahubali_agency',3,'7-9'),
(204,'varanasi_agency',4,'10-14');

INSERT INTO shipment VALUES 
(1,101,201,'jannu','vignesh','jannu@gmail.com'),
(2,102,201,'sahit','ravi','sahit@gmail.com'),
(3,103,201,'jai','girish','jai@gmail.com'),
(4,104,202,'bunny','abhi','bunny@gmail.com'),
(5,105,202,'akshay','mahesh','akshay@gmail.com'),
(6,106,202,'srikar','snigdha','srikar@gmail.com'),
(7,107,203,'yashwitha','venkat','yashwitha@gmail.com'),
(8,108,203,'sasu','sahit','sasu@gmail.com'),
(9,109,203,'abhi','rishi','abhi@gmail.com'),
(10,110,204,'uday','srivan','uday@gmail.com');

INSERT INTO company_policy VALUES
(1,'Covers transport damage'),
(2,'Covers theft'),
(3,'Covers fire accidents'),
(4,'Covers natural disasters'),
(5,'Covers water damage'),
(6,'Covers partial damage'),
(7,' product delay'),
(8,'Covers international shipments'),
(9,'Covers delay compensation'),
(10,'Covers damaged product');

INSERT INTO notify_message VALUES
(1,'Your claim has been accepted and the payment has been successfully credited to your account.'),
(2,'Your claim is currently under review. Please wait for further updates.'),
(3,'Your claim has been rejected. Please contact support for more details.');

INSERT INTO claim(claim_id, claim_status, claim_type, claim_date,shipment_id, policy_id) VALUES
(1,'Pending','transport Damage','2026-02-10',1,1),
(2,'Approved','Theft','2026-02-11',1,2),
(3,'Rejected','Fire','2026-02-12',1,3),
(4,'Pending','Water Damage','2026-02-13',2,5),
(5,'Approved','Natural Disaster','2026-02-14',2,4),
(6,'Pending','Partial Damage','2026-02-15',2,6),
(7,'Rejected','Product Delay','2026-02-16',2,10),
(8,'Approved','Damaged product','2026-02-17',2,7),
(9,'Pending','Poduct Delay','2026-02-18',2,10),
(10,'Approved','international shipments','2026-02-19',3,8),
(11,'Pending','delay compensation','2026-02-20',3,9),
(12,'Approved','Theft','2026-02-21',3,2),
(13,'Rejected','Fire','2026-02-22',3,3),
(14,'Pending','Water Damage','2026-02-23',3,5),
(15,'Approved','Fire Accident','2026-02-24',3,3),
(16,'Pending','Partial Damage','2026-02-25',4,6),
(17,'Rejected','water damage','2026-02-26',4,5),
(18,'Approved','transport','2026-02-27',4,1),
(19,'Pending','Water Damage','2026-02-28',5,5),
(20,'Approved','Natural Disaster','2026-03-01',5,4),
(21,'Pending','Damage product','2026-03-02',5,10),
(22,'Approved','Theft','2026-03-03',6,2),
(23,'Rejected','Fire','2026-03-04',6,3),
(24,'Pending','Water Damage','2026-03-05',6,5),
(25,'Approved','Fire Accident','2026-03-06',7,3),
(26,'Rejected','Poduct Delay','2026-03-07',7,10),
(27,'Pending','partial damage','2026-03-08',7,6),
(28,'Approved','Damage','2026-03-09',8,10),
(29,'Rejected','Natural Disaster','2026-03-10',8,4),
(30,'Pending',' Damaged product','2026-03-11',8,10);

UPDATE claim SET
claimed_amount = claim_id * 1000
WHERE claimed_amount IS NULL

INSERT INTO evidence VALUES 
(1,1,'proof1.docx','image1.png'),
(2,2,'proof2.docx','image2.png'),
(3,3,'proof3.docx','image3.png'),
(4,4,'proof4.docx','image4.png'),
(5,5,'proof5.docx','image5.png'),
(6,6,'proof6.docx','image6.png'),
(7,7,'proof7.docx','image7.png'),
(8,8,'proof8.docx','image8.png'),
(9,9,'proof9.docx','image9.png'),
(10,10,'proof10.docx','image10.png'),
(11,11,'proof11.docx','image11.png'),
(12,12,'proof12.docx','image12.png'),
(13,13,'proof13.docx','image13.png'),
(14,14,'proof14.docx','image14.png'),
(15,15,'proof15.docx','image15.png'),
(16,16,'proof16.docx','image16.png'),
(17,17,'proof17.docx','image17.png'),
(18,18,'proof18.docx','image18.png'),
(19,19,'proof19.docx','image19.png'),
(20,20,'proof20.docx','image20.png'),
(21,21,'proof21.docx','image21.png'),
(22,22,'proof22.docx','image22.png'),
(23,23,'proof23.docx','image23.png'),
(24,24,'proof24.docx','image24.png'),
(25,25,'proof25.docx','image25.png'),
(26,26,'proof26.docx','image26.png'),
(27,27,'proof27.docx','image27.png'),
(28,28,'proof28.docx','image28.png'),
(29,29,'proof29.docx','image29.png'),
(30,30,'proof30.docx','image30.png');

INSERT INTO decision (decision_id, claim_id, decision_status, extra_amount) VALUES
(1,1,'Approved',500),
(2,2,'Rejected',0),
(3,3,'Pending',0),
(4,4,'Approved',700),
(5,5,'Approved',450),
(6,6,'Rejected',0),
(7,7,'Approved',600),
(8,8,'Pending',0),
(9,9,'Approved',550),
(10,10,'Rejected',0),
(11,11,'Approved',500),
(12,12,'Approved',650),
(13,13,'Pending',0),
(14,14,'Rejected',0),
(15,15,'Approved',400),
(16,16,'Approved',600),
(17,17,'Pending',0),
(18,18,'Approved',700),
(19,19,'Rejected',0),
(20,20,'Approved',550),
(21,21,'Approved',500),
(22,22,'Pending',0),
(23,23,'Rejected',0),
(24,24,'Approved',650),
(25,25,'Approved',450),
(26,26,'Pending',0),
(27,27,'Approved',600),
(28,28,'Rejected',0),
(29,29,'Approved',550),
(30,30,'Approved',700);

UPDATE d
SET d.approved_amount = d.extra_amount * c.claimed_amount
FROM decision d
JOIN claim c ON d.claim_id = c.claim_id
WHERE d.approved_amount IS NULL;


-- task 8 updating claim_histroy

SELECT count(decision_status) FROM decision where decision_status = 'Approved'

INSERT INTO claim_histroy(claim_id,decision_id) 
SELECT claim_id,decision_id FROM
decision WHERE decision_status = 'Approved'

--task 9 update payments

INSERT INTO payment (decision_id,agency_id,total_amount,payment_status) 
SELECT d.decision_id,s.agency_id,total_amount = approved_amount+extra_amount,
CASE 
	WHEN (decision_id%2 = 0 ) THEN 'paid'
	else 'pending'
	END AS payment_status
FROM decision d
JOIN claim c on d.claim_id = c.claim_id
JOIN shipment s on c.shipment_id = s.shipment_id
WHERE decision_status = 'Approved'

-- task 10 updating notifications

INSERT INTO notification (shipment_id, decision_id, notify_message_id)
SELECT 
    c.shipment_id,
    d.decision_id,
    CASE 
        WHEN d.decision_status = 'Approved' THEN 1
        WHEN d.decision_status = 'Pending' THEN 2
        WHEN d.decision_status = 'Rejected' THEN 3
    END
FROM decision d
JOIN claim c ON d.claim_id = c.claim_id;

-- task 11 updating tracker
INSERT INTO tracker
(agency_id,batch_no,company_name,customer_name,customer_email,policy_desc,claimed_amount,decision_status,approved_amount,payment_status,shipment_id,claim_id,decision_id)
SELECT sa.agency_id,sa.batch_no,sa.comany_name,s.customer_name,s.customer_email,cp.policy_desc,c.claimed_amount,d.decision_status,d.approved_amount,p.payment_status,
    s.shipment_id,c.claim_id,d.decision_id
FROM shipment_agency sa
JOIN shipment s ON sa.agency_id = s.agency_id
JOIN claim c ON s.shipment_id = c.shipment_id
JOIN company_policy cp ON c.policy_id = cp.policy_id
JOIN decision d ON c.claim_id = d.claim_id
LEFT JOIN payment p ON d.decision_id = p.decision_id;

SELECT * FROM shipment_agency
SELECT * FROM shipment
SELECT * FROM company_policy
SELECT * FROM claim
SELECT * FROM evidence
SELECT * FROM decision
SELECT * FROM claim_histroy
SELECT * FROM notify_message
SELECT * FROM notification
SELECT * FROM payment
SELECT * FROM tracker
