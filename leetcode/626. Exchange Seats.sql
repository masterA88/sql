--626. Exchange Seats

--https://leetcode.com/problems/exchange-seats/

SELECT 
    CASE 
        WHEN id % 2 = 0 THEN id - 1
        WHEN id % 2 != 0 AND id != (SELECT MAX(id) FROM Seat) THEN id + 1
        ELSE id
    END as id,
    student
FROM Seat
ORDER BY id ASC;

