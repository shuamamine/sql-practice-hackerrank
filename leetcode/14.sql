-- Table: Signups

-- +----------------+----------+
-- | Column Name    | Type     |
-- +----------------+----------+
-- | user_id        | int      |
-- | time_stamp     | datetime |
-- +----------------+----------+

-- Table: Confirmations

-- +----------------+----------+
-- | Column Name    | Type     |
-- +----------------+----------+
-- | user_id        | int      |
-- | time_stamp     | datetime |
-- | action         | ENUM     |
-- +----------------+----------+

SELECT S.USER_ID,
ROUND(AVG(IF(C.ACTION='confirmed',1,0)),2) AS CONFIRMATION_RATE
FROM SIGNUPS S LEFT JOIN CONFIRMATIONS C
ON C.USER_ID=S.USER_ID
GROUP BY USER_ID