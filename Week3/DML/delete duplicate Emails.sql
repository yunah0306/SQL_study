문제링크: https://leetcode.com/problems/delete-duplicate-emails/

DELETE FROM Person
WHERE Id NOT IN(
SELECT sub.min_id
FROM(
SELECT email, Min(Id) AS min_id
FROM Person
GROUP BY email) sub)
