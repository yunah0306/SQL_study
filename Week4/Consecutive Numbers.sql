문제링크: https://leetcode.com/problems/consecutive-numbers/
# MS SQL Server
WITH sub AS(SELECT num,
            LEAD(num,1) OVER (ORDER BY id) AS next,
            LEAD(num,2) OVER (ORDER BY id) AS afternext
FROM Logs)

SELECT num AS ConsecutiveNums
FROM sub
WHERE num = next AND next = afternext
