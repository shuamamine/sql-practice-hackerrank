-- Table: Visits

-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | visit_id    | int     |
-- | customer_id | int     |
-- +-------------+---------+

-- Table: Transactions

-- +----------------+---------+
-- | Column Name    | Type    |
-- +----------------+---------+
-- | transaction_id | int     |
-- | visit_id       | int     |
-- | amount         | int     |
-- +----------------+---------+

SELECT V.CUSTOMER_ID, COUNT(V.VISIT_ID)
AS COUNT_NO_TRANS FROM VISITS V 
LEFT JOIN TRANSACTIONS T 
ON V.VISIT_ID=T.VISIT_ID
WHERE T.TRANSACTION_ID IS NULL
GROUP BY V.CUSTOMER_ID;