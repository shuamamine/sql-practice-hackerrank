-- Table: Employee

-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | id          | int     |
-- | name        | varchar |
-- | department  | varchar |
-- | managerId   | int     |
-- +-------------+---------+

SELECT NAME FROM EMPLOYEE
WHERE ID IN (
    SELECT MANAGERID 
    AS DIRECTREPORTS FROM EMPLOYEE
    GROUP BY MANAGERID
    HAVING COUNT(*)>=5 
) 