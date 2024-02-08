--1341. Movie Rating


--https://leetcode.com/problems/movie-rating/


(SELECT U.name AS results
 FROM Users U
 JOIN MovieRating MR ON U.user_id = MR.user_id
 GROUP BY U.user_id
 ORDER BY COUNT(*) DESC, U.name ASC
 LIMIT 1)
UNION ALL
(SELECT M.title
 FROM Movies M
 JOIN MovieRating MR ON M.movie_id = MR.movie_id
 WHERE YEAR(MR.created_at) = 2020 AND MONTH(MR.created_at) = 2
 GROUP BY M.movie_id
 ORDER BY AVG(MR.rating) DESC, M.title ASC
 LIMIT 1)

