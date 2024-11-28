-- Table: Students

-- +---------------+---------+
-- | Column Name   | Type    |
-- +---------------+---------+
-- | student_id    | int     |
-- | student_name  | varchar |
-- +---------------+---------+

-- Table: Subjects

-- +--------------+---------+
-- | Column Name  | Type    |
-- +--------------+---------+
-- | subject_name | varchar |
-- +--------------+---------+

-- Table: Examinations

-- +--------------+---------+
-- | Column Name  | Type    |
-- +--------------+---------+
-- | student_id   | int     |
-- | subject_name | varchar |
-- +--------------+---------+

SELECT S.STUDENT_ID,S.STUDENT_NAME, SUB.SUBJECT_NAME, COUNT(E.STUDENT_ID)
AS ATTENDED_EXAMS FROM STUDENTS S JOIN SUBJECTS SUB
LEFT JOIN EXAMINATIONS E ON SUB.SUBJECT_NAME=E.SUBJECT_NAME
AND S.STUDENT_ID=E.STUDENT_ID
GROUP BY S.STUDENT_ID,S.STUDENT_NAME,SUB.SUBJECT_NAME
ORDER BY S.STUDENT_ID,SUB.SUBJECT_NAME