--602. Friend Requests II: Who Has the Most Friends

--https://leetcode.com/problems/friend-requests-ii-who-has-the-most-friends/

SELECT id, COUNT(*) as num
FROM (
    SELECT requester_id as id FROM RequestAccepted
    UNION ALL
    SELECT accepter_id FROM RequestAccepted
) as AllFriendships
GROUP BY id
ORDER BY num DESC, id ASC
LIMIT 1