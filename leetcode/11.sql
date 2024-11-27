-- Table: Employee

-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | empId       | int     |
-- | name        | varchar |
-- | supervisor  | int     |
-- | salary      | int     |
-- +-------------+---------+

-- Table: Bonus

-- +-------------+------+
-- | Column Name | Type |
-- +-------------+------+
-- | empId       | int  |
-- | bonus       | int  |
-- +-------------+------+

SELECT E.NAME,B.BONUS FROM EMPLOYEE E
LEFT JOIN BONUS B 
ON E.EMPID=B.EMPID
WHERE B.BONUS IS NULL 
OR B.BONUS<1000