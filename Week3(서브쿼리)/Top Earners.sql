문제링크 : https://www.hackerrank.com/challenges/earnings-of-employees/problem?isFullScreen=true

# sol_1
SELECT months * salary AS total_earnings,
       COUNT(employee_id)
FROM Employee
WHERE months * salary = (SELECT MAX(months*salary)
                         FROM Employee)
GROUP BY total_earnings

# sol_2 -> HAVING 절 이용
SELECT months * salary AS total_earnings,
       COUNT(employee_id)
FROM Employee
GROUP BY total_earngins
HAVING total_earnings = (
        SELECT MAX(months * salary)
        FROM Employee)
        GROUP BY total_earnings)
